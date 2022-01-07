; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-edgebuffer.c_fz_insert_edgebuffer.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-edgebuffer.c_fz_insert_edgebuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, float, float, float, float, i32)* @fz_insert_edgebuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fz_insert_edgebuffer(i32* %0, i32* %1, float %2, float %3, float %4, float %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store float %2, float* %10, align 4
  store float %3, float* %11, align 4
  store float %4, float* %12, align 4
  store float %5, float* %13, align 4
  store i32 %6, i32* %14, align 4
  %20 = load i32*, i32** %9, align 8
  store i32* %20, i32** %15, align 8
  %21 = load float, float* %10, align 4
  %22 = call i32 @float2fixed(float %21)
  store i32 %22, i32* %16, align 4
  %23 = load float, float* %11, align 4
  %24 = call i32 @float2fixed(float %23)
  store i32 %24, i32* %17, align 4
  %25 = load float, float* %12, align 4
  %26 = call i32 @float2fixed(float %25)
  store i32 %26, i32* %18, align 4
  %27 = load float, float* %13, align 4
  %28 = call i32 @float2fixed(float %27)
  store i32 %28, i32* %19, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = load i32*, i32** %15, align 8
  %31 = load i32, i32* %16, align 4
  %32 = load i32, i32* %17, align 4
  %33 = load i32, i32* %18, align 4
  %34 = load i32, i32* %19, align 4
  %35 = call i32 @mark_line(i32* %29, i32* %30, i32 %31, i32 %32, i32 %33, i32 %34)
  ret void
}

declare dso_local i32 @float2fixed(float) #1

declare dso_local i32 @mark_line(i32*, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
