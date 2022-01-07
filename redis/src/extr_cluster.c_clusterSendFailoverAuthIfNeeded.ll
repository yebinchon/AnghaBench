; ModuleID = '/home/carl/AnghaBench/redis/src/extr_cluster.c_clusterSendFailoverAuthIfNeeded.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_cluster.c_clusterSendFailoverAuthIfNeeded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i64, %struct.TYPE_13__** }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i8*, i32*, i32, i32 }

@CLUSTERMSG_FLAG0_FORCEACK = common dso_local global i32 0, align 4
@myself = common dso_local global %struct.TYPE_18__* null, align 8
@server = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@LL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"Failover auth denied to %.40s: reqEpoch (%llu) < curEpoch(%llu)\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"Failover auth denied to %.40s: already voted for epoch %llu\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"Failover auth denied to %.40s: it is a master node\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"Failover auth denied to %.40s: I don't know its master\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"Failover auth denied to %.40s: its master is up\00", align 1
@.str.5 = private unnamed_addr constant [85 x i8] c"Failover auth denied to %.40s: can't vote about this master before %lld milliseconds\00", align 1
@CLUSTER_SLOTS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [70 x i8] c"Failover auth denied to %.40s: slot %d epoch (%llu) > reqEpoch (%llu)\00", align 1
@CLUSTER_TODO_SAVE_CONFIG = common dso_local global i32 0, align 4
@CLUSTER_TODO_FSYNC_CONFIG = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [46 x i8] c"Failover auth granted to %.40s for epoch %llu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clusterSendFailoverAuthIfNeeded(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  store %struct.TYPE_15__* %13, %struct.TYPE_15__** %5, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @ntohu64(i32 %16)
  store i64 %17, i64* %6, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @ntohu64(i32 %20)
  store i64 %21, i64* %7, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %8, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @CLUSTERMSG_FLAG0_FORCEACK, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %9, align 4
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** @myself, align 8
  %33 = call i64 @nodeIsSlave(%struct.TYPE_18__* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %2
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** @myself, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35, %2
  br label %226

41:                                               ; preds = %35
  %42 = load i64, i64* %6, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 1), align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp slt i64 %42, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %41
  %48 = load i32, i32* @LL_WARNING, align 4
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i64, i64* %6, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 1), align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 (i32, i8*, i32, ...) @serverLog(i32 %48, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %51, i64 %52, i64 %55)
  br label %226

57:                                               ; preds = %41
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 1), align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 1), align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %60, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %57
  %66 = load i32, i32* @LL_WARNING, align 4
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 1), align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 (i32, i8*, i32, ...) @serverLog(i32 %66, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %69, i64 %72)
  br label %226

