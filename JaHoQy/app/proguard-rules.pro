# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in E:\Java\android-sdk/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}
#-ignorewarnings
#-optimizationpasses 5
#-dontusemixedcaseclassnames
#
#-keepattributes Signature
#-keep class com.xpple.jahoqy.bean.AdDomain{*;}
#-keep class com.xpple.jahoqy.bean.Answer{*;}
#-keep class com.xpple.jahoqy.bean.ApplicationGangs{*;}
#-keep class com.xpple.jahoqy.bean.City{*;}
#-keep class com.xpple.jahoqy.bean.Gangs{*;}
#-keep class com.xpple.jahoqy.bean.GangsPost{*;}
#-keep class com.xpple.jahoqy.bean.HuanXinUser{*;}
#-keep class com.xpple.jahoqy.bean.InviteMessage{*;}
#-keep class com.xpple.jahoqy.bean.MyBmobInstallation{*;}
#-keep class com.xpple.jahoqy.bean.NearUser{*;}
#-keep class com.xpple.jahoqy.bean.OfferHelp{*;}
#-keep class com.xpple.jahoqy.bean.Question{*;}
#-keep class com.xpple.jahoqy.bean.RobotUser{*;}
#-keep class com.xpple.jahoqy.bean.SeekHelp{*;}
#-keep class com.xpple.jahoqy.bean.User{*;}
#-keep class com.xpple.jahoqy.bean.VideoEntity{*;}

-optimizationpasses 5          # 指定代码的压缩级别
-dontusemixedcaseclassnames   # 是否使用大小写混合
-dontpreverify           # 混淆时是否做预校验
-verbose                # 混淆时是否记录日志

-optimizations !code/simplification/arithmetic,!field/*,!class/merging/*  # 混淆时所采用的算法

-keep public class * extends android.app.Activity      # 保持哪些类不被混淆
-keep public class * extends android.app.Application   # 保持哪些类不被混淆
-keep public class * extends android.app.Service       # 保持哪些类不被混淆
-keep public class * extends android.content.BroadcastReceiver  # 保持哪些类不被混淆
-keep public class * extends android.content.ContentProvider    # 保持哪些类不被混淆
-keep public class * extends android.app.backup.BackupAgentHelper # 保持哪些类不被混淆
-keep public class * extends android.preference.Preference        # 保持哪些类不被混淆
-keep public class com.android.vending.licensing.ILicensingService    # 保持哪些类不被混淆
#如果有引用v4包可以添加下面这行
-keep public class * extends android.support.v4.app.Fragment
-keep public class * extends android.support.v4.app.FragmentActivity

-keepclasseswithmembernames class * {  # 保持 native 方法不被混淆
    native <methods>;
}
-keepclasseswithmembers class * {   # 保持自定义控件类不被混淆
    public <init>(android.content.Context, android.util.AttributeSet);
}
-keepclasseswithmembers class * {# 保持自定义控件类不被混淆
    public <init>(android.content.Context, android.util.AttributeSet, int);
}
-keepclassmembers class * extends android.app.Activity { # 保持自定义控件类不被混淆
    public void *(android.view.View);
}
-keepclassmembers class * extends android.support.v4.app.FragmentActivity { # 保持自定义控件类不被混淆
    public void *(android.view.View);
}
-keepclassmembers enum * {     # 保持枚举 enum 类不被混淆
    public static **[] values();
    public static ** valueOf(java.lang.String);
}
-keep class * implements android.os.Parcelable { # 保持 Parcelable 不被混淆
    public static final android.os.Parcelable$Creator *;
}
