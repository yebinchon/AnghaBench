; ModuleID = '/home/carl/AnghaBench/tmux/extr_client.c_client_signal.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_client.c_client_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i32, i32 }

@SIGCHLD = common dso_local global i32 0, align 4
@WAIT_ANY = common dso_local global i32 0, align 4
@WNOHANG = common dso_local global i32 0, align 4
@client_attached = common dso_local global i32 0, align 4
@client_proc = common dso_local global i32 0, align 4
@CLIENT_EXIT_LOST_TTY = common dso_local global i32 0, align 4
@client_exitreason = common dso_local global i32 0, align 4
@client_exitval = common dso_local global i32 0, align 4
@client_peer = common dso_local global i32 0, align 4
@MSG_EXITING = common dso_local global i32 0, align 4
@CLIENT_EXIT_TERMINATED = common dso_local global i32 0, align 4
@MSG_RESIZE = common dso_local global i32 0, align 4
@SA_RESTART = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIGTSTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"sigaction failed\00", align 1
@MSG_WAKEUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @client_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @client_signal(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sigaction, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @SIGCHLD, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* @WAIT_ANY, align 4
  %10 = load i32, i32* @WNOHANG, align 4
  %11 = call i32 @waitpid(i32 %9, i32* %4, i32 %10)
  br label %57

12:                                               ; preds = %1
  %13 = load i32, i32* @client_attached, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %2, align 4
  %17 = icmp eq i32 %16, 129
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* @client_proc, align 4
  %20 = call i32 @proc_exit(i32 %19)
  br label %21

21:                                               ; preds = %18, %15
  br label %56

22:                                               ; preds = %12
  %23 = load i32, i32* %2, align 4
  switch i32 %23, label %55 [
    i32 130, label %24
    i32 129, label %29
    i32 128, label %34
    i32 131, label %38
  ]

24:                                               ; preds = %22
  %25 = load i32, i32* @CLIENT_EXIT_LOST_TTY, align 4
  store i32 %25, i32* @client_exitreason, align 4
  store i32 1, i32* @client_exitval, align 4
  %26 = load i32, i32* @client_peer, align 4
  %27 = load i32, i32* @MSG_EXITING, align 4
  %28 = call i32 @proc_send(i32 %26, i32 %27, i32 -1, i32* null, i32 0)
  br label %55

29:                                               ; preds = %22
  %30 = load i32, i32* @CLIENT_EXIT_TERMINATED, align 4
  store i32 %30, i32* @client_exitreason, align 4
  store i32 1, i32* @client_exitval, align 4
  %31 = load i32, i32* @client_peer, align 4
  %32 = load i32, i32* @MSG_EXITING, align 4
  %33 = call i32 @proc_send(i32 %31, i32 %32, i32 -1, i32* null, i32 0)
  br label %55

34:                                               ; preds = %22
  %35 = load i32, i32* @client_peer, align 4
  %36 = load i32, i32* @MSG_RESIZE, align 4
  %37 = call i32 @proc_send(i32 %35, i32 %36, i32 -1, i32* null, i32 0)
  br label %55

38:                                               ; preds = %22
  %39 = call i32 @memset(%struct.sigaction* %3, i32 0, i32 12)
  %40 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 2
  %41 = call i32 @sigemptyset(i32* %40)
  %42 = load i32, i32* @SA_RESTART, align 4
  %43 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 1
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* @SIG_IGN, align 4
  %45 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 0
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* @SIGTSTP, align 4
  %47 = call i32 @sigaction(i32 %46, %struct.sigaction* %3, i32* null)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %38
  %50 = call i32 @fatal(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %38
  %52 = load i32, i32* @client_peer, align 4
  %53 = load i32, i32* @MSG_WAKEUP, align 4
  %54 = call i32 @proc_send(i32 %52, i32 %53, i32 -1, i32* null, i32 0)
  br label %55

55:                                               ; preds = %22, %51, %34, %29, %24
  br label %56

56:                                               ; preds = %55, %21
  br label %57

57:                                               ; preds = %56, %8
  ret void
}

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @proc_exit(i32) #1

declare dso_local i32 @proc_send(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @memset(%struct.sigaction*, i32, i32) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @fatal(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
