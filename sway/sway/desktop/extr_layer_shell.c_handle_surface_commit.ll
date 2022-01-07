; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_layer_shell.c_handle_surface_commit.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_layer_shell.c_handle_surface_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_layer_surface = type { i64, %struct.wlr_box, i32, %struct.wlr_layer_surface_v1* }
%struct.wlr_box = type { i32, i32 }
%struct.wlr_layer_surface_v1 = type { i32, %struct.TYPE_2__, %struct.wlr_output* }
%struct.TYPE_2__ = type { i64 }
%struct.wlr_output = type { %struct.sway_output* }
%struct.sway_output = type { i32* }
%struct.wl_listener = type { i32 }

@surface_commit = common dso_local global i32 0, align 4
@layer = common dso_local global %struct.sway_layer_surface* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl_listener*, i8*)* @handle_surface_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_surface_commit(%struct.wl_listener* %0, i8* %1) #0 {
  %3 = alloca %struct.wl_listener*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sway_layer_surface*, align 8
  %6 = alloca %struct.wlr_layer_surface_v1*, align 8
  %7 = alloca %struct.wlr_output*, align 8
  %8 = alloca %struct.sway_output*, align 8
  %9 = alloca %struct.wlr_box, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.wl_listener* %0, %struct.wl_listener** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load %struct.wl_listener*, %struct.wl_listener** %3, align 8
  %13 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %5, align 8
  %14 = ptrtoint %struct.sway_layer_surface* %13 to i32
  %15 = load i32, i32* @surface_commit, align 4
  %16 = call %struct.sway_layer_surface* @wl_container_of(%struct.wl_listener* %12, i32 %14, i32 %15)
  store %struct.sway_layer_surface* %16, %struct.sway_layer_surface** %5, align 8
  %17 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %5, align 8
  %18 = getelementptr inbounds %struct.sway_layer_surface, %struct.sway_layer_surface* %17, i32 0, i32 3
  %19 = load %struct.wlr_layer_surface_v1*, %struct.wlr_layer_surface_v1** %18, align 8
  store %struct.wlr_layer_surface_v1* %19, %struct.wlr_layer_surface_v1** %6, align 8
  %20 = load %struct.wlr_layer_surface_v1*, %struct.wlr_layer_surface_v1** %6, align 8
  %21 = getelementptr inbounds %struct.wlr_layer_surface_v1, %struct.wlr_layer_surface_v1* %20, i32 0, i32 2
  %22 = load %struct.wlr_output*, %struct.wlr_output** %21, align 8
  store %struct.wlr_output* %22, %struct.wlr_output** %7, align 8
  %23 = load %struct.wlr_output*, %struct.wlr_output** %7, align 8
  %24 = icmp eq %struct.wlr_output* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %118

26:                                               ; preds = %2
  %27 = load %struct.wlr_output*, %struct.wlr_output** %7, align 8
  %28 = getelementptr inbounds %struct.wlr_output, %struct.wlr_output* %27, i32 0, i32 0
  %29 = load %struct.sway_output*, %struct.sway_output** %28, align 8
  store %struct.sway_output* %29, %struct.sway_output** %8, align 8
  %30 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %5, align 8
  %31 = getelementptr inbounds %struct.sway_layer_surface, %struct.sway_layer_surface* %30, i32 0, i32 1
  %32 = bitcast %struct.wlr_box* %9 to i8*
  %33 = bitcast %struct.wlr_box* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %32, i8* align 8 %33, i64 8, i1 false)
  %34 = load %struct.sway_output*, %struct.sway_output** %8, align 8
  %35 = call i32 @arrange_layers(%struct.sway_output* %34)
  %36 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %5, align 8
  %37 = getelementptr inbounds %struct.sway_layer_surface, %struct.sway_layer_surface* %36, i32 0, i32 1
  %38 = call i64 @memcmp(%struct.wlr_box* %9, %struct.wlr_box* %37, i32 8)
  %39 = icmp ne i64 %38, 0
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %10, align 4
  %41 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %5, align 8
  %42 = getelementptr inbounds %struct.sway_layer_surface, %struct.sway_layer_surface* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.wlr_layer_surface_v1*, %struct.wlr_layer_surface_v1** %6, align 8
  %45 = getelementptr inbounds %struct.wlr_layer_surface_v1, %struct.wlr_layer_surface_v1* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %43, %47
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %73

