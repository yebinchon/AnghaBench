; ModuleID = '/home/carl/AnghaBench/redis/tests/modules/extr_testrdb.c_testrdb_get_after.c'
source_filename = "/home/carl/AnghaBench/redis/tests/modules/extr_testrdb.c_testrdb_get_after.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REDISMODULE_OK = common dso_local global i32 0, align 4
@after_str = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @testrdb_get_after(i32* %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32**, i32*** %6, align 8
  %9 = call i32 @REDISMODULE_NOT_USED(i32** %8)
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 1
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @RedisModule_WrongArity(i32* %13)
  %15 = load i32, i32* @REDISMODULE_OK, align 4
  store i32 %15, i32* %4, align 4
  br label %28

16:                                               ; preds = %3
  %17 = load i64, i64* @after_str, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i32*, i32** %5, align 8
  %21 = load i64, i64* @after_str, align 8
  %22 = call i32 @RedisModule_ReplyWithString(i32* %20, i64 %21)
  br label %26

23:                                               ; preds = %16
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @RedisModule_ReplyWithStringBuffer(i32* %24, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %26

26:                                               ; preds = %23, %19
  %27 = load i32, i32* @REDISMODULE_OK, align 4
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %26, %12
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @REDISMODULE_NOT_USED(i32**) #1

declare dso_local i32 @RedisModule_WrongArity(i32*) #1

declare dso_local i32 @RedisModule_ReplyWithString(i32*, i64) #1

declare dso_local i32 @RedisModule_ReplyWithStringBuffer(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
