; ModuleID = '/home/carl/AnghaBench/redis/deps/hiredis/extr_async.c___redisAsyncCommand.c'
source_filename = "/home/carl/AnghaBench/redis/deps/hiredis/extr_async.c___redisAsyncCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_11__, %struct.TYPE_12__ }
%struct.TYPE_11__ = type { i32, %struct.dict*, %struct.dict* }
%struct.dict = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32, i8*, i32* }

@REDIS_DISCONNECTING = common dso_local global i32 0, align 4
@REDIS_FREEING = common dso_local global i32 0, align 4
@REDIS_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"subscribe\0D\0A\00", align 1
@REDIS_SUBSCRIBED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"unsubscribe\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"monitor\0D\0A\00", align 1
@REDIS_MONITORING = common dso_local global i32 0, align 4
@REDIS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32*, i8*, i8*, i64)* @__redisAsyncCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__redisAsyncCommand(%struct.TYPE_14__* %0, i32* %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca %struct.TYPE_13__, align 8
  %14 = alloca %struct.dict*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 2
  store %struct.TYPE_12__* %27, %struct.TYPE_12__** %12, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @REDIS_DISCONNECTING, align 4
  %32 = load i32, i32* @REDIS_FREEING, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %5
  %37 = load i32, i32* @REDIS_ERR, align 4
  store i32 %37, i32* %6, align 4
  br label %183

38:                                               ; preds = %5
  %39 = load i32*, i32** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 2
  store i32* %39, i32** %40, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 1
  store i8* %41, i8** %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = call i8* @nextArgument(i8* %44, i8** %19, i64* %21)
  store i8* %45, i8** %23, align 8
  %46 = load i8*, i8** %23, align 8
  %47 = icmp ne i8* %46, null
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load i8*, i8** %23, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 0
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 36
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %18, align 4
  %56 = load i8*, i8** %19, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = call signext i8 @tolower(i8 signext %58)
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 112
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 1, i32 0
  store i32 %63, i32* %17, align 4
  %64 = load i32, i32* %17, align 4
  %65 = load i8*, i8** %19, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  store i8* %67, i8** %19, align 8
  %68 = load i32, i32* %17, align 4
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* %21, align 8
  %71 = sub i64 %70, %69
  store i64 %71, i64* %21, align 8
  %72 = load i32, i32* %18, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %129

74:                                               ; preds = %38
  %75 = load i8*, i8** %19, align 8
  %76 = call i64 @strncasecmp(i8* %75, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 11)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %129

78:                                               ; preds = %74
  %79 = load i32, i32* @REDIS_SUBSCRIBED, align 4
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %127, %78
  %85 = load i8*, i8** %23, align 8
  %86 = call i8* @nextArgument(i8* %85, i8** %20, i64* %22)
  store i8* %86, i8** %23, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %128

88:                                               ; preds = %84
  %89 = load i8*, i8** %20, align 8
  %90 = load i64, i64* %22, align 8
  %91 = call i32 @sdsnewlen(i8* %89, i64 %90)
  store i32 %91, i32* %24, align 4
  %92 = load i32, i32* %17, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %88
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 2
  %98 = load %struct.dict*, %struct.dict** %97, align 8
  store %struct.dict* %98, %struct.dict** %14, align 8
  br label %104

99:                                               ; preds = %88
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 1
  %103 = load %struct.dict*, %struct.dict** %102, align 8
  store %struct.dict* %103, %struct.dict** %14, align 8
  br label %104

104:                                              ; preds = %99, %94
  %105 = load %struct.dict*, %struct.dict** %14, align 8
  %106 = load i32, i32* %24, align 4
  %107 = call i32* @dictFind(%struct.dict* %105, i32 %106)
  store i32* %107, i32** %15, align 8
  %108 = load i32*, i32** %15, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %118

110:                                              ; preds = %104
  %111 = load i32*, i32** %15, align 8
  %112 = call %struct.TYPE_13__* @dictGetEntryVal(i32* %111)
  store %struct.TYPE_13__* %112, %struct.TYPE_13__** %16, align 8
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = add nsw i32 %115, 1
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  store i32 %116, i32* %117, align 8
  br label %118

118:                                              ; preds = %110, %104
  %119 = load %struct.dict*, %struct.dict** %14, align 8
  %120 = load i32, i32* %24, align 4
  %121 = call i32 @dictReplace(%struct.dict* %119, i32 %120, %struct.TYPE_13__* %13)
  store i32 %121, i32* %25, align 4
  %122 = load i32, i32* %25, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %118
  %125 = load i32, i32* %24, align 4
  %126 = call i32 @sdsfree(i32 %125)
  br label %127

127:                                              ; preds = %124, %118
  br label %84

128:                                              ; preds = %84
  br label %175

129:                                              ; preds = %74, %38
  %130 = load i8*, i8** %19, align 8
  %131 = call i64 @strncasecmp(i8* %130, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 13)
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %143

133:                                              ; preds = %129
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @REDIS_SUBSCRIBED, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %133
  %141 = load i32, i32* @REDIS_ERR, align 4
  store i32 %141, i32* %6, align 4
  br label %183

142:                                              ; preds = %133
  br label %174

143:                                              ; preds = %129
  %144 = load i8*, i8** %19, align 8
  %145 = call i64 @strncasecmp(i8* %144, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 9)
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %156

147:                                              ; preds = %143
  %148 = load i32, i32* @REDIS_MONITORING, align 4
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = or i32 %151, %148
  store i32 %152, i32* %150, align 4
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 0
  %155 = call i32 @__redisPushCallback(i32* %154, %struct.TYPE_13__* %13)
  br label %173

156:                                              ; preds = %143
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @REDIS_SUBSCRIBED, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %156
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 0
  %167 = call i32 @__redisPushCallback(i32* %166, %struct.TYPE_13__* %13)
  br label %172

168:                                              ; preds = %156
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 0
  %171 = call i32 @__redisPushCallback(i32* %170, %struct.TYPE_13__* %13)
  br label %172

172:                                              ; preds = %168, %163
  br label %173

173:                                              ; preds = %172, %147
  br label %174

174:                                              ; preds = %173, %142
  br label %175

175:                                              ; preds = %174, %128
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %177 = load i8*, i8** %10, align 8
  %178 = load i64, i64* %11, align 8
  %179 = call i32 @__redisAppendCommand(%struct.TYPE_12__* %176, i8* %177, i64 %178)
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %181 = call i32 @_EL_ADD_WRITE(%struct.TYPE_14__* %180)
  %182 = load i32, i32* @REDIS_OK, align 4
  store i32 %182, i32* %6, align 4
  br label %183

183:                                              ; preds = %175, %140, %36
  %184 = load i32, i32* %6, align 4
  ret i32 %184
}

declare dso_local i8* @nextArgument(i8*, i8**, i64*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local signext i8 @tolower(i8 signext) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @sdsnewlen(i8*, i64) #1

declare dso_local i32* @dictFind(%struct.dict*, i32) #1

declare dso_local %struct.TYPE_13__* @dictGetEntryVal(i32*) #1

declare dso_local i32 @dictReplace(%struct.dict*, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @sdsfree(i32) #1

declare dso_local i32 @__redisPushCallback(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @__redisAppendCommand(%struct.TYPE_12__*, i8*, i64) #1

declare dso_local i32 @_EL_ADD_WRITE(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
