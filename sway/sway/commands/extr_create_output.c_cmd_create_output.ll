; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_create_output.c_cmd_create_output.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_create_output.c_cmd_create_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cmd_results = type { i32 }

@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [25 x i8] c"Expected a multi backend\00", align 1
@create_output = common dso_local global i32 0, align 4
@CMD_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Can only create outputs for Wayland or X11 backends\00", align 1
@CMD_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_results* @cmd_create_output(i32 %0, i8** %1) #0 {
  %3 = alloca %struct.cmd_results*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 4
  %8 = call i32 @wlr_backend_is_multi(i32 %7)
  %9 = call i32 @sway_assert(i32 %8, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 4
  %11 = load i32, i32* @create_output, align 4
  %12 = call i32 @wlr_multi_for_each_backend(i32 %10, i32 %11, i32* %6)
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @CMD_INVALID, align 4
  %17 = call %struct.cmd_results* @cmd_results_new(i32 %16, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  store %struct.cmd_results* %17, %struct.cmd_results** %3, align 8
  br label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @CMD_SUCCESS, align 4
  %20 = call %struct.cmd_results* @cmd_results_new(i32 %19, i8* null)
  store %struct.cmd_results* %20, %struct.cmd_results** %3, align 8
  br label %21

21:                                               ; preds = %18, %15
  %22 = load %struct.cmd_results*, %struct.cmd_results** %3, align 8
  ret %struct.cmd_results* %22
}

declare dso_local i32 @sway_assert(i32, i8*) #1

declare dso_local i32 @wlr_backend_is_multi(i32) #1

declare dso_local i32 @wlr_multi_for_each_backend(i32, i32, i32*) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
