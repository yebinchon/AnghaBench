; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_htmldoc.c_test_timer.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_htmldoc.c_test_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@called_Exec_SETTITLE = common dso_local global i32 0, align 4
@EXPECT_UPDATEUI = common dso_local global i32 0, align 4
@UpdateUI = common dso_local global i32 0, align 4
@Exec_UPDATECOMMANDS = common dso_local global i32 0, align 4
@called_UpdateUI = common dso_local global i32 0, align 4
@EXPECT_SETTITLE = common dso_local global i32 0, align 4
@Exec_SETTITLE = common dso_local global i32 0, align 4
@doc_hwnd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @test_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_timer(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32* @called_Exec_SETTITLE, i32** %3, align 8
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @EXPECT_UPDATEUI, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load i32, i32* @UpdateUI, align 4
  %11 = call i32 @SET_EXPECT(i32 %10)
  %12 = load i32, i32* @Exec_UPDATECOMMANDS, align 4
  %13 = call i32 @SET_EXPECT(i32 %12)
  store i32* @called_UpdateUI, i32** %3, align 8
  br label %14

14:                                               ; preds = %9, %1
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @EXPECT_SETTITLE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32, i32* @Exec_SETTITLE, align 4
  %21 = call i32 @SET_EXPECT(i32 %20)
  br label %22

22:                                               ; preds = %19, %14
  br label %23

23:                                               ; preds = %33, %22
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @doc_hwnd, align 4
  %29 = call i64 @GetMessageA(i32* %4, i32 %28, i32 0, i32 0)
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %27, %23
  %32 = phi i1 [ false, %23 ], [ %30, %27 ]
  br i1 %32, label %33, label %36

33:                                               ; preds = %31
  %34 = call i32 @TranslateMessage(i32* %4)
  %35 = call i32 @DispatchMessageA(i32* %4)
  br label %23

36:                                               ; preds = %31
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* @EXPECT_UPDATEUI, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load i32, i32* @UpdateUI, align 4
  %43 = call i32 @CHECK_CALLED(i32 %42)
  %44 = load i32, i32* @Exec_UPDATECOMMANDS, align 4
  %45 = call i32 @CHECK_CALLED(i32 %44)
  br label %46

46:                                               ; preds = %41, %36
  %47 = load i32, i32* %2, align 4
  %48 = load i32, i32* @EXPECT_SETTITLE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* @Exec_SETTITLE, align 4
  %53 = call i32 @CHECK_CALLED(i32 %52)
  br label %54

54:                                               ; preds = %51, %46
  ret void
}

declare dso_local i32 @SET_EXPECT(i32) #1

declare dso_local i64 @GetMessageA(i32*, i32, i32, i32) #1

declare dso_local i32 @TranslateMessage(i32*) #1

declare dso_local i32 @DispatchMessageA(i32*) #1

declare dso_local i32 @CHECK_CALLED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
