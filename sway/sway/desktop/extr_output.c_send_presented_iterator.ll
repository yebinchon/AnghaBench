; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_output.c_send_presented_iterator.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_output.c_send_presented_iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.sway_output = type { i32 }
%struct.wlr_surface = type { i32 }
%struct.wlr_box = type { i32 }
%struct.wlr_presentation_event = type { i32 }

@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_output*, %struct.wlr_surface*, %struct.wlr_box*, float, i8*)* @send_presented_iterator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_presented_iterator(%struct.sway_output* %0, %struct.wlr_surface* %1, %struct.wlr_box* %2, float %3, i8* %4) #0 {
  %6 = alloca %struct.sway_output*, align 8
  %7 = alloca %struct.wlr_surface*, align 8
  %8 = alloca %struct.wlr_box*, align 8
  %9 = alloca float, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.wlr_presentation_event*, align 8
  store %struct.sway_output* %0, %struct.sway_output** %6, align 8
  store %struct.wlr_surface* %1, %struct.wlr_surface** %7, align 8
  store %struct.wlr_box* %2, %struct.wlr_box** %8, align 8
  store float %3, float* %9, align 4
  store i8* %4, i8** %10, align 8
  %12 = load i8*, i8** %10, align 8
  %13 = bitcast i8* %12 to %struct.wlr_presentation_event*
  store %struct.wlr_presentation_event* %13, %struct.wlr_presentation_event** %11, align 8
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 4
  %15 = load %struct.wlr_surface*, %struct.wlr_surface** %7, align 8
  %16 = load %struct.wlr_presentation_event*, %struct.wlr_presentation_event** %11, align 8
  %17 = call i32 @wlr_presentation_send_surface_presented(i32 %14, %struct.wlr_surface* %15, %struct.wlr_presentation_event* %16)
  ret void
}

declare dso_local i32 @wlr_presentation_send_surface_presented(i32, %struct.wlr_surface*, %struct.wlr_presentation_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
