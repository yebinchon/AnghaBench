; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_es_out.c_LanguageSplit.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_es_out.c_LanguageSplit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"any\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (i8*)* @LanguageSplit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @LanguageSplit(i8* %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8** null, i8*** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i8** null, i8*** %2, align 8
  br label %81

13:                                               ; preds = %1
  %14 = load i8*, i8** %3, align 8
  %15 = call i8* @strdup(i8* %14)
  store i8* %15, i8** %4, align 8
  store i8* %15, i8** %5, align 8
  br label %16

16:                                               ; preds = %68, %13
  %17 = load i8*, i8** %5, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load i8*, i8** %5, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br label %24

24:                                               ; preds = %19, %16
  %25 = phi i1 [ false, %16 ], [ %23, %19 ]
  br i1 %25, label %26, label %70

26:                                               ; preds = %24
  %27 = load i8*, i8** %5, align 8
  %28 = call i8* @strchr(i8* %27, i8 signext 44)
  store i8* %28, i8** %8, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i8*, i8** %8, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %8, align 8
  store i8 0, i8* %32, align 1
  br label %34

34:                                               ; preds = %31, %26
  %35 = load i8*, i8** %5, align 8
  %36 = call i64 @strcmp(i8* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %7, align 4
  %40 = load i8**, i8*** %6, align 8
  %41 = call i8* @strdup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %42 = call i32 @TAB_APPEND(i32 %39, i8** %40, i8* %41)
  br label %68

43:                                               ; preds = %34
  %44 = load i8*, i8** %5, align 8
  %45 = call i64 @strcmp(i8* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %7, align 4
  %49 = load i8**, i8*** %6, align 8
  %50 = call i8* @strdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %51 = call i32 @TAB_APPEND(i32 %48, i8** %49, i8* %50)
  br label %67

52:                                               ; preds = %43
  %53 = load i8*, i8** %5, align 8
  %54 = call i8* @LanguageGetCode(i8* %53)
  store i8* %54, i8** %9, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = call i64 @strcmp(i8* %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load i32, i32* %7, align 4
  %60 = load i8**, i8*** %6, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = call i32 @TAB_APPEND(i32 %59, i8** %60, i8* %61)
  br label %66

63:                                               ; preds = %52
  %64 = load i8*, i8** %9, align 8
  %65 = call i32 @free(i8* %64)
  br label %66

66:                                               ; preds = %63, %58
  br label %67

67:                                               ; preds = %66, %47
  br label %68

68:                                               ; preds = %67, %38
  %69 = load i8*, i8** %8, align 8
  store i8* %69, i8** %5, align 8
  br label %16

70:                                               ; preds = %24
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i32, i32* %7, align 4
  %75 = load i8**, i8*** %6, align 8
  %76 = call i32 @TAB_APPEND(i32 %74, i8** %75, i8* null)
  br label %77

77:                                               ; preds = %73, %70
  %78 = load i8*, i8** %4, align 8
  %79 = call i32 @free(i8* %78)
  %80 = load i8**, i8*** %6, align 8
  store i8** %80, i8*** %2, align 8
  br label %81

81:                                               ; preds = %77, %12
  %82 = load i8**, i8*** %2, align 8
  ret i8** %82
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @TAB_APPEND(i32, i8**, i8*) #1

declare dso_local i8* @LanguageGetCode(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
