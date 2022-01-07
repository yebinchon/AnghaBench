; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/wayland/extr_registry.c_vlc_wl_interface_bind.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/wayland/extr_registry.c_vlc_wl_interface_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl_proxy = type { i32 }
%struct.vlc_wl_registry = type { i32 }
%struct.wl_interface = type { i32 }
%struct.vlc_wl_global = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wl_proxy* @vlc_wl_interface_bind(%struct.vlc_wl_registry* %0, i8* %1, %struct.wl_interface* %2, i32* noalias %3) #0 {
  %5 = alloca %struct.wl_proxy*, align 8
  %6 = alloca %struct.vlc_wl_registry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.wl_interface*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.vlc_wl_global*, align 8
  %11 = alloca i32, align 4
  store %struct.vlc_wl_registry* %0, %struct.vlc_wl_registry** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.wl_interface* %2, %struct.wl_interface** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.vlc_wl_registry*, %struct.vlc_wl_registry** %6, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call %struct.vlc_wl_global* @vlc_wl_global_find(%struct.vlc_wl_registry* %12, i8* %13)
  store %struct.vlc_wl_global* %14, %struct.vlc_wl_global** %10, align 8
  %15 = load %struct.vlc_wl_global*, %struct.vlc_wl_global** %10, align 8
  %16 = icmp eq %struct.vlc_wl_global* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store %struct.wl_proxy* null, %struct.wl_proxy** %5, align 8
  br label %47

18:                                               ; preds = %4
  %19 = load i32*, i32** %9, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32*, i32** %9, align 8
  %23 = load i32, i32* %22, align 4
  br label %25

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %24, %21
  %26 = phi i32 [ %23, %21 ], [ 1, %24 ]
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load %struct.vlc_wl_global*, %struct.vlc_wl_global** %10, align 8
  %29 = getelementptr inbounds %struct.vlc_wl_global, %struct.vlc_wl_global* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp sgt i32 %27, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load %struct.vlc_wl_global*, %struct.vlc_wl_global** %10, align 8
  %34 = getelementptr inbounds %struct.vlc_wl_global, %struct.vlc_wl_global* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %11, align 4
  %36 = load i32*, i32** %9, align 8
  store i32 %35, i32* %36, align 4
  br label %37

37:                                               ; preds = %32, %25
  %38 = load %struct.vlc_wl_registry*, %struct.vlc_wl_registry** %6, align 8
  %39 = getelementptr inbounds %struct.vlc_wl_registry, %struct.vlc_wl_registry* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.vlc_wl_global*, %struct.vlc_wl_global** %10, align 8
  %42 = getelementptr inbounds %struct.vlc_wl_global, %struct.vlc_wl_global* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.wl_interface*, %struct.wl_interface** %8, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call %struct.wl_proxy* @wl_registry_bind(i32 %40, i32 %43, %struct.wl_interface* %44, i32 %45)
  store %struct.wl_proxy* %46, %struct.wl_proxy** %5, align 8
  br label %47

47:                                               ; preds = %37, %17
  %48 = load %struct.wl_proxy*, %struct.wl_proxy** %5, align 8
  ret %struct.wl_proxy* %48
}

declare dso_local %struct.vlc_wl_global* @vlc_wl_global_find(%struct.vlc_wl_registry*, i8*) #1

declare dso_local %struct.wl_proxy* @wl_registry_bind(i32, i32, %struct.wl_interface*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
