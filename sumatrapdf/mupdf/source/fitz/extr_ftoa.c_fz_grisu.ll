; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_ftoa.c_fz_grisu.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_ftoa.c_fz_grisu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }

@DIY_SIGNIFICAND_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fz_grisu(float %0, i8* %1, i32* %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_13__, align 4
  %8 = alloca %struct.TYPE_13__, align 4
  %9 = alloca %struct.TYPE_13__, align 4
  %10 = alloca %struct.TYPE_13__, align 4
  %11 = alloca %struct.TYPE_13__, align 4
  %12 = alloca %struct.TYPE_13__, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_13__, align 4
  %17 = alloca %struct.TYPE_13__, align 4
  %18 = alloca %struct.TYPE_13__, align 4
  %19 = alloca %struct.TYPE_13__, align 4
  store float %0, float* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %20 = load i32, i32* @DIY_SIGNIFICAND_SIZE, align 4
  %21 = sub nsw i32 0, %20
  %22 = add nsw i32 %21, 4
  store i32 %22, i32* %15, align 4
  %23 = load float, float* %4, align 4
  %24 = call i32 @normalized_boundaries(float %23, %struct.TYPE_13__* %7, %struct.TYPE_13__* %8)
  %25 = load i32, i32* %15, align 4
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %25, %27
  %29 = load i32, i32* @DIY_SIGNIFICAND_SIZE, align 4
  %30 = sub nsw i32 %28, %29
  %31 = call i32 @k_comp(i32 %30)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = call i64 @cached_power(i32 %32)
  %34 = bitcast %struct.TYPE_13__* %16 to i64*
  store i64 %33, i64* %34, align 4
  %35 = bitcast %struct.TYPE_13__* %11 to i8*
  %36 = bitcast %struct.TYPE_13__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 4 %36, i64 8, i1 false)
  %37 = bitcast %struct.TYPE_13__* %8 to i64*
  %38 = load i64, i64* %37, align 4
  %39 = bitcast %struct.TYPE_13__* %11 to i64*
  %40 = load i64, i64* %39, align 4
  %41 = call i64 @multiply(i64 %38, i64 %40)
  %42 = bitcast %struct.TYPE_13__* %17 to i64*
  store i64 %41, i64* %42, align 4
  %43 = bitcast %struct.TYPE_13__* %9 to i8*
  %44 = bitcast %struct.TYPE_13__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %43, i8* align 4 %44, i64 8, i1 false)
  %45 = bitcast %struct.TYPE_13__* %7 to i64*
  %46 = load i64, i64* %45, align 4
  %47 = bitcast %struct.TYPE_13__* %11 to i64*
  %48 = load i64, i64* %47, align 4
  %49 = call i64 @multiply(i64 %46, i64 %48)
  %50 = bitcast %struct.TYPE_13__* %18 to i64*
  store i64 %49, i64* %50, align 4
  %51 = bitcast %struct.TYPE_13__* %10 to i8*
  %52 = bitcast %struct.TYPE_13__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %51, i8* align 4 %52, i64 8, i1 false)
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %53, align 4
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  %59 = bitcast %struct.TYPE_13__* %9 to i64*
  %60 = load i64, i64* %59, align 4
  %61 = bitcast %struct.TYPE_13__* %10 to i64*
  %62 = load i64, i64* %61, align 4
  %63 = call i64 @minus(i64 %60, i64 %62)
  %64 = bitcast %struct.TYPE_13__* %19 to i64*
  store i64 %63, i64* %64, align 4
  %65 = bitcast %struct.TYPE_13__* %12 to i8*
  %66 = bitcast %struct.TYPE_13__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %65, i8* align 4 %66, i64 8, i1 false)
  %67 = load i32, i32* %14, align 4
  %68 = sub nsw i32 0, %67
  %69 = load i32*, i32** %6, align 8
  store i32 %68, i32* %69, align 4
  %70 = load i8*, i8** %5, align 8
  %71 = load i32*, i32** %6, align 8
  %72 = bitcast %struct.TYPE_13__* %9 to i64*
  %73 = load i64, i64* %72, align 4
  %74 = bitcast %struct.TYPE_13__* %12 to i64*
  %75 = load i64, i64* %74, align 4
  %76 = call i32 @digit_gen_mix_grisu2(i64 %73, i64 %75, i8* %70, i32* %71)
  store i32 %76, i32* %13, align 4
  %77 = load i8*, i8** %5, align 8
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  store i8 0, i8* %80, align 1
  %81 = load i32, i32* %13, align 4
  ret i32 %81
}

declare dso_local i32 @normalized_boundaries(float, %struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i32 @k_comp(i32) #1

declare dso_local i64 @cached_power(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @multiply(i64, i64) #1

declare dso_local i64 @minus(i64, i64) #1

declare dso_local i32 @digit_gen_mix_grisu2(i64, i64, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
