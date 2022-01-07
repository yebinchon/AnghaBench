; ModuleID = '/home/carl/AnghaBench/redis/src/extr_scripting.c_ldbRedisProtocolToHuman_MultiBulk.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_scripting.c_ldbRedisProtocolToHuman_MultiBulk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ldbRedisProtocolToHuman_MultiBulk(i32* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 1
  %11 = call i8* @strchr(i8* %10, i8 signext 13)
  store i8* %11, i8** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  %14 = load i8*, i8** %6, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = ptrtoint i8* %14 to i64
  %17 = ptrtoint i8* %15 to i64
  %18 = sub i64 %16, %17
  %19 = sub nsw i64 %18, 1
  %20 = trunc i64 %19 to i32
  %21 = call i32 @string2ll(i8* %13, i32 %20, i64* %7)
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 2
  store i8* %23, i8** %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = icmp eq i64 %24, -1
  br i1 %25, label %26, label %32

26:                                               ; preds = %2
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @sdscatlen(i32 %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %30 = load i32*, i32** %4, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i8*, i8** %6, align 8
  store i8* %31, i8** %3, align 8
  br label %66

32:                                               ; preds = %2
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @sdscatlen(i32 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %36 = load i32*, i32** %4, align 8
  store i32 %35, i32* %36, align 4
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %57, %32
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* %7, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %37
  %43 = load i32*, i32** %4, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = call i8* @ldbRedisProtocolToHuman(i32* %43, i8* %44)
  store i8* %45, i8** %6, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* %7, align 8
  %49 = sub nsw i64 %48, 1
  %50 = icmp ne i64 %47, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %42
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @sdscatlen(i32 %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %55 = load i32*, i32** %4, align 8
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %51, %42
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %37

60:                                               ; preds = %37
  %61 = load i32*, i32** %4, align 8
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @sdscatlen(i32 %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 1)
  %64 = load i32*, i32** %4, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i8*, i8** %6, align 8
  store i8* %65, i8** %3, align 8
  br label %66

66:                                               ; preds = %60, %26
  %67 = load i8*, i8** %3, align 8
  ret i8* %67
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
