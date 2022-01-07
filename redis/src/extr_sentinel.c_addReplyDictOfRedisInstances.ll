; ModuleID = '/home/carl/AnghaBench/redis/src/extr_sentinel.c_addReplyDictOfRedisInstances.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_sentinel.c_addReplyDictOfRedisInstances.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @addReplyDictOfRedisInstances(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32* @dictGetIterator(i32* %8)
  store i32* %9, i32** %5, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @dictSize(i32* %11)
  %13 = call i32 @addReplyArrayLen(i32* %10, i32 %12)
  br label %14

14:                                               ; preds = %18, %2
  %15 = load i32*, i32** %5, align 8
  %16 = call i32* @dictNext(i32* %15)
  store i32* %16, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = load i32*, i32** %6, align 8
  %20 = call i32* @dictGetVal(i32* %19)
  store i32* %20, i32** %7, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @addReplySentinelRedisInstance(i32* %21, i32* %22)
  br label %14

24:                                               ; preds = %14
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @dictReleaseIterator(i32* %25)
  ret void
}

declare dso_local i32* @dictGetIterator(i32*) #1

declare dso_local i32 @addReplyArrayLen(i32*, i32) #1

declare dso_local i32 @dictSize(i32*) #1

declare dso_local i32* @dictNext(i32*) #1

declare dso_local i32* @dictGetVal(i32*) #1

declare dso_local i32 @addReplySentinelRedisInstance(i32*, i32*) #1

declare dso_local i32 @dictReleaseIterator(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
