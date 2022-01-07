; ModuleID = '/home/carl/AnghaBench/sway/sway/extr_ipc-server.c_ipc_send_event.c'
source_filename = "/home/carl/AnghaBench/sway/sway/extr_ipc-server.c_ipc_send_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.ipc_client** }
%struct.ipc_client = type { i32 }

@ipc_client_list = common dso_local global %struct.TYPE_2__* null, align 8
@SWAY_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Unable to send reply to IPC client\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @ipc_send_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipc_send_event(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipc_client*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %44, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ipc_client_list, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %47

13:                                               ; preds = %7
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ipc_client_list, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load %struct.ipc_client**, %struct.ipc_client*** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.ipc_client*, %struct.ipc_client** %16, i64 %18
  %20 = load %struct.ipc_client*, %struct.ipc_client** %19, align 8
  store %struct.ipc_client* %20, %struct.ipc_client** %5, align 8
  %21 = load %struct.ipc_client*, %struct.ipc_client** %5, align 8
  %22 = getelementptr inbounds %struct.ipc_client, %struct.ipc_client* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @event_mask(i32 %24)
  %26 = and i32 %23, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %13
  br label %44

29:                                               ; preds = %13
  %30 = load %struct.ipc_client*, %struct.ipc_client** %5, align 8
  %31 = load i32, i32* %4, align 4
  %32 = load i8*, i8** %3, align 8
  %33 = load i8*, i8** %3, align 8
  %34 = call i64 @strlen(i8* %33)
  %35 = trunc i64 %34 to i32
  %36 = call i32 @ipc_send_reply(%struct.ipc_client* %30, i32 %31, i8* %32, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %29
  %39 = load i32, i32* @SWAY_INFO, align 4
  %40 = call i32 @sway_log_errno(i32 %39, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %38, %29
  br label %44

44:                                               ; preds = %43, %28
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %7

47:                                               ; preds = %7
  ret void
}

declare dso_local i32 @event_mask(i32) #1

declare dso_local i32 @ipc_send_reply(%struct.ipc_client*, i32, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sway_log_errno(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
