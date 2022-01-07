; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_clusterManagerGetNodeWithMostKeysInSlot.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_clusterManagerGetNodeWithMostKeysInSlot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_12__ = type { i32 }

@CLUSTER_MANAGER_FLAG_SLAVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"CLUSTER COUNTKEYSINSLOT %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_14__* (i32*, i32, i8**)* @clusterManagerGetNodeWithMostKeysInSlot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_14__* @clusterManagerGetNodeWithMostKeysInSlot(i32* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @listRewind(i32* %14, i32* %9)
  %16 = load i8**, i8*** %6, align 8
  %17 = icmp ne i8** %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i8**, i8*** %6, align 8
  store i8* null, i8** %19, align 8
  br label %20

20:                                               ; preds = %18, %3
  br label %21

21:                                               ; preds = %86, %39, %20
  %22 = call %struct.TYPE_13__* @listNext(i32* %9)
  store %struct.TYPE_13__* %22, %struct.TYPE_13__** %10, align 8
  %23 = icmp ne %struct.TYPE_13__* %22, null
  br i1 %23, label %24, label %87

24:                                               ; preds = %21
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  store %struct.TYPE_14__* %27, %struct.TYPE_14__** %11, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @CLUSTER_MANAGER_FLAG_SLAVE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %24
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34, %24
  br label %21

40:                                               ; preds = %34
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call %struct.TYPE_12__* @CLUSTER_MANAGER_COMMAND(%struct.TYPE_14__* %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %42)
  store %struct.TYPE_12__* %43, %struct.TYPE_12__** %12, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %46 = load i8**, i8*** %6, align 8
  %47 = call i32 @clusterManagerCheckRedisReply(%struct.TYPE_14__* %44, %struct.TYPE_12__* %45, i8** %46)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %40
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %59, label %56

56:                                               ; preds = %50
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %58 = icmp eq %struct.TYPE_14__* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %56, %50
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %8, align 4
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  store %struct.TYPE_14__* %63, %struct.TYPE_14__** %7, align 8
  br label %64

64:                                               ; preds = %59, %56
  br label %65

65:                                               ; preds = %64, %40
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %67 = icmp ne %struct.TYPE_12__* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %70 = call i32 @freeReplyObject(%struct.TYPE_12__* %69)
  br label %71

71:                                               ; preds = %68, %65
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %86, label %74

74:                                               ; preds = %71
  %75 = load i8**, i8*** %6, align 8
  %76 = icmp ne i8** %75, null
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = load i8**, i8*** %6, align 8
  %79 = load i8*, i8** %78, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %83 = load i8**, i8*** %6, align 8
  %84 = call i32 @CLUSTER_MANAGER_PRINT_REPLY_ERROR(%struct.TYPE_14__* %82, i8** %83)
  br label %85

85:                                               ; preds = %81, %77, %74
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %7, align 8
  br label %87

86:                                               ; preds = %71
  br label %21

87:                                               ; preds = %85, %21
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  ret %struct.TYPE_14__* %88
}

declare dso_local i32 @listRewind(i32*, i32*) #1

declare dso_local %struct.TYPE_13__* @listNext(i32*) #1

declare dso_local %struct.TYPE_12__* @CLUSTER_MANAGER_COMMAND(%struct.TYPE_14__*, i8*, i32) #1

declare dso_local i32 @clusterManagerCheckRedisReply(%struct.TYPE_14__*, %struct.TYPE_12__*, i8**) #1

declare dso_local i32 @freeReplyObject(%struct.TYPE_12__*) #1

declare dso_local i32 @CLUSTER_MANAGER_PRINT_REPLY_ERROR(%struct.TYPE_14__*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
