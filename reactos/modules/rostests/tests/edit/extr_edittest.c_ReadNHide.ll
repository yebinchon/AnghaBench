; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/edit/extr_edittest.c_ReadNHide.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/edit/extr_edittest.c_ReadNHide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EditStyle = common dso_local global i32 0, align 4
@BST_CHECKED = common dso_local global i64 0, align 8
@Buttons = common dso_local global i32* null, align 8
@BM_GETCHECK = common dso_local global i32 0, align 4
@EditStyles = common dso_local global i32* null, align 8
@SW_HIDE = common dso_local global i32 0, align 4
@NUMBERBUTTONS = common dso_local global i32 0, align 4
@MessageButtons = common dso_local global i32* null, align 8
@SW_SHOW = common dso_local global i32 0, align 4
@Back1But = common dso_local global i32 0, align 4
@NextBut = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ReadNHide() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* @EditStyle, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %32, %0
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 19
  br i1 %5, label %6, label %35

6:                                                ; preds = %3
  %7 = load i64, i64* @BST_CHECKED, align 8
  %8 = load i32*, i32** @Buttons, align 8
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @BM_GETCHECK, align 4
  %14 = call i64 @SendMessage(i32 %12, i32 %13, i32 0, i32 0)
  %15 = icmp eq i64 %7, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %6
  %17 = load i32*, i32** @EditStyles, align 8
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @EditStyle, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* @EditStyle, align 4
  br label %24

24:                                               ; preds = %16, %6
  %25 = load i32*, i32** @Buttons, align 8
  %26 = load i32, i32* %2, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @SW_HIDE, align 4
  %31 = call i32 @ShowWindow(i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %24
  %33 = load i32, i32* %2, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %2, align 4
  br label %3

35:                                               ; preds = %3
  br label %36

36:                                               ; preds = %48, %35
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* @NUMBERBUTTONS, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %36
  %41 = load i32*, i32** @Buttons, align 8
  %42 = load i32, i32* %2, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @SW_HIDE, align 4
  %47 = call i32 @ShowWindow(i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %40
  %49 = load i32, i32* %2, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %2, align 4
  br label %36

51:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %63, %51
  %53 = load i32, i32* %2, align 4
  %54 = icmp slt i32 %53, 26
  br i1 %54, label %55, label %66

55:                                               ; preds = %52
  %56 = load i32*, i32** @MessageButtons, align 8
  %57 = load i32, i32* %2, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @SW_SHOW, align 4
  %62 = call i32 @ShowWindow(i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %55
  %64 = load i32, i32* %2, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %2, align 4
  br label %52

66:                                               ; preds = %52
  %67 = load i32, i32* @Back1But, align 4
  %68 = load i32, i32* @SW_SHOW, align 4
  %69 = call i32 @ShowWindow(i32 %67, i32 %68)
  %70 = load i32, i32* @NextBut, align 4
  %71 = load i32, i32* @SW_SHOW, align 4
  %72 = call i32 @ShowWindow(i32 %70, i32 %71)
  %73 = load i32, i32* %1, align 4
  ret i32 %73
}

declare dso_local i64 @SendMessage(i32, i32, i32, i32) #1

declare dso_local i32 @ShowWindow(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
