; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_geometry.c_fz_round_rect.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_geometry.c_fz_round_rect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_5__ = type { i64, i64, i64, i64 }

@MIN_SAFE_INT = common dso_local global i32 0, align 4
@MAX_SAFE_INT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fz_round_rect(%struct.TYPE_6__* noalias sret %0, %struct.TYPE_5__* byval(%struct.TYPE_5__) align 8 %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 3
  %5 = load i64, i64* %4, align 8
  %6 = sitofp i64 %5 to float
  %7 = fadd float %6, 0x3F50624DE0000000
  %8 = fptosi float %7 to i64
  %9 = call i32 @floorf(i64 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @MIN_SAFE_INT, align 4
  %12 = load i32, i32* @MAX_SAFE_INT, align 4
  %13 = call i8* @fz_clamp(i32 %10, i32 %11, i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  store i8* %13, i8** %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = sitofp i64 %16 to float
  %18 = fadd float %17, 0x3F50624DE0000000
  %19 = fptosi float %18 to i64
  %20 = call i32 @floorf(i64 %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @MIN_SAFE_INT, align 4
  %23 = load i32, i32* @MAX_SAFE_INT, align 4
  %24 = call i8* @fz_clamp(i32 %21, i32 %22, i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  store i8* %24, i8** %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = sitofp i64 %27 to float
  %29 = fsub float %28, 0x3F50624DE0000000
  %30 = fptosi float %29 to i64
  %31 = call i32 @ceilf(i64 %30)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @MIN_SAFE_INT, align 4
  %34 = load i32, i32* @MAX_SAFE_INT, align 4
  %35 = call i8* @fz_clamp(i32 %32, i32 %33, i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  store i8* %35, i8** %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = sitofp i64 %38 to float
  %40 = fsub float %39, 0x3F50624DE0000000
  %41 = fptosi float %40 to i64
  %42 = call i32 @ceilf(i64 %41)
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @MIN_SAFE_INT, align 4
  %45 = load i32, i32* @MAX_SAFE_INT, align 4
  %46 = call i8* @fz_clamp(i32 %43, i32 %44, i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  store i8* %46, i8** %47, align 8
  ret void
}

declare dso_local i32 @floorf(i64) #1

declare dso_local i8* @fz_clamp(i32, i32, i32) #1

declare dso_local i32 @ceilf(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
