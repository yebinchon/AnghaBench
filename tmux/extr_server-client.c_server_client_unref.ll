; ModuleID = '/home/carl/AnghaBench/tmux/extr_server-client.c_server_client_unref.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_server-client.c_server_client_unref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { i64 }

@.str = private unnamed_addr constant [32 x i8] c"unref client %p (%d references)\00", align 1
@EV_TIMEOUT = common dso_local global i32 0, align 4
@server_client_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @server_client_unref(%struct.client* %0) #0 {
  %2 = alloca %struct.client*, align 8
  store %struct.client* %0, %struct.client** %2, align 8
  %3 = load %struct.client*, %struct.client** %2, align 8
  %4 = load %struct.client*, %struct.client** %2, align 8
  %5 = getelementptr inbounds %struct.client, %struct.client* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = call i32 @log_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.client* %3, i64 %6)
  %8 = load %struct.client*, %struct.client** %2, align 8
  %9 = getelementptr inbounds %struct.client, %struct.client* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, -1
  store i64 %11, i64* %9, align 8
  %12 = load %struct.client*, %struct.client** %2, align 8
  %13 = getelementptr inbounds %struct.client, %struct.client* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load i32, i32* @EV_TIMEOUT, align 4
  %18 = load i32, i32* @server_client_free, align 4
  %19 = load %struct.client*, %struct.client** %2, align 8
  %20 = call i32 @event_once(i32 -1, i32 %17, i32 %18, %struct.client* %19, i32* null)
  br label %21

21:                                               ; preds = %16, %1
  ret void
}

declare dso_local i32 @log_debug(i8*, %struct.client*, i64) #1

declare dso_local i32 @event_once(i32, i32, i32, %struct.client*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
