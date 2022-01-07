; ModuleID = '/home/carl/AnghaBench/tmux/extr_proc.c_proc_start.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_proc.c_proc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmuxproc = type { i32 }
%struct.utsname = type { i8*, i64, i32 }

@.str = private unnamed_addr constant [8 x i8] c"%s (%s)\00", align 1
@socket_path = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"%s started (%ld): version %s, socket %s, protocol %d\00", align 1
@VERSION = common dso_local global i32 0, align 4
@PROTOCOL_VERSION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"on %s %s %s; libevent %s (%s)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tmuxproc* @proc_start(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.tmuxproc*, align 8
  %4 = alloca %struct.utsname, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 @log_open(i8* %5)
  %7 = load i8*, i8** %2, align 8
  %8 = load i32, i32* @socket_path, align 4
  %9 = call i32 @setproctitle(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %7, i32 %8)
  %10 = call i64 @uname(%struct.utsname* %4)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = call i32 @memset(%struct.utsname* %4, i32 0, i32 24)
  br label %14

14:                                               ; preds = %12, %1
  %15 = load i8*, i8** %2, align 8
  %16 = call i64 (...) @getpid()
  %17 = load i32, i32* @VERSION, align 4
  %18 = load i32, i32* @socket_path, align 4
  %19 = load i32, i32* @PROTOCOL_VERSION, align 4
  %20 = call i32 @log_debug(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i8* %15, i64 %16, i32 %17, i32 %18, i32 %19)
  %21 = getelementptr inbounds %struct.utsname, %struct.utsname* %4, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds %struct.utsname, %struct.utsname* %4, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.utsname, %struct.utsname* %4, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (...) @event_get_version()
  %28 = call i32 (...) @event_get_method()
  %29 = call i32 @log_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %22, i64 %24, i32 %26, i32 %27, i32 %28)
  %30 = call %struct.tmuxproc* @xcalloc(i32 1, i32 4)
  store %struct.tmuxproc* %30, %struct.tmuxproc** %3, align 8
  %31 = load i8*, i8** %2, align 8
  %32 = call i32 @xstrdup(i8* %31)
  %33 = load %struct.tmuxproc*, %struct.tmuxproc** %3, align 8
  %34 = getelementptr inbounds %struct.tmuxproc, %struct.tmuxproc* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.tmuxproc*, %struct.tmuxproc** %3, align 8
  ret %struct.tmuxproc* %35
}

declare dso_local i32 @log_open(i8*) #1

declare dso_local i32 @setproctitle(i8*, i8*, i32) #1

declare dso_local i64 @uname(%struct.utsname*) #1

declare dso_local i32 @memset(%struct.utsname*, i32, i32) #1

declare dso_local i32 @log_debug(i8*, i8*, i64, i32, i32, i32) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i32 @event_get_version(...) #1

declare dso_local i32 @event_get_method(...) #1

declare dso_local %struct.tmuxproc* @xcalloc(i32, i32) #1

declare dso_local i32 @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
