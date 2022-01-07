; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkctl.c_dump_statistics.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkctl.c_dump_statistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@arg_stats = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Rx Packets\00", align 1
@rx_packets = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"Tx Packets\00", align 1
@tx_packets = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"Rx Bytes\00", align 1
@rx_bytes = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"Tx Bytes\00", align 1
@tx_bytes = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"Rx Errors\00", align 1
@rx_errors = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"Tx Errors\00", align 1
@tx_errors = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"Rx Dropped\00", align 1
@rx_dropped = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"Tx Dropped\00", align 1
@tx_dropped = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"Multicast Packets\00", align 1
@multicast = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [11 x i8] c"Collisions\00", align 1
@collisions = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*)* @dump_statistics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_statistics(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %7 = load i32, i32* @arg_stats, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %42

10:                                               ; preds = %2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %10
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %42

21:                                               ; preds = %15, %10
  %22 = load i32, i32* @rx_packets, align 4
  %23 = call i32 @DUMP_STATS_ONE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @tx_packets, align 4
  %25 = call i32 @DUMP_STATS_ONE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @rx_bytes, align 4
  %27 = call i32 @DUMP_STATS_ONE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @tx_bytes, align 4
  %29 = call i32 @DUMP_STATS_ONE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @rx_errors, align 4
  %31 = call i32 @DUMP_STATS_ONE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @tx_errors, align 4
  %33 = call i32 @DUMP_STATS_ONE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @rx_dropped, align 4
  %35 = call i32 @DUMP_STATS_ONE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @tx_dropped, align 4
  %37 = call i32 @DUMP_STATS_ONE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @multicast, align 4
  %39 = call i32 @DUMP_STATS_ONE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @collisions, align 4
  %41 = call i32 @DUMP_STATS_ONE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 %40)
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %21, %20, %9
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @DUMP_STATS_ONE(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
