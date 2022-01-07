; ModuleID = '/home/carl/AnghaBench/redis/src/extr_aof.c_feedAppendOnlyFile.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_aof.c_feedAppendOnlyFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64, i32, i32, %struct.redisCommand*, %struct.redisCommand* }
%struct.redisCommand = type { i64 }
%struct.TYPE_9__ = type { i32 }

@server = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"*2\0D\0A$6\0D\0ASELECT\0D\0A$%lu\0D\0A%s\0D\0A\00", align 1
@expireCommand = common dso_local global i64 0, align 8
@pexpireCommand = common dso_local global i64 0, align 8
@expireatCommand = common dso_local global i64 0, align 8
@setexCommand = common dso_local global i64 0, align 8
@psetexCommand = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"SET\00", align 1
@setCommand = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"ex\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"px\00", align 1
@AOF_ON = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @feedAppendOnlyFile(%struct.redisCommand* %0, i32 %1, %struct.TYPE_9__** %2, i32 %3) #0 {
  %5 = alloca %struct.redisCommand*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca [3 x %struct.TYPE_9__*], align 16
  %11 = alloca [64 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  store %struct.redisCommand* %0, %struct.redisCommand** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_9__** %2, %struct.TYPE_9__*** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = call i64 (...) @sdsempty()
  store i64 %15, i64* %9, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @server, i32 0, i32 0), align 8
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %4
  %20 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @snprintf(i8* %20, i32 64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i64, i64* %9, align 8
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %25 = call i64 @strlen(i8* %24)
  %26 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %27 = call i64 @sdscatprintf(i64 %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %25, i8* %26)
  store i64 %27, i64* %9, align 8
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @server, i32 0, i32 0), align 8
  br label %29

29:                                               ; preds = %19, %4
  %30 = load %struct.redisCommand*, %struct.redisCommand** %5, align 8
  %31 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @expireCommand, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %47, label %35

35:                                               ; preds = %29
  %36 = load %struct.redisCommand*, %struct.redisCommand** %5, align 8
  %37 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @pexpireCommand, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %35
  %42 = load %struct.redisCommand*, %struct.redisCommand** %5, align 8
  %43 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @expireatCommand, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %41, %35, %29
  %48 = load i64, i64* %9, align 8
  %49 = load %struct.redisCommand*, %struct.redisCommand** %5, align 8
  %50 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %50, i64 1
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %53, i64 2
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = call i64 @catAppendOnlyExpireAtCommand(i64 %48, %struct.redisCommand* %49, %struct.TYPE_9__* %52, %struct.TYPE_9__* %55)
  store i64 %56, i64* %9, align 8
  br label %190

57:                                               ; preds = %41
  %58 = load %struct.redisCommand*, %struct.redisCommand** %5, align 8
  %59 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @setexCommand, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %69, label %63

63:                                               ; preds = %57
  %64 = load %struct.redisCommand*, %struct.redisCommand** %5, align 8
  %65 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @psetexCommand, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %95

