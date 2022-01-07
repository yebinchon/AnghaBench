; ModuleID = '/home/carl/AnghaBench/redis/deps/hiredis/extr_hiredis.c_redisBufferRead.c'
source_filename = "/home/carl/AnghaBench/redis/deps/hiredis/extr_hiredis.c_redisBufferRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__*, %struct.TYPE_7__*, i64 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_8__*, i8*, i32)* }

@REDIS_ERR = common dso_local global i32 0, align 4
@REDIS_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @redisBufferRead(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca [16384 x i8], align 16
  %5 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @REDIS_ERR, align 4
  store i32 %11, i32* %2, align 4
  br label %57

12:                                               ; preds = %1
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32 (%struct.TYPE_8__*, i8*, i32)*, i32 (%struct.TYPE_8__*, i8*, i32)** %16, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = getelementptr inbounds [16384 x i8], [16384 x i8]* %4, i64 0, i64 0
  %20 = call i32 %17(%struct.TYPE_8__* %18, i8* %19, i32 16384)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %48

23:                                               ; preds = %12
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = getelementptr inbounds [16384 x i8], [16384 x i8]* %4, i64 0, i64 0
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @redisReaderFeed(%struct.TYPE_9__* %26, i8* %27, i32 %28)
  %30 = load i64, i64* @REDIS_OK, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %23
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @__redisSetError(%struct.TYPE_8__* %33, i32 %38, i32 %43)
  %45 = load i32, i32* @REDIS_ERR, align 4
  store i32 %45, i32* %2, align 4
  br label %57

46:                                               ; preds = %23
  br label %47

47:                                               ; preds = %46
  br label %54

48:                                               ; preds = %12
  %49 = load i32, i32* %5, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i32, i32* @REDIS_ERR, align 4
  store i32 %52, i32* %2, align 4
  br label %57

53:                                               ; preds = %48
  br label %54

54:                                               ; preds = %53, %47
  %55 = load i64, i64* @REDIS_OK, align 8
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %54, %51, %32, %10
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i64 @redisReaderFeed(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @__redisSetError(%struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
