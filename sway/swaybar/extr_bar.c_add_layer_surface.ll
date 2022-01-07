; ModuleID = '/home/carl/AnghaBench/sway/swaybar/extr_bar.c_add_layer_surface.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/extr_bar.c_add_layer_surface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swaybar_output = type { i64, i64, i32, i32, %struct.swaybar* }
%struct.swaybar = type { i32, i32, %struct.swaybar_config* }
%struct.swaybar_config = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"hide\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"overlay\00", align 1
@ZWLR_LAYER_SHELL_V1_LAYER_OVERLAY = common dso_local global i32 0, align 4
@ZWLR_LAYER_SHELL_V1_LAYER_BOTTOM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"panel\00", align 1
@layer_surface_listener = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.swaybar_output*)* @add_layer_surface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_layer_surface(%struct.swaybar_output* %0) #0 {
  %2 = alloca %struct.swaybar_output*, align 8
  %3 = alloca %struct.swaybar*, align 8
  %4 = alloca %struct.swaybar_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.swaybar_output* %0, %struct.swaybar_output** %2, align 8
  %7 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %8 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %106

12:                                               ; preds = %1
  %13 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %14 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %13, i32 0, i32 4
  %15 = load %struct.swaybar*, %struct.swaybar** %14, align 8
  store %struct.swaybar* %15, %struct.swaybar** %3, align 8
  %16 = load %struct.swaybar*, %struct.swaybar** %3, align 8
  %17 = getelementptr inbounds %struct.swaybar, %struct.swaybar* %16, i32 0, i32 2
  %18 = load %struct.swaybar_config*, %struct.swaybar_config** %17, align 8
  store %struct.swaybar_config* %18, %struct.swaybar_config** %4, align 8
  %19 = load %struct.swaybar_config*, %struct.swaybar_config** %4, align 8
  %20 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @strcmp(i32 %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %12
  %28 = load %struct.swaybar_config*, %struct.swaybar_config** %4, align 8
  %29 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @strcmp(i32 %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %32 = icmp eq i64 %31, 0
  br label %33

33:                                               ; preds = %27, %12
  %34 = phi i1 [ false, %12 ], [ %32, %27 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %6, align 4
  %36 = load %struct.swaybar*, %struct.swaybar** %3, align 8
  %37 = getelementptr inbounds %struct.swaybar, %struct.swaybar* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %40 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %43 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %33
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47, %33
  %51 = load i32, i32* @ZWLR_LAYER_SHELL_V1_LAYER_OVERLAY, align 4
  br label %54

52:                                               ; preds = %47
  %53 = load i32, i32* @ZWLR_LAYER_SHELL_V1_LAYER_BOTTOM, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  %56 = call i64 @zwlr_layer_shell_v1_get_layer_surface(i32 %38, i32 %41, i32 %44, i32 %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %57 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %58 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %60 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @assert(i64 %61)
  %63 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %64 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %67 = call i32 @zwlr_layer_surface_v1_add_listener(i64 %65, i32* @layer_surface_listener, %struct.swaybar_output* %66)
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %88

70:                                               ; preds = %54
  %71 = load %struct.swaybar*, %struct.swaybar** %3, align 8
  %72 = getelementptr inbounds %struct.swaybar, %struct.swaybar* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @wl_compositor_create_region(i32 %73)
  %75 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %76 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  %77 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %78 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @assert(i64 %79)
  %81 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %82 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %85 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @wl_surface_set_input_region(i32 %83, i64 %86)
  br label %88

88:                                               ; preds = %70, %54
  %89 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %90 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.swaybar_config*, %struct.swaybar_config** %4, align 8
  %93 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @zwlr_layer_surface_v1_set_anchor(i64 %91, i32 %94)
  %96 = load i32, i32* %5, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %88
  %99 = load i32, i32* %6, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %98, %88
  %102 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %103 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @zwlr_layer_surface_v1_set_exclusive_zone(i64 %104, i32 -1)
  br label %106

106:                                              ; preds = %11, %101, %98
  ret void
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i64 @zwlr_layer_shell_v1_get_layer_surface(i32, i32, i32, i32, i8*) #1

declare dso_local i32 @assert(i64) #1

declare dso_local i32 @zwlr_layer_surface_v1_add_listener(i64, i32*, %struct.swaybar_output*) #1

declare dso_local i64 @wl_compositor_create_region(i32) #1

declare dso_local i32 @wl_surface_set_input_region(i32, i64) #1

declare dso_local i32 @zwlr_layer_surface_v1_set_anchor(i64, i32) #1

declare dso_local i32 @zwlr_layer_surface_v1_set_exclusive_zone(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
