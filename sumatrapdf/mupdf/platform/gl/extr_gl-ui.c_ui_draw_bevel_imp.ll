; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-ui.c_ui_draw_bevel_imp.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-ui.c_ui_draw_bevel_imp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ui_draw_bevel_imp(%struct.TYPE_3__* byval(%struct.TYPE_3__) align 8 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 %4, i32* %9, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @glColorHex(i32 %10)
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %17, 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 1
  %22 = call i32 @glRectf(i64 %13, i64 %15, i64 %18, i64 %21)
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %32, 1
  %34 = call i32 @glRectf(i64 %24, i64 %27, i64 %30, i64 %33)
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @glColorHex(i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %38, 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @glRectf(i64 %39, i64 %41, i64 %43, i64 %45)
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %50, 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %53, 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @glRectf(i64 %48, i64 %51, i64 %54, i64 %56)
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @glColorHex(i32 %58)
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, 1
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = sub nsw i64 %67, 2
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, 2
  %72 = call i32 @glRectf(i64 %62, i64 %65, i64 %68, i64 %71)
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %74, 1
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, 2
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, 2
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = sub nsw i64 %83, 2
  %85 = call i32 @glRectf(i64 %75, i64 %78, i64 %81, i64 %84)
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @glColorHex(i32 %86)
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = sub nsw i64 %89, 2
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %92, 1
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = sub nsw i64 %95, 1
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = sub nsw i64 %98, 1
  %100 = call i32 @glRectf(i64 %90, i64 %93, i64 %96, i64 %99)
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %102, 1
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = sub nsw i64 %105, 2
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = sub nsw i64 %108, 2
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = sub nsw i64 %111, 1
  %113 = call i32 @glRectf(i64 %103, i64 %106, i64 %109, i64 %112)
  ret void
}

declare dso_local i32 @glColorHex(i32) #1

declare dso_local i32 @glRectf(i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
