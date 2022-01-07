; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/wayland/extr_registry.c_vlc_wl_interface_create.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/wayland/extr_registry.c_vlc_wl_interface_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_wl_interface = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vlc_wl_interface* (i8*)* @vlc_wl_interface_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vlc_wl_interface* @vlc_wl_interface_create(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.vlc_wl_interface*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 @strlen(i8* %5)
  %7 = add nsw i32 %6, 1
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = add i64 8, %9
  %11 = trunc i64 %10 to i32
  %12 = call %struct.vlc_wl_interface* @malloc(i32 %11)
  store %struct.vlc_wl_interface* %12, %struct.vlc_wl_interface** %4, align 8
  %13 = load %struct.vlc_wl_interface*, %struct.vlc_wl_interface** %4, align 8
  %14 = icmp ne %struct.vlc_wl_interface* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i64 @likely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %1
  %19 = load %struct.vlc_wl_interface*, %struct.vlc_wl_interface** %4, align 8
  %20 = getelementptr inbounds %struct.vlc_wl_interface, %struct.vlc_wl_interface* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %2, align 8
  %23 = load i64, i64* %3, align 8
  %24 = call i32 @memcpy(i32 %21, i8* %22, i64 %23)
  %25 = load %struct.vlc_wl_interface*, %struct.vlc_wl_interface** %4, align 8
  %26 = getelementptr inbounds %struct.vlc_wl_interface, %struct.vlc_wl_interface* %25, i32 0, i32 0
  %27 = call i32 @wl_list_init(i32* %26)
  br label %28

28:                                               ; preds = %18, %1
  %29 = load %struct.vlc_wl_interface*, %struct.vlc_wl_interface** %4, align 8
  ret %struct.vlc_wl_interface* %29
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.vlc_wl_interface* @malloc(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @wl_list_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
