; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_stream.c_xtrimCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_stream.c_xtrimCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_22__*, %struct.TYPE_23__** }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_23__ = type { i8* }
%struct.TYPE_20__ = type { i32* }

@shared = common dso_local global %struct.TYPE_24__ zeroinitializer, align 4
@OBJ_STREAM = common dso_local global i32 0, align 4
@TRIM_STRATEGY_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"maxlen\00", align 1
@TRIM_STRATEGY_MAXLEN = common dso_local global i32 0, align 4
@C_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"The MAXLEN argument must be >= 0.\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"XTRIM called without an option to trim the stream\00", align 1
@NOTIFY_STREAM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"xtrim\00", align 1
@server = common dso_local global %struct.TYPE_25__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xtrimCommand(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %2, align 8
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %17, i64 1
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @shared, i32 0, i32 1), align 4
  %21 = call %struct.TYPE_20__* @lookupKeyWriteOrReply(%struct.TYPE_21__* %14, %struct.TYPE_23__* %19, i32 %20)
  store %struct.TYPE_20__* %21, %struct.TYPE_20__** %3, align 8
  %22 = icmp eq %struct.TYPE_20__* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %1
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %26 = load i32, i32* @OBJ_STREAM, align 4
  %27 = call i64 @checkType(%struct.TYPE_21__* %24, %struct.TYPE_20__* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23, %1
  br label %197

30:                                               ; preds = %23
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %4, align 8
  %34 = load i32, i32* @TRIM_STRATEGY_NONE, align 4
  store i32 %34, i32* %5, align 4
  store i64 -1, i64* %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 2, i32* %9, align 4
  br label %35

35:                                               ; preds = %140, %30
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %143

41:                                               ; preds = %35
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 %44, 1
  %46 = load i32, i32* %9, align 4
  %47 = sub nsw i32 %45, %46
  store i32 %47, i32* %10, align 4
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %50, i64 %52
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %11, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = call i32 @strcasecmp(i8* %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %135, label %60

60:                                               ; preds = %41
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %135

63:                                               ; preds = %60
  store i32 0, i32* %7, align 4
  %64 = load i32, i32* @TRIM_STRATEGY_MAXLEN, align 4
  store i32 %64, i32* %5, align 4
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %67, i64 %70
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  store i8* %74, i8** %12, align 8
  %75 = load i32, i32* %10, align 4
  %76 = icmp sge i32 %75, 2
  br i1 %76, label %77, label %92

77:                                               ; preds = %63
  %78 = load i8*, i8** %12, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 0
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 126
  br i1 %82, label %83, label %92

83:                                               ; preds = %77
  %84 = load i8*, i8** %12, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 1
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %83
  store i32 1, i32* %7, align 4
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  br label %111

92:                                               ; preds = %83, %77, %63
  %93 = load i32, i32* %10, align 4
  %94 = icmp sge i32 %93, 2
  br i1 %94, label %95, label %110

95:                                               ; preds = %92
  %96 = load i8*, i8** %12, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 0
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 61
  br i1 %100, label %101, label %110

101:                                              ; preds = %95
  %102 = load i8*, i8** %12, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 1
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load i32, i32* %9, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %9, align 4
  br label %110

110:                                              ; preds = %107, %101, %95, %92
  br label %111

111:                                              ; preds = %110, %89
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 2
  %115 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %114, align 8
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %115, i64 %118
  %120 = load %struct.TYPE_23__*, %struct.TYPE_23__** %119, align 8
  %121 = call i64 @getLongLongFromObjectOrReply(%struct.TYPE_21__* %112, %struct.TYPE_23__* %120, i64* %6, i32* null)
  %122 = load i64, i64* @C_OK, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %111
  br label %197

125:                                              ; preds = %111
  %126 = load i64, i64* %6, align 8
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %130 = call i32 @addReplyError(%struct.TYPE_21__* %129, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %197

131:                                              ; preds = %125
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %9, align 4
  %134 = load i32, i32* %9, align 4
  store i32 %134, i32* %8, align 4
  br label %139

135:                                              ; preds = %60, %41
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %137 = load i32, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @shared, i32 0, i32 0), align 4
  %138 = call i32 @addReply(%struct.TYPE_21__* %136, i32 %137)
  br label %197

139:                                              ; preds = %131
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %9, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %9, align 4
  br label %35

143:                                              ; preds = %35
  store i64 0, i64* %13, align 8
  %144 = load i32, i32* %5, align 4
  %145 = load i32, i32* @TRIM_STRATEGY_MAXLEN, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %152

147:                                              ; preds = %143
  %148 = load i32*, i32** %4, align 8
  %149 = load i64, i64* %6, align 8
  %150 = load i32, i32* %7, align 4
  %151 = call i64 @streamTrimByLength(i32* %148, i64 %149, i32 %150)
  store i64 %151, i64* %13, align 8
  br label %155

152:                                              ; preds = %143
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %154 = call i32 @addReplyError(%struct.TYPE_21__* %153, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  br label %197

155:                                              ; preds = %147
  %156 = load i64, i64* %13, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %193

158:                                              ; preds = %155
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %160 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_22__*, %struct.TYPE_22__** %160, align 8
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i32 0, i32 2
  %164 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %164, i64 1
  %166 = load %struct.TYPE_23__*, %struct.TYPE_23__** %165, align 8
  %167 = call i32 @signalModifiedKey(%struct.TYPE_22__* %161, %struct.TYPE_23__* %166)
  %168 = load i32, i32* @NOTIFY_STREAM, align 4
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 2
  %171 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %171, i64 1
  %173 = load %struct.TYPE_23__*, %struct.TYPE_23__** %172, align 8
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %174, i32 0, i32 1
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @notifyKeyspaceEvent(i32 %168, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_23__* %173, i32 %178)
  %180 = load i64, i64* %13, align 8
  %181 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @server, i32 0, i32 0), align 4
  %182 = sext i32 %181 to i64
  %183 = add nsw i64 %182, %180
  %184 = trunc i64 %183 to i32
  store i32 %184, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @server, i32 0, i32 0), align 4
  %185 = load i32, i32* %7, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %158
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %189 = load i32*, i32** %4, align 8
  %190 = load i32, i32* %8, align 4
  %191 = call i32 @streamRewriteApproxMaxlen(%struct.TYPE_21__* %188, i32* %189, i32 %190)
  br label %192

192:                                              ; preds = %187, %158
  br label %193

193:                                              ; preds = %192, %155
  %194 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %195 = load i64, i64* %13, align 8
  %196 = call i32 @addReplyLongLong(%struct.TYPE_21__* %194, i64 %195)
  br label %197

197:                                              ; preds = %193, %152, %135, %128, %124, %29
  ret void
}

declare dso_local %struct.TYPE_20__* @lookupKeyWriteOrReply(%struct.TYPE_21__*, %struct.TYPE_23__*, i32) #1

declare dso_local i64 @checkType(%struct.TYPE_21__*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @getLongLongFromObjectOrReply(%struct.TYPE_21__*, %struct.TYPE_23__*, i64*, i32*) #1

declare dso_local i32 @addReplyError(%struct.TYPE_21__*, i8*) #1

declare dso_local i32 @addReply(%struct.TYPE_21__*, i32) #1

declare dso_local i64 @streamTrimByLength(i32*, i64, i32) #1

declare dso_local i32 @signalModifiedKey(%struct.TYPE_22__*, %struct.TYPE_23__*) #1

declare dso_local i32 @notifyKeyspaceEvent(i32, i8*, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @streamRewriteApproxMaxlen(%struct.TYPE_21__*, i32*, i32) #1

declare dso_local i32 @addReplyLongLong(%struct.TYPE_21__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
