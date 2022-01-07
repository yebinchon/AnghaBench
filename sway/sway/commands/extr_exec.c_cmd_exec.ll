; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_exec.c_cmd_exec.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_exec.c_cmd_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }
%struct.cmd_results = type { i32 }

@config = common dso_local global %struct.TYPE_2__* null, align 8
@CMD_DEFER = common dso_local global i32 0, align 4
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Ignoring 'exec %s' due to reload\00", align 1
@CMD_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_results* @cmd_exec(i32 %0, i8** %1) #0 {
  %3 = alloca %struct.cmd_results*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @config, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @CMD_DEFER, align 4
  %13 = call %struct.cmd_results* @cmd_results_new(i32 %12, i32* null)
  store %struct.cmd_results* %13, %struct.cmd_results** %3, align 8
  br label %34

14:                                               ; preds = %2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @config, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %14
  %20 = load i8**, i8*** %5, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i8* @join_args(i8** %20, i32 %21)
  store i8* %22, i8** %6, align 8
  %23 = load i32, i32* @SWAY_DEBUG, align 4
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @sway_log(i32 %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @free(i8* %26)
  %28 = load i32, i32* @CMD_SUCCESS, align 4
  %29 = call %struct.cmd_results* @cmd_results_new(i32 %28, i32* null)
  store %struct.cmd_results* %29, %struct.cmd_results** %3, align 8
  br label %34

30:                                               ; preds = %14
  %31 = load i32, i32* %4, align 4
  %32 = load i8**, i8*** %5, align 8
  %33 = call %struct.cmd_results* @cmd_exec_always(i32 %31, i8** %32)
  store %struct.cmd_results* %33, %struct.cmd_results** %3, align 8
  br label %34

34:                                               ; preds = %30, %19, %11
  %35 = load %struct.cmd_results*, %struct.cmd_results** %3, align 8
  ret %struct.cmd_results* %35
}

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i32*) #1

declare dso_local i8* @join_args(i8**, i32) #1

declare dso_local i32 @sway_log(i32, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.cmd_results* @cmd_exec_always(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
