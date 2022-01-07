; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_preffw.c_WriteDefaultFirewallPrefs.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_preffw.c_WriteDefaultFirewallPrefs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@gLib = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"# NcFTP firewall preferences\0A# ==========================\0A#\0A\00", align 1
@.str.2 = private unnamed_addr constant [243 x i8] c"# If you need to use a proxy for FTP, you can configure it below.\0A# If you do not need one, leave the ``firewall-type'' variable set\0A# to 0.  Any line that does not begin with the ``#'' character is\0A# considered a configuration command line.\0A\00", align 1
@.str.3 = private unnamed_addr constant [214 x i8] c"#\0A# NOTE:  NcFTP does NOT support HTTP proxies that do FTP, such as \22squid\22\0A#        or Netscape Proxy Server.  Why?  Because you have to communicate with\0A#        them using HTTP, and this is a FTP only program.\0A\00", align 1
@.str.4 = private unnamed_addr constant [126 x i8] c"#\0A# Types of firewalls:\0A# ------------------\0A#\0A#    type 1:  Connect to firewall host, but send \22USER user@real.host.name\22\0A#\0A\00", align 1
@.str.5 = private unnamed_addr constant [275 x i8] c"#    type 2:  Connect to firewall, login with \22USER fwuser\22 and\0A#             \22PASS fwpassword\22, and then \22USER user@real.host.name\22\0A#\0A#    type 3:  Connect to and login to firewall, and then use\0A#             \22SITE real.host.name\22, followed by the regular USER and PASS.\0A#\0A\00", align 1
@.str.6 = private unnamed_addr constant [286 x i8] c"#    type 4:  Connect to and login to firewall, and then use\0A#             \22OPEN real.host.name\22, followed by the regular USER and PASS.\0A#\0A#    type 5:  Connect to firewall host, but send\0A#             \22USER user@fwuser@real.host.name\22 and\0A#             \22PASS pass@fwpass\22 to login.\0A#\0A\00", align 1
@.str.7 = private unnamed_addr constant [228 x i8] c"#    type 6:  Connect to firewall host, but send\0A#             \22USER fwuser@real.host.name\22 and\0A#             \22PASS fwpass\22 followed by a regular\0A#             \22USER user\22 and\0A#             \22PASS pass\22 to complete the login.\0A#\0A\00", align 1
@.str.8 = private unnamed_addr constant [284 x i8] c"#    type 7:  Connect to firewall host, but send\0A#             \22USER user@real.host.name fwuser\22 and\0A#             \22PASS pass\22 followed by\0A#             \22ACCT fwpass\22 to complete the login.\0A#\0A#    type 0:  Do NOT use a firewall (most users will choose this).\0A#\0Afirewall-type=0\0A#\0A#\0A#\0A\00", align 1
@.str.9 = private unnamed_addr constant [108 x i8] c"# The ``firewall-host'' variable should be the IP address or hostname of\0A# your firewall server machine.\0A#\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"firewall-host=firewall.domain.com\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"firewall-host=firewall%s\0A\00", align 1
@.str.12 = private unnamed_addr constant [155 x i8] c"#\0A#\0A#\0A# The ``firewall-user'' variable tells NcFTP what to use as the user ID\0A# when it logs in to the firewall before connecting to the outside world.\0A#\0A\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"firewall-user=%s\0A\00", align 1
@gUser = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [336 x i8] c"#\0A#\0A#\0A# The ``firewall-password'' variable is the password associated with\0A# the firewall-user ID.  If you set this here, be sure to change the\0A# permissions on this file so that no one (except the superuser) can\0A# see your password.  You may also leave this commented out, and then\0A# NcFTP will prompt you each time for the password.\0A\00", align 1
@.str.15 = private unnamed_addr constant [198 x i8] c"#\0Afirewall-password=fwpass\0A#\0A#\0A#\0A# Your firewall may require you to connect to a non-standard port for\0A# outside FTP services, instead of the internet standard port number (21).\0A#\0Afirewall-port=21\0A\00", align 1
@.str.16 = private unnamed_addr constant [290 x i8] c"#\0A#\0A#\0A# You probably do not want to FTP to the firewall for hosts on your own\0A# domain.  You can set ``firewall-exception-list'' to a list of domains\0A# or hosts where the firewall should not be used.  For example, if your\0A# domain was ``probe.net'' you could set this to ``.probe.net''.\0A#\0A\00", align 1
@.str.17 = private unnamed_addr constant [391 x i8] c"# If you leave this commented out, the default behavior is to attempt to\0A# lookup the current domain, and exclude hosts for it.  Otherwise, set it\0A# to a list of comma-delimited domains or hostnames.  The special token\0A# ``localdomain'' is used for unqualified hostnames, so if you want hosts\0A# without explicit domain names to avoid the firewall, be sure to include\0A# that in your list.\0A#\0A\00", align 1
@.str.18 = private unnamed_addr constant [50 x i8] c"firewall-exception-list=%s,localhost,localdomain\0A\00", align 1
@.str.19 = private unnamed_addr constant [70 x i8] c"firewall-exception-list=.probe.net,localhost,foo.bar.com,localdomain\0A\00", align 1
@.str.20 = private unnamed_addr constant [270 x i8] c"#\0A#\0A#\0A# You may also specify passive mode here.  Normally this is set in the\0A# regular $HOME/.ncftp/prefs file.  This must be set to one of\0A# \22on\22, \22off\22, or \22optional\22, which mean always use PASV,\0A# always use PORT, and try PASV then PORT, respectively.\0A#\0A#passive=on\0A\00", align 1
@.str.21 = private unnamed_addr constant [201 x i8] c"#\0A#\0A#\0A# NOTE:  This file was created for you on %s#        by NcFTP %.5s.  Removing this file will cause the next run of NcFTP\0A#        to generate a new one, possibly with more configurable options.\0A\00", align 1
@gVersion = common dso_local global i8* null, align 8
@.str.22 = private unnamed_addr constant [122 x i8] c"#\0A# ALSO:  A %s file, if present, is processed before this file,\0A#        and a %s file, if present, is processed after.\0A\00", align 1
@kGlobalFirewallPrefFileName = common dso_local global i8* null, align 8
@kGlobalFixedFirewallPrefFileName = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @WriteDefaultFirewallPrefs(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = call i32 @FTPInitializeOurHostName(%struct.TYPE_3__* @gLib)
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gLib, i32 0, i32 0), align 4
  %7 = call i8* @strchr(i32 %6, i8 signext 46)
  store i8* %7, i8** %3, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 (i32*, i8*, ...) @fprintf(i32* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 (i32*, i8*, ...) @fprintf(i32* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([243 x i8], [243 x i8]* @.str.2, i64 0, i64 0))
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 (i32*, i8*, ...) @fprintf(i32* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([214 x i8], [214 x i8]* @.str.3, i64 0, i64 0))
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 (i32*, i8*, ...) @fprintf(i32* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.4, i64 0, i64 0))
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 (i32*, i8*, ...) @fprintf(i32* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([275 x i8], [275 x i8]* @.str.5, i64 0, i64 0))
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 (i32*, i8*, ...) @fprintf(i32* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([286 x i8], [286 x i8]* @.str.6, i64 0, i64 0))
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 (i32*, i8*, ...) @fprintf(i32* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([228 x i8], [228 x i8]* @.str.7, i64 0, i64 0))
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 (i32*, i8*, ...) @fprintf(i32* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([284 x i8], [284 x i8]* @.str.8, i64 0, i64 0))
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 (i32*, i8*, ...) @fprintf(i32* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.9, i64 0, i64 0))
  %26 = load i8*, i8** %3, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 (i32*, i8*, ...) @fprintf(i32* %29, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  br label %35

31:                                               ; preds = %1
  %32 = load i32*, i32** %2, align 8
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 (i32*, i8*, ...) @fprintf(i32* %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i8* %33)
  br label %35

35:                                               ; preds = %31, %28
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 (i32*, i8*, ...) @fprintf(i32* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.12, i64 0, i64 0))
  %38 = load i32*, i32** %2, align 8
  %39 = load i8*, i8** @gUser, align 8
  %40 = call i32 (i32*, i8*, ...) @fprintf(i32* %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i8* %39)
  %41 = load i32*, i32** %2, align 8
  %42 = call i32 (i32*, i8*, ...) @fprintf(i32* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([336 x i8], [336 x i8]* @.str.14, i64 0, i64 0))
  %43 = load i32*, i32** %2, align 8
  %44 = call i32 (i32*, i8*, ...) @fprintf(i32* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.15, i64 0, i64 0))
  %45 = load i32*, i32** %2, align 8
  %46 = call i32 (i32*, i8*, ...) @fprintf(i32* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([290 x i8], [290 x i8]* @.str.16, i64 0, i64 0))
  %47 = load i32*, i32** %2, align 8
  %48 = call i32 (i32*, i8*, ...) @fprintf(i32* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([391 x i8], [391 x i8]* @.str.17, i64 0, i64 0))
  %49 = load i8*, i8** %3, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %35
  %52 = load i32*, i32** %2, align 8
  %53 = load i8*, i8** %3, align 8
  %54 = call i32 (i32*, i8*, ...) @fprintf(i32* %52, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.18, i64 0, i64 0), i8* %53)
  br label %58

