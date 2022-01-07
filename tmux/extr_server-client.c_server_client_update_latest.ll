; ModuleID = '/home/carl/AnghaBench/tmux/extr_server-client.c_server_client_update_latest.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_server-client.c_server_client_update_latest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.window* }
%struct.window = type { i32, %struct.client* }

@.str = private unnamed_addr constant [12 x i8] c"window-size\00", align 1
@WINDOW_SIZE_LATEST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.client*)* @server_client_update_latest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @server_client_update_latest(%struct.client* %0) #0 {
  %2 = alloca %struct.client*, align 8
  %3 = alloca %struct.window*, align 8
  store %struct.client* %0, %struct.client** %2, align 8
  %4 = load %struct.client*, %struct.client** %2, align 8
  %5 = getelementptr inbounds %struct.client, %struct.client* %4, i32 0, i32 0
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = icmp eq %struct.TYPE_4__* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %36

9:                                                ; preds = %1
  %10 = load %struct.client*, %struct.client** %2, align 8
  %11 = getelementptr inbounds %struct.client, %struct.client* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.window*, %struct.window** %15, align 8
  store %struct.window* %16, %struct.window** %3, align 8
  %17 = load %struct.window*, %struct.window** %3, align 8
  %18 = getelementptr inbounds %struct.window, %struct.window* %17, i32 0, i32 1
  %19 = load %struct.client*, %struct.client** %18, align 8
  %20 = load %struct.client*, %struct.client** %2, align 8
  %21 = icmp eq %struct.client* %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %9
  br label %36

23:                                               ; preds = %9
  %24 = load %struct.client*, %struct.client** %2, align 8
  %25 = load %struct.window*, %struct.window** %3, align 8
  %26 = getelementptr inbounds %struct.window, %struct.window* %25, i32 0, i32 1
  store %struct.client* %24, %struct.client** %26, align 8
  %27 = load %struct.window*, %struct.window** %3, align 8
  %28 = getelementptr inbounds %struct.window, %struct.window* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @options_get_number(i32 %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %31 = load i64, i64* @WINDOW_SIZE_LATEST, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %23
  %34 = load %struct.window*, %struct.window** %3, align 8
  %35 = call i32 @recalculate_size(%struct.window* %34)
  br label %36

36:                                               ; preds = %8, %22, %33, %23
  ret void
}

declare dso_local i64 @options_get_number(i32, i8*) #1

declare dso_local i32 @recalculate_size(%struct.window*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
