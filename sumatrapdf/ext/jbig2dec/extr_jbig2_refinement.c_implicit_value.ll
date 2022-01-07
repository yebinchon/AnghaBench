; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2_refinement.c_implicit_value.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2_refinement.c_implicit_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32, i32)* @implicit_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @implicit_value(%struct.TYPE_3__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %9, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 %16, %19
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %21, %24
  store i32 %25, i32* %11, align 4
  %26 = load i32*, i32** %9, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @jbig2_image_get_pixel(i32* %26, i32 %27, i32 %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sub nsw i32 %31, 1
  %33 = load i32, i32* %11, align 4
  %34 = sub nsw i32 %33, 1
  %35 = call i32 @jbig2_image_get_pixel(i32* %30, i32 %32, i32 %34)
  %36 = load i32, i32* %12, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %99

38:                                               ; preds = %4
  %39 = load i32*, i32** %9, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = sub nsw i32 %41, 1
  %43 = call i32 @jbig2_image_get_pixel(i32* %39, i32 %40, i32 %42)
  %44 = load i32, i32* %12, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %99

46:                                               ; preds = %38
  %47 = load i32*, i32** %9, align 8
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, 1
  %50 = load i32, i32* %11, align 4
  %51 = sub nsw i32 %50, 1
  %52 = call i32 @jbig2_image_get_pixel(i32* %47, i32 %49, i32 %51)
  %53 = load i32, i32* %12, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %99

55:                                               ; preds = %46
  %56 = load i32*, i32** %9, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sub nsw i32 %57, 1
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @jbig2_image_get_pixel(i32* %56, i32 %58, i32 %59)
  %61 = load i32, i32* %12, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %99

63:                                               ; preds = %55
  %64 = load i32*, i32** %9, align 8
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @jbig2_image_get_pixel(i32* %64, i32 %66, i32 %67)
  %69 = load i32, i32* %12, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %99

71:                                               ; preds = %63
  %72 = load i32*, i32** %9, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sub nsw i32 %73, 1
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, 1
  %77 = call i32 @jbig2_image_get_pixel(i32* %72, i32 %74, i32 %76)
  %78 = load i32, i32* %12, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %99

80:                                               ; preds = %71
  %81 = load i32*, i32** %9, align 8
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 1
  %85 = call i32 @jbig2_image_get_pixel(i32* %81, i32 %82, i32 %84)
  %86 = load i32, i32* %12, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %99

88:                                               ; preds = %80
  %89 = load i32*, i32** %9, align 8
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, 1
  %92 = load i32, i32* %11, align 4
  %93 = add nsw i32 %92, 1
  %94 = call i32 @jbig2_image_get_pixel(i32* %89, i32 %91, i32 %93)
  %95 = load i32, i32* %12, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %88
  %98 = load i32, i32* %12, align 4
  br label %100

99:                                               ; preds = %88, %80, %71, %63, %55, %46, %38, %4
  br label %100

100:                                              ; preds = %99, %97
  %101 = phi i32 [ %98, %97 ], [ -1, %99 ]
  ret i32 %101
}

declare dso_local i32 @jbig2_image_get_pixel(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
