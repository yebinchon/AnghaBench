; ModuleID = '/home/carl/AnghaBench/sway/swaybar/extr_bar.c_swaybar_output_free.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/extr_bar.c_swaybar_output_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swaybar_output = type { %struct.swaybar_output*, %struct.swaybar_output*, i32, i32, i32, i32*, i32, i32, i32*, i32*, i32* }

@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Removing output %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.swaybar_output*)* @swaybar_output_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swaybar_output_free(%struct.swaybar_output* %0) #0 {
  %2 = alloca %struct.swaybar_output*, align 8
  store %struct.swaybar_output* %0, %struct.swaybar_output** %2, align 8
  %3 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %4 = icmp ne %struct.swaybar_output* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %79

6:                                                ; preds = %1
  %7 = load i32, i32* @SWAY_DEBUG, align 4
  %8 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %9 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %8, i32 0, i32 1
  %10 = load %struct.swaybar_output*, %struct.swaybar_output** %9, align 8
  %11 = call i32 @sway_log(i32 %7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.swaybar_output* %10)
  %12 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %13 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %12, i32 0, i32 10
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %6
  %17 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %18 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %17, i32 0, i32 10
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @zwlr_layer_surface_v1_destroy(i32* %19)
  br label %21

21:                                               ; preds = %16, %6
  %22 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %23 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %22, i32 0, i32 9
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %28 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %27, i32 0, i32 9
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @wl_surface_destroy(i32* %29)
  br label %31

31:                                               ; preds = %26, %21
  %32 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %33 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %32, i32 0, i32 8
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %38 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %37, i32 0, i32 8
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @wl_region_destroy(i32* %39)
  br label %41

41:                                               ; preds = %36, %31
  %42 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %43 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @zxdg_output_v1_destroy(i32 %44)
  %46 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %47 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @wl_output_destroy(i32 %48)
  %50 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %51 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %50, i32 0, i32 5
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = call i32 @destroy_buffer(i32* %53)
  %55 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %56 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %55, i32 0, i32 5
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = call i32 @destroy_buffer(i32* %58)
  %60 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %61 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %60, i32 0, i32 4
  %62 = call i32 @free_hotspots(i32* %61)
  %63 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %64 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %63, i32 0, i32 3
  %65 = call i32 @free_workspaces(i32* %64)
  %66 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %67 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %66, i32 0, i32 2
  %68 = call i32 @wl_list_remove(i32* %67)
  %69 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %70 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %69, i32 0, i32 1
  %71 = load %struct.swaybar_output*, %struct.swaybar_output** %70, align 8
  %72 = call i32 @free(%struct.swaybar_output* %71)
  %73 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %74 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %73, i32 0, i32 0
  %75 = load %struct.swaybar_output*, %struct.swaybar_output** %74, align 8
  %76 = call i32 @free(%struct.swaybar_output* %75)
  %77 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %78 = call i32 @free(%struct.swaybar_output* %77)
  br label %79

79:                                               ; preds = %41, %5
  ret void
}

declare dso_local i32 @sway_log(i32, i8*, %struct.swaybar_output*) #1

declare dso_local i32 @zwlr_layer_surface_v1_destroy(i32*) #1

declare dso_local i32 @wl_surface_destroy(i32*) #1

declare dso_local i32 @wl_region_destroy(i32*) #1

declare dso_local i32 @zxdg_output_v1_destroy(i32) #1

declare dso_local i32 @wl_output_destroy(i32) #1

declare dso_local i32 @destroy_buffer(i32*) #1

declare dso_local i32 @free_hotspots(i32*) #1

declare dso_local i32 @free_workspaces(i32*) #1

declare dso_local i32 @wl_list_remove(i32*) #1

declare dso_local i32 @free(%struct.swaybar_output*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
