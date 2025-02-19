; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_tablet.c_sway_tablet_tool_configure.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_tablet.c_sway_tablet_tool_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.sway_tablet = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.wlr_tablet_tool = type { %struct.sway_tablet_tool*, %struct.TYPE_10__ }
%struct.sway_tablet_tool = type { %struct.TYPE_13__, %struct.TYPE_12__*, %struct.TYPE_13__, %struct.sway_tablet*, %struct.TYPE_8__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"could not allocate sway tablet tool for tablet\00", align 1
@server = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@handle_tablet_tool_destroy = common dso_local global i32 0, align 4
@handle_tablet_tool_set_cursor = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sway_tablet_tool_configure(%struct.sway_tablet* %0, %struct.wlr_tablet_tool* %1) #0 {
  %3 = alloca %struct.sway_tablet*, align 8
  %4 = alloca %struct.wlr_tablet_tool*, align 8
  %5 = alloca %struct.sway_tablet_tool*, align 8
  store %struct.sway_tablet* %0, %struct.sway_tablet** %3, align 8
  store %struct.wlr_tablet_tool* %1, %struct.wlr_tablet_tool** %4, align 8
  %6 = call %struct.sway_tablet_tool* @calloc(i32 1, i32 40)
  store %struct.sway_tablet_tool* %6, %struct.sway_tablet_tool** %5, align 8
  %7 = load %struct.sway_tablet_tool*, %struct.sway_tablet_tool** %5, align 8
  %8 = call i32 @sway_assert(%struct.sway_tablet_tool* %7, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %59

11:                                               ; preds = %2
  %12 = load %struct.sway_tablet*, %struct.sway_tablet** %3, align 8
  %13 = getelementptr inbounds %struct.sway_tablet, %struct.sway_tablet* %12, i32 0, i32 0
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = load %struct.sway_tablet_tool*, %struct.sway_tablet_tool** %5, align 8
  %18 = getelementptr inbounds %struct.sway_tablet_tool, %struct.sway_tablet_tool* %17, i32 0, i32 4
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %18, align 8
  %19 = load %struct.sway_tablet*, %struct.sway_tablet** %3, align 8
  %20 = load %struct.sway_tablet_tool*, %struct.sway_tablet_tool** %5, align 8
  %21 = getelementptr inbounds %struct.sway_tablet_tool, %struct.sway_tablet_tool* %20, i32 0, i32 3
  store %struct.sway_tablet* %19, %struct.sway_tablet** %21, align 8
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 0), align 4
  %23 = load %struct.sway_tablet*, %struct.sway_tablet** %3, align 8
  %24 = getelementptr inbounds %struct.sway_tablet, %struct.sway_tablet* %23, i32 0, i32 0
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.wlr_tablet_tool*, %struct.wlr_tablet_tool** %4, align 8
  %31 = call %struct.TYPE_12__* @wlr_tablet_tool_create(i32 %22, i32 %29, %struct.wlr_tablet_tool* %30)
  %32 = load %struct.sway_tablet_tool*, %struct.sway_tablet_tool** %5, align 8
  %33 = getelementptr inbounds %struct.sway_tablet_tool, %struct.sway_tablet_tool* %32, i32 0, i32 1
  store %struct.TYPE_12__* %31, %struct.TYPE_12__** %33, align 8
  %34 = load i32, i32* @handle_tablet_tool_destroy, align 4
  %35 = load %struct.sway_tablet_tool*, %struct.sway_tablet_tool** %5, align 8
  %36 = getelementptr inbounds %struct.sway_tablet_tool, %struct.sway_tablet_tool* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  %38 = load %struct.wlr_tablet_tool*, %struct.wlr_tablet_tool** %4, align 8
  %39 = getelementptr inbounds %struct.wlr_tablet_tool, %struct.wlr_tablet_tool* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load %struct.sway_tablet_tool*, %struct.sway_tablet_tool** %5, align 8
  %42 = getelementptr inbounds %struct.sway_tablet_tool, %struct.sway_tablet_tool* %41, i32 0, i32 2
  %43 = call i32 @wl_signal_add(i32* %40, %struct.TYPE_13__* %42)
  %44 = load i32, i32* @handle_tablet_tool_set_cursor, align 4
  %45 = load %struct.sway_tablet_tool*, %struct.sway_tablet_tool** %5, align 8
  %46 = getelementptr inbounds %struct.sway_tablet_tool, %struct.sway_tablet_tool* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 8
  %48 = load %struct.sway_tablet_tool*, %struct.sway_tablet_tool** %5, align 8
  %49 = getelementptr inbounds %struct.sway_tablet_tool, %struct.sway_tablet_tool* %48, i32 0, i32 1
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load %struct.sway_tablet_tool*, %struct.sway_tablet_tool** %5, align 8
  %54 = getelementptr inbounds %struct.sway_tablet_tool, %struct.sway_tablet_tool* %53, i32 0, i32 0
  %55 = call i32 @wl_signal_add(i32* %52, %struct.TYPE_13__* %54)
  %56 = load %struct.sway_tablet_tool*, %struct.sway_tablet_tool** %5, align 8
  %57 = load %struct.wlr_tablet_tool*, %struct.wlr_tablet_tool** %4, align 8
  %58 = getelementptr inbounds %struct.wlr_tablet_tool, %struct.wlr_tablet_tool* %57, i32 0, i32 0
  store %struct.sway_tablet_tool* %56, %struct.sway_tablet_tool** %58, align 8
  br label %59

59:                                               ; preds = %11, %10
  ret void
}

declare dso_local %struct.sway_tablet_tool* @calloc(i32, i32) #1

declare dso_local i32 @sway_assert(%struct.sway_tablet_tool*, i8*) #1

declare dso_local %struct.TYPE_12__* @wlr_tablet_tool_create(i32, i32, %struct.wlr_tablet_tool*) #1

declare dso_local i32 @wl_signal_add(i32*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
