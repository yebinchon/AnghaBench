; ModuleID = '/home/carl/AnghaBench/redis/src/extr_sentinel.c_sentinelLeaderIncr.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_sentinel.c_sentinelLeaderIncr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sentinelLeaderIncr(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i32* @dictAddRaw(i32* %9, i8* %10, i32** %6)
  store i32* %11, i32** %7, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @dictGetUnsignedIntegerVal(i32* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %8, align 4
  %19 = add nsw i32 %18, 1
  %20 = call i32 @dictSetUnsignedIntegerVal(i32* %17, i32 %19)
  %21 = load i32, i32* %8, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %30

23:                                               ; preds = %2
  %24 = load i32*, i32** %7, align 8
  %25 = icmp ne i32* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @serverAssert(i32 %26)
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @dictSetUnsignedIntegerVal(i32* %28, i32 1)
  store i32 1, i32* %3, align 4
  br label %30

30:                                               ; preds = %23, %14
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32* @dictAddRaw(i32*, i8*, i32**) #1

declare dso_local i32 @dictGetUnsignedIntegerVal(i32*) #1

declare dso_local i32 @dictSetUnsignedIntegerVal(i32*, i32) #1

declare dso_local i32 @serverAssert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
