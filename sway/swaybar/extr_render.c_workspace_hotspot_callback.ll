; ModuleID = '/home/carl/AnghaBench/sway/swaybar/extr_render.c_workspace_hotspot_callback.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/extr_render.c_workspace_hotspot_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swaybar_output = type { i32 }
%struct.swaybar_hotspot = type { i32 }

@BTN_LEFT = common dso_local global i64 0, align 8
@HOTSPOT_PROCESS = common dso_local global i32 0, align 4
@HOTSPOT_IGNORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.swaybar_output*, %struct.swaybar_hotspot*, i32, i32, i64, i8*)* @workspace_hotspot_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @workspace_hotspot_callback(%struct.swaybar_output* %0, %struct.swaybar_hotspot* %1, i32 %2, i32 %3, i64 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.swaybar_output*, align 8
  %9 = alloca %struct.swaybar_hotspot*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store %struct.swaybar_output* %0, %struct.swaybar_output** %8, align 8
  store %struct.swaybar_hotspot* %1, %struct.swaybar_hotspot** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i8* %5, i8** %13, align 8
  %14 = load i64, i64* %12, align 8
  %15 = load i64, i64* @BTN_LEFT, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %6
  %18 = load i32, i32* @HOTSPOT_PROCESS, align 4
  store i32 %18, i32* %7, align 4
  br label %26

19:                                               ; preds = %6
  %20 = load %struct.swaybar_output*, %struct.swaybar_output** %8, align 8
  %21 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %13, align 8
  %24 = call i32 @ipc_send_workspace_command(i32 %22, i8* %23)
  %25 = load i32, i32* @HOTSPOT_IGNORE, align 4
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %19, %17
  %27 = load i32, i32* %7, align 4
  ret i32 %27
}

declare dso_local i32 @ipc_send_workspace_command(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
