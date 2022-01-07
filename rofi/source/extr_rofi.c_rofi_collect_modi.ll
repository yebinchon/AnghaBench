; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_rofi.c_rofi_collect_modi.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_rofi.c_rofi_collect_modi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@run_mode = common dso_local global i32 0, align 4
@ssh_mode = common dso_local global i32 0, align 4
@combi_mode = common dso_local global i32 0, align 4
@help_keys_mode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"-no-plugins\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"-plugin-path\00", align 1
@config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Parse plugin path: %s\00", align 1
@drun_mode = common dso_local global i32 0, align 4
@window_mode = common dso_local global i32 0, align 4
@window_mode_cd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @rofi_collect_modi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rofi_collect_modi() #0 {
  %1 = call i32 @rofi_collect_modi_add(i32* @run_mode)
  %2 = call i32 @rofi_collect_modi_add(i32* @ssh_mode)
  %3 = call i32 @rofi_collect_modi_add(i32* @combi_mode)
  %4 = call i32 @rofi_collect_modi_add(i32* @help_keys_mode)
  %5 = call i64 @find_arg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %0
  %8 = call i32 @find_arg_str(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0))
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 4
  %10 = call i32 @g_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 4
  %12 = call i32 @rofi_collect_modi_dir(i32 %11)
  br label %13

13:                                               ; preds = %7, %0
  ret void
}

declare dso_local i32 @rofi_collect_modi_add(i32*) #1

declare dso_local i64 @find_arg(i8*) #1

declare dso_local i32 @find_arg_str(i8*, i32*) #1

declare dso_local i32 @g_debug(i8*, i32) #1

declare dso_local i32 @rofi_collect_modi_dir(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
