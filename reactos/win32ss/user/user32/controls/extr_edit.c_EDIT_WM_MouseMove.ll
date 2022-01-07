; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_edit.c_EDIT_WM_MouseMove.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_edit.c_EDIT_WM_MouseMove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32, i32, i32, i32, i32 }

@EF_AFTER_WRAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i64, i64)* @EDIT_WM_MouseMove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @EDIT_WM_MouseMove(%struct.TYPE_7__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = call i64 (...) @GetCapture()
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16, %3
  store i32 0, i32* %4, align 4
  br label %77

23:                                               ; preds = %16
  %24 = load i64, i64* %6, align 8
  store i64 %24, i64* %10, align 8
  %25 = load i64, i64* %7, align 8
  store i64 %25, i64* %11, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %27 = call i32 @EDIT_ConfinePoint(%struct.TYPE_7__* %26, i64* %6, i64* %7)
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %38

32:                                               ; preds = %23
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* %6, align 8
  %35 = icmp sgt i64 %33, %34
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 1, i32 0
  br label %38

38:                                               ; preds = %32, %31
  %39 = phi i32 [ -1, %31 ], [ %37, %32 ]
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* %7, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %52

46:                                               ; preds = %38
  %47 = load i64, i64* %11, align 8
  %48 = load i64, i64* %7, align 8
  %49 = icmp sgt i64 %47, %48
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 1, i32 0
  br label %52

52:                                               ; preds = %46, %45
  %53 = phi i32 [ -1, %45 ], [ %51, %46 ]
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* %7, align 8
  %59 = call i64 @EDIT_CharFromPos(%struct.TYPE_7__* %56, i64 %57, i64 %58, i32* %9)
  store i64 %59, i64* %8, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 8
  %64 = load i64, i64* %8, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @EDIT_EM_SetSel(%struct.TYPE_7__* %60, i32 %63, i64 %64, i32 %65)
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @EF_AFTER_WRAP, align 4
  %75 = and i32 %73, %74
  %76 = call i32 @EDIT_SetCaretPos(%struct.TYPE_7__* %67, i32 %70, i32 %75)
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %52, %22
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i64 @GetCapture(...) #1

declare dso_local i32 @EDIT_ConfinePoint(%struct.TYPE_7__*, i64*, i64*) #1

declare dso_local i64 @EDIT_CharFromPos(%struct.TYPE_7__*, i64, i64, i32*) #1

declare dso_local i32 @EDIT_EM_SetSel(%struct.TYPE_7__*, i32, i64, i32) #1

declare dso_local i32 @EDIT_SetCaretPos(%struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
