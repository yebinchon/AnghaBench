; ModuleID = '/home/carl/AnghaBench/sway/sway/extr_config.c_destroy_removed_seats.c'
source_filename = "/home/carl/AnghaBench/sway/sway/extr_config.c_destroy_removed_seats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_config = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.seat_config** }
%struct.seat_config = type { i32 }
%struct.sway_seat = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@seat_name_cmp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_config*, %struct.sway_config*)* @destroy_removed_seats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_removed_seats(%struct.sway_config* %0, %struct.sway_config* %1) #0 {
  %3 = alloca %struct.sway_config*, align 8
  %4 = alloca %struct.sway_config*, align 8
  %5 = alloca %struct.seat_config*, align 8
  %6 = alloca %struct.sway_seat*, align 8
  %7 = alloca i32, align 4
  store %struct.sway_config* %0, %struct.sway_config** %3, align 8
  store %struct.sway_config* %1, %struct.sway_config** %4, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %57, %2
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.sway_config*, %struct.sway_config** %3, align 8
  %11 = getelementptr inbounds %struct.sway_config, %struct.sway_config* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %9, %14
  br i1 %15, label %16, label %60

16:                                               ; preds = %8
  %17 = load %struct.sway_config*, %struct.sway_config** %3, align 8
  %18 = getelementptr inbounds %struct.sway_config, %struct.sway_config* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load %struct.seat_config**, %struct.seat_config*** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.seat_config*, %struct.seat_config** %21, i64 %23
  %25 = load %struct.seat_config*, %struct.seat_config** %24, align 8
  store %struct.seat_config* %25, %struct.seat_config** %5, align 8
  %26 = load %struct.seat_config*, %struct.seat_config** %5, align 8
  %27 = getelementptr inbounds %struct.seat_config, %struct.seat_config* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @strcmp(i32 %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %16
  br label %57

32:                                               ; preds = %16
  %33 = load %struct.sway_config*, %struct.sway_config** %4, align 8
  %34 = icmp ne %struct.sway_config* %33, null
  br i1 %34, label %35, label %56

35:                                               ; preds = %32
  %36 = load %struct.sway_config*, %struct.sway_config** %4, align 8
  %37 = getelementptr inbounds %struct.sway_config, %struct.sway_config* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* @seat_name_cmp, align 4
  %40 = load %struct.seat_config*, %struct.seat_config** %5, align 8
  %41 = getelementptr inbounds %struct.seat_config, %struct.seat_config* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @list_seq_find(%struct.TYPE_2__* %38, i32 %39, i32 %42)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %35
  %46 = load %struct.seat_config*, %struct.seat_config** %5, align 8
  %47 = getelementptr inbounds %struct.seat_config, %struct.seat_config* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.sway_seat* @input_manager_get_seat(i32 %48, i32 0)
  store %struct.sway_seat* %49, %struct.sway_seat** %6, align 8
  %50 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %51 = icmp ne %struct.sway_seat* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %54 = call i32 @seat_destroy(%struct.sway_seat* %53)
  br label %55

55:                                               ; preds = %52, %45
  br label %56

56:                                               ; preds = %55, %35, %32
  br label %57

57:                                               ; preds = %56, %31
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %8

60:                                               ; preds = %8
  ret void
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i64 @list_seq_find(%struct.TYPE_2__*, i32, i32) #1

declare dso_local %struct.sway_seat* @input_manager_get_seat(i32, i32) #1

declare dso_local i32 @seat_destroy(%struct.sway_seat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
