; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/d3d9/extr_d3d9_filters.c_InitLevel.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/d3d9/extr_d3d9_filters.c_InitLevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filter_level = type { float, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.filter_level*, i8*, float)* @InitLevel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @InitLevel(i32* %0, %struct.filter_level* %1, i8* %2, float %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.filter_level*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca float, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca float, align 4
  store i32* %0, i32** %5, align 8
  store %struct.filter_level* %1, %struct.filter_level** %6, align 8
  store i8* %2, i8** %7, align 8
  store float %3, float* %8, align 4
  %11 = load i8*, i8** %7, align 8
  %12 = call %struct.TYPE_7__* @config_FindConfig(i8* %11)
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %9, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.filter_level*, %struct.filter_level** %6, align 8
  %18 = getelementptr inbounds %struct.filter_level, %struct.filter_level* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.filter_level*, %struct.filter_level** %6, align 8
  %24 = getelementptr inbounds %struct.filter_level, %struct.filter_level* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load float, float* %8, align 4
  %26 = load %struct.filter_level*, %struct.filter_level** %6, align 8
  %27 = getelementptr inbounds %struct.filter_level, %struct.filter_level* %26, i32 0, i32 0
  store float %25, float* %27, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call float @var_CreateGetFloatCommand(i32* %28, i8* %29)
  store float %30, float* %10, align 4
  %31 = load %struct.filter_level*, %struct.filter_level** %6, align 8
  %32 = getelementptr inbounds %struct.filter_level, %struct.filter_level* %31, i32 0, i32 2
  %33 = load %struct.filter_level*, %struct.filter_level** %6, align 8
  %34 = load %struct.filter_level*, %struct.filter_level** %6, align 8
  %35 = getelementptr inbounds %struct.filter_level, %struct.filter_level* %34, i32 0, i32 1
  %36 = load float, float* %10, align 4
  %37 = call i32 @StoreLevel(%struct.filter_level* %33, i32* %35, float %36)
  %38 = call i32 @atomic_init(i32* %32, i32 %37)
  ret void
}

declare dso_local %struct.TYPE_7__* @config_FindConfig(i8*) #1

declare dso_local float @var_CreateGetFloatCommand(i32*, i8*) #1

declare dso_local i32 @atomic_init(i32*, i32) #1

declare dso_local i32 @StoreLevel(%struct.filter_level*, i32*, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
