; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_sqldiff.c_safeId.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_sqldiff.c_safeId.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"\22\22\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"\22%w\22\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @safeId to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @safeId(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %13, i8** %2, align 8
  br label %63

14:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %46, %14
  %16 = load i8*, i8** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = load i8, i8* %19, align 1
  store i8 %20, i8* %6, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %49

23:                                               ; preds = %15
  %24 = load i8, i8* %6, align 1
  %25 = call i32 @isalpha(i8 signext %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %45, label %27

27:                                               ; preds = %23
  %28 = load i8, i8* %6, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 95
  br i1 %30, label %31, label %45

31:                                               ; preds = %27
  %32 = load i32, i32* %4, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load i8, i8* %6, align 1
  %36 = call i64 @isdigit(i8 signext %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %44

41:                                               ; preds = %34, %31
  %42 = load i8*, i8** %3, align 8
  %43 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  store i8* %43, i8** %2, align 8
  br label %63

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44, %27, %23
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %15

49:                                               ; preds = %15
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %49
  %53 = load i8*, i8** %3, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @sqlite3_keyword_check(i8* %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %52, %49
  %58 = load i8*, i8** %3, align 8
  %59 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %58)
  store i8* %59, i8** %2, align 8
  br label %63

60:                                               ; preds = %52
  %61 = load i8*, i8** %3, align 8
  %62 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %61)
  store i8* %62, i8** %2, align 8
  br label %63

63:                                               ; preds = %60, %57, %41, %12
  %64 = load i8*, i8** %2, align 8
  ret i8* %64
}

declare dso_local i8* @sqlite3_mprintf(i8*, ...) #1

declare dso_local i32 @isalpha(i8 signext) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @sqlite3_keyword_check(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
