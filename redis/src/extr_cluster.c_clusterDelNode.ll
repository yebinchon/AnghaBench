; ModuleID = '/home/carl/AnghaBench/redis/src/extr_cluster.c_clusterDelNode.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_cluster.c_clusterDelNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32**, i32**, i32** }

@CLUSTER_SLOTS = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clusterDelNode(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %59, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @CLUSTER_SLOTS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %62

11:                                               ; preds = %7
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 0), align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 3
  %14 = load i32**, i32*** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32*, i32** %14, i64 %16
  %18 = load i32*, i32** %17, align 8
  %19 = load i32*, i32** %2, align 8
  %20 = icmp eq i32* %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %11
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 0), align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 3
  %24 = load i32**, i32*** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32*, i32** %24, i64 %26
  store i32* null, i32** %27, align 8
  br label %28

28:                                               ; preds = %21, %11
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 0), align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load i32**, i32*** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32*, i32** %31, i64 %33
  %35 = load i32*, i32** %34, align 8
  %36 = load i32*, i32** %2, align 8
  %37 = icmp eq i32* %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %28
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 0), align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i32**, i32*** %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32*, i32** %41, i64 %43
  store i32* null, i32** %44, align 8
  br label %45

45:                                               ; preds = %38, %28
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 0), align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32**, i32*** %47, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32*, i32** %48, i64 %50
  %52 = load i32*, i32** %51, align 8
  %53 = load i32*, i32** %2, align 8
  %54 = icmp eq i32* %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %45
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @clusterDelSlot(i32 %56)
  br label %58

58:                                               ; preds = %55, %45
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %3, align 4
  br label %7

62:                                               ; preds = %7
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 0), align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32* @dictGetSafeIterator(i32 %65)
  store i32* %66, i32** %4, align 8
  br label %67

67:                                               ; preds = %78, %77, %62
  %68 = load i32*, i32** %4, align 8
  %69 = call i32* @dictNext(i32* %68)
  store i32* %69, i32** %5, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %82

71:                                               ; preds = %67
  %72 = load i32*, i32** %5, align 8
  %73 = call i32* @dictGetVal(i32* %72)
  store i32* %73, i32** %6, align 8
  %74 = load i32*, i32** %6, align 8
  %75 = load i32*, i32** %2, align 8
  %76 = icmp eq i32* %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %67

78:                                               ; preds = %71
  %79 = load i32*, i32** %6, align 8
  %80 = load i32*, i32** %2, align 8
  %81 = call i32 @clusterNodeDelFailureReport(i32* %79, i32* %80)
  br label %67

82:                                               ; preds = %67
  %83 = load i32*, i32** %4, align 8
  %84 = call i32 @dictReleaseIterator(i32* %83)
  %85 = load i32*, i32** %2, align 8
  %86 = call i32 @freeClusterNode(i32* %85)
  ret void
}

declare dso_local i32 @clusterDelSlot(i32) #1

declare dso_local i32* @dictGetSafeIterator(i32) #1

declare dso_local i32* @dictNext(i32*) #1

declare dso_local i32* @dictGetVal(i32*) #1

declare dso_local i32 @clusterNodeDelFailureReport(i32*, i32*) #1

declare dso_local i32 @dictReleaseIterator(i32*) #1

declare dso_local i32 @freeClusterNode(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
