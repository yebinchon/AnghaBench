; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_layer_shell.c_popup_get_layer.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_layer_shell.c_popup_get_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_layer_surface = type { i32 }
%struct.sway_layer_popup = type { i64, %struct.sway_layer_surface*, %struct.sway_layer_popup* }

@LAYER_PARENT_POPUP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sway_layer_surface* (%struct.sway_layer_popup*)* @popup_get_layer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sway_layer_surface* @popup_get_layer(%struct.sway_layer_popup* %0) #0 {
  %2 = alloca %struct.sway_layer_popup*, align 8
  store %struct.sway_layer_popup* %0, %struct.sway_layer_popup** %2, align 8
  br label %3

3:                                                ; preds = %9, %1
  %4 = load %struct.sway_layer_popup*, %struct.sway_layer_popup** %2, align 8
  %5 = getelementptr inbounds %struct.sway_layer_popup, %struct.sway_layer_popup* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @LAYER_PARENT_POPUP, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = load %struct.sway_layer_popup*, %struct.sway_layer_popup** %2, align 8
  %11 = getelementptr inbounds %struct.sway_layer_popup, %struct.sway_layer_popup* %10, i32 0, i32 2
  %12 = load %struct.sway_layer_popup*, %struct.sway_layer_popup** %11, align 8
  store %struct.sway_layer_popup* %12, %struct.sway_layer_popup** %2, align 8
  br label %3

13:                                               ; preds = %3
  %14 = load %struct.sway_layer_popup*, %struct.sway_layer_popup** %2, align 8
  %15 = getelementptr inbounds %struct.sway_layer_popup, %struct.sway_layer_popup* %14, i32 0, i32 1
  %16 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %15, align 8
  ret %struct.sway_layer_surface* %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
