; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_clusterManagerNodeConnect.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_clusterManagerNodeConnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32*, i64 }
%struct.TYPE_9__ = type { i8*, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i8*, i32, i64 }

@config = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@REDIS_ERR = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"TLS Error: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Could not connect to Redis at \00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%s:%d: %s\0A\00", align 1
@REDIS_CLI_KEEPALIVE_INTERVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"AUTH %s\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"AUTH %s %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @clusterManagerNodeConnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clusterManagerNodeConnect(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %10 = icmp ne %struct.TYPE_10__* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %15 = call i32 @redisFree(%struct.TYPE_10__* %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.TYPE_10__* @redisConnect(i8* %19, i32 %22)
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 2
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %25, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %56, label %32

32:                                               ; preds = %16
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @config, i32 0, i32 2), align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %56

35:                                               ; preds = %32
  store i8* null, i8** %4, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = call i64 @cliSecureConnection(%struct.TYPE_10__* %38, i8** %4)
  %40 = load i64, i64* @REDIS_ERR, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %35
  %43 = load i8*, i8** %4, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = load i32, i32* @stderr, align 4
  %47 = load i8*, i8** %4, align 8
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %47)
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = call i32 @redisFree(%struct.TYPE_10__* %51)
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 2
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %54, align 8
  store i32 0, i32* %2, align 4
  br label %127

55:                                               ; preds = %42, %35
  br label %56

56:                                               ; preds = %55, %32, %16
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %85

63:                                               ; preds = %56
  %64 = load i32, i32* @stderr, align 4
  %65 = call i32 (i32, i8*, ...) @fprintf(i32 %64, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i32, i32* @stderr, align 4
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 (i32, i8*, ...) @fprintf(i32 %66, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %69, i32 %72, i8* %77)
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = call i32 @redisFree(%struct.TYPE_10__* %81)
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 2
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %84, align 8
  store i32 0, i32* %2, align 4
  br label %127

85:                                               ; preds = %56
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @REDIS_CLI_KEEPALIVE_INTERVAL, align 4
  %92 = call i32 @anetKeepAlive(i32* null, i32 %90, i32 %91)
  %93 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @config, i32 0, i32 0), align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %126

95:                                               ; preds = %85
  %96 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @config, i32 0, i32 1), align 8
  %97 = icmp eq i32* %96, null
  br i1 %97, label %98, label %105

98:                                               ; preds = %95
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @config, i32 0, i32 0), align 8
  %103 = inttoptr i64 %102 to i32*
  %104 = call i32* (%struct.TYPE_10__*, i8*, i32*, ...) @redisCommand(%struct.TYPE_10__* %101, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32* %103)
  store i32* %104, i32** %5, align 8
  br label %112

105:                                              ; preds = %95
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 2
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @config, i32 0, i32 1), align 8
  %110 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @config, i32 0, i32 0), align 8
  %111 = call i32* (%struct.TYPE_10__*, i8*, i32*, ...) @redisCommand(%struct.TYPE_10__* %108, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32* %109, i64 %110)
  store i32* %111, i32** %5, align 8
  br label %112

112:                                              ; preds = %105, %98
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %114 = load i32*, i32** %5, align 8
  %115 = call i32 @clusterManagerCheckRedisReply(%struct.TYPE_9__* %113, i32* %114, i32* null)
  store i32 %115, i32* %6, align 4
  %116 = load i32*, i32** %5, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %112
  %119 = load i32*, i32** %5, align 8
  %120 = call i32 @freeReplyObject(i32* %119)
  br label %121

121:                                              ; preds = %118, %112
  %122 = load i32, i32* %6, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %121
  store i32 0, i32* %2, align 4
  br label %127

125:                                              ; preds = %121
  br label %126

126:                                              ; preds = %125, %85
  store i32 1, i32* %2, align 4
  br label %127

127:                                              ; preds = %126, %124, %63, %45
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i32 @redisFree(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @redisConnect(i8*, i32) #1

declare dso_local i64 @cliSecureConnection(%struct.TYPE_10__*, i8**) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @anetKeepAlive(i32*, i32, i32) #1

declare dso_local i32* @redisCommand(%struct.TYPE_10__*, i8*, i32*, ...) #1

declare dso_local i32 @clusterManagerCheckRedisReply(%struct.TYPE_9__*, i32*, i32*) #1

declare dso_local i32 @freeReplyObject(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
