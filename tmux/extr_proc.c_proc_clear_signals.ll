; ModuleID = '/home/carl/AnghaBench/tmux/extr_proc.c_proc_clear_signals.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_proc.c_proc_clear_signals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmuxproc = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.sigaction = type { i32, i32, i32 }

@SA_RESTART = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@SIGTSTP = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@SIGCONT = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@SIGUSR2 = common dso_local global i32 0, align 4
@SIGWINCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @proc_clear_signals(%struct.tmuxproc* %0, i32 %1) #0 {
  %3 = alloca %struct.tmuxproc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sigaction, align 4
  store %struct.tmuxproc* %0, %struct.tmuxproc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 @memset(%struct.sigaction* %5, i32 0, i32 12)
  %7 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %5, i32 0, i32 2
  %8 = call i32 @sigemptyset(i32* %7)
  %9 = load i32, i32* @SA_RESTART, align 4
  %10 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %5, i32 0, i32 1
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* @SIG_DFL, align 4
  %12 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %5, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @SIGINT, align 4
  %14 = call i32 @sigaction(i32 %13, %struct.sigaction* %5, i32* null)
  %15 = load i32, i32* @SIGPIPE, align 4
  %16 = call i32 @sigaction(i32 %15, %struct.sigaction* %5, i32* null)
  %17 = load i32, i32* @SIGTSTP, align 4
  %18 = call i32 @sigaction(i32 %17, %struct.sigaction* %5, i32* null)
  %19 = load %struct.tmuxproc*, %struct.tmuxproc** %3, align 8
  %20 = getelementptr inbounds %struct.tmuxproc, %struct.tmuxproc* %19, i32 0, i32 6
  %21 = call i32 @signal_del(i32* %20)
  %22 = load %struct.tmuxproc*, %struct.tmuxproc** %3, align 8
  %23 = getelementptr inbounds %struct.tmuxproc, %struct.tmuxproc* %22, i32 0, i32 5
  %24 = call i32 @signal_del(i32* %23)
  %25 = load %struct.tmuxproc*, %struct.tmuxproc** %3, align 8
  %26 = getelementptr inbounds %struct.tmuxproc, %struct.tmuxproc* %25, i32 0, i32 4
  %27 = call i32 @signal_del(i32* %26)
  %28 = load %struct.tmuxproc*, %struct.tmuxproc** %3, align 8
  %29 = getelementptr inbounds %struct.tmuxproc, %struct.tmuxproc* %28, i32 0, i32 3
  %30 = call i32 @signal_del(i32* %29)
  %31 = load %struct.tmuxproc*, %struct.tmuxproc** %3, align 8
  %32 = getelementptr inbounds %struct.tmuxproc, %struct.tmuxproc* %31, i32 0, i32 2
  %33 = call i32 @signal_del(i32* %32)
  %34 = load %struct.tmuxproc*, %struct.tmuxproc** %3, align 8
  %35 = getelementptr inbounds %struct.tmuxproc, %struct.tmuxproc* %34, i32 0, i32 1
  %36 = call i32 @signal_del(i32* %35)
  %37 = load %struct.tmuxproc*, %struct.tmuxproc** %3, align 8
  %38 = getelementptr inbounds %struct.tmuxproc, %struct.tmuxproc* %37, i32 0, i32 0
  %39 = call i32 @signal_del(i32* %38)
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %2
  %43 = load i32, i32* @SIGHUP, align 4
  %44 = call i32 @sigaction(i32 %43, %struct.sigaction* %5, i32* null)
  %45 = load i32, i32* @SIGCHLD, align 4
  %46 = call i32 @sigaction(i32 %45, %struct.sigaction* %5, i32* null)
  %47 = load i32, i32* @SIGCONT, align 4
  %48 = call i32 @sigaction(i32 %47, %struct.sigaction* %5, i32* null)
  %49 = load i32, i32* @SIGTERM, align 4
  %50 = call i32 @sigaction(i32 %49, %struct.sigaction* %5, i32* null)
  %51 = load i32, i32* @SIGUSR1, align 4
  %52 = call i32 @sigaction(i32 %51, %struct.sigaction* %5, i32* null)
  %53 = load i32, i32* @SIGUSR2, align 4
  %54 = call i32 @sigaction(i32 %53, %struct.sigaction* %5, i32* null)
  %55 = load i32, i32* @SIGWINCH, align 4
  %56 = call i32 @sigaction(i32 %55, %struct.sigaction* %5, i32* null)
  br label %57

57:                                               ; preds = %42, %2
  ret void
}

declare dso_local i32 @memset(%struct.sigaction*, i32, i32) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @signal_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
