; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/wayland/extr_registry.c_vlc_wl_interface_get_version.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/wayland/extr_registry.c_vlc_wl_interface_get_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_wl_registry = type { i32 }
%struct.vlc_wl_global = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_wl_interface_get_version(%struct.vlc_wl_registry* %0, i8* %1) #0 {
  %3 = alloca %struct.vlc_wl_registry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.vlc_wl_global*, align 8
  store %struct.vlc_wl_registry* %0, %struct.vlc_wl_registry** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.vlc_wl_registry*, %struct.vlc_wl_registry** %3, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call %struct.vlc_wl_global* @vlc_wl_global_find(%struct.vlc_wl_registry* %6, i8* %7)
  store %struct.vlc_wl_global* %8, %struct.vlc_wl_global** %5, align 8
  %9 = load %struct.vlc_wl_global*, %struct.vlc_wl_global** %5, align 8
  %10 = icmp ne %struct.vlc_wl_global* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.vlc_wl_global*, %struct.vlc_wl_global** %5, align 8
  %13 = getelementptr inbounds %struct.vlc_wl_global, %struct.vlc_wl_global* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  br label %16

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %15, %11
  %17 = phi i32 [ %14, %11 ], [ 0, %15 ]
  ret i32 %17
}

declare dso_local %struct.vlc_wl_global* @vlc_wl_global_find(%struct.vlc_wl_registry*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
