; ModuleID = '/home/carl/AnghaBench/redis/src/extr_cluster.c_clusterGenNodesDescription.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_cluster.c_clusterGenNodesDescription.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@server = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clusterGenNodesDescription(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %2, align 4
  %8 = call i32 (...) @sdsempty()
  store i32 %8, i32* %3, align 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 0), align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32* @dictGetSafeIterator(i32 %11)
  store i32* %12, i32** %5, align 8
  br label %13

13:                                               ; preds = %27, %26, %1
  %14 = load i32*, i32** %5, align 8
  %15 = call i32* @dictNext(i32* %14)
  store i32* %15, i32** %6, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %37

17:                                               ; preds = %13
  %18 = load i32*, i32** %6, align 8
  %19 = call %struct.TYPE_7__* @dictGetVal(i32* %18)
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %7, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %2, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %13

27:                                               ; preds = %17
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %29 = call i32 @clusterGenNodeDescription(%struct.TYPE_7__* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @sdscatsds(i32 %30, i32 %31)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @sdsfree(i32 %33)
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @sdscatlen(i32 %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  store i32 %36, i32* %3, align 4
  br label %13

37:                                               ; preds = %13
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @dictReleaseIterator(i32* %38)
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @sdsempty(...) #1

declare dso_local i32* @dictGetSafeIterator(i32) #1

declare dso_local i32* @dictNext(i32*) #1

declare dso_local %struct.TYPE_7__* @dictGetVal(i32*) #1

declare dso_local i32 @clusterGenNodeDescription(%struct.TYPE_7__*) #1

declare dso_local i32 @sdscatsds(i32, i32) #1

declare dso_local i32 @sdsfree(i32) #1

declare dso_local i32 @sdscatlen(i32, i8*, i32) #1

declare dso_local i32 @dictReleaseIterator(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
