; ModuleID = '/home/carl/AnghaBench/redis/src/extr_cluster.c_clusterUpdateState.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_cluster.c_clusterUpdateState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_9__*, i64 }
%struct.TYPE_9__ = type { i32, i32, i32, %struct.TYPE_8__**, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32, i64 }

@clusterUpdateState.among_minority_time = internal global i64 0, align 8
@clusterUpdateState.first_call_time = internal global i64 0, align 8
@CLUSTER_TODO_UPDATE_STATE = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@myself = common dso_local global %struct.TYPE_10__* null, align 8
@CLUSTER_FAIL = common dso_local global i32 0, align 4
@CLUSTER_WRITABLE_DELAY = common dso_local global i64 0, align 8
@CLUSTER_OK = common dso_local global i32 0, align 4
@CLUSTER_SLOTS = common dso_local global i32 0, align 4
@CLUSTER_NODE_FAIL = common dso_local global i32 0, align 4
@CLUSTER_NODE_PFAIL = common dso_local global i32 0, align 4
@CLUSTER_MAX_REJOIN_DELAY = common dso_local global i64 0, align 8
@CLUSTER_MIN_REJOIN_DELAY = common dso_local global i64 0, align 8
@LL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Cluster state changed: %s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"fail\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clusterUpdateState() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  %9 = load i32, i32* @CLUSTER_TODO_UPDATE_STATE, align 4
  %10 = xor i32 %9, -1
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @server, i32 0, i32 1), align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, %10
  store i32 %14, i32* %12, align 8
  %15 = load i64, i64* @clusterUpdateState.first_call_time, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %0
  %18 = call i64 (...) @mstime()
  store i64 %18, i64* @clusterUpdateState.first_call_time, align 8
  br label %19

19:                                               ; preds = %17, %0
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** @myself, align 8
  %21 = call i64 @nodeIsMaster(%struct.TYPE_10__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %19
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @server, i32 0, i32 1), align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @CLUSTER_FAIL, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = call i64 (...) @mstime()
  %31 = load i64, i64* @clusterUpdateState.first_call_time, align 8
  %32 = sub nsw i64 %30, %31
  %33 = load i64, i64* @CLUSTER_WRITABLE_DELAY, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %173

36:                                               ; preds = %29, %23, %19
  %37 = load i32, i32* @CLUSTER_OK, align 4
  store i32 %37, i32* %2, align 4
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @server, i32 0, i32 2), align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %74

40:                                               ; preds = %36
  store i32 0, i32* %1, align 4
  br label %41

41:                                               ; preds = %70, %40
  %42 = load i32, i32* %1, align 4
  %43 = load i32, i32* @CLUSTER_SLOTS, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %73

45:                                               ; preds = %41
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @server, i32 0, i32 1), align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %47, align 8
  %49 = load i32, i32* %1, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %48, i64 %50
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = icmp eq %struct.TYPE_8__* %52, null
  br i1 %53, label %67, label %54

54:                                               ; preds = %45
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @server, i32 0, i32 1), align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 3
  %57 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %56, align 8
  %58 = load i32, i32* %1, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %57, i64 %59
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @CLUSTER_NODE_FAIL, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %54, %45
  %68 = load i32, i32* @CLUSTER_FAIL, align 4
  store i32 %68, i32* %2, align 4
  br label %73

69:                                               ; preds = %54
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %1, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %1, align 4
  br label %41

73:                                               ; preds = %67, %41
  br label %74

74:                                               ; preds = %73, %36
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @server, i32 0, i32 1), align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  store i32 0, i32* %76, align 4
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @server, i32 0, i32 1), align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32* @dictGetSafeIterator(i32 %79)
  store i32* %80, i32** %4, align 8
  br label %81

81:                                               ; preds = %113, %74
  %82 = load i32*, i32** %4, align 8
  %83 = call i32* @dictNext(i32* %82)
  store i32* %83, i32** %5, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %114

