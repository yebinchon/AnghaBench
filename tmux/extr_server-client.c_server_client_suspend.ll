; ModuleID = '/home/carl/AnghaBench/tmux/extr_server-client.c_server_client_suspend.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_server-client.c_server_client_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { i32, i32, i32, %struct.session* }
%struct.session = type { i32 }

@CLIENT_DETACHING = common dso_local global i32 0, align 4
@CLIENT_SUSPENDED = common dso_local global i32 0, align 4
@MSG_SUSPEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @server_client_suspend(%struct.client* %0) #0 {
  %2 = alloca %struct.client*, align 8
  %3 = alloca %struct.session*, align 8
  store %struct.client* %0, %struct.client** %2, align 8
  %4 = load %struct.client*, %struct.client** %2, align 8
  %5 = getelementptr inbounds %struct.client, %struct.client* %4, i32 0, i32 3
  %6 = load %struct.session*, %struct.session** %5, align 8
  store %struct.session* %6, %struct.session** %3, align 8
  %7 = load %struct.session*, %struct.session** %3, align 8
  %8 = icmp eq %struct.session* %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = load %struct.client*, %struct.client** %2, align 8
  %11 = getelementptr inbounds %struct.client, %struct.client* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @CLIENT_DETACHING, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %9, %1
  br label %31

17:                                               ; preds = %9
  %18 = load %struct.client*, %struct.client** %2, align 8
  %19 = getelementptr inbounds %struct.client, %struct.client* %18, i32 0, i32 2
  %20 = call i32 @tty_stop_tty(i32* %19)
  %21 = load i32, i32* @CLIENT_SUSPENDED, align 4
  %22 = load %struct.client*, %struct.client** %2, align 8
  %23 = getelementptr inbounds %struct.client, %struct.client* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 8
  %26 = load %struct.client*, %struct.client** %2, align 8
  %27 = getelementptr inbounds %struct.client, %struct.client* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MSG_SUSPEND, align 4
  %30 = call i32 @proc_send(i32 %28, i32 %29, i32 -1, i32* null, i32 0)
  br label %31

31:                                               ; preds = %17, %16
  ret void
}

declare dso_local i32 @tty_stop_tty(i32*) #1

declare dso_local i32 @proc_send(i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
