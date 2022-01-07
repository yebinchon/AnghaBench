; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/opengl/extr_fragment_shaders.c_tc_base_prepare_shader.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/opengl/extr_fragment_shaders.c_tc_base_prepare_shader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, %struct.TYPE_6__*, %struct.TYPE_5__, %struct.pl_shader_res*, i32, i64 }
%struct.TYPE_6__ = type { i32 (i32, float, float, float, float)*, i32 (i32, float, float, float)*, i32 (i32, float, float)*, i32 (i32, float)*, i32 (i32, i32, i32, float*)*, i32 (i32, i32, i32, float*)*, i32 (i32, i32, i32, float*)*, i32 (i32, i32)*, i32 (i32, i32, i32)* }
%struct.TYPE_5__ = type { i32, i32*, i32*, i32*, i32 }
%struct.pl_shader_res = type { i32, %struct.pl_shader_var* }
%struct.pl_shader_var = type { float*, %struct.pl_var }
%struct.pl_var = type { i64, i32, i32 }

@GL_TEXTURE_RECTANGLE = common dso_local global i64 0, align 8
@GL_FALSE = common dso_local global i32 0, align 4
@PL_VAR_FLOAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, float*, float*, float)* @tc_base_prepare_shader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tc_base_prepare_shader(%struct.TYPE_7__* %0, float* %1, float* %2, float %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store float* %1, float** %6, align 8
  store float* %2, float** %7, align 8
  store float %3, float* %8, align 4
  %11 = load float*, float** %6, align 8
  %12 = load float*, float** %7, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 6
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 8
  %22 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %21, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = call i32 %22(i32 %26, i32 4, i32 %29)
  br label %31

31:                                               ; preds = %17, %4
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %54, %31
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ult i32 %33, %36
  br i1 %37, label %38, label %57

38:                                               ; preds = %32
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 7
  %43 = load i32 (i32, i32)*, i32 (i32, i32)** %42, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 %43(i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %38
  %55 = load i32, i32* %9, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %32

57:                                               ; preds = %32
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32 (i32, float, float, float, float)*, i32 (i32, float, float, float, float)** %61, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load float, float* %8, align 4
  %68 = call i32 %62(i32 %66, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float %67)
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @GL_TEXTURE_RECTANGLE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %110

74:                                               ; preds = %57
  store i32 0, i32* %10, align 4
  br label %75

75:                                               ; preds = %106, %74
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ult i32 %76, %79
  br i1 %80, label %81, label %109

81:                                               ; preds = %75
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 2
  %86 = load i32 (i32, float, float)*, i32 (i32, float, float)** %85, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %10, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load float*, float** %6, align 8
  %96 = load i32, i32* %10, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds float, float* %95, i64 %97
  %99 = load float, float* %98, align 4
  %100 = load float*, float** %7, align 8
  %101 = load i32, i32* %10, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds float, float* %100, i64 %102
  %104 = load float, float* %103, align 4
  %105 = call i32 %86(i32 %94, float %99, float %104)
  br label %106

106:                                              ; preds = %81
  %107 = load i32, i32* %10, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %10, align 4
  br label %75

109:                                              ; preds = %75
  br label %110

110:                                              ; preds = %109, %57
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
