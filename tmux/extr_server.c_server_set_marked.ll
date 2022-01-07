; ModuleID = '/home/carl/AnghaBench/tmux/extr_server.c_server_set_marked.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_server.c_server_set_marked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.window_pane*, i32, %struct.winlink*, %struct.session* }
%struct.window_pane = type { i32 }
%struct.winlink = type { i32 }
%struct.session = type { i32 }

@marked_pane = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @server_set_marked(%struct.session* %0, %struct.winlink* %1, %struct.window_pane* %2) #0 {
  %4 = alloca %struct.session*, align 8
  %5 = alloca %struct.winlink*, align 8
  %6 = alloca %struct.window_pane*, align 8
  store %struct.session* %0, %struct.session** %4, align 8
  store %struct.winlink* %1, %struct.winlink** %5, align 8
  store %struct.window_pane* %2, %struct.window_pane** %6, align 8
  %7 = call i32 @cmd_find_clear_state(%struct.TYPE_3__* @marked_pane, i32 0)
  %8 = load %struct.session*, %struct.session** %4, align 8
  store %struct.session* %8, %struct.session** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @marked_pane, i32 0, i32 3), align 8
  %9 = load %struct.winlink*, %struct.winlink** %5, align 8
  store %struct.winlink* %9, %struct.winlink** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @marked_pane, i32 0, i32 2), align 8
  %10 = load %struct.winlink*, %struct.winlink** %5, align 8
  %11 = getelementptr inbounds %struct.winlink, %struct.winlink* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @marked_pane, i32 0, i32 1), align 8
  %13 = load %struct.window_pane*, %struct.window_pane** %6, align 8
  store %struct.window_pane* %13, %struct.window_pane** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @marked_pane, i32 0, i32 0), align 8
  ret void
}

declare dso_local i32 @cmd_find_clear_state(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
