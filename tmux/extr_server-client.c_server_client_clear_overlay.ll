; ModuleID = '/home/carl/AnghaBench/tmux/extr_server-client.c_server_client_clear_overlay.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_server-client.c_server_client_clear_overlay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { %struct.TYPE_2__, i32*, i32*, i32 (%struct.client*)*, i32 }
%struct.TYPE_2__ = type { i32 }

@TTY_FREEZE = common dso_local global i32 0, align 4
@TTY_NOCURSOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.client*)* @server_client_clear_overlay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @server_client_clear_overlay(%struct.client* %0) #0 {
  %2 = alloca %struct.client*, align 8
  store %struct.client* %0, %struct.client** %2, align 8
  %3 = load %struct.client*, %struct.client** %2, align 8
  %4 = getelementptr inbounds %struct.client, %struct.client* %3, i32 0, i32 2
  %5 = load i32*, i32** %4, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %44

8:                                                ; preds = %1
  %9 = load %struct.client*, %struct.client** %2, align 8
  %10 = getelementptr inbounds %struct.client, %struct.client* %9, i32 0, i32 4
  %11 = call i64 @event_initialized(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = load %struct.client*, %struct.client** %2, align 8
  %15 = getelementptr inbounds %struct.client, %struct.client* %14, i32 0, i32 4
  %16 = call i32 @evtimer_del(i32* %15)
  br label %17

17:                                               ; preds = %13, %8
  %18 = load %struct.client*, %struct.client** %2, align 8
  %19 = getelementptr inbounds %struct.client, %struct.client* %18, i32 0, i32 3
  %20 = load i32 (%struct.client*)*, i32 (%struct.client*)** %19, align 8
  %21 = icmp ne i32 (%struct.client*)* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.client*, %struct.client** %2, align 8
  %24 = getelementptr inbounds %struct.client, %struct.client* %23, i32 0, i32 3
  %25 = load i32 (%struct.client*)*, i32 (%struct.client*)** %24, align 8
  %26 = load %struct.client*, %struct.client** %2, align 8
  %27 = call i32 %25(%struct.client* %26)
  br label %28

28:                                               ; preds = %22, %17
  %29 = load %struct.client*, %struct.client** %2, align 8
  %30 = getelementptr inbounds %struct.client, %struct.client* %29, i32 0, i32 2
  store i32* null, i32** %30, align 8
  %31 = load %struct.client*, %struct.client** %2, align 8
  %32 = getelementptr inbounds %struct.client, %struct.client* %31, i32 0, i32 1
  store i32* null, i32** %32, align 8
  %33 = load i32, i32* @TTY_FREEZE, align 4
  %34 = load i32, i32* @TTY_NOCURSOR, align 4
  %35 = or i32 %33, %34
  %36 = xor i32 %35, -1
  %37 = load %struct.client*, %struct.client** %2, align 8
  %38 = getelementptr inbounds %struct.client, %struct.client* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %40, %36
  store i32 %41, i32* %39, align 8
  %42 = load %struct.client*, %struct.client** %2, align 8
  %43 = call i32 @server_redraw_client(%struct.client* %42)
  br label %44

44:                                               ; preds = %28, %7
  ret void
}

declare dso_local i64 @event_initialized(i32*) #1

declare dso_local i32 @evtimer_del(i32*) #1

declare dso_local i32 @server_redraw_client(%struct.client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
