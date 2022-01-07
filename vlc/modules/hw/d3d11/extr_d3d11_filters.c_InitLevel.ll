; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/d3d11/extr_d3d11_filters.c_InitLevel.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/d3d11/extr_d3d11_filters.c_InitLevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filter_level = type { i32, i32, i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { float, float, float }
%struct.TYPE_9__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.filter_level*, i8*, float)* @InitLevel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @InitLevel(i32* %0, %struct.filter_level* %1, i8* %2, float %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.filter_level*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca float, align 4
  store i32* %0, i32** %5, align 8
  store %struct.filter_level* %1, %struct.filter_level** %6, align 8
  store i8* %2, i8** %7, align 8
  store float %3, float* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = call %struct.TYPE_9__* @config_FindConfig(i8* %12)
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %10, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %15 = icmp eq %struct.TYPE_9__* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %4
  %20 = load %struct.filter_level*, %struct.filter_level** %6, align 8
  %21 = getelementptr inbounds %struct.filter_level, %struct.filter_level* %20, i32 0, i32 0
  store i32 0, i32* %21, align 4
  %22 = load %struct.filter_level*, %struct.filter_level** %6, align 8
  %23 = getelementptr inbounds %struct.filter_level, %struct.filter_level* %22, i32 0, i32 1
  store i32 2, i32* %23, align 4
  %24 = load %struct.filter_level*, %struct.filter_level** %6, align 8
  %25 = getelementptr inbounds %struct.filter_level, %struct.filter_level* %24, i32 0, i32 2
  store i32 1, i32* %25, align 4
  br label %115

26:                                               ; preds = %4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.filter_level*, %struct.filter_level** %6, align 8
  %32 = getelementptr inbounds %struct.filter_level, %struct.filter_level* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.filter_level*, %struct.filter_level** %6, align 8
  %38 = getelementptr inbounds %struct.filter_level, %struct.filter_level* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load float, float* %8, align 4
  %40 = fptosi float %39 to i32
  %41 = load %struct.filter_level*, %struct.filter_level** %6, align 8
  %42 = getelementptr inbounds %struct.filter_level, %struct.filter_level* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load i32*, i32** %5, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = call float @var_CreateGetFloatCommand(i32* %43, i8* %44)
  store float %45, float* %11, align 4
  %46 = load float, float* %11, align 4
  %47 = load %struct.filter_level*, %struct.filter_level** %6, align 8
  %48 = getelementptr inbounds %struct.filter_level, %struct.filter_level* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = sitofp i32 %49 to float
  %51 = fcmp ogt float %46, %50
  br i1 %51, label %52, label %79

52:                                               ; preds = %26
  %53 = load %struct.filter_level*, %struct.filter_level** %6, align 8
  %54 = getelementptr inbounds %struct.filter_level, %struct.filter_level* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load float, float* %55, align 4
  %57 = load %struct.filter_level*, %struct.filter_level** %6, align 8
  %58 = getelementptr inbounds %struct.filter_level, %struct.filter_level* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load float, float* %59, align 4
  %61 = fsub float %56, %60
  %62 = load float, float* %11, align 4
  %63 = load %struct.filter_level*, %struct.filter_level** %6, align 8
  %64 = getelementptr inbounds %struct.filter_level, %struct.filter_level* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = sitofp i32 %65 to float
  %67 = fsub float %62, %66
  %68 = fmul float %61, %67
  %69 = load %struct.filter_level*, %struct.filter_level** %6, align 8
  %70 = getelementptr inbounds %struct.filter_level, %struct.filter_level* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.filter_level*, %struct.filter_level** %6, align 8
  %73 = getelementptr inbounds %struct.filter_level, %struct.filter_level* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 %71, %74
  %76 = sitofp i32 %75 to float
  %77 = fdiv float %68, %76
  %78 = fptosi float %77 to i32
  store i32 %78, i32* %9, align 4
  br label %114

79:                                               ; preds = %26
  %80 = load float, float* %11, align 4
  %81 = load %struct.filter_level*, %struct.filter_level** %6, align 8
  %82 = getelementptr inbounds %struct.filter_level, %struct.filter_level* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = sitofp i32 %83 to float
  %85 = fcmp olt float %80, %84
  br i1 %85, label %86, label %113

86:                                               ; preds = %79
  %87 = load %struct.filter_level*, %struct.filter_level** %6, align 8
  %88 = getelementptr inbounds %struct.filter_level, %struct.filter_level* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 2
  %90 = load float, float* %89, align 4
  %91 = load %struct.filter_level*, %struct.filter_level** %6, align 8
  %92 = getelementptr inbounds %struct.filter_level, %struct.filter_level* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = load float, float* %93, align 4
  %95 = fsub float %90, %94
  %96 = load float, float* %11, align 4
  %97 = load %struct.filter_level*, %struct.filter_level** %6, align 8
  %98 = getelementptr inbounds %struct.filter_level, %struct.filter_level* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = sitofp i32 %99 to float
  %101 = fsub float %96, %100
  %102 = fmul float %95, %101
  %103 = load %struct.filter_level*, %struct.filter_level** %6, align 8
  %104 = getelementptr inbounds %struct.filter_level, %struct.filter_level* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.filter_level*, %struct.filter_level** %6, align 8
  %107 = getelementptr inbounds %struct.filter_level, %struct.filter_level* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = sub nsw i32 %105, %108
  %110 = sitofp i32 %109 to float
  %111 = fdiv float %102, %110
  %112 = fptosi float %111 to i32
  store i32 %112, i32* %9, align 4
  br label %113

113:                                              ; preds = %86, %79
  br label %114

114:                                              ; preds = %113, %52
  br label %115

115:                                              ; preds = %114, %19
  %116 = load %struct.filter_level*, %struct.filter_level** %6, align 8
  %117 = getelementptr inbounds %struct.filter_level, %struct.filter_level* %116, i32 0, i32 4
  %118 = load %struct.filter_level*, %struct.filter_level** %6, align 8
  %119 = getelementptr inbounds %struct.filter_level, %struct.filter_level* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 1
  %121 = load float, float* %120, align 4
  %122 = load i32, i32* %9, align 4
  %123 = sitofp i32 %122 to float
  %124 = fadd float %121, %123
  %125 = call i32 @atomic_init(i32* %117, float %124)
  ret void
}

declare dso_local %struct.TYPE_9__* @config_FindConfig(i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local float @var_CreateGetFloatCommand(i32*, i8*) #1

declare dso_local i32 @atomic_init(i32*, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
