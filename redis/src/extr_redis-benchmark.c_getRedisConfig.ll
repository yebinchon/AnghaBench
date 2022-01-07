; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-benchmark.c_getRedisConfig.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-benchmark.c_getRedisConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i8* }
%struct.TYPE_17__ = type { i8*, i8* }
%struct.TYPE_16__ = type { i8*, i64 }
%struct.TYPE_15__ = type { i64, i8*, i32, %struct.TYPE_15__** }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Could not connect to Redis at \00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%s:%d: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@config = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"AUTH %s\00", align 1
@REDIS_OK = common dso_local global i32 0, align 4
@REDIS_REPLY_ERROR = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"ERROR: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"CONFIG GET %s\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"save\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"appendonly\00", align 1
@REDIS_REPLY_ARRAY = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [36 x i8] c"ERROR: failed to fetch CONFIG from \00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"%s:%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_17__* (i8*, i32, i8*)* @getRedisConfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_17__* @getRedisConfig(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %18 = call %struct.TYPE_17__* @zcalloc(i32 16)
  store %struct.TYPE_17__* %18, %struct.TYPE_17__** %8, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %20 = icmp ne %struct.TYPE_17__* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %4, align 8
  br label %204

22:                                               ; preds = %3
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %9, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %10, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %11, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i8*, i8** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call %struct.TYPE_16__* @redisConnect(i8* %26, i32 %27)
  store %struct.TYPE_16__* %28, %struct.TYPE_16__** %9, align 8
  br label %32

29:                                               ; preds = %22
  %30 = load i8*, i8** %7, align 8
  %31 = call %struct.TYPE_16__* @redisConnectUnix(i8* %30)
  store %struct.TYPE_16__* %31, %struct.TYPE_16__** %9, align 8
  br label %32

32:                                               ; preds = %29, %25
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %34 = icmp eq %struct.TYPE_16__* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %32
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %66

40:                                               ; preds = %35, %32
  %41 = load i32, i32* @stderr, align 4
  %42 = call i32 (i32, i8*, ...) @fprintf(i32 %41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %44 = icmp ne %struct.TYPE_16__* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  br label %50

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49, %45
  %51 = phi i8* [ %48, %45 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %49 ]
  store i8* %51, i8** %12, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load i32, i32* @stderr, align 4
  %56 = load i8*, i8** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i8*, i8** %12, align 8
  %59 = call i32 (i32, i8*, ...) @fprintf(i32 %55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %56, i32 %57, i8* %58)
  br label %65

60:                                               ; preds = %50
  %61 = load i32, i32* @stderr, align 4
  %62 = load i8*, i8** %7, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = call i32 (i32, i8*, ...) @fprintf(i32 %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %62, i8* %63)
  br label %65

65:                                               ; preds = %60, %54
  br label %183

66:                                               ; preds = %35
  %67 = load i8*, i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @config, i32 0, i32 0), align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %99

69:                                               ; preds = %66
  store i8* null, i8** %13, align 8
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %71 = load i8*, i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @config, i32 0, i32 0), align 8
  %72 = call i32 @redisAppendCommand(%struct.TYPE_16__* %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %71)
  %73 = load i32, i32* @REDIS_OK, align 4
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %75 = call i32 @redisGetReply(%struct.TYPE_16__* %74, i8** %13)
  %76 = icmp ne i32 %73, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  br label %183

78:                                               ; preds = %69
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %80 = icmp ne %struct.TYPE_15__* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %83 = call i32 @freeReplyObject(%struct.TYPE_15__* %82)
  br label %84

84:                                               ; preds = %81, %78
  %85 = load i8*, i8** %13, align 8
  %86 = bitcast i8* %85 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %86, %struct.TYPE_15__** %10, align 8
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @REDIS_REPLY_ERROR, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %84
  %93 = load i32, i32* @stderr, align 4
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 (i32, i8*, ...) @fprintf(i32 %93, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %96)
  br label %183

98:                                               ; preds = %84
  br label %99

