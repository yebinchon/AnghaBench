; ModuleID = '/home/carl/AnghaBench/sway/sway/extr_decoration.c_handle_server_decoration.c'
source_filename = "/home/carl/AnghaBench/sway/sway/extr_decoration.c_handle_server_decoration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.wl_listener = type { i32 }
%struct.wlr_server_decoration = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.sway_server_decoration = type { i32, %struct.TYPE_5__, %struct.TYPE_5__, %struct.wlr_server_decoration* }
%struct.TYPE_5__ = type { i32 }

@server_decoration_handle_destroy = common dso_local global i32 0, align 4
@server_decoration_handle_mode = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @handle_server_decoration(%struct.wl_listener* %0, i8* %1) #0 {
  %3 = alloca %struct.wl_listener*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wlr_server_decoration*, align 8
  %6 = alloca %struct.sway_server_decoration*, align 8
  store %struct.wl_listener* %0, %struct.wl_listener** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.wlr_server_decoration*
  store %struct.wlr_server_decoration* %8, %struct.wlr_server_decoration** %5, align 8
  %9 = call %struct.sway_server_decoration* @calloc(i32 1, i32 24)
  store %struct.sway_server_decoration* %9, %struct.sway_server_decoration** %6, align 8
  %10 = load %struct.sway_server_decoration*, %struct.sway_server_decoration** %6, align 8
  %11 = icmp eq %struct.sway_server_decoration* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %40

13:                                               ; preds = %2
  %14 = load %struct.wlr_server_decoration*, %struct.wlr_server_decoration** %5, align 8
  %15 = load %struct.sway_server_decoration*, %struct.sway_server_decoration** %6, align 8
  %16 = getelementptr inbounds %struct.sway_server_decoration, %struct.sway_server_decoration* %15, i32 0, i32 3
  store %struct.wlr_server_decoration* %14, %struct.wlr_server_decoration** %16, align 8
  %17 = load %struct.wlr_server_decoration*, %struct.wlr_server_decoration** %5, align 8
  %18 = getelementptr inbounds %struct.wlr_server_decoration, %struct.wlr_server_decoration* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load %struct.sway_server_decoration*, %struct.sway_server_decoration** %6, align 8
  %21 = getelementptr inbounds %struct.sway_server_decoration, %struct.sway_server_decoration* %20, i32 0, i32 2
  %22 = call i32 @wl_signal_add(i32* %19, %struct.TYPE_5__* %21)
  %23 = load i32, i32* @server_decoration_handle_destroy, align 4
  %24 = load %struct.sway_server_decoration*, %struct.sway_server_decoration** %6, align 8
  %25 = getelementptr inbounds %struct.sway_server_decoration, %struct.sway_server_decoration* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 8
  %27 = load %struct.wlr_server_decoration*, %struct.wlr_server_decoration** %5, align 8
  %28 = getelementptr inbounds %struct.wlr_server_decoration, %struct.wlr_server_decoration* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.sway_server_decoration*, %struct.sway_server_decoration** %6, align 8
  %31 = getelementptr inbounds %struct.sway_server_decoration, %struct.sway_server_decoration* %30, i32 0, i32 1
  %32 = call i32 @wl_signal_add(i32* %29, %struct.TYPE_5__* %31)
  %33 = load i32, i32* @server_decoration_handle_mode, align 4
  %34 = load %struct.sway_server_decoration*, %struct.sway_server_decoration** %6, align 8
  %35 = getelementptr inbounds %struct.sway_server_decoration, %struct.sway_server_decoration* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 4
  %37 = load %struct.sway_server_decoration*, %struct.sway_server_decoration** %6, align 8
  %38 = getelementptr inbounds %struct.sway_server_decoration, %struct.sway_server_decoration* %37, i32 0, i32 0
  %39 = call i32 @wl_list_insert(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 0), i32* %38)
  br label %40

40:                                               ; preds = %13, %12
  ret void
}

declare dso_local %struct.sway_server_decoration* @calloc(i32, i32) #1

declare dso_local i32 @wl_signal_add(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @wl_list_insert(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
