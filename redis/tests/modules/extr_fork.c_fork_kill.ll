; ModuleID = '/home/carl/AnghaBench/redis/tests/modules/extr_fork.c_fork_kill.c'
source_filename = "/home/carl/AnghaBench/redis/tests/modules/extr_fork.c_fork_kill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@child_pid = common dso_local global i32 0, align 4
@REDISMODULE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"KillForkChild failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fork_kill(i32* %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32**, i32*** %5, align 8
  %8 = ptrtoint i32** %7 to i32
  %9 = call i32 @UNUSED(i32 %8)
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @UNUSED(i32 %10)
  %12 = load i32, i32* @child_pid, align 4
  %13 = call i64 @RedisModule_KillForkChild(i32 %12)
  %14 = load i64, i64* @REDISMODULE_OK, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @RedisModule_ReplyWithError(i32* %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %22

19:                                               ; preds = %3
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @RedisModule_ReplyWithLongLong(i32* %20, i32 1)
  br label %22

22:                                               ; preds = %19, %16
  store i32 -1, i32* @child_pid, align 4
  %23 = load i64, i64* @REDISMODULE_OK, align 8
  %24 = trunc i64 %23 to i32
  ret i32 %24
}

declare dso_local i32 @UNUSED(i32) #1

declare dso_local i64 @RedisModule_KillForkChild(i32) #1

declare dso_local i32 @RedisModule_ReplyWithError(i32*, i8*) #1

declare dso_local i32 @RedisModule_ReplyWithLongLong(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
