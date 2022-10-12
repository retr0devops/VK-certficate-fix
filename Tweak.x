
#import <CaptainHook/CaptainHook.h>
#import <objc/runtime.h>
#import <mach/mach_time.h>


CHDeclareClass(INPreferences);
typedef void(^ESINPreferencesBlock)(NSInteger status);

CHOptimizedClassMethod0(self, NSInteger, INPreferences, siriAuthorizationStatus) { return 1; }
CHOptimizedClassMethod1(self, void, INPreferences, requestSiriAuthorization, ESINPreferencesBlock, block) { }

CHConstructor {
    CHLoadLateClass(INPreferences);
    CHClassHook0(INPreferences, siriAuthorizationStatus);
    CHClassHook1(INPreferences, requestSiriAuthorization);
}