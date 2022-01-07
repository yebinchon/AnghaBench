; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/wayland/extr_input.c_seat_create.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/wayland/extr_input.c_seat_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl_registry = type { i32 }
%struct.wl_list = type { i32 }
%struct.seat_data = type { i32, i32, i32*, i32*, i32, i32*, i32* }

@wl_seat_interface = common dso_local global i32 0, align 4
@seat_cbs = common dso_local global i32 0, align 4
@XKB_CONTEXT_NO_FLAGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seat_create(i32* %0, %struct.wl_registry* %1, i32 %2, i32 %3, %struct.wl_list* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.wl_registry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.wl_list*, align 8
  %12 = alloca %struct.seat_data*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.wl_registry* %1, %struct.wl_registry** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.wl_list* %4, %struct.wl_list** %11, align 8
  %13 = call %struct.seat_data* @malloc(i32 48)
  store %struct.seat_data* %13, %struct.seat_data** %12, align 8
  %14 = load %struct.seat_data*, %struct.seat_data** %12, align 8
  %15 = icmp eq %struct.seat_data* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %59

20:                                               ; preds = %5
  %21 = load i32, i32* %10, align 4
  %22 = icmp sgt i32 %21, 5
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 5, i32* %10, align 4
  br label %24

24:                                               ; preds = %23, %20
  %25 = load %struct.wl_registry*, %struct.wl_registry** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32* @wl_registry_bind(%struct.wl_registry* %25, i32 %26, i32* @wl_seat_interface, i32 %27)
  %29 = load %struct.seat_data*, %struct.seat_data** %12, align 8
  %30 = getelementptr inbounds %struct.seat_data, %struct.seat_data* %29, i32 0, i32 2
  store i32* %28, i32** %30, align 8
  %31 = load %struct.seat_data*, %struct.seat_data** %12, align 8
  %32 = getelementptr inbounds %struct.seat_data, %struct.seat_data* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %24
  %39 = load %struct.seat_data*, %struct.seat_data** %12, align 8
  %40 = call i32 @free(%struct.seat_data* %39)
  store i32 -1, i32* %6, align 4
  br label %59

41:                                               ; preds = %24
  %42 = load i32*, i32** %7, align 8
  %43 = load %struct.seat_data*, %struct.seat_data** %12, align 8
  %44 = getelementptr inbounds %struct.seat_data, %struct.seat_data* %43, i32 0, i32 6
  store i32* %42, i32** %44, align 8
  %45 = load %struct.seat_data*, %struct.seat_data** %12, align 8
  %46 = getelementptr inbounds %struct.seat_data, %struct.seat_data* %45, i32 0, i32 5
  store i32* null, i32** %46, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.seat_data*, %struct.seat_data** %12, align 8
  %49 = getelementptr inbounds %struct.seat_data, %struct.seat_data* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.seat_data*, %struct.seat_data** %12, align 8
  %51 = getelementptr inbounds %struct.seat_data, %struct.seat_data* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.seat_data*, %struct.seat_data** %12, align 8
  %54 = call i32 @wl_seat_add_listener(i32* %52, i32* @seat_cbs, %struct.seat_data* %53)
  %55 = load %struct.wl_list*, %struct.wl_list** %11, align 8
  %56 = load %struct.seat_data*, %struct.seat_data** %12, align 8
  %57 = getelementptr inbounds %struct.seat_data, %struct.seat_data* %56, i32 0, i32 1
  %58 = call i32 @wl_list_insert(%struct.wl_list* %55, i32* %57)
  store i32 0, i32* %6, align 4
  br label %59

59:                                               ; preds = %41, %38, %19
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local %struct.seat_data* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @wl_registry_bind(%struct.wl_registry*, i32, i32*, i32) #1

declare dso_local i32 @free(%struct.seat_data*) #1

declare dso_local i32 @wl_seat_add_listener(i32*, i32*, %struct.seat_data*) #1

declare dso_local i32 @wl_list_insert(%struct.wl_list*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