52:                                               ; preds = %26
  %53 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %5, align 8
  %54 = getelementptr inbounds %struct.sway_layer_surface, %struct.sway_layer_surface* %53, i32 0, i32 2
  %55 = call i32 @wl_list_remove(i32* %54)
  %56 = load %struct.sway_output*, %struct.sway_output** %8, align 8
  %57 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.wlr_layer_surface_v1*, %struct.wlr_layer_surface_v1** %6, align 8
  %60 = getelementptr inbounds %struct.wlr_layer_surface_v1, %struct.wlr_layer_surface_v1* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i32, i32* %58, i64 %62
  %64 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %5, align 8
  %65 = getelementptr inbounds %struct.sway_layer_surface, %struct.sway_layer_surface* %64, i32 0, i32 2
  %66 = call i32 @wl_list_insert(i32* %63, i32* %65)
  %67 = load %struct.wlr_layer_surface_v1*, %struct.wlr_layer_surface_v1** %6, align 8
  %68 = getelementptr inbounds %struct.wlr_layer_surface_v1, %struct.wlr_layer_surface_v1* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %5, align 8
  %72 = getelementptr inbounds %struct.sway_layer_surface, %struct.sway_layer_surface* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  br label %73

73:                                               ; preds = %52, %26
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %102

79:                                               ; preds = %76, %73
  %80 = load %struct.sway_output*, %struct.sway_output** %8, align 8
  %81 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %9, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %9, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.wlr_layer_surface_v1*, %struct.wlr_layer_surface_v1** %6, align 8
  %86 = getelementptr inbounds %struct.wlr_layer_surface_v1, %struct.wlr_layer_surface_v1* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @output_damage_surface(%struct.sway_output* %80, i32 %82, i32 %84, i32 %87, i32 1)
  %89 = load %struct.sway_output*, %struct.sway_output** %8, align 8
  %90 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %5, align 8
  %91 = getelementptr inbounds %struct.sway_layer_surface, %struct.sway_layer_surface* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %5, align 8
  %95 = getelementptr inbounds %struct.sway_layer_surface, %struct.sway_layer_surface* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.wlr_layer_surface_v1*, %struct.wlr_layer_surface_v1** %6, align 8
  %99 = getelementptr inbounds %struct.wlr_layer_surface_v1, %struct.wlr_layer_surface_v1* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @output_damage_surface(%struct.sway_output* %89, i32 %93, i32 %97, i32 %100, i32 1)
  br label %116

102:                                              ; preds = %76
  %103 = load %struct.sway_output*, %struct.sway_output** %8, align 8
  %104 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %5, align 8
  %105 = getelementptr inbounds %struct.sway_layer_surface, %struct.sway_layer_surface* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %5, align 8
  %109 = getelementptr inbounds %struct.sway_layer_surface, %struct.sway_layer_surface* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.wlr_layer_surface_v1*, %struct.wlr_layer_surface_v1** %6, align 8
  %113 = getelementptr inbounds %struct.wlr_layer_surface_v1, %struct.wlr_layer_surface_v1* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @output_damage_surface(%struct.sway_output* %103, i32 %107, i32 %111, i32 %114, i32 0)
  br label %116

116:                                              ; preds = %102, %79
  %117 = call i32 (...) @transaction_commit_dirty()
  br label %118

118:                                              ; preds = %116, %25
  ret void
}

declare dso_local %struct.sway_layer_surface* @wl_container_of(%struct.wl_listener*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @arrange_layers(%struct.sway_output*) #1

declare dso_local i64 @memcmp(%struct.wlr_box*, %struct.wlr_box*, i32) #1

declare dso_local i32 @wl_list_remove(i32*) #1

declare dso_local i32 @wl_list_insert(i32*, i32*) #1

declare dso_local i32 @output_damage_surface(%struct.sway_output*, i32, i32, i32, i32) #1

declare dso_local i32 @transaction_commit_dirty(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
