; ModuleID = '/home/carl/AnghaBench/redis/src/extr_scripting.c_ldbRedisProtocolToHuman.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_scripting.c_ldbRedisProtocolToHuman.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ldbRedisProtocolToHuman(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  store i8* %6, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  switch i32 %9, label %50 [
    i32 58, label %10
    i32 36, label %14
    i32 43, label %18
    i32 45, label %22
    i32 42, label %26
    i32 126, label %30
    i32 37, label %34
    i32 95, label %38
    i32 35, label %42
    i32 44, label %46
  ]

10:                                               ; preds = %2
  %11 = load i32*, i32** %3, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i8* @ldbRedisProtocolToHuman_Int(i32* %11, i8* %12)
  store i8* %13, i8** %5, align 8
  br label %50

14:                                               ; preds = %2
  %15 = load i32*, i32** %3, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i8* @ldbRedisProtocolToHuman_Bulk(i32* %15, i8* %16)
  store i8* %17, i8** %5, align 8
  br label %50

18:                                               ; preds = %2
  %19 = load i32*, i32** %3, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = call i8* @ldbRedisProtocolToHuman_Status(i32* %19, i8* %20)
  store i8* %21, i8** %5, align 8
  br label %50

22:                                               ; preds = %2
  %23 = load i32*, i32** %3, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = call i8* @ldbRedisProtocolToHuman_Status(i32* %23, i8* %24)
  store i8* %25, i8** %5, align 8
  br label %50

26:                                               ; preds = %2
  %27 = load i32*, i32** %3, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = call i8* @ldbRedisProtocolToHuman_MultiBulk(i32* %27, i8* %28)
  store i8* %29, i8** %5, align 8
  br label %50

30:                                               ; preds = %2
  %31 = load i32*, i32** %3, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = call i8* @ldbRedisProtocolToHuman_Set(i32* %31, i8* %32)
  store i8* %33, i8** %5, align 8
  br label %50

34:                                               ; preds = %2
  %35 = load i32*, i32** %3, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = call i8* @ldbRedisProtocolToHuman_Map(i32* %35, i8* %36)
  store i8* %37, i8** %5, align 8
  br label %50

38:                                               ; preds = %2
  %39 = load i32*, i32** %3, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = call i8* @ldbRedisProtocolToHuman_Null(i32* %39, i8* %40)
  store i8* %41, i8** %5, align 8
  br label %50

42:                                               ; preds = %2
  %43 = load i32*, i32** %3, align 8
  %44 = load i8*, i8** %4, align 8
  %45 = call i8* @ldbRedisProtocolToHuman_Bool(i32* %43, i8* %44)
  store i8* %45, i8** %5, align 8
  br label %50

46:                                               ; preds = %2
  %47 = load i32*, i32** %3, align 8
  %48 = load i8*, i8** %4, align 8
  %49 = call i8* @ldbRedisProtocolToHuman_Double(i32* %47, i8* %48)
  store i8* %49, i8** %5, align 8
  br label %50

50:                                               ; preds = %2, %46, %42, %38, %34, %30, %26, %22, %18, %14, %10
  %51 = load i8*, i8** %5, align 8
  ret i8* %51
}

declare dso_local i8* @ldbRedisProtocolToHuman_Int(i32*, i8*) #1

declare dso_local i8* @ldbRedisProtocolToHuman_Bulk(i32*, i8*) #1

declare dso_local i8* @ldbRedisProtocolToHuman_Status(i32*, i8*) #1

declare dso_local i8* @ldbRedisProtocolToHuman_MultiBulk(i32*, i8*) #1

declare dso_local i8* @ldbRedisProtocolToHuman_Set(i32*, i8*) #1

declare dso_local i8* @ldbRedisProtocolToHuman_Map(i32*, i8*) #1

declare dso_local i8* @ldbRedisProtocolToHuman_Null(i32*, i8*) #1

declare dso_local i8* @ldbRedisProtocolToHuman_Bool(i32*, i8*) #1

declare dso_local i8* @ldbRedisProtocolToHuman_Double(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
