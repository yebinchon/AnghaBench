; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_sdsCatColorizedLdbReply.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_sdsCatColorizedLdbReply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"white\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"<debug>\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"bold\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"<redis>\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"green\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"<reply>\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"cyan\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"<error>\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"red\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"<hint>\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"<value>\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"<retval>\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"magenta\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"yellow\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdsCatColorizedLdbReply(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i64 @strstr(i8* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  br label %12

12:                                               ; preds = %11, %3
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @strstr(i8* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  br label %17

17:                                               ; preds = %16, %12
  %18 = load i8*, i8** %5, align 8
  %19 = call i64 @strstr(i8* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %7, align 8
  br label %22

22:                                               ; preds = %21, %17
  %23 = load i8*, i8** %5, align 8
  %24 = call i64 @strstr(i8* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8** %7, align 8
  br label %27

27:                                               ; preds = %26, %22
  %28 = load i8*, i8** %5, align 8
  %29 = call i64 @strstr(i8* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  br label %32

32:                                               ; preds = %31, %27
  %33 = load i8*, i8** %5, align 8
  %34 = call i64 @strstr(i8* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i8*, i8** %5, align 8
  %38 = call i64 @strstr(i8* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36, %32
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8** %7, align 8
  br label %41

41:                                               ; preds = %40, %36
  %42 = load i64, i64* %6, align 8
  %43 = icmp ugt i64 %42, 4
  br i1 %43, label %44, label %66

44:                                               ; preds = %41
  %45 = load i8*, i8** %5, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 3
  %47 = load i8, i8* %46, align 1
  %48 = call i64 @isdigit(i8 signext %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %66

50:                                               ; preds = %44
  %51 = load i8*, i8** %5, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 62
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8** %7, align 8
  br label %65

57:                                               ; preds = %50
  %58 = load i8*, i8** %5, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 2
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 35
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  br label %64

64:                                               ; preds = %63, %57
  br label %65

65:                                               ; preds = %64, %56
  br label %66

66:                                               ; preds = %65, %44, %41
  %67 = load i32, i32* %4, align 4
  %68 = load i8*, i8** %5, align 8
  %69 = load i64, i64* %6, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = call i32 @sdscatcolor(i32 %67, i8* %68, i64 %69, i8* %70)
  ret i32 %71
}

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @sdscatcolor(i32, i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
