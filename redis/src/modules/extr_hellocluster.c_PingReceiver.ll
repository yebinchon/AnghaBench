; ModuleID = '/home/carl/AnghaBench/redis/src/modules/extr_hellocluster.c_PingReceiver.c'
source_filename = "/home/carl/AnghaBench/redis/src/modules/extr_hellocluster.c_PingReceiver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"notice\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"PING (type %d) RECEIVED from %.*s: '%.*s'\00", align 1
@REDISMODULE_NODE_ID_LEN = common dso_local global i32 0, align 4
@MSGTYPE_PONG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"Ohi!\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"INCR\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"pings_received\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PingReceiver(i32* %0, i8* %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @REDISMODULE_NODE_ID_LEN, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = load i64, i64* %10, align 8
  %16 = trunc i64 %15 to i32
  %17 = load i8*, i8** %9, align 8
  %18 = call i32 @RedisModule_Log(i32* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %12, i32 %13, i8* %14, i32 %16, i8* %17)
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* @MSGTYPE_PONG, align 4
  %21 = call i32 @RedisModule_SendClusterMessage(i32* %19, i32* null, i32 %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @RedisModule_Call(i32* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local i32 @RedisModule_Log(i32*, i8*, i8*, i32, i32, i8*, i32, i8*) #1

declare dso_local i32 @RedisModule_SendClusterMessage(i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @RedisModule_Call(i32*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
