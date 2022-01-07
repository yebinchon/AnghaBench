; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_output.c_handle_present.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_output.c_handle_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_output = type { i32, i32 }
%struct.wl_listener = type { i32 }
%struct.wlr_output_event_present = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.wlr_presentation_event = type { i32, i32, i32, i32, i32, i32 }

@present = common dso_local global i32 0, align 4
@send_presented_iterator = common dso_local global i32 0, align 4
@output = common dso_local global %struct.sway_output* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl_listener*, i8*)* @handle_present to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_present(%struct.wl_listener* %0, i8* %1) #0 {
  %3 = alloca %struct.wl_listener*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sway_output*, align 8
  %6 = alloca %struct.wlr_output_event_present*, align 8
  %7 = alloca %struct.wlr_presentation_event, align 4
  store %struct.wl_listener* %0, %struct.wl_listener** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.wl_listener*, %struct.wl_listener** %3, align 8
  %9 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %10 = ptrtoint %struct.sway_output* %9 to i32
  %11 = load i32, i32* @present, align 4
  %12 = call %struct.sway_output* @wl_container_of(%struct.wl_listener* %8, i32 %10, i32 %11)
  store %struct.sway_output* %12, %struct.sway_output** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.wlr_output_event_present*
  store %struct.wlr_output_event_present* %14, %struct.wlr_output_event_present** %6, align 8
  %15 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %16 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %52

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.wlr_presentation_event, %struct.wlr_presentation_event* %7, i32 0, i32 0
  %22 = load %struct.wlr_output_event_present*, %struct.wlr_output_event_present** %6, align 8
  %23 = getelementptr inbounds %struct.wlr_output_event_present, %struct.wlr_output_event_present* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %21, align 4
  %25 = getelementptr inbounds %struct.wlr_presentation_event, %struct.wlr_presentation_event* %7, i32 0, i32 1
  %26 = load %struct.wlr_output_event_present*, %struct.wlr_output_event_present** %6, align 8
  %27 = getelementptr inbounds %struct.wlr_output_event_present, %struct.wlr_output_event_present* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %25, align 4
  %29 = getelementptr inbounds %struct.wlr_presentation_event, %struct.wlr_presentation_event* %7, i32 0, i32 2
  %30 = load %struct.wlr_output_event_present*, %struct.wlr_output_event_present** %6, align 8
  %31 = getelementptr inbounds %struct.wlr_output_event_present, %struct.wlr_output_event_present* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %29, align 4
  %33 = getelementptr inbounds %struct.wlr_presentation_event, %struct.wlr_presentation_event* %7, i32 0, i32 3
  %34 = load %struct.wlr_output_event_present*, %struct.wlr_output_event_present** %6, align 8
  %35 = getelementptr inbounds %struct.wlr_output_event_present, %struct.wlr_output_event_present* %34, i32 0, i32 3
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %33, align 4
  %39 = getelementptr inbounds %struct.wlr_presentation_event, %struct.wlr_presentation_event* %7, i32 0, i32 4
  %40 = load %struct.wlr_output_event_present*, %struct.wlr_output_event_present** %6, align 8
  %41 = getelementptr inbounds %struct.wlr_output_event_present, %struct.wlr_output_event_present* %40, i32 0, i32 3
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %39, align 4
  %45 = getelementptr inbounds %struct.wlr_presentation_event, %struct.wlr_presentation_event* %7, i32 0, i32 5
  %46 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %47 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %45, align 4
  %49 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %50 = load i32, i32* @send_presented_iterator, align 4
  %51 = call i32 @output_for_each_surface(%struct.sway_output* %49, i32 %50, %struct.wlr_presentation_event* %7)
  br label %52

52:                                               ; preds = %20, %19
  ret void
}

declare dso_local %struct.sway_output* @wl_container_of(%struct.wl_listener*, i32, i32) #1

declare dso_local i32 @output_for_each_surface(%struct.sway_output*, i32, %struct.wlr_presentation_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
