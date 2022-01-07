; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_new_window.c_cmd_new_window.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_new_window.c_cmd_new_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.cmd_results = type { i32 }

@SWAY_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Warning: new_window is deprecated. Use default_border instead.\00", align 1
@config = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [54 x i8] c"new_window is deprecated. Use default_border instead.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_results* @cmd_new_window(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %5 = load i32, i32* @SWAY_INFO, align 4
  %6 = call i32 @sway_log(i32 %5, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @config, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 @config_add_swaynag_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %2
  %14 = load i32, i32* %3, align 4
  %15 = load i8**, i8*** %4, align 8
  %16 = call %struct.cmd_results* @cmd_default_border(i32 %14, i8** %15)
  ret %struct.cmd_results* %16
}

declare dso_local i32 @sway_log(i32, i8*) #1

declare dso_local i32 @config_add_swaynag_warning(i8*) #1

declare dso_local %struct.cmd_results* @cmd_default_border(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
