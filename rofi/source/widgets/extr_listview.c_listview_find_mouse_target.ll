; ModuleID = '/home/carl/AnghaBench/rofi/source/widgets/extr_listview.c_listview_find_mouse_target.c'
source_filename = "/home/carl/AnghaBench/rofi/source/widgets/extr_listview.c_listview_find_mouse_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__*, i64, i64, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i64, i64)* @listview_find_mouse_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @listview_find_mouse_target(i32* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i32* null, i32** %9, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = bitcast i32* %16 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %12, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call i32* @WIDGET(i32 %20)
  %22 = call i64 @widget_enabled(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %56

24:                                               ; preds = %4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = call i32* @WIDGET(i32 %27)
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call i64 @widget_intersect(i32* %28, i64 %29, i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %56

33:                                               ; preds = %24
  %34 = load i64, i64* %7, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i32* @WIDGET(i32 %37)
  %39 = call i64 @widget_get_x_pos(i32* %38)
  %40 = sub nsw i64 %34, %39
  store i64 %40, i64* %10, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = call i32* @WIDGET(i32 %44)
  %46 = call i64 @widget_get_y_pos(i32* %45)
  %47 = sub nsw i64 %41, %46
  store i64 %47, i64* %11, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = call i32* @WIDGET(i32 %50)
  %52 = load i32, i32* %6, align 4
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* %11, align 8
  %55 = call i32* @widget_find_mouse_target(i32* %51, i32 %52, i64 %53, i64 %54)
  store i32* %55, i32** %9, align 8
  br label %56

56:                                               ; preds = %33, %24, %4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %62, %65
  %67 = call i32 @MIN(i32 %59, i64 %66)
  store i32 %67, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %68

68:                                               ; preds = %107, %56
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %13, align 4
  %71 = icmp ult i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i32*, i32** %9, align 8
  %74 = icmp eq i32* %73, null
  br label %75

75:                                               ; preds = %72, %68
  %76 = phi i1 [ false, %68 ], [ %74, %72 ]
  br i1 %76, label %77, label %110

77:                                               ; preds = %75
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = load i32, i32* %14, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32* @WIDGET(i32 %85)
  store i32* %86, i32** %15, align 8
  %87 = load i32*, i32** %15, align 8
  %88 = load i64, i64* %7, align 8
  %89 = load i64, i64* %8, align 8
  %90 = call i64 @widget_intersect(i32* %87, i64 %88, i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %106

92:                                               ; preds = %77
  %93 = load i64, i64* %7, align 8
  %94 = load i32*, i32** %15, align 8
  %95 = call i64 @widget_get_x_pos(i32* %94)
  %96 = sub nsw i64 %93, %95
  store i64 %96, i64* %10, align 8
  %97 = load i64, i64* %8, align 8
  %98 = load i32*, i32** %15, align 8
  %99 = call i64 @widget_get_y_pos(i32* %98)
  %100 = sub nsw i64 %97, %99
  store i64 %100, i64* %11, align 8
  %101 = load i32*, i32** %15, align 8
  %102 = load i32, i32* %6, align 4
  %103 = load i64, i64* %10, align 8
  %104 = load i64, i64* %11, align 8
  %105 = call i32* @widget_find_mouse_target(i32* %101, i32 %102, i64 %103, i64 %104)
  store i32* %105, i32** %9, align 8
  br label %106

106:                                              ; preds = %92, %77
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %14, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %14, align 4
  br label %68

110:                                              ; preds = %75
  %111 = load i32*, i32** %9, align 8
  ret i32* %111
}

declare dso_local i64 @widget_enabled(i32*) #1

declare dso_local i32* @WIDGET(i32) #1

declare dso_local i64 @widget_intersect(i32*, i64, i64) #1

declare dso_local i64 @widget_get_x_pos(i32*) #1

declare dso_local i64 @widget_get_y_pos(i32*) #1

declare dso_local i32* @widget_find_mouse_target(i32*, i32, i64, i64) #1

declare dso_local i32 @MIN(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
