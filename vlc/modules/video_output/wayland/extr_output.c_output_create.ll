; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/wayland/extr_output.c_output_create.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/wayland/extr_output.c_output_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.output_list = type { i32, i32 }
%struct.wl_registry = type { i32 }
%struct.output_data = type { i32, i32, i32, i32*, i32 }

@wl_output_interface = common dso_local global i32 0, align 4
@wl_output_cbs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @output_create(%struct.output_list* %0, %struct.wl_registry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.output_list*, align 8
  %7 = alloca %struct.wl_registry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.output_data*, align 8
  store %struct.output_list* %0, %struct.output_list** %6, align 8
  store %struct.wl_registry* %1, %struct.wl_registry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.output_list*, %struct.output_list** %6, align 8
  %12 = icmp eq %struct.output_list* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %68

17:                                               ; preds = %4
  %18 = call %struct.output_data* @malloc(i32 32)
  store %struct.output_data* %18, %struct.output_data** %10, align 8
  %19 = load %struct.output_data*, %struct.output_data** %10, align 8
  %20 = icmp eq %struct.output_data* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32 -1, i32* %5, align 4
  br label %68

25:                                               ; preds = %17
  %26 = load i32, i32* %9, align 4
  %27 = icmp sgt i32 %26, 3
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 3, i32* %9, align 4
  br label %29

29:                                               ; preds = %28, %25
  %30 = load %struct.wl_registry*, %struct.wl_registry** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32* @wl_registry_bind(%struct.wl_registry* %30, i32 %31, i32* @wl_output_interface, i32 %32)
  %34 = load %struct.output_data*, %struct.output_data** %10, align 8
  %35 = getelementptr inbounds %struct.output_data, %struct.output_data* %34, i32 0, i32 3
  store i32* %33, i32** %35, align 8
  %36 = load %struct.output_data*, %struct.output_data** %10, align 8
  %37 = getelementptr inbounds %struct.output_data, %struct.output_data* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %29
  %44 = load %struct.output_data*, %struct.output_data** %10, align 8
  %45 = call i32 @free(%struct.output_data* %44)
  store i32 -1, i32* %5, align 4
  br label %68

46:                                               ; preds = %29
  %47 = load %struct.output_list*, %struct.output_list** %6, align 8
  %48 = getelementptr inbounds %struct.output_list, %struct.output_list* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.output_data*, %struct.output_data** %10, align 8
  %51 = getelementptr inbounds %struct.output_data, %struct.output_data* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.output_data*, %struct.output_data** %10, align 8
  %54 = getelementptr inbounds %struct.output_data, %struct.output_data* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.output_data*, %struct.output_data** %10, align 8
  %57 = getelementptr inbounds %struct.output_data, %struct.output_data* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.output_data*, %struct.output_data** %10, align 8
  %59 = getelementptr inbounds %struct.output_data, %struct.output_data* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.output_data*, %struct.output_data** %10, align 8
  %62 = call i32 @wl_output_add_listener(i32* %60, i32* @wl_output_cbs, %struct.output_data* %61)
  %63 = load %struct.output_list*, %struct.output_list** %6, align 8
  %64 = getelementptr inbounds %struct.output_list, %struct.output_list* %63, i32 0, i32 0
  %65 = load %struct.output_data*, %struct.output_data** %10, align 8
  %66 = getelementptr inbounds %struct.output_data, %struct.output_data* %65, i32 0, i32 2
  %67 = call i32 @wl_list_insert(i32* %64, i32* %66)
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %46, %43, %24, %16
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.output_data* @malloc(i32) #1

declare dso_local i32* @wl_registry_bind(%struct.wl_registry*, i32, i32*, i32) #1

declare dso_local i32 @free(%struct.output_data*) #1

declare dso_local i32 @wl_output_add_listener(i32*, i32*, %struct.output_data*) #1

declare dso_local i32 @wl_list_insert(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
