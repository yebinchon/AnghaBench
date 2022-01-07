; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_clusterManagerNodeIsEmpty.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_clusterManagerNodeIsEmpty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"db0:\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"CLUSTER INFO\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"cluster_known_nodes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**)* @clusterManagerNodeIsEmpty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clusterManagerNodeIsEmpty(i32* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i8** %1, i8*** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load i8**, i8*** %5, align 8
  %11 = call %struct.TYPE_6__* @clusterManagerGetNodeRedisInfo(i32* %9, i8** %10)
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %6, align 8
  store i32 1, i32* %7, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %13 = icmp eq %struct.TYPE_6__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %50

15:                                               ; preds = %2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32* @strstr(i32 %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 0, i32* %7, align 4
  br label %46

22:                                               ; preds = %15
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %24 = call i32 @freeReplyObject(%struct.TYPE_6__* %23)
  %25 = load i32*, i32** %4, align 8
  %26 = call %struct.TYPE_6__* @CLUSTER_MANAGER_COMMAND(i32* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %6, align 8
  %27 = load i8**, i8*** %5, align 8
  %28 = icmp ne i8** %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i8**, i8*** %5, align 8
  store i8* null, i8** %30, align 8
  br label %31

31:                                               ; preds = %29, %22
  %32 = load i32*, i32** %4, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %34 = load i8**, i8*** %5, align 8
  %35 = call i32 @clusterManagerCheckRedisReply(i32* %32, %struct.TYPE_6__* %33, i8** %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  store i32 0, i32* %7, align 4
  br label %46

38:                                               ; preds = %31
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @getLongInfoField(i32 %41, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  store i64 %42, i64* %8, align 8
  %43 = load i64, i64* %8, align 8
  %44 = icmp eq i64 %43, 1
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %38, %37, %21
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %48 = call i32 @freeReplyObject(%struct.TYPE_6__* %47)
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %46, %14
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.TYPE_6__* @clusterManagerGetNodeRedisInfo(i32*, i8**) #1

declare dso_local i32* @strstr(i32, i8*) #1

declare dso_local i32 @freeReplyObject(%struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_6__* @CLUSTER_MANAGER_COMMAND(i32*, i8*) #1

declare dso_local i32 @clusterManagerCheckRedisReply(i32*, %struct.TYPE_6__*, i8**) #1

declare dso_local i64 @getLongInfoField(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
