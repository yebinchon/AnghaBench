; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/combotst/extr_combotst.c_ReadNHide.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/combotst/extr_combotst.c_ReadNHide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@ComboStyle = common dso_local global i32 0, align 4
@NUMBERCHECKS = common dso_local global i32 0, align 4
@BST_CHECKED = common dso_local global i64 0, align 8
@Buttons = common dso_local global i32* null, align 8
@BM_GETCHECK = common dso_local global i32 0, align 4
@Styles = common dso_local global %struct.TYPE_2__* null, align 8
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
  store i32 0, i32* @ComboStyle, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %34, %0
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @NUMBERCHECKS, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %37

7:                                                ; preds = %3
  %8 = load i64, i64* @BST_CHECKED, align 8
  %9 = load i32*, i32** @Buttons, align 8
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @BM_GETCHECK, align 4
  %15 = call i64 @SendMessage(i32 %13, i32 %14, i32 0, i32 0)
  %16 = icmp eq i64 %8, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %7
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Styles, align 8
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @ComboStyle, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* @ComboStyle, align 4
  br label %26

26:                                               ; preds = %17, %7
  %27 = load i32*, i32** @Buttons, align 8
  %28 = load i32, i32* %2, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @SW_HIDE, align 4
  %33 = call i32 @ShowWindow(i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %26
  %35 = load i32, i32* %2, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %2, align 4
  br label %3

37:                                               ; preds = %3
  br label %38

38:                                               ; preds = %50, %37
  %39 = load i32, i32* %2, align 4
  %40 = load i32, i32* @NUMBERBUTTONS, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %38
  %43 = load i32*, i32** @Buttons, align 8
  %44 = load i32, i32* %2, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @SW_HIDE, align 4
  %49 = call i32 @ShowWindow(i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %42
  %51 = load i32, i32* %2, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %2, align 4
  br label %38

53:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %65, %53
  %55 = load i32, i32* %2, align 4
  %56 = icmp slt i32 %55, 26
  br i1 %56, label %57, label %68

57:                                               ; preds = %54
  %58 = load i32*, i32** @MessageButtons, align 8
  %59 = load i32, i32* %2, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @SW_SHOW, align 4
  %64 = call i32 @ShowWindow(i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %57
  %66 = load i32, i32* %2, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %2, align 4
  br label %54

68:                                               ; preds = %54
  %69 = load i32, i32* @Back1But, align 4
  %70 = load i32, i32* @SW_SHOW, align 4
  %71 = call i32 @ShowWindow(i32 %69, i32 %70)
  %72 = load i32, i32* @NextBut, align 4
  %73 = load i32, i32* @SW_SHOW, align 4
  %74 = call i32 @ShowWindow(i32 %72, i32 %73)
  %75 = load i32, i32* %1, align 4
  ret i32 %75
}

declare dso_local i64 @SendMessage(i32, i32, i32, i32) #1

declare dso_local i32 @ShowWindow(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
