; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/user32/extr_CloseWindow.c_DoMessage.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/user32/extr_CloseWindow.c_DoMessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WM_TIMER = common dso_local global i64 0, align 8
@s_bTracing = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"uMsg:0x%04X, wParam:0x%08lX, lParam:0x%08lX\0A\00", align 1
@WM_SYSCOMMAND = common dso_local global i64 0, align 8
@s_nWM_SYSCOMMAND = common dso_local global i32 0, align 4
@WM_NCACTIVATE = common dso_local global i64 0, align 8
@s_nWM_NCACTIVATE = common dso_local global i32 0, align 4
@WM_WINDOWPOSCHANGING = common dso_local global i64 0, align 8
@s_nWM_WINDOWPOSCHANGING = common dso_local global i32 0, align 4
@WM_ACTIVATE = common dso_local global i64 0, align 8
@s_nWM_ACTIVATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i64, i64)* @DoMessage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DoMessage(i32 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @WM_TIMER, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %15, label %12

12:                                               ; preds = %4
  %13 = load i32, i32* @s_bTracing, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12, %4
  br label %50

16:                                               ; preds = %12
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = trunc i64 %18 to i32
  %20 = load i64, i64* %8, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i32 @trace(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %17, i32 %19, i32 %21)
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @WM_SYSCOMMAND, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %16
  %27 = load i32, i32* @s_nWM_SYSCOMMAND, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* @s_nWM_SYSCOMMAND, align 4
  br label %29

29:                                               ; preds = %26, %16
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @WM_NCACTIVATE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* @s_nWM_NCACTIVATE, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* @s_nWM_NCACTIVATE, align 4
  br label %36

36:                                               ; preds = %33, %29
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @WM_WINDOWPOSCHANGING, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* @s_nWM_WINDOWPOSCHANGING, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* @s_nWM_WINDOWPOSCHANGING, align 4
  br label %43

43:                                               ; preds = %40, %36
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* @WM_ACTIVATE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* @s_nWM_ACTIVATE, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* @s_nWM_ACTIVATE, align 4
  br label %50

50:                                               ; preds = %15, %47, %43
  ret void
}

declare dso_local i32 @trace(i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
