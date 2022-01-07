; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_protocol.c_file_protocol_start.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_protocol.c_file_protocol_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GetBindInfo = common dso_local global i32 0, align 4
@bindf = common dso_local global i32 0, align 4
@BINDF_FROMURLMON = common dso_local global i32 0, align 4
@ReportProgress_DIRECTBIND = common dso_local global i32 0, align 4
@ReportProgress_SENDINGREQUEST = common dso_local global i32 0, align 4
@ReportProgress_CACHEFILENAMEAVAILABLE = common dso_local global i32 0, align 4
@ReportProgress_VERIFIEDMIMETYPEAVAILABLE = common dso_local global i32 0, align 4
@ReportProgress_MIMETYPEAVAILABLE = common dso_local global i32 0, align 4
@ReportData = common dso_local global i32 0, align 4
@ReportResult = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@expect_hrResult = common dso_local global i64 0, align 8
@protocol_sink = common dso_local global i32 0, align 4
@bind_info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"StartEx failed: %08x\0A\00", align 1
@INET_E_RESOURCE_NOT_FOUND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"Start failed\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"Start failed: %08x\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32, i32*, i32*, i64)* @file_protocol_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @file_protocol_start(i32* %0, i32 %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load i32, i32* @GetBindInfo, align 4
  %14 = call i32 @SET_EXPECT(i32 %13)
  %15 = load i32, i32* @bindf, align 4
  %16 = load i32, i32* @BINDF_FROMURLMON, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @ReportProgress_DIRECTBIND, align 4
  %21 = call i32 @SET_EXPECT(i32 %20)
  br label %22

22:                                               ; preds = %19, %5
  %23 = load i64, i64* %11, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %22
  %26 = load i32, i32* @ReportProgress_SENDINGREQUEST, align 4
  %27 = call i32 @SET_EXPECT(i32 %26)
  %28 = load i32, i32* @ReportProgress_CACHEFILENAMEAVAILABLE, align 4
  %29 = call i32 @SET_EXPECT(i32 %28)
  %30 = load i32, i32* @bindf, align 4
  %31 = load i32, i32* @BINDF_FROMURLMON, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load i32, i32* @ReportProgress_VERIFIEDMIMETYPEAVAILABLE, align 4
  %36 = call i32 @SET_EXPECT(i32 %35)
  br label %40

37:                                               ; preds = %25
  %38 = load i32, i32* @ReportProgress_MIMETYPEAVAILABLE, align 4
  %39 = call i32 @SET_EXPECT(i32 %38)
  br label %40

40:                                               ; preds = %37, %34
  br label %41

41:                                               ; preds = %40, %22
  %42 = load i32, i32* @ReportData, align 4
  %43 = call i32 @SET_EXPECT(i32 %42)
  %44 = load i64, i64* %11, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* @ReportResult, align 4
  %48 = call i32 @SET_EXPECT(i32 %47)
  br label %49

49:                                               ; preds = %46, %41
  %50 = load i64, i64* @S_OK, align 8
  store i64 %50, i64* @expect_hrResult, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %63

53:                                               ; preds = %49
  %54 = load i32*, i32** %9, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = call i64 @IInternetProtocolEx_StartEx(i32* %54, i32* %55, i32* @protocol_sink, i32* @bind_info, i32 0, i32 0)
  store i64 %56, i64* %12, align 8
  %57 = load i64, i64* %12, align 8
  %58 = load i64, i64* @S_OK, align 8
  %59 = icmp eq i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = load i64, i64* %12, align 8
  %62 = call i32 @ok(i32 %60, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %61)
  br label %80

63:                                               ; preds = %49
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i64 @IInternetProtocol_Start(i32* %64, i32 %65, i32* @protocol_sink, i32* @bind_info, i32 0, i32 0)
  store i64 %66, i64* %12, align 8
  %67 = load i64, i64* %12, align 8
  %68 = load i64, i64* @INET_E_RESOURCE_NOT_FOUND, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = call i32 @win_skip(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i64, i64* @FALSE, align 8
  store i64 %72, i64* %6, align 8
  br label %119

73:                                               ; preds = %63
  %74 = load i64, i64* %12, align 8
  %75 = load i64, i64* @S_OK, align 8
  %76 = icmp eq i64 %74, %75
  %77 = zext i1 %76 to i32
  %78 = load i64, i64* %12, align 8
  %79 = call i32 @ok(i32 %77, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i64 %78)
  br label %80

80:                                               ; preds = %73, %53
  %81 = load i32, i32* @GetBindInfo, align 4
  %82 = call i32 @CHECK_CALLED(i32 %81)
  %83 = load i32, i32* @bindf, align 4
  %84 = load i32, i32* @BINDF_FROMURLMON, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %80
  %88 = load i32, i32* @ReportProgress_DIRECTBIND, align 4
  %89 = call i32 @CLEAR_CALLED(i32 %88)
  br label %90

90:                                               ; preds = %87, %80
  %91 = load i64, i64* %11, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %109

93:                                               ; preds = %90
  %94 = load i32, i32* @ReportProgress_SENDINGREQUEST, align 4
  %95 = call i32 @CHECK_CALLED(i32 %94)
  %96 = load i32, i32* @ReportProgress_CACHEFILENAMEAVAILABLE, align 4
  %97 = call i32 @CHECK_CALLED(i32 %96)
  %98 = load i32, i32* @bindf, align 4
  %99 = load i32, i32* @BINDF_FROMURLMON, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %93
  %103 = load i32, i32* @ReportProgress_VERIFIEDMIMETYPEAVAILABLE, align 4
  %104 = call i32 @CHECK_CALLED(i32 %103)
  br label %108

105:                                              ; preds = %93
  %106 = load i32, i32* @ReportProgress_MIMETYPEAVAILABLE, align 4
  %107 = call i32 @CHECK_CALLED(i32 %106)
  br label %108

108:                                              ; preds = %105, %102
  br label %109

109:                                              ; preds = %108, %90
  %110 = load i32, i32* @ReportData, align 4
  %111 = call i32 @CHECK_CALLED(i32 %110)
  %112 = load i64, i64* %11, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = load i32, i32* @ReportResult, align 4
  %116 = call i32 @CHECK_CALLED(i32 %115)
  br label %117

117:                                              ; preds = %114, %109
  %118 = load i64, i64* @TRUE, align 8
  store i64 %118, i64* %6, align 8
  br label %119

119:                                              ; preds = %117, %70
  %120 = load i64, i64* %6, align 8
  ret i64 %120
}

declare dso_local i32 @SET_EXPECT(i32) #1

declare dso_local i64 @IInternetProtocolEx_StartEx(i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @IInternetProtocol_Start(i32*, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @CHECK_CALLED(i32) #1

declare dso_local i32 @CLEAR_CALLED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
