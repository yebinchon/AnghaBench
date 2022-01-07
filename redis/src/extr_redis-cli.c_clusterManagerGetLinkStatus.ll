; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_clusterManagerGetLinkStatus.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_clusterManagerGetLinkStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32* }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }

@cluster_manager = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@clusterManagerLinkDictType = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s:%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @clusterManagerGetLinkStatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @clusterManagerGetLinkStatus() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cluster_manager, i32 0, i32 0), align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %0
  store i32* null, i32** %1, align 8
  br label %89

16:                                               ; preds = %0
  %17 = call i32* @dictCreate(i32* @clusterManagerLinkDictType, i32* null)
  store i32* %17, i32** %2, align 8
  %18 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cluster_manager, i32 0, i32 0), align 8
  %19 = call i32 @listRewind(i32* %18, i32* %3)
  br label %20

20:                                               ; preds = %86, %16
  %21 = call %struct.TYPE_8__* @listNext(i32* %3)
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %4, align 8
  %22 = icmp ne %struct.TYPE_8__* %21, null
  br i1 %22, label %23, label %87

23:                                               ; preds = %20
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  store %struct.TYPE_9__* %26, %struct.TYPE_9__** %5, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %28 = call i32* @clusterManagerGetDisconnectedLinks(%struct.TYPE_9__* %27)
  store i32* %28, i32** %6, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %86

31:                                               ; preds = %23
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @listRewind(i32* %32, i32* %7)
  br label %34

34:                                               ; preds = %60, %31
  %35 = call %struct.TYPE_8__* @listNext(i32* %7)
  store %struct.TYPE_8__* %35, %struct.TYPE_8__** %8, align 8
  %36 = icmp ne %struct.TYPE_8__* %35, null
  br i1 %36, label %37, label %83

37:                                               ; preds = %34
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  store %struct.TYPE_9__* %40, %struct.TYPE_9__** %9, align 8
  store i32* null, i32** %10, align 8
  %41 = load i32*, i32** %2, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32* @dictFind(i32* %41, i32 %44)
  store i32* %45, i32** %11, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %37
  %49 = load i32*, i32** %11, align 8
  %50 = call i32* @dictGetVal(i32* %49)
  store i32* %50, i32** %10, align 8
  br label %60

51:                                               ; preds = %37
  %52 = call i32* (...) @listCreate()
  store i32* %52, i32** %10, align 8
  %53 = load i32*, i32** %2, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @sdsdup(i32 %56)
  %58 = load i32*, i32** %10, align 8
  %59 = call i32 @dictAdd(i32* %53, i32 %57, i32* %58)
  br label %60

60:                                               ; preds = %51, %48
  %61 = call i32 (...) @sdsempty()
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @sdscatfmt(i32 %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %68)
  store i32 %69, i32* %12, align 4
  %70 = load i32*, i32** %10, align 8
  %71 = load i32, i32* %12, align 4
  %72 = call i32 @listAddNodeTail(i32* %70, i32 %71)
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @sdsfree(i32 %75)
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @sdsfree(i32 %79)
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %82 = call i32 @zfree(%struct.TYPE_9__* %81)
  br label %34

83:                                               ; preds = %34
  %84 = load i32*, i32** %6, align 8
  %85 = call i32 @listRelease(i32* %84)
  br label %86

86:                                               ; preds = %83, %23
  br label %20

87:                                               ; preds = %20
  %88 = load i32*, i32** %2, align 8
  store i32* %88, i32** %1, align 8
  br label %89

89:                                               ; preds = %87, %15
  %90 = load i32*, i32** %1, align 8
  ret i32* %90
}

declare dso_local i32* @dictCreate(i32*, i32*) #1

declare dso_local i32 @listRewind(i32*, i32*) #1

declare dso_local %struct.TYPE_8__* @listNext(i32*) #1

declare dso_local i32* @clusterManagerGetDisconnectedLinks(%struct.TYPE_9__*) #1

declare dso_local i32* @dictFind(i32*, i32) #1

declare dso_local i32* @dictGetVal(i32*) #1

declare dso_local i32* @listCreate(...) #1

declare dso_local i32 @dictAdd(i32*, i32, i32*) #1

declare dso_local i32 @sdsdup(i32) #1

declare dso_local i32 @sdsempty(...) #1

declare dso_local i32 @sdscatfmt(i32, i8*, i32, i32) #1

declare dso_local i32 @listAddNodeTail(i32*, i32) #1

declare dso_local i32 @sdsfree(i32) #1

declare dso_local i32 @zfree(%struct.TYPE_9__*) #1

declare dso_local i32 @listRelease(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
