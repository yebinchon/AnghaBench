; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/output/extr_enable.c_output_cmd_enable.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/output/extr_enable.c_output_cmd_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i8** }
%struct.TYPE_5__ = type { i32 }
%struct.cmd_results = type { i32 }

@config = common dso_local global %struct.TYPE_8__* null, align 8
@CMD_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Missing output config\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_results* @output_cmd_enable(i32 %0, i8** %1) #0 {
  %3 = alloca %struct.cmd_results*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** @config, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = icmp ne %struct.TYPE_5__* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @CMD_FAILURE, align 4
  %13 = call %struct.cmd_results* @cmd_results_new(i32 %12, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store %struct.cmd_results* %13, %struct.cmd_results** %3, align 8
  br label %30

14:                                               ; preds = %2
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** @config, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** @config, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store i32 %20, i32* %24, align 8
  %25 = load i8**, i8*** %5, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** @config, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  store i8** %25, i8*** %29, align 8
  store %struct.cmd_results* null, %struct.cmd_results** %3, align 8
  br label %30

30:                                               ; preds = %14, %11
  %31 = load %struct.cmd_results*, %struct.cmd_results** %3, align 8
  ret %struct.cmd_results* %31
}

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
