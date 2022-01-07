; ModuleID = '/home/carl/AnghaBench/redis/src/extr_cluster.c_clusterSaveConfig.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_cluster.c_clusterSaveConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i64, i64 }
%struct.stat = type { i64 }

@CLUSTER_TODO_SAVE_CONFIG = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@CLUSTER_NODE_HANDSHAKE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"vars currentEpoch %llu lastVoteEpoch %llu\0A\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@CLUSTER_TODO_FSYNC_CONFIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clusterSaveConfig(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.stat, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* @CLUSTER_TODO_SAVE_CONFIG, align 4
  %9 = xor i32 %8, -1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 0), align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %12, %9
  store i32 %13, i32* %11, align 8
  %14 = load i32, i32* @CLUSTER_NODE_HANDSHAKE, align 4
  %15 = call i64 @clusterGenNodesDescription(i32 %14)
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 0), align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 0), align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @sdscatprintf(i64 %16, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %19, i64 %22)
  store i64 %23, i64* %4, align 8
  %24 = load i64, i64* %4, align 8
  %25 = call i64 @sdslen(i64 %24)
  store i64 %25, i64* %5, align 8
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 1), align 8
  %27 = load i32, i32* @O_WRONLY, align 4
  %28 = load i32, i32* @O_CREAT, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @open(i32 %26, i32 %29, i32 420)
  store i32 %30, i32* %7, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %33

32:                                               ; preds = %1
  br label %94

33:                                               ; preds = %1
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @fstat(i32 %34, %struct.stat* %6)
  %36 = icmp ne i32 %35, -1
  br i1 %36, label %37, label %56

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %5, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %37
  %43 = load i64, i64* %4, align 8
  %44 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @sdsgrowzero(i64 %43, i64 %45)
  store i64 %46, i64* %4, align 8
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* %5, align 8
  %49 = add i64 %47, %48
  %50 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %5, align 8
  %53 = sub i64 %51, %52
  %54 = call i32 @memset(i64 %49, i8 signext 10, i64 %53)
  br label %55

55:                                               ; preds = %42, %37
  br label %56

56:                                               ; preds = %55, %33
  %57 = load i32, i32* %7, align 4
  %58 = load i64, i64* %4, align 8
  %59 = load i64, i64* %4, align 8
  %60 = call i64 @sdslen(i64 %59)
  %61 = call i64 @write(i32 %57, i64 %58, i64 %60)
  %62 = load i64, i64* %4, align 8
  %63 = call i64 @sdslen(i64 %62)
  %64 = icmp ne i64 %61, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  br label %94

66:                                               ; preds = %56
  %67 = load i32, i32* %3, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %66
  %70 = load i32, i32* @CLUSTER_TODO_FSYNC_CONFIG, align 4
  %71 = xor i32 %70, -1
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 0), align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = and i32 %74, %71
  store i32 %75, i32* %73, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @fsync(i32 %76)
  br label %78

78:                                               ; preds = %69, %66
  %79 = load i64, i64* %5, align 8
  %80 = load i64, i64* %4, align 8
  %81 = call i64 @sdslen(i64 %80)
  %82 = icmp ne i64 %79, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load i32, i32* %7, align 4
  %85 = load i64, i64* %5, align 8
  %86 = call i32 @ftruncate(i32 %84, i64 %85)
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %89

89:                                               ; preds = %88, %83, %78
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @close(i32 %90)
  %92 = load i64, i64* %4, align 8
  %93 = call i32 @sdsfree(i64 %92)
  store i32 0, i32* %2, align 4
  br label %103

94:                                               ; preds = %65, %32
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, -1
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @close(i32 %98)
  br label %100

100:                                              ; preds = %97, %94
  %101 = load i64, i64* %4, align 8
  %102 = call i32 @sdsfree(i64 %101)
  store i32 -1, i32* %2, align 4
  br label %103

103:                                              ; preds = %100, %89
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i64 @clusterGenNodesDescription(i32) #1

declare dso_local i64 @sdscatprintf(i64, i8*, i64, i64) #1

declare dso_local i64 @sdslen(i64) #1

declare dso_local i32 @open(i32, i32, i32) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i64 @sdsgrowzero(i64, i64) #1

declare dso_local i32 @memset(i64, i8 signext, i64) #1

declare dso_local i64 @write(i32, i64, i64) #1

declare dso_local i32 @fsync(i32) #1

declare dso_local i32 @ftruncate(i32, i64) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @sdsfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
