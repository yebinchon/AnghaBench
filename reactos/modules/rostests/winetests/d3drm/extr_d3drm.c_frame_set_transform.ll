; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/d3drm/extr_d3drm.c_frame_set_transform.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/d3drm/extr_d3drm.c_frame_set_transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { float, float, float, float }
%struct.TYPE_9__ = type { float, float, float, float }
%struct.TYPE_8__ = type { float, float, float, float }
%struct.TYPE_7__ = type { float, float, float, float }

@D3DRMCOMBINE_REPLACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float)* @frame_set_transform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @frame_set_transform(i32* %0, float %1, float %2, float %3, float %4, float %5, float %6, float %7, float %8, float %9, float %10, float %11, float %12, float %13, float %14, float %15, float %16) #0 {
  %18 = alloca i32*, align 8
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca float, align 4
  %29 = alloca float, align 4
  %30 = alloca float, align 4
  %31 = alloca float, align 4
  %32 = alloca float, align 4
  %33 = alloca float, align 4
  %34 = alloca float, align 4
  %35 = alloca %struct.TYPE_11__, align 8
  store i32* %0, i32** %18, align 8
  store float %1, float* %19, align 4
  store float %2, float* %20, align 4
  store float %3, float* %21, align 4
  store float %4, float* %22, align 4
  store float %5, float* %23, align 4
  store float %6, float* %24, align 4
  store float %7, float* %25, align 4
  store float %8, float* %26, align 4
  store float %9, float* %27, align 4
  store float %10, float* %28, align 4
  store float %11, float* %29, align 4
  store float %12, float* %30, align 4
  store float %13, float* %31, align 4
  store float %14, float* %32, align 4
  store float %15, float* %33, align 4
  store float %16, float* %34, align 4
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load float, float* %19, align 4
  store float %38, float* %37, align 4
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %40 = load float, float* %20, align 4
  store float %40, float* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 2
  %42 = load float, float* %21, align 4
  store float %42, float* %41, align 4
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 3
  %44 = load float, float* %22, align 4
  store float %44, float* %43, align 4
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load float, float* %23, align 4
  store float %47, float* %46, align 4
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %49 = load float, float* %24, align 4
  store float %49, float* %48, align 4
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 2
  %51 = load float, float* %25, align 4
  store float %51, float* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 3
  %53 = load float, float* %26, align 4
  store float %53, float* %52, align 4
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load float, float* %27, align 4
  store float %56, float* %55, align 4
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %58 = load float, float* %28, align 4
  store float %58, float* %57, align 4
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  %60 = load float, float* %29, align 4
  store float %60, float* %59, align 4
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 3
  %62 = load float, float* %30, align 4
  store float %62, float* %61, align 4
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load float, float* %31, align 4
  store float %65, float* %64, align 4
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %67 = load float, float* %32, align 4
  store float %67, float* %66, align 4
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  %69 = load float, float* %33, align 4
  store float %69, float* %68, align 4
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 3
  %71 = load float, float* %34, align 4
  store float %71, float* %70, align 4
  %72 = load i32*, i32** %18, align 8
  %73 = load i32, i32* @D3DRMCOMBINE_REPLACE, align 4
  %74 = call i32 @IDirect3DRMFrame_AddTransform(i32* %72, i32 %73, %struct.TYPE_11__* byval(%struct.TYPE_11__) align 8 %35)
  ret void
}

declare dso_local i32 @IDirect3DRMFrame_AddTransform(i32*, i32, %struct.TYPE_11__* byval(%struct.TYPE_11__) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
