; ModuleID = '/home/carl/AnghaBench/redis/src/extr_pubsub.c_pubsubCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_pubsub.c_pubsubCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32*, i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__** }
%struct.TYPE_15__ = type { i32* }

@.str = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.1 = private unnamed_addr constant [96 x i8] c"CHANNELS [<pattern>] -- Return the currently active channels matching a pattern (default: all).\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"NUMPAT -- Return number of subscriptions to patterns.\00", align 1
@.str.3 = private unnamed_addr constant [133 x i8] c"NUMSUB [channel-1 .. channel-N] -- Returns the number of subscribers for the specified channels (excluding patterns, default: none).\00", align 1
@__const.pubsubCommand.help = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.3, i32 0, i32 0), i8* null], align 16
@.str.4 = private unnamed_addr constant [9 x i8] c"channels\00", align 1
@server = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"numsub\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"numpat\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pubsubCommand(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca [4 x i8*], align 16
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %32

17:                                               ; preds = %1
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %20, i64 1
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @strcasecmp(i32* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %17
  %28 = bitcast [4 x i8*]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %28, i8* align 16 bitcast ([4 x i8*]* @__const.pubsubCommand.help to i8*), i64 32, i1 false)
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %30 = getelementptr inbounds [4 x i8*], [4 x i8*]* %3, i64 0, i64 0
  %31 = call i32 @addReplyHelp(%struct.TYPE_16__* %29, i8** %30)
  br label %195

32:                                               ; preds = %17, %1
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %35, i64 1
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @strcasecmp(i32* %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %107, label %42

42:                                               ; preds = %32
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 2
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %50, 3
  br i1 %51, label %52, label %107

52:                                               ; preds = %47, %42
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %55, 2
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %66

58:                                               ; preds = %52
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %61, i64 2
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  br label %66

66:                                               ; preds = %58, %57
  %67 = phi i32* [ null, %57 ], [ %65, %58 ]
  store i32* %67, i32** %4, align 8
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 1), align 8
  %69 = call i32* @dictGetIterator(i32 %68)
  store i32* %69, i32** %5, align 8
  store i64 0, i64* %7, align 8
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %71 = call i8* @addReplyDeferredLen(%struct.TYPE_16__* %70)
  store i8* %71, i8** %8, align 8
  br label %72

72:                                               ; preds = %99, %66
  %73 = load i32*, i32** %5, align 8
  %74 = call i32* @dictNext(i32* %73)
  store i32* %74, i32** %6, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %100

76:                                               ; preds = %72
  %77 = load i32*, i32** %6, align 8
  %78 = call %struct.TYPE_15__* @dictGetKey(i32* %77)
  store %struct.TYPE_15__* %78, %struct.TYPE_15__** %9, align 8
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  store i32* %81, i32** %10, align 8
  %82 = load i32*, i32** %4, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %93

84:                                               ; preds = %76
  %85 = load i32*, i32** %4, align 8
  %86 = load i32*, i32** %4, align 8
  %87 = call i32 @sdslen(i32* %86)
  %88 = load i32*, i32** %10, align 8
  %89 = load i32*, i32** %10, align 8
  %90 = call i32 @sdslen(i32* %89)
  %91 = call i64 @stringmatchlen(i32* %85, i32 %87, i32* %88, i32 %90, i32 0)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %84, %76
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %96 = call i32 @addReplyBulk(%struct.TYPE_16__* %94, %struct.TYPE_15__* %95)
  %97 = load i64, i64* %7, align 8
  %98 = add nsw i64 %97, 1
  store i64 %98, i64* %7, align 8
  br label %99

99:                                               ; preds = %93, %84
  br label %72

100:                                              ; preds = %72
  %101 = load i32*, i32** %5, align 8
  %102 = call i32 @dictReleaseIterator(i32* %101)
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %104 = load i8*, i8** %8, align 8
  %105 = load i64, i64* %7, align 8
  %106 = call i32 @setDeferredArrayLen(%struct.TYPE_16__* %103, i8* %104, i64 %105)
  br label %194

107:                                              ; preds = %47, %32
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %110, i64 1
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = call i32 @strcasecmp(i32* %114, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %169, label %117

117:                                              ; preds = %107
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp sge i32 %120, 2
  br i1 %121, label %122, label %169

122:                                              ; preds = %117
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = sub nsw i32 %126, 2
  %128 = mul nsw i32 %127, 2
  %129 = call i32 @addReplyArrayLen(%struct.TYPE_16__* %123, i32 %128)
  store i32 2, i32* %11, align 4
  br label %130

130:                                              ; preds = %165, %122
  %131 = load i32, i32* %11, align 4
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp slt i32 %131, %134
  br i1 %135, label %136, label %168

136:                                              ; preds = %130
  %137 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 1), align 8
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %139, align 8
  %141 = load i32, i32* %11, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %140, i64 %142
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %143, align 8
  %145 = call i32* @dictFetchValue(i32 %137, %struct.TYPE_15__* %144)
  store i32* %145, i32** %12, align 8
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %148, align 8
  %150 = load i32, i32* %11, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %149, i64 %151
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %152, align 8
  %154 = call i32 @addReplyBulk(%struct.TYPE_16__* %146, %struct.TYPE_15__* %153)
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %156 = load i32*, i32** %12, align 8
  %157 = icmp ne i32* %156, null
  br i1 %157, label %158, label %161

158:                                              ; preds = %136
  %159 = load i32*, i32** %12, align 8
  %160 = call i32 @listLength(i32* %159)
  br label %162

161:                                              ; preds = %136
  br label %162

162:                                              ; preds = %161, %158
  %163 = phi i32 [ %160, %158 ], [ 0, %161 ]
  %164 = call i32 @addReplyLongLong(%struct.TYPE_16__* %155, i32 %163)
  br label %165

165:                                              ; preds = %162
  %166 = load i32, i32* %11, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %11, align 4
  br label %130

168:                                              ; preds = %130
  br label %193

169:                                              ; preds = %117, %107
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %172, i64 1
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = call i32 @strcasecmp(i32* %176, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %189, label %179

179:                                              ; preds = %169
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = icmp eq i32 %182, 2
  br i1 %183, label %184, label %189

184:                                              ; preds = %179
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %186 = load i32*, i32** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 0), align 8
  %187 = call i32 @listLength(i32* %186)
  %188 = call i32 @addReplyLongLong(%struct.TYPE_16__* %185, i32 %187)
  br label %192

189:                                              ; preds = %179, %169
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %191 = call i32 @addReplySubcommandSyntaxError(%struct.TYPE_16__* %190)
  br label %192

192:                                              ; preds = %189, %184
  br label %193

193:                                              ; preds = %192, %168
  br label %194

194:                                              ; preds = %193, %100
  br label %195

195:                                              ; preds = %194, %27
  ret void
}

declare dso_local i32 @strcasecmp(i32*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @addReplyHelp(%struct.TYPE_16__*, i8**) #1

declare dso_local i32* @dictGetIterator(i32) #1

declare dso_local i8* @addReplyDeferredLen(%struct.TYPE_16__*) #1

declare dso_local i32* @dictNext(i32*) #1

declare dso_local %struct.TYPE_15__* @dictGetKey(i32*) #1

declare dso_local i64 @stringmatchlen(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @sdslen(i32*) #1

declare dso_local i32 @addReplyBulk(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

declare dso_local i32 @dictReleaseIterator(i32*) #1

declare dso_local i32 @setDeferredArrayLen(%struct.TYPE_16__*, i8*, i64) #1

declare dso_local i32 @addReplyArrayLen(%struct.TYPE_16__*, i32) #1

declare dso_local i32* @dictFetchValue(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @addReplyLongLong(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @listLength(i32*) #1

declare dso_local i32 @addReplySubcommandSyntaxError(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
