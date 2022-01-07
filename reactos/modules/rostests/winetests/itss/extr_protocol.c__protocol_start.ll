; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/itss/extr_protocol.c__protocol_start.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/itss/extr_protocol.c__protocol_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GetBindInfo = common dso_local global i32 0, align 4
@test_protocol = common dso_local global i64 0, align 8
@MK_PROTOCOL = common dso_local global i64 0, align 8
@ReportProgress_DIRECTBIND = common dso_local global i32 0, align 4
@ReportProgress_SENDINGREQUEST = common dso_local global i32 0, align 4
@ReportProgress_MIMETYPEAVAILABLE = common dso_local global i32 0, align 4
@ReportProgress_CACHEFILENAMEAVAILABLE = common dso_local global i32 0, align 4
@ReportData = common dso_local global i32 0, align 4
@ITS_PROTOCOL = common dso_local global i64 0, align 8
@ReportProgress_BEGINDOWNLOADDATA = common dso_local global i32 0, align 4
@ReportResult = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@expect_hrResult = common dso_local global i32 0, align 4
@protocol_sink = common dso_local global i32 0, align 4
@bind_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, i64)* @_protocol_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_protocol_start(i32 %0, i32* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %10 = load i32, i32* @GetBindInfo, align 4
  %11 = call i32 @SET_EXPECT(i32 %10)
  %12 = load i64, i64* @test_protocol, align 8
  %13 = load i64, i64* @MK_PROTOCOL, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32, i32* @ReportProgress_DIRECTBIND, align 4
  %17 = call i32 @SET_EXPECT(i32 %16)
  br label %18

18:                                               ; preds = %15, %4
  %19 = load i32, i32* @ReportProgress_SENDINGREQUEST, align 4
  %20 = call i32 @SET_EXPECT(i32 %19)
  %21 = load i64, i64* %8, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @ReportProgress_MIMETYPEAVAILABLE, align 4
  %25 = call i32 @SET_EXPECT(i32 %24)
  br label %26

26:                                               ; preds = %23, %18
  %27 = load i64, i64* @test_protocol, align 8
  %28 = load i64, i64* @MK_PROTOCOL, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @ReportProgress_CACHEFILENAMEAVAILABLE, align 4
  %32 = call i32 @SET_EXPECT(i32 %31)
  br label %33

33:                                               ; preds = %30, %26
  %34 = load i32, i32* @ReportData, align 4
  %35 = call i32 @SET_EXPECT(i32 %34)
  %36 = load i64, i64* @test_protocol, align 8
  %37 = load i64, i64* @ITS_PROTOCOL, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* @ReportProgress_BEGINDOWNLOADDATA, align 4
  %41 = call i32 @SET_EXPECT(i32 %40)
  br label %42

42:                                               ; preds = %39, %33
  %43 = load i32, i32* @ReportResult, align 4
  %44 = call i32 @SET_EXPECT(i32 %43)
  %45 = load i32, i32* @S_OK, align 4
  store i32 %45, i32* @expect_hrResult, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @IInternetProtocol_Start(i32* %46, i32 %47, i32* @protocol_sink, i32* @bind_info, i32 0, i32 0)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i64 @FAILED(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %88

52:                                               ; preds = %42
  %53 = load i32, i32* @GetBindInfo, align 4
  %54 = call i32 @SET_CALLED(i32 %53)
  %55 = load i64, i64* @test_protocol, align 8
  %56 = load i64, i64* @MK_PROTOCOL, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32, i32* @ReportProgress_DIRECTBIND, align 4
  %60 = call i32 @SET_CALLED(i32 %59)
  br label %61

61:                                               ; preds = %58, %52
  %62 = load i32, i32* @ReportProgress_SENDINGREQUEST, align 4
  %63 = call i32 @SET_CALLED(i32 %62)
  %64 = load i64, i64* %8, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i32, i32* @ReportProgress_MIMETYPEAVAILABLE, align 4
  %68 = call i32 @SET_CALLED(i32 %67)
  br label %69

69:                                               ; preds = %66, %61
  %70 = load i64, i64* @test_protocol, align 8
  %71 = load i64, i64* @MK_PROTOCOL, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load i32, i32* @ReportProgress_CACHEFILENAMEAVAILABLE, align 4
  %75 = call i32 @SET_EXPECT(i32 %74)
  br label %76

76:                                               ; preds = %73, %69
  %77 = load i32, i32* @ReportData, align 4
  %78 = call i32 @SET_CALLED(i32 %77)
  %79 = load i64, i64* @test_protocol, align 8
  %80 = load i64, i64* @ITS_PROTOCOL, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load i32, i32* @ReportProgress_BEGINDOWNLOADDATA, align 4
  %84 = call i32 @SET_CALLED(i32 %83)
  br label %85

85:                                               ; preds = %82, %76
  %86 = load i32, i32* @ReportResult, align 4
  %87 = call i32 @SET_CALLED(i32 %86)
  br label %124

88:                                               ; preds = %42
  %89 = load i32, i32* @GetBindInfo, align 4
  %90 = call i32 @CHECK_CALLED(i32 %89)
  %91 = load i64, i64* @test_protocol, align 8
  %92 = load i64, i64* @MK_PROTOCOL, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = load i32, i32* @ReportProgress_DIRECTBIND, align 4
  %96 = call i32 @SET_CALLED(i32 %95)
  br label %97

97:                                               ; preds = %94, %88
  %98 = load i32, i32* @ReportProgress_SENDINGREQUEST, align 4
  %99 = call i32 @CHECK_CALLED(i32 %98)
  %100 = load i64, i64* %8, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load i32, i32* @ReportProgress_MIMETYPEAVAILABLE, align 4
  %104 = call i32 @CHECK_CALLED(i32 %103)
  br label %105

105:                                              ; preds = %102, %97
  %106 = load i64, i64* @test_protocol, align 8
  %107 = load i64, i64* @MK_PROTOCOL, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %105
  %110 = load i32, i32* @ReportProgress_CACHEFILENAMEAVAILABLE, align 4
  %111 = call i32 @SET_EXPECT(i32 %110)
  br label %112

112:                                              ; preds = %109, %105
  %113 = load i32, i32* @ReportData, align 4
  %114 = call i32 @CHECK_CALLED(i32 %113)
  %115 = load i64, i64* @test_protocol, align 8
  %116 = load i64, i64* @ITS_PROTOCOL, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %112
  %119 = load i32, i32* @ReportProgress_BEGINDOWNLOADDATA, align 4
  %120 = call i32 @CHECK_CALLED(i32 %119)
  br label %121

121:                                              ; preds = %118, %112
  %122 = load i32, i32* @ReportResult, align 4
  %123 = call i32 @CHECK_CALLED(i32 %122)
  br label %124

124:                                              ; preds = %121, %85
  %125 = load i32, i32* %9, align 4
  ret i32 %125
}

declare dso_local i32 @SET_EXPECT(i32) #1

declare dso_local i32 @IInternetProtocol_Start(i32*, i32, i32*, i32*, i32, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @SET_CALLED(i32) #1

declare dso_local i32 @CHECK_CALLED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
