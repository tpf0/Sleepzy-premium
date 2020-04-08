#import <UIKit.h>
#import <substrate.h>

// Enable premium features for Sleepzy

%hook APNBrazeInterUnit
-(void)setIsPremium:(bool)arg1 {
  arg1 = TRUE;
  %orig(arg1);
}
%end

%hook APNBaseHandler
-(void)setIsPremium:(bool)arg1 {
  arg1 = TRUE;
  %orig(arg1);
}
%end

%hook APNAdInterHandler
-(void)setIsPremium:(bool)arg1 {
  arg1 = TRUE;
  %orig(arg1);
}
%end

%hook APNBrazeCampaign
-(bool)shouldShowInPremiumMode {
  return TRUE;
}
%end

%hook ASAMediaItem
-(bool)premium {
  return TRUE;
}
}

-(void)setIsPremium:(bool)arg1 {
  arg1 = TRUE;
  %orig(arg1);
}
%end

%hook ASASubscriptions
-(bool)isPremuim {
  return TRUE;
}
}

-(bool)isPremium {
  return TRUE;
}
%end

%hook ASASleep
-(bool)checkEndDateForPremium {
  return FALSE;
}
%end 
