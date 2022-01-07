; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_protocol.c_test_protocol_fail.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_protocol.c_test_protocol_fail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GetBindInfo = common dso_local global i32 0, align 4
@ReportResult = common dso_local global i32 0, align 4
@expect_hrResult = common dso_local global i32 0, align 4
@expect_hr_win32err = common dso_local global i64 0, align 8
@protocol_sink = common dso_local global i32 0, align 4
@bind_info = common dso_local global i32 0, align 4
@FACILITY_WIN32 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"expected win32 err or %08x got: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"expected: %08x got: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i64)* @test_protocol_fail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_protocol_fail(i32* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %10 = load i32, i32* @GetBindInfo, align 4
  %11 = call i32 @SET_EXPECT(i32 %10)
  %12 = load i32, i32* @ReportResult, align 4
  %13 = call i32 @SET_EXPECT(i32 %12)
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* @expect_hrResult, align 4
  %15 = load i64, i64* %8, align 8
  store i64 %15, i64* @expect_hr_win32err, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @IInternetProtocol_Start(i32* %16, i32 %17, i32* @protocol_sink, i32* @bind_info, i32 0, i32 0)
  store i32 %18, i32* %9, align 4
  %19 = load i64, i64* %8, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %4
  %22 = load i32, i32* %9, align 4
  %23 = and i32 %22, -65536
  %24 = load i32, i32* @FACILITY_WIN32, align 4
  %25 = shl i32 %24, 16
  %26 = or i32 %25, -2147483648
  %27 = icmp eq i32 %23, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @expect_hrResult, align 4
  %31 = icmp eq i32 %29, %30
  br label %32

32:                                               ; preds = %28, %21
  %33 = phi i1 [ true, %21 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @ok(i32 %34, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36)
  br label %46

38:                                               ; preds = %4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @expect_hrResult, align 4
  %41 = icmp eq i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* @expect_hrResult, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @ok(i32 %42, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %38, %32
  %47 = load i32, i32* @GetBindInfo, align 4
  %48 = call i32 @CHECK_CALLED(i32 %47)
  %49 = load i32, i32* @ReportResult, align 4
  %50 = call i32 @CHECK_CALLED(i32 %49)
  ret void
}

declare dso_local i32 @SET_EXPECT(i32) #1

declare dso_local i32 @IInternetProtocol_Start(i32*, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i32, i32) #1

declare dso_local i32 @CHECK_CALLED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
