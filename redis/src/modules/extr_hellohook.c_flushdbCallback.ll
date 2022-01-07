; ModuleID = '/home/carl/AnghaBench/redis/src/modules/extr_hellohook.c_flushdbCallback.c'
source_filename = "/home/carl/AnghaBench/redis/src/modules/extr_hellohook.c_flushdbCallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@REDISMODULE_SUBEVENT_FLUSHDB_START = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"DBSIZE\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"FLUSHDB event of database %d started (%lld keys in DB)\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"FLUSHALL event started\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"FLUSHDB event of database %d ended\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"FLUSHALL event ended\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flushdbCallback(i32* %0, i32* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_2__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @REDISMODULE_NOT_USED(i32* %12)
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @REDISMODULE_NOT_USED(i32* %14)
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %17, %struct.TYPE_2__** %9, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @REDISMODULE_SUBEVENT_FLUSHDB_START, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %41

21:                                               ; preds = %4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %26, label %38

26:                                               ; preds = %21
  %27 = load i32*, i32** %5, align 8
  %28 = call i32* @RedisModule_Call(i32* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i32* %28, i32** %10, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = call i64 @RedisModule_CallReplyInteger(i32* %29)
  store i64 %30, i64* %11, align 8
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* %11, align 8
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %33, i64 %34)
  %36 = load i32*, i32** %10, align 8
  %37 = call i32 @RedisModule_FreeCallReply(i32* %36)
  br label %40

38:                                               ; preds = %21
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %26
  br label %54

41:                                               ; preds = %4
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, -1
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %49)
  br label %53

51:                                               ; preds = %41
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %46
  br label %54

54:                                               ; preds = %53, %40
  ret void
}

declare dso_local i32 @REDISMODULE_NOT_USED(i32*) #1

declare dso_local i32* @RedisModule_Call(i32*, i8*, i8*) #1

declare dso_local i64 @RedisModule_CallReplyInteger(i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @RedisModule_FreeCallReply(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
