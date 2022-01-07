; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2_refinement.c_mkctx1.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2_refinement.c_mkctx1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32, i32)* @mkctx1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mkctx1(%struct.TYPE_3__* %0, i32* %1, i32 %2, i32 %3) #0 {
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
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %10, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %11, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sub nsw i32 %23, 1
  %25 = load i32, i32* %8, align 4
  %26 = add nsw i32 %25, 0
  %27 = call i32 @jbig2_image_get_pixel(i32* %22, i32 %24, i32 %26)
  store i32 %27, i32* %12, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 1
  %31 = load i32, i32* %8, align 4
  %32 = sub nsw i32 %31, 1
  %33 = call i32 @jbig2_image_get_pixel(i32* %28, i32 %30, i32 %32)
  %34 = shl i32 %33, 1
  %35 = load i32, i32* %12, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %12, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 0
  %40 = load i32, i32* %8, align 4
  %41 = sub nsw i32 %40, 1
  %42 = call i32 @jbig2_image_get_pixel(i32* %37, i32 %39, i32 %41)
  %43 = shl i32 %42, 2
  %44 = load i32, i32* %12, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %12, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sub nsw i32 %47, 1
  %49 = load i32, i32* %8, align 4
  %50 = sub nsw i32 %49, 1
  %51 = call i32 @jbig2_image_get_pixel(i32* %46, i32 %48, i32 %50)
  %52 = shl i32 %51, 3
  %53 = load i32, i32* %12, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %12, align 4
  %55 = load i32*, i32** %9, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %10, align 4
  %58 = sub nsw i32 %56, %57
  %59 = add nsw i32 %58, 1
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %11, align 4
  %62 = sub nsw i32 %60, %61
  %63 = add nsw i32 %62, 1
  %64 = call i32 @jbig2_image_get_pixel(i32* %55, i32 %59, i32 %63)
  %65 = shl i32 %64, 4
  %66 = load i32, i32* %12, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %12, align 4
  %68 = load i32*, i32** %9, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %10, align 4
  %71 = sub nsw i32 %69, %70
  %72 = add nsw i32 %71, 0
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %11, align 4
  %75 = sub nsw i32 %73, %74
  %76 = add nsw i32 %75, 1
  %77 = call i32 @jbig2_image_get_pixel(i32* %68, i32 %72, i32 %76)
  %78 = shl i32 %77, 5
  %79 = load i32, i32* %12, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %12, align 4
  %81 = load i32*, i32** %9, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %10, align 4
  %84 = sub nsw i32 %82, %83
  %85 = add nsw i32 %84, 1
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %11, align 4
  %88 = sub nsw i32 %86, %87
  %89 = add nsw i32 %88, 0
  %90 = call i32 @jbig2_image_get_pixel(i32* %81, i32 %85, i32 %89)
  %91 = shl i32 %90, 6
  %92 = load i32, i32* %12, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %12, align 4
  %94 = load i32*, i32** %9, align 8
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %10, align 4
  %97 = sub nsw i32 %95, %96
  %98 = add nsw i32 %97, 0
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %11, align 4
  %101 = sub nsw i32 %99, %100
  %102 = add nsw i32 %101, 0
  %103 = call i32 @jbig2_image_get_pixel(i32* %94, i32 %98, i32 %102)
  %104 = shl i32 %103, 7
  %105 = load i32, i32* %12, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %12, align 4
  %107 = load i32*, i32** %9, align 8
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* %10, align 4
  %110 = sub nsw i32 %108, %109
  %111 = sub nsw i32 %110, 1
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* %11, align 4
  %114 = sub nsw i32 %112, %113
  %115 = add nsw i32 %114, 0
  %116 = call i32 @jbig2_image_get_pixel(i32* %107, i32 %111, i32 %115)
  %117 = shl i32 %116, 8
  %118 = load i32, i32* %12, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %12, align 4
  %120 = load i32*, i32** %9, align 8
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* %10, align 4
  %123 = sub nsw i32 %121, %122
  %124 = add nsw i32 %123, 0
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* %11, align 4
  %127 = sub nsw i32 %125, %126
  %128 = sub nsw i32 %127, 1
  %129 = call i32 @jbig2_image_get_pixel(i32* %120, i32 %124, i32 %128)
  %130 = shl i32 %129, 9
  %131 = load i32, i32* %12, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %12, align 4
  %133 = load i32, i32* %12, align 4
  ret i32 %133
}

declare dso_local i32 @jbig2_image_get_pixel(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
