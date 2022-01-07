; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_clusterManagerSetSlot.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_clusterManagerSetSlot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"CLUSTER SETSLOT %d %s %s\00", align 1
@REDIS_REPLY_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_10__*, i32, i8*, i8**)* @clusterManagerSetSlot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clusterManagerSetSlot(%struct.TYPE_10__* %0, %struct.TYPE_10__* %1, i32 %2, i8* %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8** %4, i8*** %11, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load i8*, i8** %10, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = call %struct.TYPE_9__* @CLUSTER_MANAGER_COMMAND(%struct.TYPE_10__* %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %15, i8* %16, i8* %20)
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %12, align 8
  %22 = load i8**, i8*** %11, align 8
  %23 = icmp ne i8** %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i8**, i8*** %11, align 8
  store i8* null, i8** %25, align 8
  br label %26

26:                                               ; preds = %24, %5
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %28 = icmp ne %struct.TYPE_9__* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %67

30:                                               ; preds = %26
  store i32 1, i32* %13, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @REDIS_REPLY_ERROR, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %62

36:                                               ; preds = %30
  store i32 0, i32* %13, align 4
  %37 = load i8**, i8*** %11, align 8
  %38 = icmp ne i8** %37, null
  br i1 %38, label %39, label %55

39:                                               ; preds = %36
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 1
  %46 = trunc i64 %45 to i32
  %47 = call i8* @zmalloc(i32 %46)
  %48 = load i8**, i8*** %11, align 8
  store i8* %47, i8** %48, align 8
  %49 = load i8**, i8*** %11, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @strcpy(i8* %50, i32 %53)
  br label %61

55:                                               ; preds = %36
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @CLUSTER_MANAGER_PRINT_REPLY_ERROR(%struct.TYPE_10__* %56, i32 %59)
  br label %61

61:                                               ; preds = %55, %39
  br label %63

62:                                               ; preds = %30
  br label %63

63:                                               ; preds = %62, %61
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %65 = call i32 @freeReplyObject(%struct.TYPE_9__* %64)
  %66 = load i32, i32* %13, align 4
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %63, %29
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local %struct.TYPE_9__* @CLUSTER_MANAGER_COMMAND(%struct.TYPE_10__*, i8*, i32, i8*, i8*) #1

declare dso_local i8* @zmalloc(i32) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @CLUSTER_MANAGER_PRINT_REPLY_ERROR(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @freeReplyObject(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
