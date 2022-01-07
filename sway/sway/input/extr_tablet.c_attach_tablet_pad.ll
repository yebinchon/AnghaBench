; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_tablet.c_attach_tablet_pad.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_tablet.c_attach_tablet_pad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_tablet_pad = type { %struct.TYPE_16__, %struct.sway_tablet*, %struct.TYPE_14__* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.sway_tablet = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32 }

@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Attaching tablet pad \22%s\22 to tablet tool \22%s\22\00", align 1
@handle_pad_tablet_destroy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_tablet_pad*, %struct.sway_tablet*)* @attach_tablet_pad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @attach_tablet_pad(%struct.sway_tablet_pad* %0, %struct.sway_tablet* %1) #0 {
  %3 = alloca %struct.sway_tablet_pad*, align 8
  %4 = alloca %struct.sway_tablet*, align 8
  store %struct.sway_tablet_pad* %0, %struct.sway_tablet_pad** %3, align 8
  store %struct.sway_tablet* %1, %struct.sway_tablet** %4, align 8
  %5 = load i32, i32* @SWAY_DEBUG, align 4
  %6 = load %struct.sway_tablet_pad*, %struct.sway_tablet_pad** %3, align 8
  %7 = getelementptr inbounds %struct.sway_tablet_pad, %struct.sway_tablet_pad* %6, i32 0, i32 2
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.sway_tablet*, %struct.sway_tablet** %4, align 8
  %16 = getelementptr inbounds %struct.sway_tablet, %struct.sway_tablet* %15, i32 0, i32 0
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @sway_log(i32 %5, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %23)
  %25 = load %struct.sway_tablet*, %struct.sway_tablet** %4, align 8
  %26 = load %struct.sway_tablet_pad*, %struct.sway_tablet_pad** %3, align 8
  %27 = getelementptr inbounds %struct.sway_tablet_pad, %struct.sway_tablet_pad* %26, i32 0, i32 1
  store %struct.sway_tablet* %25, %struct.sway_tablet** %27, align 8
  %28 = load %struct.sway_tablet_pad*, %struct.sway_tablet_pad** %3, align 8
  %29 = getelementptr inbounds %struct.sway_tablet_pad, %struct.sway_tablet_pad* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 1
  %31 = call i32 @wl_list_remove(i32* %30)
  %32 = load i32, i32* @handle_pad_tablet_destroy, align 4
  %33 = load %struct.sway_tablet_pad*, %struct.sway_tablet_pad** %3, align 8
  %34 = getelementptr inbounds %struct.sway_tablet_pad, %struct.sway_tablet_pad* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  %36 = load %struct.sway_tablet*, %struct.sway_tablet** %4, align 8
  %37 = getelementptr inbounds %struct.sway_tablet, %struct.sway_tablet* %36, i32 0, i32 0
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load %struct.sway_tablet_pad*, %struct.sway_tablet_pad** %3, align 8
  %46 = getelementptr inbounds %struct.sway_tablet_pad, %struct.sway_tablet_pad* %45, i32 0, i32 0
  %47 = call i32 @wl_signal_add(i32* %44, %struct.TYPE_16__* %46)
  ret void
}

declare dso_local i32 @sway_log(i32, i8*, i32, i32) #1

declare dso_local i32 @wl_list_remove(i32*) #1

declare dso_local i32 @wl_signal_add(i32*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
