; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_cursor.c_cursor_get_timeout.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_cursor.c_cursor_get_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_cursor = type { i64, i32 }
%struct.seat_config = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cursor_get_timeout(%struct.sway_cursor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sway_cursor*, align 8
  %4 = alloca %struct.seat_config*, align 8
  %5 = alloca i32, align 4
  store %struct.sway_cursor* %0, %struct.sway_cursor** %3, align 8
  %6 = load %struct.sway_cursor*, %struct.sway_cursor** %3, align 8
  %7 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %35

11:                                               ; preds = %1
  %12 = load %struct.sway_cursor*, %struct.sway_cursor** %3, align 8
  %13 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.seat_config* @seat_get_config(i32 %14)
  store %struct.seat_config* %15, %struct.seat_config** %4, align 8
  %16 = load %struct.seat_config*, %struct.seat_config** %4, align 8
  %17 = icmp ne %struct.seat_config* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %11
  %19 = call %struct.seat_config* @seat_get_config_by_name(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct.seat_config* %19, %struct.seat_config** %4, align 8
  br label %20

20:                                               ; preds = %18, %11
  %21 = load %struct.seat_config*, %struct.seat_config** %4, align 8
  %22 = icmp ne %struct.seat_config* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load %struct.seat_config*, %struct.seat_config** %4, align 8
  %25 = getelementptr inbounds %struct.seat_config, %struct.seat_config* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  br label %28

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27, %23
  %29 = phi i32 [ %26, %23 ], [ 0, %27 ]
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %32, %28
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %33, %10
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.seat_config* @seat_get_config(i32) #1

declare dso_local %struct.seat_config* @seat_get_config_by_name(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
