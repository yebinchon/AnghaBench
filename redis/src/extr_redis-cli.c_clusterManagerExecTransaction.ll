; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_clusterManagerExecTransaction.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_clusterManagerExecTransaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, %struct.TYPE_7__** }

@.str = private unnamed_addr constant [5 x i8] c"EXEC\00", align 1
@REDIS_REPLY_ARRAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32 (%struct.TYPE_7__*, i32*, i64)*)* @clusterManagerExecTransaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clusterManagerExecTransaction(i32* %0, i32 (%struct.TYPE_7__*, i32*, i64)* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32 (%struct.TYPE_7__*, i32*, i64)*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32 (%struct.TYPE_7__*, i32*, i64)* %1, i32 (%struct.TYPE_7__*, i32*, i64)** %4, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call %struct.TYPE_7__* @CLUSTER_MANAGER_COMMAND(i32* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %5, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = call i32 @clusterManagerCheckRedisReply(i32* %12, %struct.TYPE_7__* %13, i8** null)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %74

17:                                               ; preds = %2
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @REDIS_REPLY_ARRAY, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 0, i32* %6, align 4
  br label %75

24:                                               ; preds = %17
  store i64 0, i64* %7, align 8
  br label %25

25:                                               ; preds = %70, %24
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ult i64 %26, %29
  br i1 %30, label %31, label %73

31:                                               ; preds = %25
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %34, i64 %35
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  store %struct.TYPE_7__* %37, %struct.TYPE_7__** %8, align 8
  store i8* null, i8** %9, align 8
  %38 = load i32*, i32** %3, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %40 = call i32 @clusterManagerCheckRedisReply(i32* %38, %struct.TYPE_7__* %39, i8** %9)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %31
  %44 = load i32 (%struct.TYPE_7__*, i32*, i64)*, i32 (%struct.TYPE_7__*, i32*, i64)** %4, align 8
  %45 = icmp ne i32 (%struct.TYPE_7__*, i32*, i64)* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load i32 (%struct.TYPE_7__*, i32*, i64)*, i32 (%struct.TYPE_7__*, i32*, i64)** %4, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %49 = load i32*, i32** %3, align 8
  %50 = load i64, i64* %7, align 8
  %51 = call i32 %47(%struct.TYPE_7__* %48, i32* %49, i64 %50)
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %46, %43, %31
  %53 = load i8*, i8** %9, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %65

55:                                               ; preds = %52
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %55
  %59 = load i32*, i32** %3, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = call i32 @CLUSTER_MANAGER_PRINT_REPLY_ERROR(i32* %59, i8* %60)
  br label %62

62:                                               ; preds = %58, %55
  %63 = load i8*, i8** %9, align 8
  %64 = call i32 @zfree(i8* %63)
  br label %65

65:                                               ; preds = %62, %52
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  br label %73

69:                                               ; preds = %65
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %7, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %7, align 8
  br label %25

73:                                               ; preds = %68, %25
  br label %74

74:                                               ; preds = %73, %2
  br label %75

75:                                               ; preds = %74, %23
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %77 = icmp ne %struct.TYPE_7__* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %80 = call i32 @freeReplyObject(%struct.TYPE_7__* %79)
  br label %81

81:                                               ; preds = %78, %75
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

declare dso_local %struct.TYPE_7__* @CLUSTER_MANAGER_COMMAND(i32*, i8*) #1

declare dso_local i32 @clusterManagerCheckRedisReply(i32*, %struct.TYPE_7__*, i8**) #1

declare dso_local i32 @CLUSTER_MANAGER_PRINT_REPLY_ERROR(i32*, i8*) #1

declare dso_local i32 @zfree(i8*) #1

declare dso_local i32 @freeReplyObject(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