74:                                               ; preds = %57
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %76 = call i64 @nodeIsMaster(%struct.TYPE_15__* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %88, label %78

78:                                               ; preds = %74
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %80 = icmp eq %struct.TYPE_15__* %79, null
  br i1 %80, label %88, label %81

81:                                               ; preds = %78
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %83 = call i32 @nodeFailed(%struct.TYPE_15__* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %120, label %85

85:                                               ; preds = %81
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %120, label %88

88:                                               ; preds = %85, %78, %74
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %90 = call i64 @nodeIsMaster(%struct.TYPE_15__* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %88
  %93 = load i32, i32* @LL_WARNING, align 4
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (i32, i8*, i32, ...) @serverLog(i32 %93, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %96)
  br label %119

98:                                               ; preds = %88
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %100 = icmp eq %struct.TYPE_15__* %99, null
  br i1 %100, label %101, label %107

101:                                              ; preds = %98
  %102 = load i32, i32* @LL_WARNING, align 4
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 (i32, i8*, i32, ...) @serverLog(i32 %102, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %105)
  br label %118

107:                                              ; preds = %98
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %109 = call i32 @nodeFailed(%struct.TYPE_15__* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %117, label %111

111:                                              ; preds = %107
  %112 = load i32, i32* @LL_WARNING, align 4
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (i32, i8*, i32, ...) @serverLog(i32 %112, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %115)
  br label %117

117:                                              ; preds = %111, %107
  br label %118

118:                                              ; preds = %117, %101
  br label %119

119:                                              ; preds = %118, %92
  br label %226

120:                                              ; preds = %85, %81
  %121 = call i32 (...) @mstime()
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 2
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = sub nsw i32 %121, %126
  %128 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 0), align 8
  %129 = mul nsw i32 %128, 2
  %130 = icmp slt i32 %127, %129
  br i1 %130, label %131, label %148

131:                                              ; preds = %120
  %132 = load i32, i32* @LL_WARNING, align 4
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 0), align 8
  %137 = mul nsw i32 %136, 2
  %138 = call i32 (...) @mstime()
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 2
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = sub nsw i32 %138, %143
  %145 = sub nsw i32 %137, %144
  %146 = sext i32 %145 to i64
  %147 = call i32 (i32, i8*, i32, ...) @serverLog(i32 %132, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.5, i64 0, i64 0), i32 %135, i64 %146)
  br label %226

148:                                              ; preds = %120
  store i32 0, i32* %10, align 4
  br label %149

149:                                              ; preds = %198, %148
  %150 = load i32, i32* %10, align 4
  %151 = load i32, i32* @CLUSTER_SLOTS, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %201

153:                                              ; preds = %149
  %154 = load i8*, i8** %8, align 8
  %155 = load i32, i32* %10, align 4
  %156 = call i64 @bitmapTestBit(i8* %154, i32 %155)
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %153
  br label %198

159:                                              ; preds = %153
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 1), align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 2
  %162 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %161, align 8
  %163 = load i32, i32* %10, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %162, i64 %164
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %165, align 8
  %167 = icmp eq %struct.TYPE_13__* %166, null
  br i1 %167, label %180, label %168

168:                                              ; preds = %159
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 1), align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 2
  %171 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %170, align 8
  %172 = load i32, i32* %10, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %171, i64 %173
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* %7, align 8
  %179 = icmp sle i64 %177, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %168, %159
  br label %198

181:                                              ; preds = %168
  %182 = load i32, i32* @LL_WARNING, align 4
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* %10, align 4
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 1), align 8
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 2
  %189 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %188, align 8
  %190 = load i32, i32* %10, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %189, i64 %191
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* %7, align 8
  %197 = call i32 (i32, i8*, i32, ...) @serverLog(i32 %182, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.6, i64 0, i64 0), i32 %185, i32 %186, i64 %195, i64 %196)
  br label %226

198:                                              ; preds = %180, %158
  %199 = load i32, i32* %10, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %10, align 4
  br label %149

201:                                              ; preds = %149
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 1), align 8
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 1), align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 1
  store i64 %204, i64* %206, align 8
  %207 = call i32 (...) @mstime()
  %208 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i32 0, i32 2
  %210 = load %struct.TYPE_15__*, %struct.TYPE_15__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %210, i32 0, i32 0
  store i32 %207, i32* %211, align 8
  %212 = load i32, i32* @CLUSTER_TODO_SAVE_CONFIG, align 4
  %213 = load i32, i32* @CLUSTER_TODO_FSYNC_CONFIG, align 4
  %214 = or i32 %212, %213
  %215 = call i32 @clusterDoBeforeSleep(i32 %214)
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %217 = call i32 @clusterSendFailoverAuth(%struct.TYPE_15__* %216)
  %218 = load i32, i32* @LL_WARNING, align 4
  %219 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 1), align 8
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = call i32 (i32, i8*, i32, ...) @serverLog(i32 %218, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i32 %221, i64 %224)
  br label %226

226:                                              ; preds = %201, %181, %131, %119, %65, %47, %40
  ret void
}

declare dso_local i64 @ntohu64(i32) #1

declare dso_local i64 @nodeIsSlave(%struct.TYPE_18__*) #1

declare dso_local i32 @serverLog(i32, i8*, i32, ...) #1

declare dso_local i64 @nodeIsMaster(%struct.TYPE_15__*) #1

declare dso_local i32 @nodeFailed(%struct.TYPE_15__*) #1

declare dso_local i32 @mstime(...) #1

declare dso_local i64 @bitmapTestBit(i8*, i32) #1

declare dso_local i32 @clusterDoBeforeSleep(i32) #1

declare dso_local i32 @clusterSendFailoverAuth(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
