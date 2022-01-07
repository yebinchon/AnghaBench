; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_seat.c_seat_get_config.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_seat.c_seat_get_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.seat_config** }
%struct.seat_config = type { i32 }
%struct.sway_seat = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@config = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.seat_config* @seat_get_config(%struct.sway_seat* %0) #0 {
  %2 = alloca %struct.seat_config*, align 8
  %3 = alloca %struct.sway_seat*, align 8
  %4 = alloca %struct.seat_config*, align 8
  %5 = alloca i32, align 4
  store %struct.sway_seat* %0, %struct.sway_seat** %3, align 8
  store %struct.seat_config* null, %struct.seat_config** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %37, %1
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %7, %12
  br i1 %13, label %14, label %40

14:                                               ; preds = %6
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load %struct.seat_config**, %struct.seat_config*** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.seat_config*, %struct.seat_config** %19, i64 %21
  %23 = load %struct.seat_config*, %struct.seat_config** %22, align 8
  store %struct.seat_config* %23, %struct.seat_config** %4, align 8
  %24 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %25 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.seat_config*, %struct.seat_config** %4, align 8
  %30 = getelementptr inbounds %struct.seat_config, %struct.seat_config* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @strcmp(i32 %28, i32 %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %14
  %35 = load %struct.seat_config*, %struct.seat_config** %4, align 8
  store %struct.seat_config* %35, %struct.seat_config** %2, align 8
  br label %41

36:                                               ; preds = %14
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %6

40:                                               ; preds = %6
  store %struct.seat_config* null, %struct.seat_config** %2, align 8
  br label %41

41:                                               ; preds = %40, %34
  %42 = load %struct.seat_config*, %struct.seat_config** %2, align 8
  ret %struct.seat_config* %42
}

declare dso_local i64 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
