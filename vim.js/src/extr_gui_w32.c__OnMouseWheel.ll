; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_gui_w32.c__OnMouseWheel.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_gui_w32.c__OnMouseWheel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32 }

@curwin = common dso_local global %struct.TYPE_4__* null, align 8
@SBAR_RIGHT = common dso_local global i64 0, align 8
@SBAR_LEFT = common dso_local global i64 0, align 8
@mouse_scroll_lines = common dso_local global i32 0, align 4
@SB_LINEUP = common dso_local global i32 0, align 4
@SB_LINEDOWN = common dso_local global i32 0, align 4
@SB_PAGEUP = common dso_local global i32 0, align 4
@SB_PAGEDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i16)* @_OnMouseWheel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_OnMouseWheel(i64 %0, i16 signext %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i16 %1, i16* %4, align 2
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curwin, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = load i64, i64* @SBAR_RIGHT, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curwin, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = load i64, i64* @SBAR_RIGHT, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %7, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curwin, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = load i64, i64* @SBAR_RIGHT, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %6, align 4
  br label %57

31:                                               ; preds = %2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curwin, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load i64, i64* @SBAR_LEFT, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %31
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curwin, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load i64, i64* @SBAR_LEFT, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %7, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curwin, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = load i64, i64* @SBAR_LEFT, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %6, align 4
  br label %56

55:                                               ; preds = %31
  br label %114

56:                                               ; preds = %40
  br label %57

57:                                               ; preds = %56, %16
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curwin, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* @mouse_scroll_lines, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = call i32 (...) @init_mouse_wheel()
  br label %65

65:                                               ; preds = %63, %57
  %66 = load i32, i32* @mouse_scroll_lines, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %101

68:                                               ; preds = %65
  %69 = load i32, i32* @mouse_scroll_lines, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp sgt i32 %70, 2
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i32, i32* %6, align 4
  %74 = sub nsw i32 %73, 2
  br label %76

75:                                               ; preds = %68
  br label %76

76:                                               ; preds = %75, %72
  %77 = phi i32 [ %74, %72 ], [ 1, %75 ]
  %78 = icmp slt i32 %69, %77
  br i1 %78, label %79, label %101

79:                                               ; preds = %76
  %80 = load i32, i32* @mouse_scroll_lines, align 4
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %97, %79
  %82 = load i32, i32* %5, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %100

84:                                               ; preds = %81
  %85 = load i64, i64* %3, align 8
  %86 = load i64, i64* %7, align 8
  %87 = load i16, i16* %4, align 2
  %88 = sext i16 %87 to i32
  %89 = icmp sge i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = load i32, i32* @SB_LINEUP, align 4
  br label %94

92:                                               ; preds = %84
  %93 = load i32, i32* @SB_LINEDOWN, align 4
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi i32 [ %91, %90 ], [ %93, %92 ]
  %96 = call i32 @_OnScroll(i64 %85, i64 %86, i32 %95, i32 0)
  br label %97

97:                                               ; preds = %94
  %98 = load i32, i32* %5, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %5, align 4
  br label %81

100:                                              ; preds = %81
  br label %114

101:                                              ; preds = %76, %65
  %102 = load i64, i64* %3, align 8
  %103 = load i64, i64* %7, align 8
  %104 = load i16, i16* %4, align 2
  %105 = sext i16 %104 to i32
  %106 = icmp sge i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = load i32, i32* @SB_PAGEUP, align 4
  br label %111

109:                                              ; preds = %101
  %110 = load i32, i32* @SB_PAGEDOWN, align 4
  br label %111

111:                                              ; preds = %109, %107
  %112 = phi i32 [ %108, %107 ], [ %110, %109 ]
  %113 = call i32 @_OnScroll(i64 %102, i64 %103, i32 %112, i32 0)
  br label %114

114:                                              ; preds = %55, %111, %100
  ret void
}

declare dso_local i32 @init_mouse_wheel(...) #1

declare dso_local i32 @_OnScroll(i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
