; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_draw.c_UITOOLS95_DFC_ButtonPush.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_draw.c_UITOOLS95_DFC_ButtonPush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DFCS_PUSHED = common dso_local global i32 0, align 4
@DFCS_CHECKED = common dso_local global i32 0, align 4
@DFCS_FLAT = common dso_local global i32 0, align 4
@EDGE_SUNKEN = common dso_local global i32 0, align 4
@EDGE_RAISED = common dso_local global i32 0, align 4
@DFCS_MONO = common dso_local global i32 0, align 4
@BF_MONO = common dso_local global i32 0, align 4
@BF_RECT = common dso_local global i32 0, align 4
@BF_ADJUST = common dso_local global i32 0, align 4
@BF_SOFT = common dso_local global i32 0, align 4
@COLOR_BTNFACE = common dso_local global i32 0, align 4
@BF_MIDDLE = common dso_local global i32 0, align 4
@DFCS_ADJUSTRECT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32)* @UITOOLS95_DFC_ButtonPush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @UITOOLS95_DFC_ButtonPush(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @DFCS_PUSHED, align 4
  %13 = load i32, i32* @DFCS_CHECKED, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @DFCS_FLAT, align 4
  %16 = or i32 %14, %15
  %17 = and i32 %11, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @EDGE_SUNKEN, align 4
  store i32 %20, i32* %7, align 4
  br label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @EDGE_RAISED, align 4
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @DFCS_CHECKED, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %58

28:                                               ; preds = %23
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @DFCS_MONO, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %28
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @BF_MONO, align 4
  %37 = load i32, i32* @BF_RECT, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @BF_ADJUST, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @IntDrawRectEdge(i32 %34, i32* %8, i32 %35, i32 %40, i32 1)
  br label %55

42:                                               ; preds = %28
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @DFCS_FLAT, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* @BF_RECT, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @BF_SOFT, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @BF_ADJUST, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @IntDrawRectEdge(i32 %43, i32* %8, i32 %44, i32 %53, i32 1)
  br label %55

55:                                               ; preds = %42, %33
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @UITOOLS_DrawCheckedRect(i32 %56, i32* %8)
  br label %91

58:                                               ; preds = %23
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @DFCS_MONO, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %58
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @BF_MONO, align 4
  %67 = load i32, i32* @BF_RECT, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @BF_ADJUST, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @IntDrawRectEdge(i32 %64, i32* %8, i32 %65, i32 %70, i32 1)
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @COLOR_BTNFACE, align 4
  %74 = call i32 @GetSysColorBrush(i32 %73)
  %75 = call i32 @FillRect(i32 %72, i32* %8, i32 %74)
  br label %90

76:                                               ; preds = %58
  %77 = load i32, i32* %4, align 4
  %78 = load i32*, i32** %5, align 8
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @DFCS_FLAT, align 4
  %82 = and i32 %80, %81
  %83 = load i32, i32* @BF_MIDDLE, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @BF_RECT, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @BF_SOFT, align 4
  %88 = or i32 %86, %87
  %89 = call i32 @IntDrawRectEdge(i32 %77, i32* %78, i32 %79, i32 %88, i32 1)
  br label %90

90:                                               ; preds = %76, %63
  br label %91

91:                                               ; preds = %90, %55
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @DFCS_ADJUSTRECT, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i32*, i32** %5, align 8
  %98 = call i32 @InflateRect(i32* %97, i32 -2, i32 -2)
  br label %99

99:                                               ; preds = %96, %91
  %100 = load i32, i32* @TRUE, align 4
  ret i32 %100
}

declare dso_local i32 @IntDrawRectEdge(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @UITOOLS_DrawCheckedRect(i32, i32*) #1

declare dso_local i32 @FillRect(i32, i32*, i32) #1

declare dso_local i32 @GetSysColorBrush(i32) #1

declare dso_local i32 @InflateRect(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
