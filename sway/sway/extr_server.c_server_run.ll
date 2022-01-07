; ModuleID = '/home/carl/AnghaBench/sway/sway/extr_server.c_server_run.c'
source_filename = "/home/carl/AnghaBench/sway/sway/extr_server.c_server_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_server = type { i32, i32 }

@SWAY_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Running compositor on wayland display '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @server_run(%struct.sway_server* %0) #0 {
  %2 = alloca %struct.sway_server*, align 8
  store %struct.sway_server* %0, %struct.sway_server** %2, align 8
  %3 = load i32, i32* @SWAY_INFO, align 4
  %4 = load %struct.sway_server*, %struct.sway_server** %2, align 8
  %5 = getelementptr inbounds %struct.sway_server, %struct.sway_server* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @sway_log(i32 %3, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load %struct.sway_server*, %struct.sway_server** %2, align 8
  %9 = getelementptr inbounds %struct.sway_server, %struct.sway_server* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @wl_display_run(i32 %10)
  ret void
}

declare dso_local i32 @sway_log(i32, i8*, i32) #1

declare dso_local i32 @wl_display_run(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
