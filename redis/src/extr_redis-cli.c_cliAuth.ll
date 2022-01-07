; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_cliAuth.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_cliAuth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32* }
%struct.TYPE_5__ = type { i64 }

@config = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@REDIS_OK = common dso_local global i32 0, align 4
@context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"AUTH %s\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"AUTH %s %s\00", align 1
@REDIS_REPLY_ERROR = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Warning: AUTH failed\0A\00", align 1
@REDIS_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @cliAuth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cliAuth() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 0), align 8
  %4 = icmp eq i32* %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = load i32, i32* @REDIS_OK, align 4
  store i32 %6, i32* %1, align 4
  br label %37

7:                                                ; preds = %0
  %8 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 1), align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = load i32, i32* @context, align 4
  %12 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 0), align 8
  %13 = call %struct.TYPE_5__* (i32, i8*, i32*, ...) @redisCommand(i32 %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %12)
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %2, align 8
  br label %19

14:                                               ; preds = %7
  %15 = load i32, i32* @context, align 4
  %16 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 1), align 8
  %17 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 0), align 8
  %18 = call %struct.TYPE_5__* (i32, i8*, i32*, ...) @redisCommand(i32 %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %16, i32* %17)
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %2, align 8
  br label %19

19:                                               ; preds = %14, %10
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %21 = icmp ne %struct.TYPE_5__* %20, null
  br i1 %21, label %22, label %35

22:                                               ; preds = %19
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @REDIS_REPLY_ERROR, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* @stderr, align 4
  %30 = call i32 @fprintf(i32 %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %22
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %33 = call i32 @freeReplyObject(%struct.TYPE_5__* %32)
  %34 = load i32, i32* @REDIS_OK, align 4
  store i32 %34, i32* %1, align 4
  br label %37

35:                                               ; preds = %19
  %36 = load i32, i32* @REDIS_ERR, align 4
  store i32 %36, i32* %1, align 4
  br label %37

37:                                               ; preds = %35, %31, %5
  %38 = load i32, i32* %1, align 4
  ret i32 %38
}

declare dso_local %struct.TYPE_5__* @redisCommand(i32, i8*, i32*, ...) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @freeReplyObject(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
