; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_clusterManagerCommandCall.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_clusterManagerCommandCall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i8*, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }

@.str = private unnamed_addr constant [12 x i8] c">>> Calling\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@cluster_manager = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@REDIS_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"%s:%d: Failed!\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"%s:%d: %s\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@CLUSTER_MANAGER_INVALID_HOST_ARG = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @clusterManagerCommandCall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clusterManagerCommandCall(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store i8* null, i8** %8, align 8
  %17 = load i8**, i8*** %5, align 8
  %18 = call i32 @getClusterHostFromCmdArgs(i32 1, i8** %17, i8** %8, i32* %6)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %135

21:                                               ; preds = %2
  %22 = load i8*, i8** %8, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call %struct.TYPE_9__* @clusterManagerNewNode(i8* %22, i32 %23)
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %9, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %26 = call i32 @clusterManagerLoadInfoFromNode(%struct.TYPE_9__* %25, i32 0)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %139

29:                                               ; preds = %21
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %4, align 4
  %32 = load i8**, i8*** %5, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i32 1
  store i8** %33, i8*** %5, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 8
  %37 = trunc i64 %36 to i32
  %38 = call i64* @zmalloc(i32 %37)
  store i64* %38, i64** %10, align 8
  %39 = call i32 @clusterManagerLogInfo(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %61, %29
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %64

44:                                               ; preds = %40
  %45 = load i8**, i8*** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = call i64 @strlen(i8* %49)
  %51 = load i64*, i64** %10, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  store i64 %50, i64* %54, align 8
  %55 = load i8**, i8*** %5, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %59)
  br label %61

61:                                               ; preds = %44
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %40

64:                                               ; preds = %40
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cluster_manager, i32 0, i32 0), align 4
  %67 = call i32 @listRewind(i32 %66, i32* %11)
  br label %68

68:                                               ; preds = %131, %83, %64
  %69 = call %struct.TYPE_8__* @listNext(i32* %11)
  store %struct.TYPE_8__* %69, %struct.TYPE_8__** %12, align 8
  %70 = icmp ne %struct.TYPE_8__* %69, null
  br i1 %70, label %71, label %132

71:                                               ; preds = %68
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  store %struct.TYPE_9__* %74, %struct.TYPE_9__** %13, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %71
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %81 = call i32 @clusterManagerNodeConnect(%struct.TYPE_9__* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %79
  br label %68

84:                                               ; preds = %79, %71
  store i32* null, i32** %14, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %4, align 4
  %89 = load i8**, i8*** %5, align 8
  %90 = load i64*, i64** %10, align 8
  %91 = call i32 @redisAppendCommandArgv(i32 %87, i32 %88, i8** %89, i64* %90)
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = bitcast i32** %14 to i8**
  %96 = call i32 @redisGetReply(i32 %94, i8** %95)
  store i32 %96, i32* %15, align 4
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* @REDIS_OK, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %103, label %100

100:                                              ; preds = %84
  %101 = load i32*, i32** %14, align 8
  %102 = icmp eq i32* %101, null
  br i1 %102, label %103, label %111

103:                                              ; preds = %100, %84
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %106, i32 %109)
  br label %125

111:                                              ; preds = %100
  %112 = load i32*, i32** %14, align 8
  %113 = call i64 @cliFormatReplyRaw(i32* %112)
  store i64 %113, i64* %16, align 8
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load i64, i64* %16, align 8
  %121 = inttoptr i64 %120 to i8*
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %116, i32 %119, i8* %121)
  %123 = load i64, i64* %16, align 8
  %124 = call i32 @sdsfree(i64 %123)
  br label %125

125:                                              ; preds = %111, %103
  %126 = load i32*, i32** %14, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load i32*, i32** %14, align 8
  %130 = call i32 @freeReplyObject(i32* %129)
  br label %131

131:                                              ; preds = %128, %125
  br label %68

132:                                              ; preds = %68
  %133 = load i64*, i64** %10, align 8
  %134 = call i32 @zfree(i64* %133)
  store i32 1, i32* %3, align 4
  br label %139

135:                                              ; preds = %20
  %136 = load i32, i32* @stderr, align 4
  %137 = load i8*, i8** @CLUSTER_MANAGER_INVALID_HOST_ARG, align 8
  %138 = call i32 @fprintf(i32 %136, i8* %137)
  store i32 0, i32* %3, align 4
  br label %139

139:                                              ; preds = %135, %132, %28
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i32 @getClusterHostFromCmdArgs(i32, i8**, i8**, i32*) #1

declare dso_local %struct.TYPE_9__* @clusterManagerNewNode(i8*, i32) #1

declare dso_local i32 @clusterManagerLoadInfoFromNode(%struct.TYPE_9__*, i32) #1

declare dso_local i64* @zmalloc(i32) #1

declare dso_local i32 @clusterManagerLogInfo(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @listRewind(i32, i32*) #1

declare dso_local %struct.TYPE_8__* @listNext(i32*) #1

declare dso_local i32 @clusterManagerNodeConnect(%struct.TYPE_9__*) #1

declare dso_local i32 @redisAppendCommandArgv(i32, i32, i8**, i64*) #1

declare dso_local i32 @redisGetReply(i32, i8**) #1

declare dso_local i64 @cliFormatReplyRaw(i32*) #1

declare dso_local i32 @sdsfree(i64) #1

declare dso_local i32 @freeReplyObject(i32*) #1

declare dso_local i32 @zfree(i64*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