99:                                               ; preds = %98, %66
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %101 = call i32 @redisAppendCommand(%struct.TYPE_16__* %100, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %103 = call i32 @redisAppendCommand(%struct.TYPE_16__* %102, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %14, align 4
  store i8* null, i8** %15, align 8
  br label %104

104:                                              ; preds = %174, %99
  %105 = load i32, i32* %14, align 4
  %106 = icmp slt i32 %105, 2
  br i1 %106, label %107, label %177

107:                                              ; preds = %104
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %109 = call i32 @redisGetReply(%struct.TYPE_16__* %108, i8** %15)
  store i32 %109, i32* %16, align 4
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %111 = icmp ne %struct.TYPE_15__* %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %114 = call i32 @freeReplyObject(%struct.TYPE_15__* %113)
  br label %115

115:                                              ; preds = %112, %107
  %116 = load i8*, i8** %15, align 8
  %117 = bitcast i8* %116 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %117, %struct.TYPE_15__** %10, align 8
  %118 = load i32, i32* %16, align 4
  %119 = load i32, i32* @REDIS_OK, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %124, label %121

121:                                              ; preds = %115
  %122 = load i8*, i8** %15, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %121, %115
  br label %183

125:                                              ; preds = %121
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @REDIS_REPLY_ERROR, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %137

131:                                              ; preds = %125
  %132 = load i32, i32* @stderr, align 4
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 1
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 (i32, i8*, ...) @fprintf(i32 %132, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %135)
  br label %183

137:                                              ; preds = %125
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @REDIS_REPLY_ARRAY, align 8
  %142 = icmp ne i64 %140, %141
  br i1 %142, label %148, label %143

143:                                              ; preds = %137
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = icmp slt i32 %146, 2
  br i1 %147, label %148, label %149

148:                                              ; preds = %143, %137
  br label %183

149:                                              ; preds = %143
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 3
  %152 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %152, i64 1
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %153, align 8
  store %struct.TYPE_15__* %154, %struct.TYPE_15__** %11, align 8
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 1
  %157 = load i8*, i8** %156, align 8
  store i8* %157, i8** %17, align 8
  %158 = load i8*, i8** %17, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %161, label %160

160:                                              ; preds = %149
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %17, align 8
  br label %161

161:                                              ; preds = %160, %149
  %162 = load i32, i32* %14, align 4
  switch i32 %162, label %173 [
    i32 0, label %163
    i32 1, label %168
  ]

163:                                              ; preds = %161
  %164 = load i8*, i8** %17, align 8
  %165 = call i8* @sdsnew(i8* %164)
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 1
  store i8* %165, i8** %167, align 8
  br label %173

168:                                              ; preds = %161
  %169 = load i8*, i8** %17, align 8
  %170 = call i8* @sdsnew(i8* %169)
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 0
  store i8* %170, i8** %172, align 8
  br label %173

173:                                              ; preds = %161, %168, %163
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %14, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %14, align 4
  br label %104

177:                                              ; preds = %104
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %179 = call i32 @freeReplyObject(%struct.TYPE_15__* %178)
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %181 = call i32 @redisFree(%struct.TYPE_16__* %180)
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_17__* %182, %struct.TYPE_17__** %4, align 8
  br label %204

183:                                              ; preds = %148, %131, %124, %92, %77, %65
  %184 = load i32, i32* @stderr, align 4
  %185 = call i32 (i32, i8*, ...) @fprintf(i32 %184, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  %186 = load i8*, i8** %7, align 8
  %187 = icmp eq i8* %186, null
  br i1 %187, label %188, label %193

188:                                              ; preds = %183
  %189 = load i32, i32* @stderr, align 4
  %190 = load i8*, i8** %5, align 8
  %191 = load i32, i32* %6, align 4
  %192 = call i32 (i32, i8*, ...) @fprintf(i32 %189, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* %190, i32 %191)
  br label %197

193:                                              ; preds = %183
  %194 = load i32, i32* @stderr, align 4
  %195 = load i8*, i8** %7, align 8
  %196 = call i32 (i32, i8*, ...) @fprintf(i32 %194, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* %195)
  br label %197

197:                                              ; preds = %193, %188
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %199 = call i32 @freeReplyObject(%struct.TYPE_15__* %198)
  %200 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %201 = call i32 @redisFree(%struct.TYPE_16__* %200)
  %202 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %203 = call i32 @zfree(%struct.TYPE_17__* %202)
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %4, align 8
  br label %204

204:                                              ; preds = %197, %177, %21
  %205 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  ret %struct.TYPE_17__* %205
}

declare dso_local %struct.TYPE_17__* @zcalloc(i32) #1

declare dso_local %struct.TYPE_16__* @redisConnect(i8*, i32) #1

declare dso_local %struct.TYPE_16__* @redisConnectUnix(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @redisAppendCommand(%struct.TYPE_16__*, i8*, i8*) #1

declare dso_local i32 @redisGetReply(%struct.TYPE_16__*, i8**) #1

declare dso_local i32 @freeReplyObject(%struct.TYPE_15__*) #1

declare dso_local i8* @sdsnew(i8*) #1

declare dso_local i32 @redisFree(%struct.TYPE_16__*) #1

declare dso_local i32 @zfree(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
