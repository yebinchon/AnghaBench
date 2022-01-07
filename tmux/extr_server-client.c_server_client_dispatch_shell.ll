; ModuleID = '/home/carl/AnghaBench/tmux/extr_server-client.c_server_client_dispatch_shell.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_server-client.c_server_client_dispatch_shell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { i32 }

@global_s_options = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"default-shell\00", align 1
@_PATH_BSHELL = common dso_local global i8* null, align 8
@MSG_SHELL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.client*)* @server_client_dispatch_shell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @server_client_dispatch_shell(%struct.client* %0) #0 {
  %2 = alloca %struct.client*, align 8
  %3 = alloca i8*, align 8
  store %struct.client* %0, %struct.client** %2, align 8
  %4 = load i32, i32* @global_s_options, align 4
  %5 = call i8* @options_get_string(i32 %4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i8* %5, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = call i64 @areshell(i8* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10, %1
  %15 = load i8*, i8** @_PATH_BSHELL, align 8
  store i8* %15, i8** %3, align 8
  br label %16

16:                                               ; preds = %14, %10
  %17 = load %struct.client*, %struct.client** %2, align 8
  %18 = getelementptr inbounds %struct.client, %struct.client* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MSG_SHELL, align 4
  %21 = load i8*, i8** %3, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = call i64 @strlen(i8* %22)
  %24 = add nsw i64 %23, 1
  %25 = call i32 @proc_send(i32 %19, i32 %20, i32 -1, i8* %21, i64 %24)
  %26 = load %struct.client*, %struct.client** %2, align 8
  %27 = getelementptr inbounds %struct.client, %struct.client* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @proc_kill_peer(i32 %28)
  ret void
}

declare dso_local i8* @options_get_string(i32, i8*) #1

declare dso_local i64 @areshell(i8*) #1

declare dso_local i32 @proc_send(i32, i32, i32, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @proc_kill_peer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
