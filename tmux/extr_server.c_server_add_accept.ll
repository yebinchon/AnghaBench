; ModuleID = '/home/carl/AnghaBench/tmux/extr_server.c_server_add_accept.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_server.c_server_add_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }

@server_fd = common dso_local global i32 0, align 4
@server_ev_accept = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i32 0, align 4
@server_accept = common dso_local global i32 0, align 4
@EV_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @server_add_accept(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.timeval, align 4
  store i32 %0, i32* %2, align 4
  %4 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %5 = load i32, i32* %2, align 4
  store i32 %5, i32* %4, align 4
  %6 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @server_fd, align 4
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %30

10:                                               ; preds = %1
  %11 = call i64 @event_initialized(i32* @server_ev_accept)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = call i32 @event_del(i32* @server_ev_accept)
  br label %15

15:                                               ; preds = %13, %10
  %16 = load i32, i32* %2, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load i32, i32* @server_fd, align 4
  %20 = load i32, i32* @EV_READ, align 4
  %21 = load i32, i32* @server_accept, align 4
  %22 = call i32 @event_set(i32* @server_ev_accept, i32 %19, i32 %20, i32 %21, i32* null)
  %23 = call i32 @event_add(i32* @server_ev_accept, %struct.timeval* null)
  br label %30

24:                                               ; preds = %15
  %25 = load i32, i32* @server_fd, align 4
  %26 = load i32, i32* @EV_TIMEOUT, align 4
  %27 = load i32, i32* @server_accept, align 4
  %28 = call i32 @event_set(i32* @server_ev_accept, i32 %25, i32 %26, i32 %27, i32* null)
  %29 = call i32 @event_add(i32* @server_ev_accept, %struct.timeval* %3)
  br label %30

30:                                               ; preds = %9, %24, %18
  ret void
}

declare dso_local i64 @event_initialized(i32*) #1

declare dso_local i32 @event_del(i32*) #1

declare dso_local i32 @event_set(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @event_add(i32*, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
