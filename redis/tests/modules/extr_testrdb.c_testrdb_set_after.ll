; ModuleID = '/home/carl/AnghaBench/redis/tests/modules/extr_testrdb.c_testrdb_set_after.c'
source_filename = "/home/carl/AnghaBench/redis/tests/modules/extr_testrdb.c_testrdb_set_after.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REDISMODULE_OK = common dso_local global i32 0, align 4
@after_str = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @testrdb_set_after(i32* %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 2
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @RedisModule_WrongArity(i32* %11)
  %13 = load i32, i32* @REDISMODULE_OK, align 4
  store i32 %13, i32* %4, align 4
  br label %33

14:                                               ; preds = %3
  %15 = load i32*, i32** @after_str, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i32*, i32** %5, align 8
  %19 = load i32*, i32** @after_str, align 8
  %20 = call i32 @RedisModule_FreeString(i32* %18, i32* %19)
  br label %21

21:                                               ; preds = %17, %14
  %22 = load i32**, i32*** %6, align 8
  %23 = getelementptr inbounds i32*, i32** %22, i64 1
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** @after_str, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = load i32**, i32*** %6, align 8
  %27 = getelementptr inbounds i32*, i32** %26, i64 1
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @RedisModule_RetainString(i32* %25, i32* %28)
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @RedisModule_ReplyWithLongLong(i32* %30, i32 1)
  %32 = load i32, i32* @REDISMODULE_OK, align 4
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %21, %10
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @RedisModule_WrongArity(i32*) #1

declare dso_local i32 @RedisModule_FreeString(i32*, i32*) #1

declare dso_local i32 @RedisModule_RetainString(i32*, i32*) #1

declare dso_local i32 @RedisModule_ReplyWithLongLong(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
