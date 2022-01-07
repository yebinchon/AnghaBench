; ModuleID = '/home/carl/AnghaBench/redis/src/extr_scripting.c_ldbRedisProtocolToHuman_Map.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_scripting.c_ldbRedisProtocolToHuman_Map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" => \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"}\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ldbRedisProtocolToHuman_Map(i32* %0, i8* %1) #0 {
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
  %25 = call i32 @sdscatlen(i32 %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %26 = load i32*, i32** %3, align 8
  store i32 %25, i32* %26, align 4
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %54, %2
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* %6, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %57

32:                                               ; preds = %27
  %33 = load i32*, i32** %3, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = call i8* @ldbRedisProtocolToHuman(i32* %33, i8* %34)
  store i8* %35, i8** %5, align 8
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @sdscatlen(i32 %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %39 = load i32*, i32** %3, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32*, i32** %3, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = call i8* @ldbRedisProtocolToHuman(i32* %40, i8* %41)
  store i8* %42, i8** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* %6, align 8
  %46 = sub nsw i64 %45, 1
  %47 = icmp ne i64 %44, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %32
  %49 = load i32*, i32** %3, align 8
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @sdscatlen(i32 %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %52 = load i32*, i32** %3, align 8
  store i32 %51, i32* %52, align 4
  br label %53

53:                                               ; preds = %48, %32
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %27

57:                                               ; preds = %27
  %58 = load i32*, i32** %3, align 8
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @sdscatlen(i32 %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 1)
  %61 = load i32*, i32** %3, align 8
  store i32 %60, i32* %61, align 4
  %62 = load i8*, i8** %5, align 8
  ret i8* %62
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
