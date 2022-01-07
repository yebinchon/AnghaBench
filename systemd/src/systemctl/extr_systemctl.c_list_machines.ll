; ModuleID = '/home/carl/AnghaBench/systemd/src/systemctl/extr_systemctl.c_list_machines.c'
source_filename = "/home/carl/AnghaBench/systemd/src/systemctl/extr_systemctl.c_list_machines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.machine_info = type { i32 }

@BUS_MANAGER = common dso_local global i32 0, align 4
@arg_pager_flags = common dso_local global i32 0, align 4
@compare_machine_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8*)* @list_machines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @list_machines(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.machine_info*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.machine_info* null, %struct.machine_info** %8, align 8
  %11 = load i32, i32* @BUS_MANAGER, align 4
  %12 = call i32 @acquire_bus(i32 %11, i32** %9)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %10, align 4
  store i32 %16, i32* %4, align 4
  br label %39

17:                                               ; preds = %3
  %18 = load i32*, i32** %9, align 8
  %19 = load i8**, i8*** %6, align 8
  %20 = call i32 @strv_skip(i8** %19, i32 1)
  %21 = call i32 @get_machine_list(i32* %18, %struct.machine_info** %8, i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %4, align 4
  br label %39

26:                                               ; preds = %17
  %27 = load i32, i32* @arg_pager_flags, align 4
  %28 = call i32 @pager_open(i32 %27)
  %29 = load %struct.machine_info*, %struct.machine_info** %8, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @compare_machine_info, align 4
  %32 = call i32 @typesafe_qsort(%struct.machine_info* %29, i32 %30, i32 %31)
  %33 = load %struct.machine_info*, %struct.machine_info** %8, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @output_machines_list(%struct.machine_info* %33, i32 %34)
  %36 = load %struct.machine_info*, %struct.machine_info** %8, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @free_machines_list(%struct.machine_info* %36, i32 %37)
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %26, %24, %15
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @acquire_bus(i32, i32**) #1

declare dso_local i32 @get_machine_list(i32*, %struct.machine_info**, i32) #1

declare dso_local i32 @strv_skip(i8**, i32) #1

declare dso_local i32 @pager_open(i32) #1

declare dso_local i32 @typesafe_qsort(%struct.machine_info*, i32, i32) #1

declare dso_local i32 @output_machines_list(%struct.machine_info*, i32) #1

declare dso_local i32 @free_machines_list(%struct.machine_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
