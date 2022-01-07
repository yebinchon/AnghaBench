; ModuleID = '/home/carl/AnghaBench/redis/src/extr_latency.c_latencyCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_latency.c_latencyCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__** }
%struct.TYPE_13__ = type { i32* }
%struct.latencyTimeSeries = type { i32 }

@.str = private unnamed_addr constant [73 x i8] c"DOCTOR              -- Returns a human readable latency analysis report.\00", align 1
@.str.1 = private unnamed_addr constant [75 x i8] c"GRAPH   <event>     -- Returns an ASCII latency graph for the event class.\00", align 1
@.str.2 = private unnamed_addr constant [73 x i8] c"HISTORY <event>     -- Returns time-latency samples for the event class.\00", align 1
@.str.3 = private unnamed_addr constant [74 x i8] c"LATEST              -- Returns the latest latency samples for all events.\00", align 1
@.str.4 = private unnamed_addr constant [73 x i8] c"RESET   [event ...] -- Resets latency data of one or more event classes.\00", align 1
@.str.5 = private unnamed_addr constant [71 x i8] c"                       (default: reset all data for all event classes)\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"HELP                -- Prints this help.\00", align 1
@__const.latencyCommand.help = private unnamed_addr constant [8 x i8*] [i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i32 0, i32 0), i8* null], align 16
@.str.7 = private unnamed_addr constant [8 x i8] c"history\00", align 1
@server = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"graph\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"txt\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"latest\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"doctor\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"No samples available for event '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @latencyCommand(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca [8 x i8*], align 16
  %4 = alloca %struct.latencyTimeSeries*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %11 = bitcast [8 x i8*]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([8 x i8*]* @__const.latencyCommand.help to i8*), i64 64, i1 false)
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %14, i64 1
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @strcasecmp(i32* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %46, label %21

21:                                               ; preds = %1
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 3
  br i1 %25, label %26, label %46

26:                                               ; preds = %21
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @server, i32 0, i32 0), align 4
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %30, i64 2
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = call %struct.latencyTimeSeries* @dictFetchValue(i32 %27, i32* %34)
  store %struct.latencyTimeSeries* %35, %struct.latencyTimeSeries** %4, align 8
  %36 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %4, align 8
  %37 = icmp eq %struct.latencyTimeSeries* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %26
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %40 = call i32 @addReplyArrayLen(%struct.TYPE_14__* %39, i32 0)
  br label %45

41:                                               ; preds = %26
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %43 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %4, align 8
  %44 = call i32 @latencyCommandReplyWithSamples(%struct.TYPE_14__* %42, %struct.latencyTimeSeries* %43)
  br label %45

45:                                               ; preds = %41, %38
  br label %210

46:                                               ; preds = %21, %1
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %49, i64 1
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @strcasecmp(i32* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %89, label %56

56:                                               ; preds = %46
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, 3
  br i1 %60, label %61, label %89

61:                                               ; preds = %56
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @server, i32 0, i32 0), align 4
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %65, i64 2
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = call i32* @dictFind(i32 %62, i32* %69)
  store i32* %70, i32** %6, align 8
  %71 = load i32*, i32** %6, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %61
  br label %211

