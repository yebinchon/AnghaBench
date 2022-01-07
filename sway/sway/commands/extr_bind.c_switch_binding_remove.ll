; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_bind.c_switch_binding_remove.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_bind.c_switch_binding_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.sway_switch_binding** }
%struct.sway_switch_binding = type { i32 }
%struct.cmd_results = type { i32 }

@config = common dso_local global %struct.TYPE_7__* null, align 8
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%s - Unbound %s switch\00", align 1
@CMD_SUCCESS = common dso_local global i32 0, align 4
@CMD_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Could not find switch binding `%s`\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cmd_results* (%struct.sway_switch_binding*, i8*, i8*)* @switch_binding_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cmd_results* @switch_binding_remove(%struct.sway_switch_binding* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.cmd_results*, align 8
  %5 = alloca %struct.sway_switch_binding*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sway_switch_binding*, align 8
  store %struct.sway_switch_binding* %0, %struct.sway_switch_binding** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** @config, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %8, align 8
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %49, %3
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %52

22:                                               ; preds = %16
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load %struct.sway_switch_binding**, %struct.sway_switch_binding*** %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.sway_switch_binding*, %struct.sway_switch_binding** %25, i64 %27
  %29 = load %struct.sway_switch_binding*, %struct.sway_switch_binding** %28, align 8
  store %struct.sway_switch_binding* %29, %struct.sway_switch_binding** %10, align 8
  %30 = load %struct.sway_switch_binding*, %struct.sway_switch_binding** %5, align 8
  %31 = load %struct.sway_switch_binding*, %struct.sway_switch_binding** %10, align 8
  %32 = call i64 @binding_switch_compare(%struct.sway_switch_binding* %30, %struct.sway_switch_binding* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %22
  %35 = load %struct.sway_switch_binding*, %struct.sway_switch_binding** %10, align 8
  %36 = call i32 @free_switch_binding(%struct.sway_switch_binding* %35)
  %37 = load %struct.sway_switch_binding*, %struct.sway_switch_binding** %5, align 8
  %38 = call i32 @free_switch_binding(%struct.sway_switch_binding* %37)
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @list_del(%struct.TYPE_6__* %39, i32 %40)
  %42 = load i32, i32* @SWAY_DEBUG, align 4
  %43 = load i8*, i8** %6, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @sway_log(i32 %42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %43, i8* %44)
  %46 = load i32, i32* @CMD_SUCCESS, align 4
  %47 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %46, i8* null)
  store %struct.cmd_results* %47, %struct.cmd_results** %4, align 8
  br label %58

48:                                               ; preds = %22
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %9, align 4
  br label %16

52:                                               ; preds = %16
  %53 = load %struct.sway_switch_binding*, %struct.sway_switch_binding** %5, align 8
  %54 = call i32 @free_switch_binding(%struct.sway_switch_binding* %53)
  %55 = load i32, i32* @CMD_FAILURE, align 4
  %56 = load i8*, i8** %7, align 8
  %57 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %55, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %56)
  store %struct.cmd_results* %57, %struct.cmd_results** %4, align 8
  br label %58

58:                                               ; preds = %52, %34
  %59 = load %struct.cmd_results*, %struct.cmd_results** %4, align 8
  ret %struct.cmd_results* %59
}

declare dso_local i64 @binding_switch_compare(%struct.sway_switch_binding*, %struct.sway_switch_binding*) #1

declare dso_local i32 @free_switch_binding(%struct.sway_switch_binding*) #1

declare dso_local i32 @list_del(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @sway_log(i32, i8*, i8*, i8*) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
