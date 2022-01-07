; ModuleID = '/home/carl/AnghaBench/vlc/modules/visualization/extr_glspectrum.c_drawBar.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/visualization/extr_glspectrum.c_drawBar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPECTRUM_WIDTH = common dso_local global float 0.000000e+00, align 4
@NB_BANDS = common dso_local global float 0.000000e+00, align 4
@__const.drawBar.normals = private unnamed_addr constant [90 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00], align 16
@GL_FLOAT = common dso_local global i32 0, align 4
@GL_TRIANGLES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @drawBar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drawBar() #0 {
  %1 = alloca float, align 4
  %2 = alloca [90 x float], align 16
  %3 = alloca [90 x float], align 16
  %4 = load float, float* @SPECTRUM_WIDTH, align 4
  %5 = load float, float* @NB_BANDS, align 4
  %6 = fdiv float %4, %5
  %7 = fsub float %6, 0x3FA99999A0000000
  store float %7, float* %1, align 4
  %8 = getelementptr inbounds [90 x float], [90 x float]* %2, i64 0, i64 0
  store float 0.000000e+00, float* %8, align 4
  %9 = getelementptr inbounds float, float* %8, i64 1
  store float 0.000000e+00, float* %9, align 4
  %10 = getelementptr inbounds float, float* %9, i64 1
  store float 0.000000e+00, float* %10, align 4
  %11 = getelementptr inbounds float, float* %10, i64 1
  %12 = load float, float* %1, align 4
  store float %12, float* %11, align 4
  %13 = getelementptr inbounds float, float* %11, i64 1
  store float 0.000000e+00, float* %13, align 4
  %14 = getelementptr inbounds float, float* %13, i64 1
  store float 0.000000e+00, float* %14, align 4
  %15 = getelementptr inbounds float, float* %14, i64 1
  store float 0.000000e+00, float* %15, align 4
  %16 = getelementptr inbounds float, float* %15, i64 1
  store float 1.000000e+00, float* %16, align 4
  %17 = getelementptr inbounds float, float* %16, i64 1
  store float 0.000000e+00, float* %17, align 4
  %18 = getelementptr inbounds float, float* %17, i64 1
  store float 0.000000e+00, float* %18, align 4
  %19 = getelementptr inbounds float, float* %18, i64 1
  store float 1.000000e+00, float* %19, align 4
  %20 = getelementptr inbounds float, float* %19, i64 1
  store float 0.000000e+00, float* %20, align 4
  %21 = getelementptr inbounds float, float* %20, i64 1
  %22 = load float, float* %1, align 4
  store float %22, float* %21, align 4
  %23 = getelementptr inbounds float, float* %21, i64 1
  store float 0.000000e+00, float* %23, align 4
  %24 = getelementptr inbounds float, float* %23, i64 1
  store float 0.000000e+00, float* %24, align 4
  %25 = getelementptr inbounds float, float* %24, i64 1
  %26 = load float, float* %1, align 4
  store float %26, float* %25, align 4
  %27 = getelementptr inbounds float, float* %25, i64 1
  store float 1.000000e+00, float* %27, align 4
  %28 = getelementptr inbounds float, float* %27, i64 1
  store float 0.000000e+00, float* %28, align 4
  %29 = getelementptr inbounds float, float* %28, i64 1
  store float 0.000000e+00, float* %29, align 4
  %30 = getelementptr inbounds float, float* %29, i64 1
  store float 0.000000e+00, float* %30, align 4
  %31 = getelementptr inbounds float, float* %30, i64 1
  %32 = load float, float* %1, align 4
  %33 = fneg float %32
  store float %33, float* %31, align 4
  %34 = getelementptr inbounds float, float* %31, i64 1
  store float 0.000000e+00, float* %34, align 4
  %35 = getelementptr inbounds float, float* %34, i64 1
  store float 0.000000e+00, float* %35, align 4
  %36 = getelementptr inbounds float, float* %35, i64 1
  store float 0.000000e+00, float* %36, align 4
  %37 = getelementptr inbounds float, float* %36, i64 1
  store float 0.000000e+00, float* %37, align 4
  %38 = getelementptr inbounds float, float* %37, i64 1
  store float 1.000000e+00, float* %38, align 4
  %39 = getelementptr inbounds float, float* %38, i64 1
  %40 = load float, float* %1, align 4
  %41 = fneg float %40
  store float %41, float* %39, align 4
  %42 = getelementptr inbounds float, float* %39, i64 1
  store float 0.000000e+00, float* %42, align 4
  %43 = getelementptr inbounds float, float* %42, i64 1
  store float 1.000000e+00, float* %43, align 4
  %44 = getelementptr inbounds float, float* %43, i64 1
  %45 = load float, float* %1, align 4
  %46 = fneg float %45
  store float %46, float* %44, align 4
  %47 = getelementptr inbounds float, float* %44, i64 1
  store float 0.000000e+00, float* %47, align 4
  %48 = getelementptr inbounds float, float* %47, i64 1
  store float 0.000000e+00, float* %48, align 4
  %49 = getelementptr inbounds float, float* %48, i64 1
  store float 0.000000e+00, float* %49, align 4
  %50 = getelementptr inbounds float, float* %49, i64 1
  store float 0.000000e+00, float* %50, align 4
  %51 = getelementptr inbounds float, float* %50, i64 1
  store float 1.000000e+00, float* %51, align 4
  %52 = getelementptr inbounds float, float* %51, i64 1
  store float 0.000000e+00, float* %52, align 4
  %53 = getelementptr inbounds float, float* %52, i64 1
  %54 = load float, float* %1, align 4
  store float %54, float* %53, align 4
  %55 = getelementptr inbounds float, float* %53, i64 1
  store float 0.000000e+00, float* %55, align 4
  %56 = getelementptr inbounds float, float* %55, i64 1
  store float 0.000000e+00, float* %56, align 4
  %57 = getelementptr inbounds float, float* %56, i64 1
  %58 = load float, float* %1, align 4
  store float %58, float* %57, align 4
  %59 = getelementptr inbounds float, float* %57, i64 1
  store float 0.000000e+00, float* %59, align 4
  %60 = getelementptr inbounds float, float* %59, i64 1
  %61 = load float, float* %1, align 4
  %62 = fneg float %61
  store float %62, float* %60, align 4
  %63 = getelementptr inbounds float, float* %60, i64 1
  %64 = load float, float* %1, align 4
  store float %64, float* %63, align 4
  %65 = getelementptr inbounds float, float* %63, i64 1
  store float 1.000000e+00, float* %65, align 4
  %66 = getelementptr inbounds float, float* %65, i64 1
  store float 0.000000e+00, float* %66, align 4
  %67 = getelementptr inbounds float, float* %66, i64 1
  %68 = load float, float* %1, align 4
  store float %68, float* %67, align 4
  %69 = getelementptr inbounds float, float* %67, i64 1
  store float 1.000000e+00, float* %69, align 4
  %70 = getelementptr inbounds float, float* %69, i64 1
  store float 0.000000e+00, float* %70, align 4
  %71 = getelementptr inbounds float, float* %70, i64 1
  %72 = load float, float* %1, align 4
  store float %72, float* %71, align 4
  %73 = getelementptr inbounds float, float* %71, i64 1
  store float 0.000000e+00, float* %73, align 4
  %74 = getelementptr inbounds float, float* %73, i64 1
  %75 = load float, float* %1, align 4
  %76 = fneg float %75
  store float %76, float* %74, align 4
  %77 = getelementptr inbounds float, float* %74, i64 1
  %78 = load float, float* %1, align 4
  store float %78, float* %77, align 4
  %79 = getelementptr inbounds float, float* %77, i64 1
  store float 1.000000e+00, float* %79, align 4
  %80 = getelementptr inbounds float, float* %79, i64 1
  %81 = load float, float* %1, align 4
  %82 = fneg float %81
  store float %82, float* %80, align 4
  %83 = getelementptr inbounds float, float* %80, i64 1
  %84 = load float, float* %1, align 4
  store float %84, float* %83, align 4
  %85 = getelementptr inbounds float, float* %83, i64 1
  store float 0.000000e+00, float* %85, align 4
  %86 = getelementptr inbounds float, float* %85, i64 1
  %87 = load float, float* %1, align 4
  %88 = fneg float %87
  store float %88, float* %86, align 4
  %89 = getelementptr inbounds float, float* %86, i64 1
  store float 0.000000e+00, float* %89, align 4
  %90 = getelementptr inbounds float, float* %89, i64 1
  store float 0.000000e+00, float* %90, align 4
  %91 = getelementptr inbounds float, float* %90, i64 1
  %92 = load float, float* %1, align 4
  %93 = fneg float %92
  store float %93, float* %91, align 4
  %94 = getelementptr inbounds float, float* %91, i64 1
  store float 0.000000e+00, float* %94, align 4
  %95 = getelementptr inbounds float, float* %94, i64 1
  store float 1.000000e+00, float* %95, align 4
  %96 = getelementptr inbounds float, float* %95, i64 1
  %97 = load float, float* %1, align 4
  %98 = fneg float %97
  store float %98, float* %96, align 4
  %99 = getelementptr inbounds float, float* %96, i64 1
  store float 0.000000e+00, float* %99, align 4
  %100 = getelementptr inbounds float, float* %99, i64 1
  store float 1.000000e+00, float* %100, align 4
  %101 = getelementptr inbounds float, float* %100, i64 1
  %102 = load float, float* %1, align 4
  %103 = fneg float %102
  store float %103, float* %101, align 4
  %104 = getelementptr inbounds float, float* %101, i64 1
  %105 = load float, float* %1, align 4
  store float %105, float* %104, align 4
  %106 = getelementptr inbounds float, float* %104, i64 1
  store float 1.000000e+00, float* %106, align 4
  %107 = getelementptr inbounds float, float* %106, i64 1
  %108 = load float, float* %1, align 4
  %109 = fneg float %108
  store float %109, float* %107, align 4
  %110 = getelementptr inbounds float, float* %107, i64 1
  %111 = load float, float* %1, align 4
  store float %111, float* %110, align 4
  %112 = getelementptr inbounds float, float* %110, i64 1
  store float 0.000000e+00, float* %112, align 4
  %113 = getelementptr inbounds float, float* %112, i64 1
  %114 = load float, float* %1, align 4
  %115 = fneg float %114
  store float %115, float* %113, align 4
  %116 = getelementptr inbounds float, float* %113, i64 1
  store float 0.000000e+00, float* %116, align 4
  %117 = getelementptr inbounds float, float* %116, i64 1
  store float 1.000000e+00, float* %117, align 4
  %118 = getelementptr inbounds float, float* %117, i64 1
  store float 0.000000e+00, float* %118, align 4
  %119 = getelementptr inbounds float, float* %118, i64 1
  %120 = load float, float* %1, align 4
  store float %120, float* %119, align 4
  %121 = getelementptr inbounds float, float* %119, i64 1
  store float 1.000000e+00, float* %121, align 4
  %122 = getelementptr inbounds float, float* %121, i64 1
  store float 0.000000e+00, float* %122, align 4
  %123 = getelementptr inbounds float, float* %122, i64 1
  %124 = load float, float* %1, align 4
  store float %124, float* %123, align 4
  %125 = getelementptr inbounds float, float* %123, i64 1
  store float 1.000000e+00, float* %125, align 4
  %126 = getelementptr inbounds float, float* %125, i64 1
  %127 = load float, float* %1, align 4
  %128 = fneg float %127
  store float %128, float* %126, align 4
  %129 = getelementptr inbounds float, float* %126, i64 1
  store float 0.000000e+00, float* %129, align 4
  %130 = getelementptr inbounds float, float* %129, i64 1
  store float 1.000000e+00, float* %130, align 4
  %131 = getelementptr inbounds float, float* %130, i64 1
  store float 0.000000e+00, float* %131, align 4
  %132 = getelementptr inbounds float, float* %131, i64 1
  %133 = load float, float* %1, align 4
  store float %133, float* %132, align 4
  %134 = getelementptr inbounds float, float* %132, i64 1
  store float 1.000000e+00, float* %134, align 4
  %135 = getelementptr inbounds float, float* %134, i64 1
  %136 = load float, float* %1, align 4
  %137 = fneg float %136
  store float %137, float* %135, align 4
  %138 = getelementptr inbounds float, float* %135, i64 1
  store float 0.000000e+00, float* %138, align 4
  %139 = getelementptr inbounds float, float* %138, i64 1
  store float 1.000000e+00, float* %139, align 4
  %140 = getelementptr inbounds float, float* %139, i64 1
  %141 = load float, float* %1, align 4
  %142 = fneg float %141
  store float %142, float* %140, align 4
  %143 = bitcast [90 x float]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %143, i8* align 16 bitcast ([90 x float]* @__const.drawBar.normals to i8*), i64 360, i1 false)
  %144 = load i32, i32* @GL_FLOAT, align 4
  %145 = getelementptr inbounds [90 x float], [90 x float]* %2, i64 0, i64 0
  %146 = call i32 @glVertexPointer(i32 3, i32 %144, i32 0, float* %145)
  %147 = load i32, i32* @GL_FLOAT, align 4
  %148 = getelementptr inbounds [90 x float], [90 x float]* %3, i64 0, i64 0
  %149 = call i32 @glNormalPointer(i32 %147, i32 0, float* %148)
  %150 = load i32, i32* @GL_TRIANGLES, align 4
  %151 = call i32 @glDrawArrays(i32 %150, i32 0, i32 30)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @glVertexPointer(i32, i32, i32, float*) #2

declare dso_local i32 @glNormalPointer(i32, i32, float*) #2

declare dso_local i32 @glDrawArrays(i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