69:                                               ; preds = %63, %57
  %70 = call %struct.TYPE_9__* @createStringObject(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %71 = getelementptr inbounds [3 x %struct.TYPE_9__*], [3 x %struct.TYPE_9__*]* %10, i64 0, i64 0
  store %struct.TYPE_9__* %70, %struct.TYPE_9__** %71, align 16
  %72 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %72, i64 1
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = getelementptr inbounds [3 x %struct.TYPE_9__*], [3 x %struct.TYPE_9__*]* %10, i64 0, i64 1
  store %struct.TYPE_9__* %74, %struct.TYPE_9__** %75, align 8
  %76 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %76, i64 3
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  %79 = getelementptr inbounds [3 x %struct.TYPE_9__*], [3 x %struct.TYPE_9__*]* %10, i64 0, i64 2
  store %struct.TYPE_9__* %78, %struct.TYPE_9__** %79, align 16
  %80 = load i64, i64* %9, align 8
  %81 = getelementptr inbounds [3 x %struct.TYPE_9__*], [3 x %struct.TYPE_9__*]* %10, i64 0, i64 0
  %82 = call i64 @catAppendOnlyGenericCommand(i64 %80, i32 3, %struct.TYPE_9__** %81)
  store i64 %82, i64* %9, align 8
  %83 = getelementptr inbounds [3 x %struct.TYPE_9__*], [3 x %struct.TYPE_9__*]* %10, i64 0, i64 0
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 16
  %85 = call i32 @decrRefCount(%struct.TYPE_9__* %84)
  %86 = load i64, i64* %9, align 8
  %87 = load %struct.redisCommand*, %struct.redisCommand** %5, align 8
  %88 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %88, i64 1
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %91, i64 2
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %92, align 8
  %94 = call i64 @catAppendOnlyExpireAtCommand(i64 %86, %struct.redisCommand* %87, %struct.TYPE_9__* %90, %struct.TYPE_9__* %93)
  store i64 %94, i64* %9, align 8
  br label %189

95:                                               ; preds = %63
  %96 = load %struct.redisCommand*, %struct.redisCommand** %5, align 8
  %97 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @setCommand, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %183

101:                                              ; preds = %95
  %102 = load i32, i32* %8, align 4
  %103 = icmp sgt i32 %102, 3
  br i1 %103, label %104, label %183

104:                                              ; preds = %101
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %13, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %14, align 8
  %105 = load i64, i64* %9, align 8
  %106 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  %107 = call i64 @catAppendOnlyGenericCommand(i64 %105, i32 3, %struct.TYPE_9__** %106)
  store i64 %107, i64* %9, align 8
  store i32 3, i32* %12, align 4
  br label %108

108:                                              ; preds = %147, %104
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* %8, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %150

112:                                              ; preds = %108
  %113 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  %114 = load i32, i32* %12, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %113, i64 %115
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @strcasecmp(i32 %119, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %129, label %122

122:                                              ; preds = %112
  %123 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  %124 = load i32, i32* %12, align 4
  %125 = add nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %123, i64 %126
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %127, align 8
  store %struct.TYPE_9__* %128, %struct.TYPE_9__** %13, align 8
  br label %129

129:                                              ; preds = %122, %112
  %130 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  %131 = load i32, i32* %12, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %130, i64 %132
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @strcasecmp(i32 %136, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %146, label %139

139:                                              ; preds = %129
  %140 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  %141 = load i32, i32* %12, align 4
  %142 = add nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %140, i64 %143
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %144, align 8
  store %struct.TYPE_9__* %145, %struct.TYPE_9__** %14, align 8
  br label %146

146:                                              ; preds = %139, %129
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %12, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %12, align 4
  br label %108

150:                                              ; preds = %108
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %152 = icmp ne %struct.TYPE_9__* %151, null
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %155 = icmp ne %struct.TYPE_9__* %154, null
  br label %156

156:                                              ; preds = %153, %150
  %157 = phi i1 [ false, %150 ], [ %155, %153 ]
  %158 = xor i1 %157, true
  %159 = zext i1 %158 to i32
  %160 = call i32 @serverAssert(i32 %159)
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %162 = icmp ne %struct.TYPE_9__* %161, null
  br i1 %162, label %163, label %171

163:                                              ; preds = %156
  %164 = load i64, i64* %9, align 8
  %165 = load %struct.redisCommand*, %struct.redisCommand** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @server, i32 0, i32 5), align 8
  %166 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %166, i64 1
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %167, align 8
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %170 = call i64 @catAppendOnlyExpireAtCommand(i64 %164, %struct.redisCommand* %165, %struct.TYPE_9__* %168, %struct.TYPE_9__* %169)
  store i64 %170, i64* %9, align 8
  br label %171

171:                                              ; preds = %163, %156
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %173 = icmp ne %struct.TYPE_9__* %172, null
  br i1 %173, label %174, label %182

174:                                              ; preds = %171
  %175 = load i64, i64* %9, align 8
  %176 = load %struct.redisCommand*, %struct.redisCommand** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @server, i32 0, i32 4), align 8
  %177 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %177, i64 1
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %178, align 8
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %181 = call i64 @catAppendOnlyExpireAtCommand(i64 %175, %struct.redisCommand* %176, %struct.TYPE_9__* %179, %struct.TYPE_9__* %180)
  store i64 %181, i64* %9, align 8
  br label %182

182:                                              ; preds = %174, %171
  br label %188

183:                                              ; preds = %101, %95
  %184 = load i64, i64* %9, align 8
  %185 = load i32, i32* %8, align 4
  %186 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  %187 = call i64 @catAppendOnlyGenericCommand(i64 %184, i32 %185, %struct.TYPE_9__** %186)
  store i64 %187, i64* %9, align 8
  br label %188

188:                                              ; preds = %183, %182
  br label %189

189:                                              ; preds = %188, %69
  br label %190

190:                                              ; preds = %189, %47
  %191 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @server, i32 0, i32 1), align 8
  %192 = load i64, i64* @AOF_ON, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %200

194:                                              ; preds = %190
  %195 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @server, i32 0, i32 3), align 4
  %196 = load i64, i64* %9, align 8
  %197 = load i64, i64* %9, align 8
  %198 = call i32 @sdslen(i64 %197)
  %199 = call i32 @sdscatlen(i32 %195, i64 %196, i32 %198)
  store i32 %199, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @server, i32 0, i32 3), align 4
  br label %200

200:                                              ; preds = %194, %190
  %201 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @server, i32 0, i32 2), align 8
  %202 = icmp ne i32 %201, -1
  br i1 %202, label %203, label %209

203:                                              ; preds = %200
  %204 = load i64, i64* %9, align 8
  %205 = inttoptr i64 %204 to i8*
  %206 = load i64, i64* %9, align 8
  %207 = call i32 @sdslen(i64 %206)
  %208 = call i32 @aofRewriteBufferAppend(i8* %205, i32 %207)
  br label %209

209:                                              ; preds = %203, %200
  %210 = load i64, i64* %9, align 8
  %211 = call i32 @sdsfree(i64 %210)
  ret void
}

declare dso_local i64 @sdsempty(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @sdscatprintf(i64, i8*, i64, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @catAppendOnlyExpireAtCommand(i64, %struct.redisCommand*, %struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @createStringObject(i8*, i32) #1

declare dso_local i64 @catAppendOnlyGenericCommand(i64, i32, %struct.TYPE_9__**) #1

declare dso_local i32 @decrRefCount(%struct.TYPE_9__*) #1

declare dso_local i32 @strcasecmp(i32, i8*) #1

declare dso_local i32 @serverAssert(i32) #1

declare dso_local i32 @sdscatlen(i32, i64, i32) #1

declare dso_local i32 @sdslen(i64) #1

declare dso_local i32 @aofRewriteBufferAppend(i8*, i32) #1

declare dso_local i32 @sdsfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
