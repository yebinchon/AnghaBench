; ModuleID = '/home/carl/AnghaBench/sway/sway/config/extr_seat.c_merge_wildcard_on_all.c'
source_filename = "/home/carl/AnghaBench/sway/sway/config/extr_seat.c_merge_wildcard_on_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.seat_config** }
%struct.seat_config = type { i32 }

@config = common dso_local global %struct.TYPE_4__* null, align 8
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Merging seat * config on %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seat_config*)* @merge_wildcard_on_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @merge_wildcard_on_all(%struct.seat_config* %0) #0 {
  %2 = alloca %struct.seat_config*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.seat_config*, align 8
  store %struct.seat_config* %0, %struct.seat_config** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %41, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %6, %11
  br i1 %12, label %13, label %44

13:                                               ; preds = %5
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load %struct.seat_config**, %struct.seat_config*** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.seat_config*, %struct.seat_config** %18, i64 %20
  %22 = load %struct.seat_config*, %struct.seat_config** %21, align 8
  store %struct.seat_config* %22, %struct.seat_config** %4, align 8
  %23 = load %struct.seat_config*, %struct.seat_config** %2, align 8
  %24 = getelementptr inbounds %struct.seat_config, %struct.seat_config* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.seat_config*, %struct.seat_config** %4, align 8
  %27 = getelementptr inbounds %struct.seat_config, %struct.seat_config* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @strcmp(i32 %25, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %13
  %32 = load i32, i32* @SWAY_DEBUG, align 4
  %33 = load %struct.seat_config*, %struct.seat_config** %4, align 8
  %34 = getelementptr inbounds %struct.seat_config, %struct.seat_config* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @sway_log(i32 %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load %struct.seat_config*, %struct.seat_config** %4, align 8
  %38 = load %struct.seat_config*, %struct.seat_config** %2, align 8
  %39 = call i32 @merge_seat_config(%struct.seat_config* %37, %struct.seat_config* %38)
  br label %40

40:                                               ; preds = %31, %13
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %5

44:                                               ; preds = %5
  ret void
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @sway_log(i32, i8*, i32) #1

declare dso_local i32 @merge_seat_config(%struct.seat_config*, %struct.seat_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