85:                                               ; preds = %81
  %86 = load i32*, i32** %5, align 8
  %87 = call %struct.TYPE_10__* @dictGetVal(i32* %86)
  store %struct.TYPE_10__* %87, %struct.TYPE_10__** %6, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %89 = call i64 @nodeIsMaster(%struct.TYPE_10__* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %113

91:                                               ; preds = %85
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %113

96:                                               ; preds = %91
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @server, i32 0, i32 1), align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 4
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @CLUSTER_NODE_FAIL, align 4
  %105 = load i32, i32* @CLUSTER_NODE_PFAIL, align 4
  %106 = or i32 %104, %105
  %107 = and i32 %103, %106
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %96
  %110 = load i32, i32* %3, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %109, %96
  br label %113

113:                                              ; preds = %112, %91, %85
  br label %81

114:                                              ; preds = %81
  %115 = load i32*, i32** %4, align 8
  %116 = call i32 @dictReleaseIterator(i32* %115)
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @server, i32 0, i32 1), align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = sdiv i32 %119, 2
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %3, align 4
  %123 = load i32, i32* %7, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %114
  %126 = load i32, i32* @CLUSTER_FAIL, align 4
  store i32 %126, i32* %2, align 4
  %127 = call i64 (...) @mstime()
  store i64 %127, i64* @clusterUpdateState.among_minority_time, align 8
  br label %128

128:                                              ; preds = %125, %114
  %129 = load i32, i32* %2, align 4
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @server, i32 0, i32 1), align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %129, %132
  br i1 %133, label %134, label %173

134:                                              ; preds = %128
  %135 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @server, i32 0, i32 0), align 8
  store i64 %135, i64* %8, align 8
  %136 = load i64, i64* %8, align 8
  %137 = load i64, i64* @CLUSTER_MAX_REJOIN_DELAY, align 8
  %138 = icmp sgt i64 %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %134
  %140 = load i64, i64* @CLUSTER_MAX_REJOIN_DELAY, align 8
  store i64 %140, i64* %8, align 8
  br label %141

141:                                              ; preds = %139, %134
  %142 = load i64, i64* %8, align 8
  %143 = load i64, i64* @CLUSTER_MIN_REJOIN_DELAY, align 8
  %144 = icmp slt i64 %142, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %141
  %146 = load i64, i64* @CLUSTER_MIN_REJOIN_DELAY, align 8
  store i64 %146, i64* %8, align 8
  br label %147

147:                                              ; preds = %145, %141
  %148 = load i32, i32* %2, align 4
  %149 = load i32, i32* @CLUSTER_OK, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %162

151:                                              ; preds = %147
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** @myself, align 8
  %153 = call i64 @nodeIsMaster(%struct.TYPE_10__* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %151
  %156 = call i64 (...) @mstime()
  %157 = load i64, i64* @clusterUpdateState.among_minority_time, align 8
  %158 = sub nsw i64 %156, %157
  %159 = load i64, i64* %8, align 8
  %160 = icmp slt i64 %158, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %155
  br label %173

162:                                              ; preds = %155, %151, %147
  %163 = load i32, i32* @LL_WARNING, align 4
  %164 = load i32, i32* %2, align 4
  %165 = load i32, i32* @CLUSTER_OK, align 4
  %166 = icmp eq i32 %164, %165
  %167 = zext i1 %166 to i64
  %168 = select i1 %166, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %169 = call i32 @serverLog(i32 %163, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %168)
  %170 = load i32, i32* %2, align 4
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @server, i32 0, i32 1), align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 0
  store i32 %170, i32* %172, align 8
  br label %173

173:                                              ; preds = %35, %161, %162, %128
  ret void
}

declare dso_local i64 @mstime(...) #1

declare dso_local i64 @nodeIsMaster(%struct.TYPE_10__*) #1

declare dso_local i32* @dictGetSafeIterator(i32) #1

declare dso_local i32* @dictNext(i32*) #1

declare dso_local %struct.TYPE_10__* @dictGetVal(i32*) #1

declare dso_local i32 @dictReleaseIterator(i32*) #1

declare dso_local i32 @serverLog(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
