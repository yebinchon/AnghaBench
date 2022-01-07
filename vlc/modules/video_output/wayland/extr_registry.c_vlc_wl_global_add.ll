; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/wayland/extr_registry.c_vlc_wl_global_add.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/wayland/extr_registry.c_vlc_wl_global_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_wl_global = type { i32, %struct.vlc_wl_interface*, i8*, i8* }
%struct.vlc_wl_interface = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vlc_wl_global* (%struct.vlc_wl_interface*, i8*, i8*)* @vlc_wl_global_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vlc_wl_global* @vlc_wl_global_add(%struct.vlc_wl_interface* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.vlc_wl_interface*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.vlc_wl_global*, align 8
  store %struct.vlc_wl_interface* %0, %struct.vlc_wl_interface** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = call %struct.vlc_wl_global* @malloc(i32 32)
  store %struct.vlc_wl_global* %8, %struct.vlc_wl_global** %7, align 8
  %9 = load %struct.vlc_wl_global*, %struct.vlc_wl_global** %7, align 8
  %10 = icmp ne %struct.vlc_wl_global* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i64 @likely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = load %struct.vlc_wl_global*, %struct.vlc_wl_global** %7, align 8
  %17 = getelementptr inbounds %struct.vlc_wl_global, %struct.vlc_wl_global* %16, i32 0, i32 3
  store i8* %15, i8** %17, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load %struct.vlc_wl_global*, %struct.vlc_wl_global** %7, align 8
  %20 = getelementptr inbounds %struct.vlc_wl_global, %struct.vlc_wl_global* %19, i32 0, i32 2
  store i8* %18, i8** %20, align 8
  %21 = load %struct.vlc_wl_interface*, %struct.vlc_wl_interface** %4, align 8
  %22 = load %struct.vlc_wl_global*, %struct.vlc_wl_global** %7, align 8
  %23 = getelementptr inbounds %struct.vlc_wl_global, %struct.vlc_wl_global* %22, i32 0, i32 1
  store %struct.vlc_wl_interface* %21, %struct.vlc_wl_interface** %23, align 8
  %24 = load %struct.vlc_wl_interface*, %struct.vlc_wl_interface** %4, align 8
  %25 = getelementptr inbounds %struct.vlc_wl_interface, %struct.vlc_wl_interface* %24, i32 0, i32 0
  %26 = load %struct.vlc_wl_global*, %struct.vlc_wl_global** %7, align 8
  %27 = getelementptr inbounds %struct.vlc_wl_global, %struct.vlc_wl_global* %26, i32 0, i32 0
  %28 = call i32 @wl_list_insert(i32* %25, i32* %27)
  br label %29

29:                                               ; preds = %14, %3
  %30 = load %struct.vlc_wl_global*, %struct.vlc_wl_global** %7, align 8
  ret %struct.vlc_wl_global* %30
}

declare dso_local %struct.vlc_wl_global* @malloc(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @wl_list_insert(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
