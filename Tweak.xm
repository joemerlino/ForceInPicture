#import <substrate.h>
#define k(key) CFEqual(string, CFSTR(key))

extern "C" Boolean MGGetBoolAnswer(CFStringRef);
%hookf(Boolean, MGGetBoolAnswer, CFStringRef string){
	if (![[[NSBundle mainBundle] bundleIdentifier] isEqualToString:@"de.j-gessner.protube2"] && k("nVh/gwNpy7Jv1NOk00CMrw"))
		return YES;
	return %orig;
}