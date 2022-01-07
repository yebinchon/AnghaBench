; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/vulkan/extr_instance.c_vlc_vk_Create.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/vulkan/extr_instance.c_vlc_vk_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_vk_t = type { i32, i32*, %struct.vout_window_t*, i64, i32*, i32* }
%struct.vout_window_t = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"vulkan\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vlc_vk_t* @vlc_vk_Create(%struct.vout_window_t* %0, i8* %1) #0 {
  %3 = alloca %struct.vlc_vk_t*, align 8
  %4 = alloca %struct.vout_window_t*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.vlc_vk_t*, align 8
  store %struct.vout_window_t* %0, %struct.vout_window_t** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.vout_window_t*, %struct.vout_window_t** %4, align 8
  %9 = bitcast %struct.vout_window_t* %8 to i32*
  store i32* %9, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = call %struct.vlc_vk_t* @vlc_object_create(i32* %10, i32 48)
  store %struct.vlc_vk_t* %11, %struct.vlc_vk_t** %7, align 8
  %12 = load %struct.vlc_vk_t*, %struct.vlc_vk_t** %7, align 8
  %13 = icmp eq %struct.vlc_vk_t* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store %struct.vlc_vk_t* null, %struct.vlc_vk_t** %3, align 8
  br label %45

18:                                               ; preds = %2
  %19 = load %struct.vlc_vk_t*, %struct.vlc_vk_t** %7, align 8
  %20 = getelementptr inbounds %struct.vlc_vk_t, %struct.vlc_vk_t* %19, i32 0, i32 5
  store i32* null, i32** %20, align 8
  %21 = load %struct.vlc_vk_t*, %struct.vlc_vk_t** %7, align 8
  %22 = getelementptr inbounds %struct.vlc_vk_t, %struct.vlc_vk_t* %21, i32 0, i32 4
  store i32* null, i32** %22, align 8
  %23 = load %struct.vlc_vk_t*, %struct.vlc_vk_t** %7, align 8
  %24 = getelementptr inbounds %struct.vlc_vk_t, %struct.vlc_vk_t* %23, i32 0, i32 3
  store i64 0, i64* %24, align 8
  %25 = load %struct.vout_window_t*, %struct.vout_window_t** %4, align 8
  %26 = load %struct.vlc_vk_t*, %struct.vlc_vk_t** %7, align 8
  %27 = getelementptr inbounds %struct.vlc_vk_t, %struct.vlc_vk_t* %26, i32 0, i32 2
  store %struct.vout_window_t* %25, %struct.vout_window_t** %27, align 8
  %28 = load %struct.vlc_vk_t*, %struct.vlc_vk_t** %7, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i32* @module_need(%struct.vlc_vk_t* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %29, i32 1)
  %31 = load %struct.vlc_vk_t*, %struct.vlc_vk_t** %7, align 8
  %32 = getelementptr inbounds %struct.vlc_vk_t, %struct.vlc_vk_t* %31, i32 0, i32 1
  store i32* %30, i32** %32, align 8
  %33 = load %struct.vlc_vk_t*, %struct.vlc_vk_t** %7, align 8
  %34 = getelementptr inbounds %struct.vlc_vk_t, %struct.vlc_vk_t* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %18
  %38 = load %struct.vlc_vk_t*, %struct.vlc_vk_t** %7, align 8
  %39 = call i32 @vlc_object_delete(%struct.vlc_vk_t* %38)
  store %struct.vlc_vk_t* null, %struct.vlc_vk_t** %3, align 8
  br label %45

40:                                               ; preds = %18
  %41 = load %struct.vlc_vk_t*, %struct.vlc_vk_t** %7, align 8
  %42 = getelementptr inbounds %struct.vlc_vk_t, %struct.vlc_vk_t* %41, i32 0, i32 0
  %43 = call i32 @vlc_atomic_rc_init(i32* %42)
  %44 = load %struct.vlc_vk_t*, %struct.vlc_vk_t** %7, align 8
  store %struct.vlc_vk_t* %44, %struct.vlc_vk_t** %3, align 8
  br label %45

45:                                               ; preds = %40, %37, %17
  %46 = load %struct.vlc_vk_t*, %struct.vlc_vk_t** %3, align 8
  ret %struct.vlc_vk_t* %46
}

declare dso_local %struct.vlc_vk_t* @vlc_object_create(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @module_need(%struct.vlc_vk_t*, i8*, i8*, i32) #1

declare dso_local i32 @vlc_object_delete(%struct.vlc_vk_t*) #1

declare dso_local i32 @vlc_atomic_rc_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
