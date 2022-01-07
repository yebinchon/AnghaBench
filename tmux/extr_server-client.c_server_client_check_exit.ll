; ModuleID = '/home/carl/AnghaBench/tmux/extr_server-client.c_server_client_check_exit.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_server-client.c_server_client_check_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { i32, i32, i32, i32, i32, i32 }

@CLIENT_EXIT = common dso_local global i32 0, align 4
@CLIENT_EXITED = common dso_local global i32 0, align 4
@CLIENT_ATTACHED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"client-detached\00", align 1
@MSG_EXIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.client*)* @server_client_check_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @server_client_check_exit(%struct.client* %0) #0 {
  %2 = alloca %struct.client*, align 8
  store %struct.client* %0, %struct.client** %2, align 8
  %3 = load %struct.client*, %struct.client** %2, align 8
  %4 = getelementptr inbounds %struct.client, %struct.client* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = xor i32 %5, -1
  %7 = load i32, i32* @CLIENT_EXIT, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %63

11:                                               ; preds = %1
  %12 = load %struct.client*, %struct.client** %2, align 8
  %13 = getelementptr inbounds %struct.client, %struct.client* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @CLIENT_EXITED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  br label %63

19:                                               ; preds = %11
  %20 = load %struct.client*, %struct.client** %2, align 8
  %21 = getelementptr inbounds %struct.client, %struct.client* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @EVBUFFER_LENGTH(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %63

26:                                               ; preds = %19
  %27 = load %struct.client*, %struct.client** %2, align 8
  %28 = getelementptr inbounds %struct.client, %struct.client* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @EVBUFFER_LENGTH(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %63

33:                                               ; preds = %26
  %34 = load %struct.client*, %struct.client** %2, align 8
  %35 = getelementptr inbounds %struct.client, %struct.client* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @EVBUFFER_LENGTH(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %63

40:                                               ; preds = %33
  %41 = load %struct.client*, %struct.client** %2, align 8
  %42 = getelementptr inbounds %struct.client, %struct.client* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @CLIENT_ATTACHED, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load %struct.client*, %struct.client** %2, align 8
  %49 = call i32 @notify_client(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.client* %48)
  br label %50

50:                                               ; preds = %47, %40
  %51 = load %struct.client*, %struct.client** %2, align 8
  %52 = getelementptr inbounds %struct.client, %struct.client* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @MSG_EXIT, align 4
  %55 = load %struct.client*, %struct.client** %2, align 8
  %56 = getelementptr inbounds %struct.client, %struct.client* %55, i32 0, i32 1
  %57 = call i32 @proc_send(i32 %53, i32 %54, i32 -1, i32* %56, i32 4)
  %58 = load i32, i32* @CLIENT_EXITED, align 4
  %59 = load %struct.client*, %struct.client** %2, align 8
  %60 = getelementptr inbounds %struct.client, %struct.client* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %50, %39, %32, %25, %18, %10
  ret void
}

declare dso_local i64 @EVBUFFER_LENGTH(i32) #1

declare dso_local i32 @notify_client(i8*, %struct.client*) #1

declare dso_local i32 @proc_send(i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
