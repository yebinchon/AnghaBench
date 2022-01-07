; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_combo.c_COMBO_Paint.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_combo.c_COMBO_Paint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"hdc=%p\0A\00", align 1
@CBF_NOREDRAW = common dso_local global i32 0, align 4
@CBF_EDIT = common dso_local global i32 0, align 4
@CBS_DROPDOWNLIST = common dso_local global i64 0, align 8
@COLOR_WINDOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i64)* @COMBO_Paint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @COMBO_Paint(%struct.TYPE_8__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i64, i64* %4, align 8
  br label %19

14:                                               ; preds = %2
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @BeginPaint(i32 %17, i32* %5)
  br label %19

19:                                               ; preds = %14, %12
  %20 = phi i64 [ %13, %12 ], [ %18, %14 ]
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @TRACE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load i64, i64* %6, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %104

25:                                               ; preds = %19
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @CBF_NOREDRAW, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %104, label %32

32:                                               ; preds = %25
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i64 @COMBO_PrepareColors(%struct.TYPE_8__* %33, i64 %34)
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call i64 @SelectObject(i64 %36, i64 %37)
  store i64 %38, i64* %7, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @CBF_EDIT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %32
  %46 = load i64, i64* %6, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 2
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @FillRect(i64 %46, i32* %48, i64 %49)
  br label %51

51:                                               ; preds = %45, %32
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %56 = load i64, i64* %6, align 8
  %57 = call i32 @CBPaintBorder(i32 %54, %struct.TYPE_8__* %55, i64 %56)
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 3
  %60 = call i32 @IsRectEmpty(i32* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %51
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %64 = load i64, i64* %6, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @CBPaintButton(%struct.TYPE_8__* %63, i64 %64, i32 %67)
  br label %69

69:                                               ; preds = %62, %51
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %71 = call i64 @CB_GETTYPE(%struct.TYPE_8__* %70)
  %72 = load i64, i64* @CBS_DROPDOWNLIST, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %69
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %9, align 4
  %78 = call i32 (...) @EDIT_CONTROL_PADDING()
  %79 = call i32 (...) @EDIT_CONTROL_PADDING()
  %80 = call i32 @InflateRect(i32* %9, i32 %78, i32 %79)
  %81 = load i64, i64* %6, align 8
  %82 = load i32, i32* @COLOR_WINDOW, align 4
  %83 = call i32 @GetSysColorBrush(i32 %82)
  %84 = call i32 @FrameRect(i64 %81, i32* %9, i32 %83)
  br label %85

85:                                               ; preds = %74, %69
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @CBF_EDIT, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %85
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %94 = load i64, i64* %6, align 8
  %95 = call i32 @CBPaintText(%struct.TYPE_8__* %93, i64 %94)
  br label %96

96:                                               ; preds = %92, %85
  %97 = load i64, i64* %7, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load i64, i64* %6, align 8
  %101 = load i64, i64* %7, align 8
  %102 = call i64 @SelectObject(i64 %100, i64 %101)
  br label %103

103:                                              ; preds = %99, %96
  br label %104

104:                                              ; preds = %103, %25, %19
  %105 = load i64, i64* %4, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %104
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @EndPaint(i32 %110, i32* %5)
  br label %112

112:                                              ; preds = %107, %104
  ret i32 0
}

declare dso_local i64 @BeginPaint(i32, i32*) #1

declare dso_local i32 @TRACE(i8*, i64) #1

declare dso_local i64 @COMBO_PrepareColors(%struct.TYPE_8__*, i64) #1

declare dso_local i64 @SelectObject(i64, i64) #1

declare dso_local i32 @FillRect(i64, i32*, i64) #1

declare dso_local i32 @CBPaintBorder(i32, %struct.TYPE_8__*, i64) #1

declare dso_local i32 @IsRectEmpty(i32*) #1

declare dso_local i32 @CBPaintButton(%struct.TYPE_8__*, i64, i32) #1

declare dso_local i64 @CB_GETTYPE(%struct.TYPE_8__*) #1

declare dso_local i32 @InflateRect(i32*, i32, i32) #1

declare dso_local i32 @EDIT_CONTROL_PADDING(...) #1

declare dso_local i32 @FrameRect(i64, i32*, i32) #1

declare dso_local i32 @GetSysColorBrush(i32) #1

declare dso_local i32 @CBPaintText(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @EndPaint(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
