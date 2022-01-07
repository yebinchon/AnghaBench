; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_cliConnect.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_cliConnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32, i64 }
%struct.TYPE_8__ = type { i8*, i8*, i32, i64 }

@context = common dso_local global %struct.TYPE_7__* null, align 8
@CC_FORCE = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@REDIS_ERR = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Could not negotiate a TLS connection: %s\0A\00", align 1
@CC_QUIET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Could not connect to Redis at \00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%s:%d: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@REDIS_CLI_KEEPALIVE_INTERVAL = common dso_local global i32 0, align 4
@REDIS_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cliConnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cliConnect(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** @context, align 8
  %6 = icmp eq %struct.TYPE_7__* %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @CC_FORCE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %116

12:                                               ; preds = %7, %1
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** @context, align 8
  %14 = icmp ne %struct.TYPE_7__* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** @context, align 8
  %17 = call i32 @redisFree(%struct.TYPE_7__* %16)
  br label %18

18:                                               ; preds = %15, %12
  %19 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @config, i32 0, i32 0), align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @config, i32 0, i32 1), align 8
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @config, i32 0, i32 2), align 8
  %24 = call %struct.TYPE_7__* @redisConnect(i8* %22, i32 %23)
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** @context, align 8
  br label %28

25:                                               ; preds = %18
  %26 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @config, i32 0, i32 0), align 8
  %27 = call %struct.TYPE_7__* @redisConnectUnix(i8* %26)
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** @context, align 8
  br label %28

28:                                               ; preds = %25, %21
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** @context, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %53, label %33

33:                                               ; preds = %28
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @config, i32 0, i32 3), align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %33
  store i8* null, i8** %4, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** @context, align 8
  %38 = call i64 @cliSecureConnection(%struct.TYPE_7__* %37, i8** %4)
  %39 = load i64, i64* @REDIS_ERR, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %36
  %42 = load i8*, i8** %4, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load i32, i32* @stderr, align 4
  %46 = load i8*, i8** %4, align 8
  %47 = call i32 (i32, i8*, ...) @fprintf(i32 %45, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %46)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** @context, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** @context, align 8
  %49 = call i32 @redisFree(%struct.TYPE_7__* %48)
  %50 = load i64, i64* @REDIS_ERR, align 8
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %2, align 4
  br label %119

52:                                               ; preds = %41, %36
  br label %53

53:                                               ; preds = %52, %33, %28
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** @context, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %89

58:                                               ; preds = %53
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* @CC_QUIET, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %84, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* @stderr, align 4
  %65 = call i32 (i32, i8*, ...) @fprintf(i32 %64, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @config, i32 0, i32 0), align 8
  %67 = icmp eq i8* %66, null
  br i1 %67, label %68, label %76

68:                                               ; preds = %63
  %69 = load i32, i32* @stderr, align 4
  %70 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @config, i32 0, i32 1), align 8
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @config, i32 0, i32 2), align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** @context, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 (i32, i8*, ...) @fprintf(i32 %69, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %70, i32 %71, i8* %74)
  br label %83

76:                                               ; preds = %63
  %77 = load i32, i32* @stderr, align 4
  %78 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @config, i32 0, i32 0), align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** @context, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 (i32, i8*, ...) @fprintf(i32 %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %78, i8* %81)
  br label %83

83:                                               ; preds = %76, %68
  br label %84

84:                                               ; preds = %83, %58
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** @context, align 8
  %86 = call i32 @redisFree(%struct.TYPE_7__* %85)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** @context, align 8
  %87 = load i64, i64* @REDIS_ERR, align 8
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %2, align 4
  br label %119

89:                                               ; preds = %53
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** @context, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @REDIS_CLI_KEEPALIVE_INTERVAL, align 4
  %94 = call i32 @anetKeepAlive(i32* null, i32 %92, i32 %93)
  %95 = call i64 (...) @cliAuth()
  %96 = load i64, i64* @REDIS_OK, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %89
  %99 = load i64, i64* @REDIS_ERR, align 8
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %2, align 4
  br label %119

101:                                              ; preds = %89
  %102 = call i64 (...) @cliSelect()
  %103 = load i64, i64* @REDIS_OK, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %101
  %106 = load i64, i64* @REDIS_ERR, align 8
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %2, align 4
  br label %119

108:                                              ; preds = %101
  %109 = call i64 (...) @cliSwitchProto()
  %110 = load i64, i64* @REDIS_OK, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load i64, i64* @REDIS_ERR, align 8
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %2, align 4
  br label %119

115:                                              ; preds = %108
  br label %116

116:                                              ; preds = %115, %7
  %117 = load i64, i64* @REDIS_OK, align 8
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %2, align 4
  br label %119

119:                                              ; preds = %116, %112, %105, %98, %84, %44
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @redisFree(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_7__* @redisConnect(i8*, i32) #1

declare dso_local %struct.TYPE_7__* @redisConnectUnix(i8*) #1

declare dso_local i64 @cliSecureConnection(%struct.TYPE_7__*, i8**) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @anetKeepAlive(i32*, i32, i32) #1

declare dso_local i64 @cliAuth(...) #1

declare dso_local i64 @cliSelect(...) #1

declare dso_local i64 @cliSwitchProto(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
