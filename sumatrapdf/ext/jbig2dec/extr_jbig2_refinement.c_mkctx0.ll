; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2_refinement.c_mkctx0.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2_refinement.c_mkctx0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32, i32)* @mkctx0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mkctx0(%struct.TYPE_3__* %0, i32* %1, i32 %2, i32 %3) #0 {
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
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 3
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
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %47, %52
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %54, %59
  %61 = call i32 @jbig2_image_get_pixel(i32* %46, i32 %53, i32 %60)
  %62 = shl i32 %61, 3
  %63 = load i32, i32* %12, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %12, align 4
  %65 = load i32*, i32** %9, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %10, align 4
  %68 = sub nsw i32 %66, %67
  %69 = add nsw i32 %68, 1
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %11, align 4
  %72 = sub nsw i32 %70, %71
  %73 = add nsw i32 %72, 1
  %74 = call i32 @jbig2_image_get_pixel(i32* %65, i32 %69, i32 %73)
  %75 = shl i32 %74, 4
  %76 = load i32, i32* %12, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %12, align 4
  %78 = load i32*, i32** %9, align 8
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %10, align 4
  %81 = sub nsw i32 %79, %80
  %82 = add nsw i32 %81, 0
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %11, align 4
  %85 = sub nsw i32 %83, %84
  %86 = add nsw i32 %85, 1
  %87 = call i32 @jbig2_image_get_pixel(i32* %78, i32 %82, i32 %86)
  %88 = shl i32 %87, 5
  %89 = load i32, i32* %12, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %12, align 4
  %91 = load i32*, i32** %9, align 8
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %10, align 4
  %94 = sub nsw i32 %92, %93
  %95 = sub nsw i32 %94, 1
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %11, align 4
  %98 = sub nsw i32 %96, %97
  %99 = add nsw i32 %98, 1
  %100 = call i32 @jbig2_image_get_pixel(i32* %91, i32 %95, i32 %99)
  %101 = shl i32 %100, 6
  %102 = load i32, i32* %12, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %12, align 4
  %104 = load i32*, i32** %9, align 8
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* %10, align 4
  %107 = sub nsw i32 %105, %106
  %108 = add nsw i32 %107, 1
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %11, align 4
  %111 = sub nsw i32 %109, %110
  %112 = add nsw i32 %111, 0
  %113 = call i32 @jbig2_image_get_pixel(i32* %104, i32 %108, i32 %112)
  %114 = shl i32 %113, 7
  %115 = load i32, i32* %12, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %12, align 4
  %117 = load i32*, i32** %9, align 8
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* %10, align 4
  %120 = sub nsw i32 %118, %119
  %121 = add nsw i32 %120, 0
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* %11, align 4
  %124 = sub nsw i32 %122, %123
  %125 = add nsw i32 %124, 0
  %126 = call i32 @jbig2_image_get_pixel(i32* %117, i32 %121, i32 %125)
  %127 = shl i32 %126, 8
  %128 = load i32, i32* %12, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %12, align 4
  %130 = load i32*, i32** %9, align 8
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* %10, align 4
  %133 = sub nsw i32 %131, %132
  %134 = sub nsw i32 %133, 1
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* %11, align 4
  %137 = sub nsw i32 %135, %136
  %138 = add nsw i32 %137, 0
  %139 = call i32 @jbig2_image_get_pixel(i32* %130, i32 %134, i32 %138)
  %140 = shl i32 %139, 9
  %141 = load i32, i32* %12, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %12, align 4
  %143 = load i32*, i32** %9, align 8
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* %10, align 4
  %146 = sub nsw i32 %144, %145
  %147 = add nsw i32 %146, 1
  %148 = load i32, i32* %8, align 4
  %149 = load i32, i32* %11, align 4
  %150 = sub nsw i32 %148, %149
  %151 = sub nsw i32 %150, 1
  %152 = call i32 @jbig2_image_get_pixel(i32* %143, i32 %147, i32 %151)
  %153 = shl i32 %152, 10
  %154 = load i32, i32* %12, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %12, align 4
  %156 = load i32*, i32** %9, align 8
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* %10, align 4
  %159 = sub nsw i32 %157, %158
  %160 = add nsw i32 %159, 0
  %161 = load i32, i32* %8, align 4
  %162 = load i32, i32* %11, align 4
  %163 = sub nsw i32 %161, %162
  %164 = sub nsw i32 %163, 1
  %165 = call i32 @jbig2_image_get_pixel(i32* %156, i32 %160, i32 %164)
  %166 = shl i32 %165, 11
  %167 = load i32, i32* %12, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %12, align 4
  %169 = load i32*, i32** %9, align 8
  %170 = load i32, i32* %7, align 4
  %171 = load i32, i32* %10, align 4
  %172 = sub nsw i32 %170, %171
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 2
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 2
  %177 = load i32, i32* %176, align 4
  %178 = add nsw i32 %172, %177
  %179 = load i32, i32* %8, align 4
  %180 = load i32, i32* %11, align 4
  %181 = sub nsw i32 %179, %180
  %182 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 2
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 3
  %186 = load i32, i32* %185, align 4
  %187 = add nsw i32 %181, %186
  %188 = call i32 @jbig2_image_get_pixel(i32* %169, i32 %178, i32 %187)
  %189 = shl i32 %188, 12
  %190 = load i32, i32* %12, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* %12, align 4
  %192 = load i32, i32* %12, align 4
  ret i32 %192
}

declare dso_local i32 @jbig2_image_get_pixel(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
