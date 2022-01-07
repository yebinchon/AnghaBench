; ModuleID = '/home/carl/AnghaBench/redis/src/extr_slowlog.c_slowlogCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_slowlog.c_slowlogCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_19__** }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32, i32, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.1 = private unnamed_addr constant [90 x i8] c"GET [count] -- Return top entries from the slowlog (default: 10).    Entries are made of:\00", align 1
@.str.2 = private unnamed_addr constant [90 x i8] c"    id, timestamp, time in microseconds, arguments array, client IP and port, client name\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"LEN -- Return the length of the slowlog.\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"RESET -- Reset the slowlog.\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@shared = common dso_local global %struct.TYPE_23__ zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@server = common dso_local global %struct.TYPE_24__ zeroinitializer, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@C_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @slowlogCommand(%struct.TYPE_22__* %0) #0 {
  %2 = alloca %struct.TYPE_22__*, align 8
  %3 = alloca [5 x i8*], align 16
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %2, align 8
  %11 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %35

15:                                               ; preds = %1
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %18, i64 1
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @strcasecmp(i32 %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %15
  %26 = bitcast [5 x i8*]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %26, i8 0, i64 40, i1 false)
  %27 = bitcast i8* %26 to [5 x i8*]*
  %28 = getelementptr inbounds [5 x i8*], [5 x i8*]* %27, i32 0, i32 0
  store i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i32 0, i32 0), i8** %28, align 16
  %29 = getelementptr inbounds [5 x i8*], [5 x i8*]* %27, i32 0, i32 1
  store i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.2, i32 0, i32 0), i8** %29, align 8
  %30 = getelementptr inbounds [5 x i8*], [5 x i8*]* %27, i32 0, i32 2
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i32 0, i32 0), i8** %30, align 16
  %31 = getelementptr inbounds [5 x i8*], [5 x i8*]* %27, i32 0, i32 3
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0), i8** %31, align 8
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %33 = getelementptr inbounds [5 x i8*], [5 x i8*]* %3, i64 0, i64 0
  %34 = call i32 @addReplyHelp(%struct.TYPE_22__* %32, i8** %33)
  br label %202

35:                                               ; preds = %15, %1
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 2
  br i1 %39, label %40, label %55

40:                                               ; preds = %35
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %43, i64 1
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @strcasecmp(i32 %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %40
  %51 = call i32 (...) @slowlogReset()
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @shared, i32 0, i32 0), align 4
  %54 = call i32 @addReply(%struct.TYPE_22__* %52, i32 %53)
  br label %201

55:                                               ; preds = %40, %35
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %60, label %75

60:                                               ; preds = %55
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %63, i64 1
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @strcasecmp(i32 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %60
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @server, i32 0, i32 0), align 4
  %73 = call i32 @listLength(i32 %72)
  %74 = call i32 @addReplyLongLong(%struct.TYPE_22__* %71, i32 %73)
  br label %200

75:                                               ; preds = %60, %55
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %78, 2
  br i1 %79, label %85, label %80

80:                                               ; preds = %75
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %83, 3
  br i1 %84, label %85, label %196

85:                                               ; preds = %80, %75
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %88, i64 1
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @strcasecmp(i32 %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %196, label %95

95:                                               ; preds = %85
  store i64 10, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp eq i32 %98, 3
  br i1 %99, label %100, label %111

100:                                              ; preds = %95
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %104, i64 2
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %105, align 8
  %107 = call i64 @getLongFromObjectOrReply(%struct.TYPE_22__* %101, %struct.TYPE_19__* %106, i64* %4, i32* null)
  %108 = load i64, i64* @C_OK, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %100
  br label %202

111:                                              ; preds = %100, %95
  %112 = load i32, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @server, i32 0, i32 0), align 4
  %113 = call i32 @listRewind(i32 %112, i32* %6)
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %115 = call i8* @addReplyDeferredLen(%struct.TYPE_22__* %114)
  store i8* %115, i8** %7, align 8
  br label %116

