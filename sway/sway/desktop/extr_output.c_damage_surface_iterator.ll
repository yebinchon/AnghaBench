; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_output.c_damage_surface_iterator.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_output.c_damage_surface_iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_output = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.wlr_surface = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.wlr_box = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_output*, %struct.wlr_surface*, %struct.wlr_box*, float, i8*)* @damage_surface_iterator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @damage_surface_iterator(%struct.sway_output* %0, %struct.wlr_surface* %1, %struct.wlr_box* %2, float %3, i8* %4) #0 {
  %6 = alloca %struct.sway_output*, align 8
  %7 = alloca %struct.wlr_surface*, align 8
  %8 = alloca %struct.wlr_box*, align 8
  %9 = alloca float, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.wlr_box, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.sway_output* %0, %struct.sway_output** %6, align 8
  store %struct.wlr_surface* %1, %struct.wlr_surface** %7, align 8
  store %struct.wlr_box* %2, %struct.wlr_box** %8, align 8
  store float %3, float* %9, align 4
  store i8* %4, i8** %10, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %11, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %12, align 4
  %21 = load %struct.wlr_box*, %struct.wlr_box** %8, align 8
  %22 = bitcast %struct.wlr_box* %13 to i8*
  %23 = bitcast %struct.wlr_box* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 %23, i64 16, i1 false)
  %24 = load %struct.sway_output*, %struct.sway_output** %6, align 8
  %25 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @scale_box(%struct.wlr_box* %13, i32 %28)
  %30 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %13, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %13, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sdiv i32 %33, 2
  %35 = add nsw i32 %31, %34
  store i32 %35, i32* %14, align 4
  %36 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %13, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %13, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = sdiv i32 %39, 2
  %41 = add nsw i32 %37, %40
  store i32 %41, i32* %15, align 4
  %42 = load %struct.wlr_surface*, %struct.wlr_surface** %7, align 8
  %43 = getelementptr inbounds %struct.wlr_surface, %struct.wlr_surface* %42, i32 0, i32 1
  %44 = call i64 @pixman_region32_not_empty(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %95

46:                                               ; preds = %5
  %47 = call i32 @pixman_region32_init(i32* %16)
  %48 = load %struct.wlr_surface*, %struct.wlr_surface** %7, align 8
  %49 = call i32 @wlr_surface_get_effective_damage(%struct.wlr_surface* %48, i32* %16)
  %50 = load %struct.sway_output*, %struct.sway_output** %6, align 8
  %51 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @wlr_region_scale(i32* %16, i32* %16, i32 %54)
  %56 = load %struct.sway_output*, %struct.sway_output** %6, align 8
  %57 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @ceil(i32 %60)
  %62 = load %struct.wlr_surface*, %struct.wlr_surface** %7, align 8
  %63 = getelementptr inbounds %struct.wlr_surface, %struct.wlr_surface* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp sgt i64 %61, %65
  br i1 %66, label %67, label %80

67:                                               ; preds = %46
  %68 = load %struct.sway_output*, %struct.sway_output** %6, align 8
  %69 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @ceil(i32 %72)
  %74 = load %struct.wlr_surface*, %struct.wlr_surface** %7, align 8
  %75 = getelementptr inbounds %struct.wlr_surface, %struct.wlr_surface* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = sub nsw i64 %73, %77
  %79 = call i32 @wlr_region_expand(i32* %16, i32* %16, i64 %78)
  br label %80

80:                                               ; preds = %67, %46
  %81 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %13, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %13, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @pixman_region32_translate(i32* %16, i32 %82, i32 %84)
  %86 = load float, float* %9, align 4
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* %15, align 4
  %89 = call i32 @wlr_region_rotated_bounds(i32* %16, i32* %16, float %86, i32 %87, i32 %88)
  %90 = load %struct.sway_output*, %struct.sway_output** %6, align 8
  %91 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @wlr_output_damage_add(i32 %92, i32* %16)
  %94 = call i32 @pixman_region32_fini(i32* %16)
  br label %95

95:                                               ; preds = %80, %5
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %95
  %99 = load float, float* %9, align 4
  %100 = call i32 @wlr_box_rotated_bounds(%struct.wlr_box* %13, %struct.wlr_box* %13, float %99)
  %101 = load %struct.sway_output*, %struct.sway_output** %6, align 8
  %102 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @wlr_output_damage_add_box(i32 %103, %struct.wlr_box* %13)
  br label %105

105:                                              ; preds = %98, %95
  %106 = load %struct.sway_output*, %struct.sway_output** %6, align 8
  %107 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %106, i32 0, i32 0
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = call i32 @wlr_output_schedule_frame(%struct.TYPE_4__* %108)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @scale_box(%struct.wlr_box*, i32) #2

declare dso_local i64 @pixman_region32_not_empty(i32*) #2

declare dso_local i32 @pixman_region32_init(i32*) #2

declare dso_local i32 @wlr_surface_get_effective_damage(%struct.wlr_surface*, i32*) #2

declare dso_local i32 @wlr_region_scale(i32*, i32*, i32) #2

declare dso_local i64 @ceil(i32) #2

declare dso_local i32 @wlr_region_expand(i32*, i32*, i64) #2

declare dso_local i32 @pixman_region32_translate(i32*, i32, i32) #2

declare dso_local i32 @wlr_region_rotated_bounds(i32*, i32*, float, i32, i32) #2

declare dso_local i32 @wlr_output_damage_add(i32, i32*) #2

declare dso_local i32 @pixman_region32_fini(i32*) #2

declare dso_local i32 @wlr_box_rotated_bounds(%struct.wlr_box*, %struct.wlr_box*, float) #2

declare dso_local i32 @wlr_output_damage_add_box(i32, %struct.wlr_box*) #2

declare dso_local i32 @wlr_output_schedule_frame(%struct.TYPE_4__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
