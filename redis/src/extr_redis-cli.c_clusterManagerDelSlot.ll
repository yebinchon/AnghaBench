; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_clusterManagerDelSlot.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_clusterManagerDelSlot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [20 x i8] c"CLUSTER DELSLOTS %d\00", align 1
@REDIS_REPLY_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @clusterManagerDelSlot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clusterManagerDelSlot(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.TYPE_5__* @CLUSTER_MANAGER_COMMAND(i32* %12, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %13)
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %7, align 8
  store i8* null, i8** %8, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %17 = call i32 @clusterManagerCheckRedisReply(i32* %15, %struct.TYPE_5__* %16, i8** %8)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %50, label %20

20:                                               ; preds = %3
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %22 = icmp ne %struct.TYPE_5__* %21, null
  br i1 %22, label %23, label %50

23:                                               ; preds = %20
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @REDIS_REPLY_ERROR, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %50

29:                                               ; preds = %23
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %29
  store i8* null, i8** %10, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32* @clusterManagerGetSlotOwner(i32* %33, i32 %34, i8** %10)
  store i32* %35, i32** %11, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %49, label %38

38:                                               ; preds = %32
  %39 = load i8*, i8** %10, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 1, i32* %9, align 4
  br label %48

42:                                               ; preds = %38
  %43 = load i32*, i32** %4, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = call i32 @CLUSTER_MANAGER_PRINT_REPLY_ERROR(i32* %43, i8* %44)
  %46 = load i8*, i8** %10, align 8
  %47 = call i32 @zfree(i8* %46)
  br label %48

48:                                               ; preds = %42, %41
  br label %49

49:                                               ; preds = %48, %32
  br label %50

50:                                               ; preds = %49, %29, %23, %20, %3
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %50
  %54 = load i8*, i8** %8, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load i32*, i32** %4, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 @CLUSTER_MANAGER_PRINT_REPLY_ERROR(i32* %57, i8* %58)
  %60 = load i8*, i8** %8, align 8
  %61 = call i32 @zfree(i8* %60)
  br label %62

62:                                               ; preds = %56, %53, %50
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %64 = icmp ne %struct.TYPE_5__* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %67 = call i32 @freeReplyObject(%struct.TYPE_5__* %66)
  br label %68

68:                                               ; preds = %65, %62
  %69 = load i32, i32* %9, align 4
  ret i32 %69
}

declare dso_local %struct.TYPE_5__* @CLUSTER_MANAGER_COMMAND(i32*, i8*, i32) #1

declare dso_local i32 @clusterManagerCheckRedisReply(i32*, %struct.TYPE_5__*, i8**) #1

declare dso_local i32* @clusterManagerGetSlotOwner(i32*, i32, i8**) #1

declare dso_local i32 @CLUSTER_MANAGER_PRINT_REPLY_ERROR(i32*, i8*) #1

declare dso_local i32 @zfree(i8*) #1

declare dso_local i32 @freeReplyObject(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
