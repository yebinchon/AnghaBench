; ModuleID = '/home/carl/AnghaBench/redis/src/extr_scripting.c_ldbRedisProtocolToHuman_Set.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_scripting.c_ldbRedisProtocolToHuman_Set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"~(\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c")\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ldbRedisProtocolToHuman_Set(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 1
  %10 = call i8* @strchr(i8* %9, i8 signext 13)
  store i8* %10, i8** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 1
  %13 = load i8*, i8** %5, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = ptrtoint i8* %13 to i64
  %16 = ptrtoint i8* %14 to i64
  %17 = sub i64 %15, %16
  %18 = sub nsw i64 %17, 1
  %19 = trunc i64 %18 to i32
  %20 = call i32 @string2ll(i8* %12, i32 %19, i64* %6)
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 2
  store i8* %22, i8** %5, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @sdscatlen(i32 %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %26 = load i32*, i32** %3, align 8
  store i32 %25, i32* %26, align 4
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %47, %2
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* %6, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %50

32:                                               ; preds = %27
  %33 = load i32*, i32** %3, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = call i8* @ldbRedisProtocolToHuman(i32* %33, i8* %34)
  store i8* %35, i8** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* %6, align 8
  %39 = sub nsw i64 %38, 1
  %40 = icmp ne i64 %37, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %32
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @sdscatlen(i32 %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %45 = load i32*, i32** %3, align 8
  store i32 %44, i32* %45, align 4
  br label %46

46:                                               ; preds = %41, %32
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %27

50:                                               ; preds = %27
  %51 = load i32*, i32** %3, align 8
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @sdscatlen(i32 %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %54 = load i32*, i32** %3, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i8*, i8** %5, align 8
  ret i8* %55
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @string2ll(i8*, i32, i64*) #1

declare dso_local i32 @sdscatlen(i32, i8*, i32) #1

declare dso_local i8* @ldbRedisProtocolToHuman(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
