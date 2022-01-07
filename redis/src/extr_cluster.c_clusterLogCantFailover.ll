; ModuleID = '/home/carl/AnghaBench/redis/src/extr_cluster.c_clusterLogCantFailover.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_cluster.c_clusterLogCantFailover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@clusterLogCantFailover.lastlog_time = internal global i64 0, align 8
@server = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@CLUSTER_CANT_FAILOVER_RELOG_PERIOD = common dso_local global i64 0, align 8
@myself = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [123 x i8] c"Disconnected from master for longer than allowed. Please check the 'cluster-replica-validity-factor' configuration option.\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Waiting the delay before I can start a new failover.\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Failover attempt expired.\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"Waiting for votes, but majority still not reached.\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Unknown reason code.\00", align 1
@LL_WARNING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"Currently unable to failover: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clusterLogCantFailover(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 0), align 8
  %6 = add nsw i64 %5, 5000
  store i64 %6, i64* %4, align 8
  %7 = load i32, i32* %2, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 1), align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %7, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = call i64 @time(i32* null)
  %14 = load i64, i64* @clusterLogCantFailover.lastlog_time, align 8
  %15 = sub nsw i64 %13, %14
  %16 = load i64, i64* @CLUSTER_CANT_FAILOVER_RELOG_PERIOD, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %56

19:                                               ; preds = %12, %1
  %20 = load i32, i32* %2, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 1), align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** @myself, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = icmp ne %struct.TYPE_7__* %25, null
  br i1 %26, label %27, label %44

27:                                               ; preds = %19
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** @myself, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = call i64 @nodeFailed(%struct.TYPE_7__* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %27
  %34 = call i64 (...) @mstime()
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** @myself, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %34, %39
  %41 = load i64, i64* %4, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  br label %56

44:                                               ; preds = %33, %27, %19
  %45 = load i32, i32* %2, align 4
  switch i32 %45, label %50 [
    i32 131, label %46
    i32 129, label %47
    i32 130, label %48
    i32 128, label %49
  ]

46:                                               ; preds = %44
  store i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %51

47:                                               ; preds = %44
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %51

48:                                               ; preds = %44
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %51

49:                                               ; preds = %44
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %51

50:                                               ; preds = %44
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %51

51:                                               ; preds = %50, %49, %48, %47, %46
  %52 = call i64 @time(i32* null)
  store i64 %52, i64* @clusterLogCantFailover.lastlog_time, align 8
  %53 = load i32, i32* @LL_WARNING, align 4
  %54 = load i8*, i8** %3, align 8
  %55 = call i32 @serverLog(i32 %53, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i8* %54)
  br label %56

56:                                               ; preds = %51, %43, %18
  ret void
}

declare dso_local i64 @time(i32*) #1

declare dso_local i64 @nodeFailed(%struct.TYPE_7__*) #1

declare dso_local i64 @mstime(...) #1

declare dso_local i32 @serverLog(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
