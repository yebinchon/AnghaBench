; ModuleID = '/home/carl/AnghaBench/tmux/extr_proc.c_proc_set_signals.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_proc.c_proc_set_signals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmuxproc = type { void (i32)*, i32, i32, i32, i32, i32, i32, i32 }
%struct.sigaction = type { i32, i32, i32 }

@SA_RESTART = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@SIGTSTP = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@proc_signal_cb = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@SIGCONT = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@SIGUSR2 = common dso_local global i32 0, align 4
@SIGWINCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @proc_set_signals(%struct.tmuxproc* %0, void (i32)* %1) #0 {
  %3 = alloca %struct.tmuxproc*, align 8
  %4 = alloca void (i32)*, align 8
  %5 = alloca %struct.sigaction, align 4
  store %struct.tmuxproc* %0, %struct.tmuxproc** %3, align 8
  store void (i32)* %1, void (i32)** %4, align 8
  %6 = load void (i32)*, void (i32)** %4, align 8
  %7 = load %struct.tmuxproc*, %struct.tmuxproc** %3, align 8
  %8 = getelementptr inbounds %struct.tmuxproc, %struct.tmuxproc* %7, i32 0, i32 0
  store void (i32)* %6, void (i32)** %8, align 8
  %9 = call i32 @memset(%struct.sigaction* %5, i32 0, i32 12)
  %10 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %5, i32 0, i32 2
  %11 = call i32 @sigemptyset(i32* %10)
  %12 = load i32, i32* @SA_RESTART, align 4
  %13 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %5, i32 0, i32 1
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @SIG_IGN, align 4
  %15 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %5, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @SIGINT, align 4
  %17 = call i32 @sigaction(i32 %16, %struct.sigaction* %5, i32* null)
  %18 = load i32, i32* @SIGPIPE, align 4
  %19 = call i32 @sigaction(i32 %18, %struct.sigaction* %5, i32* null)
  %20 = load i32, i32* @SIGTSTP, align 4
  %21 = call i32 @sigaction(i32 %20, %struct.sigaction* %5, i32* null)
  %22 = load %struct.tmuxproc*, %struct.tmuxproc** %3, align 8
  %23 = getelementptr inbounds %struct.tmuxproc, %struct.tmuxproc* %22, i32 0, i32 7
  %24 = load i32, i32* @SIGHUP, align 4
  %25 = load i32, i32* @proc_signal_cb, align 4
  %26 = load %struct.tmuxproc*, %struct.tmuxproc** %3, align 8
  %27 = call i32 @signal_set(i32* %23, i32 %24, i32 %25, %struct.tmuxproc* %26)
  %28 = load %struct.tmuxproc*, %struct.tmuxproc** %3, align 8
  %29 = getelementptr inbounds %struct.tmuxproc, %struct.tmuxproc* %28, i32 0, i32 7
  %30 = call i32 @signal_add(i32* %29, i32* null)
  %31 = load %struct.tmuxproc*, %struct.tmuxproc** %3, align 8
  %32 = getelementptr inbounds %struct.tmuxproc, %struct.tmuxproc* %31, i32 0, i32 6
  %33 = load i32, i32* @SIGCHLD, align 4
  %34 = load i32, i32* @proc_signal_cb, align 4
  %35 = load %struct.tmuxproc*, %struct.tmuxproc** %3, align 8
  %36 = call i32 @signal_set(i32* %32, i32 %33, i32 %34, %struct.tmuxproc* %35)
  %37 = load %struct.tmuxproc*, %struct.tmuxproc** %3, align 8
  %38 = getelementptr inbounds %struct.tmuxproc, %struct.tmuxproc* %37, i32 0, i32 6
  %39 = call i32 @signal_add(i32* %38, i32* null)
  %40 = load %struct.tmuxproc*, %struct.tmuxproc** %3, align 8
  %41 = getelementptr inbounds %struct.tmuxproc, %struct.tmuxproc* %40, i32 0, i32 5
  %42 = load i32, i32* @SIGCONT, align 4
  %43 = load i32, i32* @proc_signal_cb, align 4
  %44 = load %struct.tmuxproc*, %struct.tmuxproc** %3, align 8
  %45 = call i32 @signal_set(i32* %41, i32 %42, i32 %43, %struct.tmuxproc* %44)
  %46 = load %struct.tmuxproc*, %struct.tmuxproc** %3, align 8
  %47 = getelementptr inbounds %struct.tmuxproc, %struct.tmuxproc* %46, i32 0, i32 5
  %48 = call i32 @signal_add(i32* %47, i32* null)
  %49 = load %struct.tmuxproc*, %struct.tmuxproc** %3, align 8
  %50 = getelementptr inbounds %struct.tmuxproc, %struct.tmuxproc* %49, i32 0, i32 4
  %51 = load i32, i32* @SIGTERM, align 4
  %52 = load i32, i32* @proc_signal_cb, align 4
  %53 = load %struct.tmuxproc*, %struct.tmuxproc** %3, align 8
  %54 = call i32 @signal_set(i32* %50, i32 %51, i32 %52, %struct.tmuxproc* %53)
  %55 = load %struct.tmuxproc*, %struct.tmuxproc** %3, align 8
  %56 = getelementptr inbounds %struct.tmuxproc, %struct.tmuxproc* %55, i32 0, i32 4
  %57 = call i32 @signal_add(i32* %56, i32* null)
  %58 = load %struct.tmuxproc*, %struct.tmuxproc** %3, align 8
  %59 = getelementptr inbounds %struct.tmuxproc, %struct.tmuxproc* %58, i32 0, i32 3
  %60 = load i32, i32* @SIGUSR1, align 4
  %61 = load i32, i32* @proc_signal_cb, align 4
  %62 = load %struct.tmuxproc*, %struct.tmuxproc** %3, align 8
  %63 = call i32 @signal_set(i32* %59, i32 %60, i32 %61, %struct.tmuxproc* %62)
  %64 = load %struct.tmuxproc*, %struct.tmuxproc** %3, align 8
  %65 = getelementptr inbounds %struct.tmuxproc, %struct.tmuxproc* %64, i32 0, i32 3
  %66 = call i32 @signal_add(i32* %65, i32* null)
  %67 = load %struct.tmuxproc*, %struct.tmuxproc** %3, align 8
  %68 = getelementptr inbounds %struct.tmuxproc, %struct.tmuxproc* %67, i32 0, i32 2
  %69 = load i32, i32* @SIGUSR2, align 4
  %70 = load i32, i32* @proc_signal_cb, align 4
  %71 = load %struct.tmuxproc*, %struct.tmuxproc** %3, align 8
  %72 = call i32 @signal_set(i32* %68, i32 %69, i32 %70, %struct.tmuxproc* %71)
  %73 = load %struct.tmuxproc*, %struct.tmuxproc** %3, align 8
  %74 = getelementptr inbounds %struct.tmuxproc, %struct.tmuxproc* %73, i32 0, i32 2
  %75 = call i32 @signal_add(i32* %74, i32* null)
  %76 = load %struct.tmuxproc*, %struct.tmuxproc** %3, align 8
  %77 = getelementptr inbounds %struct.tmuxproc, %struct.tmuxproc* %76, i32 0, i32 1
  %78 = load i32, i32* @SIGWINCH, align 4
  %79 = load i32, i32* @proc_signal_cb, align 4
  %80 = load %struct.tmuxproc*, %struct.tmuxproc** %3, align 8
  %81 = call i32 @signal_set(i32* %77, i32 %78, i32 %79, %struct.tmuxproc* %80)
  %82 = load %struct.tmuxproc*, %struct.tmuxproc** %3, align 8
  %83 = getelementptr inbounds %struct.tmuxproc, %struct.tmuxproc* %82, i32 0, i32 1
  %84 = call i32 @signal_add(i32* %83, i32* null)
  ret void
}

declare dso_local i32 @memset(%struct.sigaction*, i32, i32) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @signal_set(i32*, i32, i32, %struct.tmuxproc*) #1

declare dso_local i32 @signal_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
