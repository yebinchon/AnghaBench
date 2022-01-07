; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_sdscatcolor.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_sdscatcolor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"bold\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"red\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"green\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"yellow\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"blue\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"magenta\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"cyan\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"white\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"\1B[%i;%i;49m\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdscatcolor(i32 %0, i8* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = call i32 (...) @isColorTerm()
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* %6, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = load i64, i64* %8, align 8
  %18 = call i32 @sdscatlen(i32 %15, i8* %16, i64 %17)
  store i32 %18, i32* %5, align 4
  br label %76

19:                                               ; preds = %4
  %20 = load i8*, i8** %9, align 8
  %21 = call i32* @strstr(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i32* %21, null
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %10, align 4
  store i32 37, i32* %11, align 4
  %24 = load i8*, i8** %9, align 8
  %25 = call i32* @strstr(i8* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32 31, i32* %11, align 4
  br label %64

28:                                               ; preds = %19
  %29 = load i8*, i8** %9, align 8
  %30 = call i32* @strstr(i8* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 32, i32* %11, align 4
  br label %63

33:                                               ; preds = %28
  %34 = load i8*, i8** %9, align 8
  %35 = call i32* @strstr(i8* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 33, i32* %11, align 4
  br label %62

38:                                               ; preds = %33
  %39 = load i8*, i8** %9, align 8
  %40 = call i32* @strstr(i8* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 34, i32* %11, align 4
  br label %61

43:                                               ; preds = %38
  %44 = load i8*, i8** %9, align 8
  %45 = call i32* @strstr(i8* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 35, i32* %11, align 4
  br label %60

48:                                               ; preds = %43
  %49 = load i8*, i8** %9, align 8
  %50 = call i32* @strstr(i8* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 36, i32* %11, align 4
  br label %59

53:                                               ; preds = %48
  %54 = load i8*, i8** %9, align 8
  %55 = call i32* @strstr(i8* %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 37, i32* %11, align 4
  br label %58

58:                                               ; preds = %57, %53
  br label %59

59:                                               ; preds = %58, %52
  br label %60

60:                                               ; preds = %59, %47
  br label %61

61:                                               ; preds = %60, %42
  br label %62

62:                                               ; preds = %61, %37
  br label %63

63:                                               ; preds = %62, %32
  br label %64

64:                                               ; preds = %63, %27
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @sdscatfmt(i32 %65, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %66, i32 %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load i8*, i8** %7, align 8
  %71 = load i64, i64* %8, align 8
  %72 = call i32 @sdscatlen(i32 %69, i8* %70, i64 %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @sdscat(i32 %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %64, %14
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @isColorTerm(...) #1

declare dso_local i32 @sdscatlen(i32, i8*, i64) #1

declare dso_local i32* @strstr(i8*, i8*) #1

declare dso_local i32 @sdscatfmt(i32, i8*, i32, i32) #1

declare dso_local i32 @sdscat(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
