; ModuleID = '/home/carl/AnghaBench/redis/src/extr_cluster.c_verifyClusterConfigWithData.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_cluster.c_verifyClusterConfigWithData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32**, i32** }
%struct.TYPE_4__ = type { i32 }

@server = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@CLUSTER_MODULE_FLAG_NO_REDIRECTION = common dso_local global i32 0, align 4
@C_OK = common dso_local global i32 0, align 4
@myself = common dso_local global i32* null, align 8
@C_ERR = common dso_local global i32 0, align 4
@CLUSTER_SLOTS = common dso_local global i32 0, align 4
@LL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"I have keys for unassigned slot %d. Taking responsibility for it.\00", align 1
@.str.1 = private unnamed_addr constant [98 x i8] c"I have keys for slot %d, but the slot is assigned to another node. Setting it to importing state.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @verifyClusterConfigWithData() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 0), align 8
  %5 = load i32, i32* @CLUSTER_MODULE_FLAG_NO_REDIRECTION, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = load i32, i32* @C_OK, align 4
  store i32 %9, i32* %1, align 4
  br label %112

10:                                               ; preds = %0
  %11 = load i32*, i32** @myself, align 8
  %12 = call i64 @nodeIsSlave(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load i32, i32* @C_OK, align 4
  store i32 %15, i32* %1, align 4
  br label %112

16:                                               ; preds = %10
  store i32 1, i32* %2, align 4
  br label %17

17:                                               ; preds = %33, %16
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 1), align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %17
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 3), align 8
  %23 = load i32, i32* %2, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @dictSize(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i32, i32* @C_ERR, align 4
  store i32 %31, i32* %1, align 4
  br label %112

32:                                               ; preds = %21
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %2, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %2, align 4
  br label %17

36:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %102, %36
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* @CLUSTER_SLOTS, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %105

41:                                               ; preds = %37
  %42 = load i32, i32* %2, align 4
  %43 = call i32 @countKeysInSlot(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  br label %102

46:                                               ; preds = %41
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 2), align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32**, i32*** %48, align 8
  %50 = load i32, i32* %2, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %49, i64 %51
  %53 = load i32*, i32** %52, align 8
  %54 = load i32*, i32** @myself, align 8
  %55 = icmp eq i32* %53, %54
  br i1 %55, label %65, label %56

56:                                               ; preds = %46
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 2), align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32**, i32*** %58, align 8
  %60 = load i32, i32* %2, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32*, i32** %59, i64 %61
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %56, %46
  br label %102

66:                                               ; preds = %56
  %67 = load i32, i32* %3, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %3, align 4
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 2), align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32**, i32*** %70, align 8
  %72 = load i32, i32* %2, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32*, i32** %71, i64 %73
  %75 = load i32*, i32** %74, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %84

77:                                               ; preds = %66
  %78 = load i32, i32* @LL_WARNING, align 4
  %79 = load i32, i32* %2, align 4
  %80 = call i32 @serverLog(i32 %78, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %79)
  %81 = load i32*, i32** @myself, align 8
  %82 = load i32, i32* %2, align 4
  %83 = call i32 @clusterAddSlot(i32* %81, i32 %82)
  br label %101

84:                                               ; preds = %66
  %85 = load i32, i32* @LL_WARNING, align 4
  %86 = load i32, i32* %2, align 4
  %87 = call i32 @serverLog(i32 %85, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 2), align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32**, i32*** %89, align 8
  %91 = load i32, i32* %2, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32*, i32** %90, i64 %92
  %94 = load i32*, i32** %93, align 8
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 2), align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = load i32**, i32*** %96, align 8
  %98 = load i32, i32* %2, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32*, i32** %97, i64 %99
  store i32* %94, i32** %100, align 8
  br label %101

101:                                              ; preds = %84, %77
  br label %102

102:                                              ; preds = %101, %65, %45
  %103 = load i32, i32* %2, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %2, align 4
  br label %37

105:                                              ; preds = %37
  %106 = load i32, i32* %3, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  %109 = call i32 @clusterSaveConfigOrDie(i32 1)
  br label %110

110:                                              ; preds = %108, %105
  %111 = load i32, i32* @C_OK, align 4
  store i32 %111, i32* %1, align 4
  br label %112

112:                                              ; preds = %110, %30, %14, %8
  %113 = load i32, i32* %1, align 4
  ret i32 %113
}

declare dso_local i64 @nodeIsSlave(i32*) #1

declare dso_local i64 @dictSize(i32) #1

declare dso_local i32 @countKeysInSlot(i32) #1

declare dso_local i32 @serverLog(i32, i8*, i32) #1

declare dso_local i32 @clusterAddSlot(i32*, i32) #1

declare dso_local i32 @clusterSaveConfigOrDie(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
