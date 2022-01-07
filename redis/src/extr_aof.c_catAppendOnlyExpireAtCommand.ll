; ModuleID = '/home/carl/AnghaBench/redis/src/extr_aof.c_catAppendOnlyExpireAtCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_aof.c_catAppendOnlyExpireAtCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.redisCommand = type { i64 }
%struct.TYPE_10__ = type { i32 }

@expireCommand = common dso_local global i64 0, align 8
@setexCommand = common dso_local global i64 0, align 8
@expireatCommand = common dso_local global i64 0, align 8
@pexpireCommand = common dso_local global i64 0, align 8
@psetexCommand = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"PEXPIREAT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @catAppendOnlyExpireAtCommand(i32 %0, %struct.redisCommand* %1, %struct.TYPE_10__* %2, %struct.TYPE_10__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.redisCommand*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [3 x %struct.TYPE_10__*], align 16
  store i32 %0, i32* %5, align 4
  store %struct.redisCommand* %1, %struct.redisCommand** %6, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %8, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %12 = call %struct.TYPE_10__* @getDecodedObject(%struct.TYPE_10__* %11)
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** %8, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @strtoll(i32 %15, i32* null, i32 10)
  store i64 %16, i64* %9, align 8
  %17 = load %struct.redisCommand*, %struct.redisCommand** %6, align 8
  %18 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @expireCommand, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %34, label %22

22:                                               ; preds = %4
  %23 = load %struct.redisCommand*, %struct.redisCommand** %6, align 8
  %24 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @setexCommand, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load %struct.redisCommand*, %struct.redisCommand** %6, align 8
  %30 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @expireatCommand, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28, %22, %4
  %35 = load i64, i64* %9, align 8
  %36 = mul nsw i64 %35, 1000
  store i64 %36, i64* %9, align 8
  br label %37

37:                                               ; preds = %34, %28
  %38 = load %struct.redisCommand*, %struct.redisCommand** %6, align 8
  %39 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @expireCommand, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %61, label %43

43:                                               ; preds = %37
  %44 = load %struct.redisCommand*, %struct.redisCommand** %6, align 8
  %45 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @pexpireCommand, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %61, label %49

49:                                               ; preds = %43
  %50 = load %struct.redisCommand*, %struct.redisCommand** %6, align 8
  %51 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @setexCommand, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %61, label %55

55:                                               ; preds = %49
  %56 = load %struct.redisCommand*, %struct.redisCommand** %6, align 8
  %57 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @psetexCommand, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %55, %49, %43, %37
  %62 = call i64 (...) @mstime()
  %63 = load i64, i64* %9, align 8
  %64 = add nsw i64 %63, %62
  store i64 %64, i64* %9, align 8
  br label %65

65:                                               ; preds = %61, %55
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %67 = call i32 @decrRefCount(%struct.TYPE_10__* %66)
  %68 = call %struct.TYPE_10__* @createStringObject(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 9)
  %69 = getelementptr inbounds [3 x %struct.TYPE_10__*], [3 x %struct.TYPE_10__*]* %10, i64 0, i64 0
  store %struct.TYPE_10__* %68, %struct.TYPE_10__** %69, align 16
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %71 = getelementptr inbounds [3 x %struct.TYPE_10__*], [3 x %struct.TYPE_10__*]* %10, i64 0, i64 1
  store %struct.TYPE_10__* %70, %struct.TYPE_10__** %71, align 8
  %72 = load i64, i64* %9, align 8
  %73 = call %struct.TYPE_10__* @createStringObjectFromLongLong(i64 %72)
  %74 = getelementptr inbounds [3 x %struct.TYPE_10__*], [3 x %struct.TYPE_10__*]* %10, i64 0, i64 2
  store %struct.TYPE_10__* %73, %struct.TYPE_10__** %74, align 16
  %75 = load i32, i32* %5, align 4
  %76 = getelementptr inbounds [3 x %struct.TYPE_10__*], [3 x %struct.TYPE_10__*]* %10, i64 0, i64 0
  %77 = call i32 @catAppendOnlyGenericCommand(i32 %75, i32 3, %struct.TYPE_10__** %76)
  store i32 %77, i32* %5, align 4
  %78 = getelementptr inbounds [3 x %struct.TYPE_10__*], [3 x %struct.TYPE_10__*]* %10, i64 0, i64 0
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 16
  %80 = call i32 @decrRefCount(%struct.TYPE_10__* %79)
  %81 = getelementptr inbounds [3 x %struct.TYPE_10__*], [3 x %struct.TYPE_10__*]* %10, i64 0, i64 2
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 16
  %83 = call i32 @decrRefCount(%struct.TYPE_10__* %82)
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local %struct.TYPE_10__* @getDecodedObject(%struct.TYPE_10__*) #1

declare dso_local i64 @strtoll(i32, i32*, i32) #1

declare dso_local i64 @mstime(...) #1

declare dso_local i32 @decrRefCount(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @createStringObject(i8*, i32) #1

declare dso_local %struct.TYPE_10__* @createStringObjectFromLongLong(i64) #1

declare dso_local i32 @catAppendOnlyGenericCommand(i32, i32, %struct.TYPE_10__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
