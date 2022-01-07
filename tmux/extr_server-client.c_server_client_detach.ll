; ModuleID = '/home/carl/AnghaBench/tmux/extr_server-client.c_server_client_detach.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_server-client.c_server_client_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { i32, i32, %struct.session* }
%struct.session = type { i32 }

@CLIENT_DETACHING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"client-detached\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @server_client_detach(%struct.client* %0, i32 %1) #0 {
  %3 = alloca %struct.client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.session*, align 8
  store %struct.client* %0, %struct.client** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.client*, %struct.client** %3, align 8
  %7 = getelementptr inbounds %struct.client, %struct.client* %6, i32 0, i32 2
  %8 = load %struct.session*, %struct.session** %7, align 8
  store %struct.session* %8, %struct.session** %5, align 8
  %9 = load %struct.session*, %struct.session** %5, align 8
  %10 = icmp eq %struct.session* %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %2
  %12 = load %struct.client*, %struct.client** %3, align 8
  %13 = getelementptr inbounds %struct.client, %struct.client* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @CLIENT_DETACHING, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11, %2
  br label %40

19:                                               ; preds = %11
  %20 = load i32, i32* @CLIENT_DETACHING, align 4
  %21 = load %struct.client*, %struct.client** %3, align 8
  %22 = getelementptr inbounds %struct.client, %struct.client* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load %struct.client*, %struct.client** %3, align 8
  %26 = call i32 @notify_client(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.client* %25)
  %27 = load %struct.client*, %struct.client** %3, align 8
  %28 = getelementptr inbounds %struct.client, %struct.client* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.session*, %struct.session** %5, align 8
  %32 = getelementptr inbounds %struct.session, %struct.session* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.session*, %struct.session** %5, align 8
  %35 = getelementptr inbounds %struct.session, %struct.session* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @strlen(i32 %36)
  %38 = add nsw i64 %37, 1
  %39 = call i32 @proc_send(i32 %29, i32 %30, i32 -1, i32 %33, i64 %38)
  br label %40

40:                                               ; preds = %19, %18
  ret void
}

declare dso_local i32 @notify_client(i8*, %struct.client*) #1

declare dso_local i32 @proc_send(i32, i32, i32, i32, i64) #1

declare dso_local i64 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
