; ModuleID = '/home/carl/AnghaBench/sway/swaybar/extr_render.c_block_hotspot_callback.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/extr_render.c_block_hotspot_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swaybar_output = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.status_line* }
%struct.status_line = type { i32 }
%struct.swaybar_hotspot = type { i32, i32, i64, i64 }
%struct.i3bar_block = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.swaybar_output*, %struct.swaybar_hotspot*, i32, i32, i32, i8*)* @block_hotspot_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @block_hotspot_callback(%struct.swaybar_output* %0, %struct.swaybar_hotspot* %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.swaybar_output*, align 8
  %8 = alloca %struct.swaybar_hotspot*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.i3bar_block*, align 8
  %14 = alloca %struct.status_line*, align 8
  store %struct.swaybar_output* %0, %struct.swaybar_output** %7, align 8
  store %struct.swaybar_hotspot* %1, %struct.swaybar_hotspot** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %15 = load i8*, i8** %12, align 8
  %16 = bitcast i8* %15 to %struct.i3bar_block*
  store %struct.i3bar_block* %16, %struct.i3bar_block** %13, align 8
  %17 = load %struct.swaybar_output*, %struct.swaybar_output** %7, align 8
  %18 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.status_line*, %struct.status_line** %20, align 8
  store %struct.status_line* %21, %struct.status_line** %14, align 8
  %22 = load %struct.status_line*, %struct.status_line** %14, align 8
  %23 = load %struct.i3bar_block*, %struct.i3bar_block** %13, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = load %struct.swaybar_hotspot*, %struct.swaybar_hotspot** %8, align 8
  %29 = getelementptr inbounds %struct.swaybar_hotspot, %struct.swaybar_hotspot* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %27, %30
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = load %struct.swaybar_hotspot*, %struct.swaybar_hotspot** %8, align 8
  %35 = getelementptr inbounds %struct.swaybar_hotspot, %struct.swaybar_hotspot* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %33, %36
  %38 = load %struct.swaybar_hotspot*, %struct.swaybar_hotspot** %8, align 8
  %39 = getelementptr inbounds %struct.swaybar_hotspot, %struct.swaybar_hotspot* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.swaybar_hotspot*, %struct.swaybar_hotspot** %8, align 8
  %42 = getelementptr inbounds %struct.swaybar_hotspot, %struct.swaybar_hotspot* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @i3bar_block_send_click(%struct.status_line* %22, %struct.i3bar_block* %23, i32 %24, i32 %25, i64 %31, i64 %37, i32 %40, i32 %43, i32 %44)
  ret i32 %45
}

declare dso_local i32 @i3bar_block_send_click(%struct.status_line*, %struct.i3bar_block*, i32, i32, i64, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
