; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_clusterManagerFlushNodeConfig.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_clusterManagerFlushNodeConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32* }
%struct.TYPE_8__ = type { i64, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"CLUSTER REPLICATE %s\00", align 1
@REDIS_REPLY_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8**)* @clusterManagerFlushNodeConfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clusterManagerFlushNodeConfig(%struct.TYPE_9__* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i8** %1, i8*** %5, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %87

15:                                               ; preds = %2
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %16 = load i8**, i8*** %5, align 8
  %17 = icmp ne i8** %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i8**, i8*** %5, align 8
  store i8* null, i8** %19, align 8
  br label %20

20:                                               ; preds = %18, %15
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %64

25:                                               ; preds = %20
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = call %struct.TYPE_8__* @CLUSTER_MANAGER_COMMAND(%struct.TYPE_9__* %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* %29)
  store %struct.TYPE_8__* %30, %struct.TYPE_8__** %6, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %32 = icmp eq %struct.TYPE_8__* %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %25
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @REDIS_REPLY_ERROR, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %7, align 4
  br i1 %38, label %40, label %63

40:                                               ; preds = %33, %25
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %62

43:                                               ; preds = %40
  %44 = load i8**, i8*** %5, align 8
  %45 = icmp ne i8** %44, null
  br i1 %45, label %46, label %62

46:                                               ; preds = %43
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = mul i64 %51, 1
  %53 = trunc i64 %52 to i32
  %54 = call i8* @zmalloc(i32 %53)
  %55 = load i8**, i8*** %5, align 8
  store i8* %54, i8** %55, align 8
  %56 = load i8**, i8*** %5, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @strcpy(i8* %57, i32 %60)
  br label %62

62:                                               ; preds = %46, %43, %40
  store i32 0, i32* %8, align 4
  br label %79

63:                                               ; preds = %33
  br label %76

64:                                               ; preds = %20
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %66 = load i8**, i8*** %5, align 8
  %67 = call i32 @clusterManagerAddSlots(%struct.TYPE_9__* %65, i8** %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load i8**, i8*** %5, align 8
  %72 = load i8*, i8** %71, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %70, %64
  store i32 0, i32* %8, align 4
  br label %75

75:                                               ; preds = %74, %70
  br label %76

76:                                               ; preds = %75, %63
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  store i64 0, i64* %78, align 8
  br label %79

79:                                               ; preds = %76, %62
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %81 = icmp ne %struct.TYPE_8__* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %84 = call i32 @freeReplyObject(%struct.TYPE_8__* %83)
  br label %85

85:                                               ; preds = %82, %79
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %85, %14
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local %struct.TYPE_8__* @CLUSTER_MANAGER_COMMAND(%struct.TYPE_9__*, i8*, i32*) #1

declare dso_local i8* @zmalloc(i32) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @clusterManagerAddSlots(%struct.TYPE_9__*, i8**) #1

declare dso_local i32 @freeReplyObject(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
