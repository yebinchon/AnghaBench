; ModuleID = '/home/carl/AnghaBench/vlc/src/text/extr_strings.c_filename_sanitize.c'
source_filename = "/home/carl/AnghaBench/vlc/src/text/extr_strings.c_filename_sanitize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"/:\\*\22?|<>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @filename_sanitize(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %8, %1
  br label %13

13:                                               ; preds = %17, %12
  %14 = load i8*, i8** %2, align 8
  %15 = load i8, i8* %14, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i8*, i8** %2, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %2, align 8
  store i8 95, i8* %18, align 1
  br label %13

20:                                               ; preds = %13
  br label %74

21:                                               ; preds = %8
  %22 = load i8*, i8** %2, align 8
  %23 = call i32 @EnsureUTF8(i8* %22)
  br label %24

24:                                               ; preds = %34, %21
  %25 = load i8*, i8** %2, align 8
  %26 = load i8, i8* %25, align 1
  store i8 %26, i8* %3, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load i8, i8* %3, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp ne i32 %31, 32
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %37

34:                                               ; preds = %29
  %35 = load i8*, i8** %2, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %2, align 8
  store i8 95, i8* %35, align 1
  br label %24

37:                                               ; preds = %33, %24
  %38 = load i8*, i8** %2, align 8
  store i8* %38, i8** %4, align 8
  br label %39

39:                                               ; preds = %57, %37
  %40 = load i8*, i8** %2, align 8
  %41 = load i8, i8* %40, align 1
  store i8 %41, i8* %3, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %39
  %45 = load i8, i8* %3, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp slt i32 %46, 32
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i8*, i8** %2, align 8
  store i8 95, i8* %49, align 1
  br label %57

50:                                               ; preds = %44
  %51 = load i8, i8* %3, align 1
  %52 = call i32* @strchr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8 zeroext %51)
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i8*, i8** %2, align 8
  store i8 95, i8* %55, align 1
  br label %56

56:                                               ; preds = %54, %50
  br label %57

57:                                               ; preds = %56, %48
  %58 = load i8*, i8** %2, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %2, align 8
  br label %39

60:                                               ; preds = %39
  br label %61

61:                                               ; preds = %72, %60
  %62 = load i8*, i8** %2, align 8
  %63 = load i8*, i8** %4, align 8
  %64 = icmp ugt i8* %62, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %61
  %66 = load i8*, i8** %2, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 -1
  store i8* %67, i8** %2, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 32
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %74

72:                                               ; preds = %65
  %73 = load i8*, i8** %2, align 8
  store i8 95, i8* %73, align 1
  br label %61

74:                                               ; preds = %20, %71, %61
  ret void
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @EnsureUTF8(i8*) #1

declare dso_local i32* @strchr(i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