74:                                               ; preds = %61
  %75 = load i32*, i32** %6, align 8
  %76 = call %struct.latencyTimeSeries* @dictGetVal(i32* %75)
  store %struct.latencyTimeSeries* %76, %struct.latencyTimeSeries** %4, align 8
  %77 = load i32*, i32** %6, align 8
  %78 = call i8* @dictGetKey(i32* %77)
  store i8* %78, i8** %7, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %4, align 8
  %81 = call i32 @latencyCommandGenSparkeline(i8* %79, %struct.latencyTimeSeries* %80)
  store i32 %81, i32* %5, align 4
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @sdslen(i32 %84)
  %86 = call i32 @addReplyVerbatim(%struct.TYPE_14__* %82, i32 %83, i32 %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @sdsfree(i32 %87)
  br label %209

89:                                               ; preds = %56, %46
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %92, i64 1
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @strcasecmp(i32* %96, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %107, label %99

99:                                               ; preds = %89
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp eq i32 %102, 2
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %106 = call i32 @latencyCommandReplyWithLatestEvents(%struct.TYPE_14__* %105)
  br label %208

107:                                              ; preds = %99, %89
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %110, i64 1
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = call i32 @strcasecmp(i32* %114, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %131, label %117

117:                                              ; preds = %107
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp eq i32 %120, 2
  br i1 %121, label %122, label %131

122:                                              ; preds = %117
  %123 = call i32 (...) @createLatencyReport()
  store i32 %123, i32* %8, align 4
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* %8, align 4
  %127 = call i32 @sdslen(i32 %126)
  %128 = call i32 @addReplyVerbatim(%struct.TYPE_14__* %124, i32 %125, i32 %127, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @sdsfree(i32 %129)
  br label %207

131:                                              ; preds = %117, %107
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %134, i64 1
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = call i32 @strcasecmp(i32* %138, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %183, label %141

141:                                              ; preds = %131
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp sge i32 %144, 2
  br i1 %145, label %146, label %183

146:                                              ; preds = %141
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = icmp eq i32 %149, 2
  br i1 %150, label %151, label %155

151:                                              ; preds = %146
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %153 = call i32 @latencyResetEvent(i32* null)
  %154 = call i32 @addReplyLongLong(%struct.TYPE_14__* %152, i32 %153)
  br label %182

155:                                              ; preds = %146
  store i32 0, i32* %10, align 4
  store i32 2, i32* %9, align 4
  br label %156

156:                                              ; preds = %175, %155
  %157 = load i32, i32* %9, align 4
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = icmp slt i32 %157, %160
  br i1 %161, label %162, label %178

162:                                              ; preds = %156
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %164, align 8
  %166 = load i32, i32* %9, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %165, i64 %167
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = call i32 @latencyResetEvent(i32* %171)
  %173 = load i32, i32* %10, align 4
  %174 = add nsw i32 %173, %172
  store i32 %174, i32* %10, align 4
  br label %175

175:                                              ; preds = %162
  %176 = load i32, i32* %9, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %9, align 4
  br label %156

178:                                              ; preds = %156
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %180 = load i32, i32* %10, align 4
  %181 = call i32 @addReplyLongLong(%struct.TYPE_14__* %179, i32 %180)
  br label %182

182:                                              ; preds = %178, %151
  br label %206

183:                                              ; preds = %141, %131
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 1
  %186 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %186, i64 1
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = call i32 @strcasecmp(i32* %190, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %202, label %193

193:                                              ; preds = %183
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = icmp sge i32 %196, 2
  br i1 %197, label %198, label %202

198:                                              ; preds = %193
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %200 = getelementptr inbounds [8 x i8*], [8 x i8*]* %3, i64 0, i64 0
  %201 = call i32 @addReplyHelp(%struct.TYPE_14__* %199, i8** %200)
  br label %205

202:                                              ; preds = %193, %183
  %203 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %204 = call i32 @addReplySubcommandSyntaxError(%struct.TYPE_14__* %203)
  br label %205

205:                                              ; preds = %202, %198
  br label %206

206:                                              ; preds = %205, %182
  br label %207

207:                                              ; preds = %206, %122
  br label %208

208:                                              ; preds = %207, %104
  br label %209

209:                                              ; preds = %208, %74
  br label %210

210:                                              ; preds = %209, %45
  br label %222

211:                                              ; preds = %73
  %212 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 1
  %215 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %215, i64 2
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 0
  %219 = load i32*, i32** %218, align 8
  %220 = bitcast i32* %219 to i8*
  %221 = call i32 @addReplyErrorFormat(%struct.TYPE_14__* %212, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0), i8* %220)
  br label %222

222:                                              ; preds = %211, %210
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strcasecmp(i32*, i8*) #2

declare dso_local %struct.latencyTimeSeries* @dictFetchValue(i32, i32*) #2

declare dso_local i32 @addReplyArrayLen(%struct.TYPE_14__*, i32) #2

declare dso_local i32 @latencyCommandReplyWithSamples(%struct.TYPE_14__*, %struct.latencyTimeSeries*) #2

declare dso_local i32* @dictFind(i32, i32*) #2

declare dso_local %struct.latencyTimeSeries* @dictGetVal(i32*) #2

declare dso_local i8* @dictGetKey(i32*) #2

declare dso_local i32 @latencyCommandGenSparkeline(i8*, %struct.latencyTimeSeries*) #2

declare dso_local i32 @addReplyVerbatim(%struct.TYPE_14__*, i32, i32, i8*) #2

declare dso_local i32 @sdslen(i32) #2

declare dso_local i32 @sdsfree(i32) #2

declare dso_local i32 @latencyCommandReplyWithLatestEvents(%struct.TYPE_14__*) #2

declare dso_local i32 @createLatencyReport(...) #2

declare dso_local i32 @addReplyLongLong(%struct.TYPE_14__*, i32) #2

declare dso_local i32 @latencyResetEvent(i32*) #2

declare dso_local i32 @addReplyHelp(%struct.TYPE_14__*, i8**) #2

declare dso_local i32 @addReplySubcommandSyntaxError(%struct.TYPE_14__*) #2

declare dso_local i32 @addReplyErrorFormat(%struct.TYPE_14__*, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
