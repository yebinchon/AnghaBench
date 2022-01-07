; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_protocol.c_protocol_start.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_protocol.c_protocol_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GetBindInfo = common dso_local global i32 0, align 4
@ReportResult = common dso_local global i32 0, align 4
@ReportProgress = common dso_local global i32 0, align 4
@ReportData = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@expect_hrResult = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@expect_hr_win32err = common dso_local global i32 0, align 4
@protocol_sink = common dso_local global i32 0, align 4
@bind_info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Start failed: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @protocol_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @protocol_start(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32, i32* @GetBindInfo, align 4
  %7 = call i32 @SET_EXPECT(i32 %6)
  %8 = load i32, i32* @ReportResult, align 4
  %9 = call i32 @SET_EXPECT(i32 %8)
  %10 = load i32, i32* @ReportProgress, align 4
  %11 = call i32 @SET_EXPECT(i32 %10)
  %12 = load i32, i32* @ReportData, align 4
  %13 = call i32 @SET_EXPECT(i32 %12)
  %14 = load i64, i64* @S_OK, align 8
  store i64 %14, i64* @expect_hrResult, align 8
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* @expect_hr_win32err, align 4
  %16 = load i32*, i32** %3, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = call i64 @IInternetProtocol_Start(i32* %16, i32* %17, i32* @protocol_sink, i32* @bind_info, i32 0, i32 0)
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @S_OK, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @ok(i32 %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %23)
  %25 = load i32, i32* @GetBindInfo, align 4
  %26 = call i32 @CHECK_CALLED(i32 %25)
  %27 = load i32, i32* @ReportProgress, align 4
  %28 = call i32 @CHECK_CALLED(i32 %27)
  %29 = load i32, i32* @ReportData, align 4
  %30 = call i32 @CHECK_CALLED(i32 %29)
  %31 = load i32, i32* @ReportResult, align 4
  %32 = call i32 @CHECK_CALLED(i32 %31)
  ret void
}

declare dso_local i32 @SET_EXPECT(i32) #1

declare dso_local i64 @IInternetProtocol_Start(i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @CHECK_CALLED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
