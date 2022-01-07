; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_render.c_render_surface_iterator.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_render.c_render_surface_iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.sway_output = type { %struct.wlr_output* }
%struct.wlr_output = type { i32, i32 }
%struct.wlr_surface = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.wlr_box = type { i32 }
%struct.render_data = type { float, i32* }
%struct.wlr_texture = type { i32 }

@server = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_output*, %struct.wlr_surface*, %struct.wlr_box*, float, i8*)* @render_surface_iterator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @render_surface_iterator(%struct.sway_output* %0, %struct.wlr_surface* %1, %struct.wlr_box* %2, float %3, i8* %4) #0 {
  %6 = alloca %struct.sway_output*, align 8
  %7 = alloca %struct.wlr_surface*, align 8
  %8 = alloca %struct.wlr_box*, align 8
  %9 = alloca float, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.render_data*, align 8
  %12 = alloca %struct.wlr_output*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca float, align 4
  %15 = alloca %struct.wlr_texture*, align 8
  %16 = alloca %struct.wlr_box, align 4
  %17 = alloca [9 x float], align 16
  %18 = alloca i32, align 4
  store %struct.sway_output* %0, %struct.sway_output** %6, align 8
  store %struct.wlr_surface* %1, %struct.wlr_surface** %7, align 8
  store %struct.wlr_box* %2, %struct.wlr_box** %8, align 8
  store float %3, float* %9, align 4
  store i8* %4, i8** %10, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = bitcast i8* %19 to %struct.render_data*
  store %struct.render_data* %20, %struct.render_data** %11, align 8
  %21 = load %struct.sway_output*, %struct.sway_output** %6, align 8
  %22 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %21, i32 0, i32 0
  %23 = load %struct.wlr_output*, %struct.wlr_output** %22, align 8
  store %struct.wlr_output* %23, %struct.wlr_output** %12, align 8
  %24 = load %struct.render_data*, %struct.render_data** %11, align 8
  %25 = getelementptr inbounds %struct.render_data, %struct.render_data* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %13, align 8
  %27 = load %struct.render_data*, %struct.render_data** %11, align 8
  %28 = getelementptr inbounds %struct.render_data, %struct.render_data* %27, i32 0, i32 0
  %29 = load float, float* %28, align 8
  store float %29, float* %14, align 4
  %30 = load %struct.wlr_surface*, %struct.wlr_surface** %7, align 8
  %31 = call %struct.wlr_texture* @wlr_surface_get_texture(%struct.wlr_surface* %30)
  store %struct.wlr_texture* %31, %struct.wlr_texture** %15, align 8
  %32 = load %struct.wlr_texture*, %struct.wlr_texture** %15, align 8
  %33 = icmp ne %struct.wlr_texture* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %5
  br label %64

35:                                               ; preds = %5
  %36 = load %struct.wlr_box*, %struct.wlr_box** %8, align 8
  %37 = bitcast %struct.wlr_box* %16 to i8*
  %38 = bitcast %struct.wlr_box* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 4 %38, i64 4, i1 false)
  %39 = load %struct.wlr_output*, %struct.wlr_output** %12, align 8
  %40 = getelementptr inbounds %struct.wlr_output, %struct.wlr_output* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @scale_box(%struct.wlr_box* %16, i32 %41)
  %43 = load %struct.wlr_surface*, %struct.wlr_surface** %7, align 8
  %44 = getelementptr inbounds %struct.wlr_surface, %struct.wlr_surface* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @wlr_output_transform_invert(i32 %46)
  store i32 %47, i32* %18, align 4
  %48 = getelementptr inbounds [9 x float], [9 x float]* %17, i64 0, i64 0
  %49 = load i32, i32* %18, align 4
  %50 = load float, float* %9, align 4
  %51 = load %struct.wlr_output*, %struct.wlr_output** %12, align 8
  %52 = getelementptr inbounds %struct.wlr_output, %struct.wlr_output* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @wlr_matrix_project_box(float* %48, %struct.wlr_box* %16, i32 %49, float %50, i32 %53)
  %55 = load %struct.wlr_output*, %struct.wlr_output** %12, align 8
  %56 = load i32*, i32** %13, align 8
  %57 = load %struct.wlr_texture*, %struct.wlr_texture** %15, align 8
  %58 = getelementptr inbounds [9 x float], [9 x float]* %17, i64 0, i64 0
  %59 = load float, float* %14, align 4
  %60 = call i32 @render_texture(%struct.wlr_output* %55, i32* %56, %struct.wlr_texture* %57, %struct.wlr_box* %16, float* %58, float %59)
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 0), align 4
  %62 = load %struct.wlr_surface*, %struct.wlr_surface** %7, align 8
  %63 = call i32 @wlr_presentation_surface_sampled(i32 %61, %struct.wlr_surface* %62)
  br label %64

64:                                               ; preds = %35, %34
  ret void
}

declare dso_local %struct.wlr_texture* @wlr_surface_get_texture(%struct.wlr_surface*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @scale_box(%struct.wlr_box*, i32) #1

declare dso_local i32 @wlr_output_transform_invert(i32) #1

declare dso_local i32 @wlr_matrix_project_box(float*, %struct.wlr_box*, i32, float, i32) #1

declare dso_local i32 @render_texture(%struct.wlr_output*, i32*, %struct.wlr_texture*, %struct.wlr_box*, float*, float) #1

declare dso_local i32 @wlr_presentation_surface_sampled(i32, %struct.wlr_surface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
