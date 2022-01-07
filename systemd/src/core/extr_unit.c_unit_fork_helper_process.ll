; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_unit.c_unit_fork_helper_process.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_unit.c_unit_fork_helper_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@FORK_REOPEN_LOG = common dso_local global i32 0, align 4
@SIGNALS_CRASH_HANDLER = common dso_local global i32 0, align 4
@SIGNALS_IGNORE = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@PR_SET_PDEATHSIG = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to join unit cgroup %s: %m\00", align 1
@EXIT_CGROUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unit_fork_helper_process(%struct.TYPE_11__* %0, i8* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %10 = call i32 @assert(%struct.TYPE_11__* %9)
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %12 = call i32 @assert(%struct.TYPE_11__* %11)
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %14 = call i32 @unit_realize_cgroup(%struct.TYPE_11__* %13)
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* @FORK_REOPEN_LOG, align 4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %18 = call i32 @safe_fork(i8* %15, i32 %16, %struct.TYPE_11__* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %4, align 4
  br label %59

23:                                               ; preds = %3
  %24 = load i32, i32* @SIGNALS_CRASH_HANDLER, align 4
  %25 = load i32, i32* @SIGNALS_IGNORE, align 4
  %26 = call i32 @default_signals(i32 %24, i32 %25, i32 -1)
  %27 = load i32, i32* @SIGPIPE, align 4
  %28 = call i32 @ignore_signals(i32 %27, i32 -1)
  %29 = load i32, i32* @PR_SET_PDEATHSIG, align 4
  %30 = load i32, i32* @SIGTERM, align 4
  %31 = call i32 @prctl(i32 %29, i32 %30)
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %58

36:                                               ; preds = %23
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @cg_attach_everywhere(i32 %41, i64 %44, i32 0, i32* null, i32* null)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %36
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @log_unit_error_errno(%struct.TYPE_11__* %49, i32 %50, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %53)
  %55 = load i32, i32* @EXIT_CGROUP, align 4
  %56 = call i32 @_exit(i32 %55) #3
  unreachable

57:                                               ; preds = %36
  br label %58

58:                                               ; preds = %57, %23
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %58, %21
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @assert(%struct.TYPE_11__*) #1

declare dso_local i32 @unit_realize_cgroup(%struct.TYPE_11__*) #1

declare dso_local i32 @safe_fork(i8*, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @default_signals(i32, i32, i32) #1

declare dso_local i32 @ignore_signals(i32, i32) #1

declare dso_local i32 @prctl(i32, i32) #1

declare dso_local i32 @cg_attach_everywhere(i32, i64, i32, i32*, i32*) #1

declare dso_local i32 @log_unit_error_errno(%struct.TYPE_11__*, i32, i8*, i64) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