116:                                              ; preds = %170, %111
  %117 = load i64, i64* %4, align 8
  %118 = add nsw i64 %117, -1
  store i64 %118, i64* %4, align 8
  %119 = icmp ne i64 %117, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = call %struct.TYPE_21__* @listNext(i32* %6)
  store %struct.TYPE_21__* %121, %struct.TYPE_21__** %8, align 8
  %122 = icmp ne %struct.TYPE_21__* %121, null
  br label %123

123:                                              ; preds = %120, %116
  %124 = phi i1 [ false, %116 ], [ %122, %120 ]
  br i1 %124, label %125, label %191

125:                                              ; preds = %123
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %127, align 8
  store %struct.TYPE_20__* %128, %struct.TYPE_20__** %9, align 8
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %130 = call i32 @addReplyArrayLen(%struct.TYPE_22__* %129, i32 6)
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %132, i32 0, i32 6
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @addReplyLongLong(%struct.TYPE_22__* %131, i32 %134)
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @addReplyLongLong(%struct.TYPE_22__* %136, i32 %139)
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @addReplyLongLong(%struct.TYPE_22__* %141, i32 %144)
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @addReplyArrayLen(%struct.TYPE_22__* %146, i32 %149)
  store i32 0, i32* %10, align 4
  br label %151

151:                                              ; preds = %167, %125
  %152 = load i32, i32* %10, align 4
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp slt i32 %152, %155
  br i1 %156, label %157, label %170

157:                                              ; preds = %151
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 3
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %10, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @addReplyBulk(%struct.TYPE_22__* %158, i32 %165)
  br label %167

167:                                              ; preds = %157
  %168 = load i32, i32* %10, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %10, align 4
  br label %151

170:                                              ; preds = %151
  %171 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %172 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @sdslen(i32 %177)
  %179 = call i32 @addReplyBulkCBuffer(%struct.TYPE_22__* %171, i32 %174, i32 %178)
  %180 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %181 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %182 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @sdslen(i32 %186)
  %188 = call i32 @addReplyBulkCBuffer(%struct.TYPE_22__* %180, i32 %183, i32 %187)
  %189 = load i64, i64* %5, align 8
  %190 = add nsw i64 %189, 1
  store i64 %190, i64* %5, align 8
  br label %116

191:                                              ; preds = %123
  %192 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %193 = load i8*, i8** %7, align 8
  %194 = load i64, i64* %5, align 8
  %195 = call i32 @setDeferredArrayLen(%struct.TYPE_22__* %192, i8* %193, i64 %194)
  br label %199

196:                                              ; preds = %85, %80
  %197 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %198 = call i32 @addReplySubcommandSyntaxError(%struct.TYPE_22__* %197)
  br label %199

199:                                              ; preds = %196, %191
  br label %200

200:                                              ; preds = %199, %70
  br label %201

201:                                              ; preds = %200, %50
  br label %202

202:                                              ; preds = %110, %201, %25
  ret void
}

declare dso_local i32 @strcasecmp(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @addReplyHelp(%struct.TYPE_22__*, i8**) #1

declare dso_local i32 @slowlogReset(...) #1

declare dso_local i32 @addReply(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @addReplyLongLong(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @listLength(i32) #1

declare dso_local i64 @getLongFromObjectOrReply(%struct.TYPE_22__*, %struct.TYPE_19__*, i64*, i32*) #1

declare dso_local i32 @listRewind(i32, i32*) #1

declare dso_local i8* @addReplyDeferredLen(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_21__* @listNext(i32*) #1

declare dso_local i32 @addReplyArrayLen(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @addReplyBulk(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @addReplyBulkCBuffer(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @sdslen(i32) #1

declare dso_local i32 @setDeferredArrayLen(%struct.TYPE_22__*, i8*, i64) #1

declare dso_local i32 @addReplySubcommandSyntaxError(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