55:                                               ; preds = %35
  %56 = load i32*, i32** %2, align 8
  %57 = call i32 (i32*, i8*, ...) @fprintf(i32* %56, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.19, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %51
  %59 = load i32*, i32** %2, align 8
  %60 = call i32 (i32*, i8*, ...) @fprintf(i32* %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([270 x i8], [270 x i8]* @.str.20, i64 0, i64 0))
  %61 = call i32 @time(i32* %4)
  %62 = load i32*, i32** %2, align 8
  %63 = call i8* @ctime(i32* %4)
  %64 = load i8*, i8** @gVersion, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 11
  %66 = call i32 (i32*, i8*, ...) @fprintf(i32* %62, i8* getelementptr inbounds ([201 x i8], [201 x i8]* @.str.21, i64 0, i64 0), i8* %63, i8* %65)
  %67 = load i32*, i32** %2, align 8
  %68 = load i8*, i8** @kGlobalFirewallPrefFileName, align 8
  %69 = load i8*, i8** @kGlobalFixedFirewallPrefFileName, align 8
  %70 = call i32 (i32*, i8*, ...) @fprintf(i32* %67, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.22, i64 0, i64 0), i8* %68, i8* %69)
  ret void
}

declare dso_local i32 @FTPInitializeOurHostName(%struct.TYPE_3__*) #1

declare dso_local i8* @strchr(i32, i8 signext) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i8* @ctime(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
