; ModuleID = '/home/carl/AnghaBench/sway/sway/extr_commands.c_find_handler.c'
source_filename = "/home/carl/AnghaBench/sway/sway/extr_commands.c_find_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_handler = type { i8* }

@handler_compare = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_handler* @find_handler(i8* %0, %struct.cmd_handler* %1, i64 %2) #0 {
  %4 = alloca %struct.cmd_handler*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cmd_handler*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.cmd_handler, align 8
  store i8* %0, i8** %5, align 8
  store %struct.cmd_handler* %1, %struct.cmd_handler** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.cmd_handler*, %struct.cmd_handler** %6, align 8
  %10 = icmp ne %struct.cmd_handler* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i64, i64* %7, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11, %3
  store %struct.cmd_handler* null, %struct.cmd_handler** %4, align 8
  br label %23

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.cmd_handler, %struct.cmd_handler* %8, i32 0, i32 0
  %17 = load i8*, i8** %5, align 8
  store i8* %17, i8** %16, align 8
  %18 = load %struct.cmd_handler*, %struct.cmd_handler** %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = udiv i64 %19, 8
  %21 = load i32, i32* @handler_compare, align 4
  %22 = call %struct.cmd_handler* @bsearch(%struct.cmd_handler* %8, %struct.cmd_handler* %18, i64 %20, i32 8, i32 %21)
  store %struct.cmd_handler* %22, %struct.cmd_handler** %4, align 8
  br label %23

23:                                               ; preds = %15, %14
  %24 = load %struct.cmd_handler*, %struct.cmd_handler** %4, align 8
  ret %struct.cmd_handler* %24
}

declare dso_local %struct.cmd_handler* @bsearch(%struct.cmd_handler*, %struct.cmd_handler*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
