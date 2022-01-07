; ModuleID = '/home/carl/AnghaBench/redis/tests/modules/extr_testrdb.c_testrdb_aux_save.c'
source_filename = "/home/carl/AnghaBench/redis/tests/modules/extr_testrdb.c_testrdb_aux_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@conf_aux_count = common dso_local global i32 0, align 4
@REDISMODULE_AUX_AFTER_RDB = common dso_local global i32 0, align 4
@REDISMODULE_AUX_BEFORE_RDB = common dso_local global i32 0, align 4
@before_str = common dso_local global i64 0, align 8
@after_str = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @testrdb_aux_save(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @conf_aux_count, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @REDISMODULE_AUX_AFTER_RDB, align 4
  %10 = icmp eq i32 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  br label %13

13:                                               ; preds = %7, %2
  %14 = load i32, i32* @conf_aux_count, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = call i32 @assert(i32 0)
  br label %18

18:                                               ; preds = %16, %13
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @REDISMODULE_AUX_BEFORE_RDB, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %18
  %23 = load i64, i64* @before_str, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @RedisModule_SaveSigned(i32* %26, i32 1)
  %28 = load i32*, i32** %3, align 8
  %29 = load i64, i64* @before_str, align 8
  %30 = call i32 @RedisModule_SaveString(i32* %28, i64 %29)
  br label %34

31:                                               ; preds = %22
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @RedisModule_SaveSigned(i32* %32, i32 0)
  br label %34

34:                                               ; preds = %31, %25
  br label %48

35:                                               ; preds = %18
  %36 = load i64, i64* @after_str, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @RedisModule_SaveSigned(i32* %39, i32 1)
  %41 = load i32*, i32** %3, align 8
  %42 = load i64, i64* @after_str, align 8
  %43 = call i32 @RedisModule_SaveString(i32* %41, i64 %42)
  br label %47

44:                                               ; preds = %35
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @RedisModule_SaveSigned(i32* %45, i32 0)
  br label %47

47:                                               ; preds = %44, %38
  br label %48

48:                                               ; preds = %47, %34
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @RedisModule_SaveSigned(i32*, i32) #1

declare dso_local i32 @RedisModule_SaveString(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
