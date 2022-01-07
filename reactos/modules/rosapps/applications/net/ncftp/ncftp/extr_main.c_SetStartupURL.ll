; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_main.c_SetStartupURL.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_main.c_SetStartupURL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32 }

@gLoadedBm = common dso_local global i32 0, align 4
@gConn = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@gStartupURLCdList = common dso_local global i32 0, align 4
@kMalformedURL = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Malformed URL: %s\0A\00", align 1
@kNotURL = common dso_local global i32 0, align 4
@gURLMode = common dso_local global i32 0, align 4
@gBm = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@gFirewallType = common dso_local global i8* null, align 8
@gFirewallExceptionList = common dso_local global i32 0, align 4
@gFirewallHost = common dso_local global i8* null, align 8
@gFirewallUser = common dso_local global i8* null, align 8
@gFirewallPass = common dso_local global i8* null, align 8
@gFirewallPort = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"Use ncftpget or ncftpput to handle file URLs.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @SetStartupURL to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SetStartupURL(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [256 x i8], align 16
  %5 = alloca [128 x i8], align 16
  store i8* %0, i8** %2, align 8
  store i32 0, i32* @gLoadedBm, align 4
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 @STRNCPY(i8* %6, i8* %7)
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %10 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %11 = call i32 @DecodeDirectoryURL(%struct.TYPE_6__* @gConn, i8* %9, i32* @gStartupURLCdList, i8* %10, i32 128)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @kMalformedURL, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load i32, i32* @stderr, align 4
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %18 = call i32 (i32, i8*, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = call i32 @exit(i32 1) #3
  unreachable

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @kNotURL, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %70

24:                                               ; preds = %20
  %25 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gConn, i32 0, i32 0), align 8
  %26 = load i8*, i8** %2, align 8
  %27 = call i32 @STRNCPY(i8* %25, i8* %26)
  store i32 2, i32* @gURLMode, align 4
  %28 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gConn, i32 0, i32 0), align 8
  %29 = call i64 @GetBookmark(i8* %28, %struct.TYPE_7__* @gBm)
  %30 = icmp sge i64 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %24
  store i32 1, i32* @gLoadedBm, align 4
  %32 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gConn, i32 0, i32 0), align 8
  %33 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @gBm, i32 0, i32 0), align 8
  %34 = call i32 @STRNCPY(i8* %32, i8* %33)
  %35 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gConn, i32 0, i32 1), align 8
  %36 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @gBm, i32 0, i32 1), align 8
  %37 = call i32 @STRNCPY(i8* %35, i8* %36)
  %38 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gConn, i32 0, i32 2), align 8
  %39 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @gBm, i32 0, i32 2), align 8
  %40 = call i32 @STRNCPY(i8* %38, i8* %39)
  %41 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gConn, i32 0, i32 3), align 8
  %42 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @gBm, i32 0, i32 3), align 8
  %43 = call i32 @STRNCPY(i8* %41, i8* %42)
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @gBm, i32 0, i32 8), align 8
  store i32 %44, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gConn, i32 0, i32 13), align 8
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @gBm, i32 0, i32 7), align 4
  store i32 %45, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gConn, i32 0, i32 12), align 4
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @gBm, i32 0, i32 6), align 8
  store i32 %46, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gConn, i32 0, i32 11), align 8
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @gBm, i32 0, i32 5), align 4
  store i32 %47, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gConn, i32 0, i32 10), align 4
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @gBm, i32 0, i32 4), align 8
  store i32 %48, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gConn, i32 0, i32 9), align 8
  br label %51

49:                                               ; preds = %24
  %50 = call i32 @SetBookmarkDefaults(%struct.TYPE_7__* @gBm)
  br label %51

51:                                               ; preds = %49, %31
  %52 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gConn, i32 0, i32 0), align 8
  %53 = load i8*, i8** @gFirewallType, align 8
  %54 = load i32, i32* @gFirewallExceptionList, align 4
  %55 = call i64 @MayUseFirewall(i8* %52, i8* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %51
  %58 = load i8*, i8** @gFirewallType, align 8
  store i8* %58, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gConn, i32 0, i32 8), align 8
  %59 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gConn, i32 0, i32 4), align 8
  %60 = load i8*, i8** @gFirewallHost, align 8
  %61 = call i32 @STRNCPY(i8* %59, i8* %60)
  %62 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gConn, i32 0, i32 5), align 8
  %63 = load i8*, i8** @gFirewallUser, align 8
  %64 = call i32 @STRNCPY(i8* %62, i8* %63)
  %65 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gConn, i32 0, i32 6), align 8
  %66 = load i8*, i8** @gFirewallPass, align 8
  %67 = call i32 @STRNCPY(i8* %65, i8* %66)
  %68 = load i8*, i8** @gFirewallPort, align 8
  store i8* %68, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gConn, i32 0, i32 7), align 8
  br label %69

69:                                               ; preds = %57, %51
  br label %98

70:                                               ; preds = %20
  %71 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %72 = load i8, i8* %71, align 16
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load i32, i32* @stderr, align 4
  %77 = call i32 (i32, i8*, ...) @fprintf(i32 %76, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %78 = call i32 @exit(i32 1) #3
  unreachable

79:                                               ; preds = %70
  store i32 1, i32* @gURLMode, align 4
  %80 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gConn, i32 0, i32 0), align 8
  %81 = load i8*, i8** @gFirewallType, align 8
  %82 = load i32, i32* @gFirewallExceptionList, align 4
  %83 = call i64 @MayUseFirewall(i8* %80, i8* %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %79
  %86 = load i8*, i8** @gFirewallType, align 8
  store i8* %86, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gConn, i32 0, i32 8), align 8
  %87 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gConn, i32 0, i32 4), align 8
  %88 = load i8*, i8** @gFirewallHost, align 8
  %89 = call i32 @STRNCPY(i8* %87, i8* %88)
  %90 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gConn, i32 0, i32 5), align 8
  %91 = load i8*, i8** @gFirewallUser, align 8
  %92 = call i32 @STRNCPY(i8* %90, i8* %91)
  %93 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gConn, i32 0, i32 6), align 8
  %94 = load i8*, i8** @gFirewallPass, align 8
  %95 = call i32 @STRNCPY(i8* %93, i8* %94)
  %96 = load i8*, i8** @gFirewallPort, align 8
  store i8* %96, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gConn, i32 0, i32 7), align 8
  br label %97

97:                                               ; preds = %85, %79
  br label %98

98:                                               ; preds = %97, %69
  br label %99

99:                                               ; preds = %98
  ret void
}

declare dso_local i32 @STRNCPY(i8*, i8*) #1

declare dso_local i32 @DecodeDirectoryURL(%struct.TYPE_6__*, i8*, i32*, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @GetBookmark(i8*, %struct.TYPE_7__*) #1

declare dso_local i32 @SetBookmarkDefaults(%struct.TYPE_7__*) #1

declare dso_local i64 @MayUseFirewall(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
