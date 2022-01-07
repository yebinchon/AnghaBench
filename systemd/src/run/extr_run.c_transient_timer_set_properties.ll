; ModuleID = '/home/carl/AnghaBench/systemd/src/run/extr_run.c_transient_timer_set_properties.c'
source_filename = "/home/carl/AnghaBench/systemd/src/run/extr_run.c_transient_timer_set_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UNIT_TIMER = common dso_local global i32 0, align 4
@arg_timer_property = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"(sv)\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"RemainAfterElapse\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @transient_timer_set_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @transient_timer_set_properties(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @assert(i32* %5)
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* @UNIT_TIMER, align 4
  %9 = load i32, i32* @arg_timer_property, align 4
  %10 = call i32 @transient_unit_set_properties(i32* %7, i32 %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %24

15:                                               ; preds = %1
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @sd_bus_message_append(i32* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @bus_log_create_error(i32 %21)
  store i32 %22, i32* %2, align 4
  br label %24

23:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %20, %13
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @transient_unit_set_properties(i32*, i32, i32) #1

declare dso_local i32 @sd_bus_message_append(i32*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @bus_log_create_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
