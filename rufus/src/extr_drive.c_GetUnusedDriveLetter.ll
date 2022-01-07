; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_drive.c_GetUnusedDriveLetter.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_drive.c_GetUnusedDriveLetter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"GetLogicalDriveStrings failed: %s\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"GetLogicalDriveStrings: Buffer too small (required %d vs. %d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @GetUnusedDriveLetter() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca i8*, align 8
  %4 = alloca [105 x i8], align 16
  store i8 91, i8* %2, align 1
  %5 = getelementptr inbounds [105 x i8], [105 x i8]* %4, i64 0, i64 0
  %6 = call i32 @GetLogicalDriveStringsA(i32 105, i8* %5)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = call i32 (...) @WindowsErrorString()
  %11 = call i32 (i8*, i32, ...) @uprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %10)
  br label %64

12:                                               ; preds = %0
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp ugt i64 %14, 105
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* %1, align 4
  %18 = call i32 (i8*, i32, ...) @uprintf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %17, i64 105)
  br label %64

19:                                               ; preds = %12
  store i8 67, i8* %2, align 1
  br label %20

20:                                               ; preds = %60, %19
  %21 = load i8, i8* %2, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp sle i32 %22, 90
  br i1 %23, label %24, label %63

24:                                               ; preds = %20
  %25 = getelementptr inbounds [105 x i8], [105 x i8]* %4, i64 0, i64 0
  store i8* %25, i8** %3, align 8
  br label %26

26:                                               ; preds = %48, %24
  %27 = load i8*, i8** %3, align 8
  %28 = load i8, i8* %27, align 1
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %30, label %54

30:                                               ; preds = %26
  %31 = load i8*, i8** %3, align 8
  %32 = load i8, i8* %31, align 1
  %33 = call i32 @isalpha(i8 signext %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  br label %48

36:                                               ; preds = %30
  %37 = load i8, i8* %2, align 1
  %38 = sext i8 %37 to i32
  %39 = load i8*, i8** %3, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = call i64 @toupper(i32 %41)
  %43 = trunc i64 %42 to i8
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %38, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %54

47:                                               ; preds = %36
  br label %48

48:                                               ; preds = %47, %35
  %49 = load i8*, i8** %3, align 8
  %50 = call i64 @safe_strlen(i8* %49)
  %51 = add nsw i64 %50, 1
  %52 = load i8*, i8** %3, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 %51
  store i8* %53, i8** %3, align 8
  br label %26

54:                                               ; preds = %46, %26
  %55 = load i8*, i8** %3, align 8
  %56 = load i8, i8* %55, align 1
  %57 = icmp ne i8 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  br label %63

59:                                               ; preds = %54
  br label %60

60:                                               ; preds = %59
  %61 = load i8, i8* %2, align 1
  %62 = add i8 %61, 1
  store i8 %62, i8* %2, align 1
  br label %20

63:                                               ; preds = %58, %20
  br label %64

64:                                               ; preds = %63, %16, %9
  %65 = load i8, i8* %2, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp sgt i32 %66, 90
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %72

69:                                               ; preds = %64
  %70 = load i8, i8* %2, align 1
  %71 = sext i8 %70 to i32
  br label %72

72:                                               ; preds = %69, %68
  %73 = phi i32 [ 0, %68 ], [ %71, %69 ]
  %74 = trunc i32 %73 to i8
  ret i8 %74
}

declare dso_local i32 @GetLogicalDriveStringsA(i32, i8*) #1

declare dso_local i32 @uprintf(i8*, i32, ...) #1

declare dso_local i32 @WindowsErrorString(...) #1

declare dso_local i32 @isalpha(i8 signext) #1

declare dso_local i64 @toupper(i32) #1

declare dso_local i64 @safe_strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
