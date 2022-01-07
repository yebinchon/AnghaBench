; ModuleID = '/home/carl/AnghaBench/toxcore/auto_tests/extr_..testingmisc_tools.c_cmdline_parsefor_ipv46.c'
source_filename = "/home/carl/AnghaBench/toxcore/auto_tests/extr_..testingmisc_tools.c_cmdline_parsefor_ipv46.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"--ipv\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Invalid argument: %s. Try --ipv4 or --ipv6!\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Argument must come first: %s.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmdline_parsefor_ipv46(i32 %0, i8** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %11

11:                                               ; preds = %93, %3
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %96

15:                                               ; preds = %11
  %16 = load i8**, i8*** %6, align 8
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8*, i8** %16, i64 %18
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @strncasecmp(i8* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %92, label %23

23:                                               ; preds = %15
  %24 = load i8**, i8*** %6, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 5
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %70

33:                                               ; preds = %23
  %34 = load i8**, i8*** %6, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 6
  %40 = load i8, i8* %39, align 1
  %41 = icmp ne i8 %40, 0
  br i1 %41, label %70, label %42

42:                                               ; preds = %33
  %43 = load i8**, i8*** %6, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 5
  %49 = load i8, i8* %48, align 1
  store i8 %49, i8* %10, align 1
  %50 = load i8, i8* %10, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 52
  br i1 %52, label %53, label %55

53:                                               ; preds = %42
  %54 = load i32*, i32** %7, align 8
  store i32 0, i32* %54, align 4
  br label %69

55:                                               ; preds = %42
  %56 = load i8, i8* %10, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 54
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32*, i32** %7, align 8
  store i32 1, i32* %60, align 4
  br label %68

61:                                               ; preds = %55
  %62 = load i8**, i8*** %6, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %66)
  store i32 -1, i32* %4, align 4
  br label %98

68:                                               ; preds = %59
  br label %69

69:                                               ; preds = %68, %53
  br label %77

70:                                               ; preds = %33, %23
  %71 = load i8**, i8*** %6, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %75)
  store i32 -1, i32* %4, align 4
  br label %98

77:                                               ; preds = %69
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %9, align 4
  %80 = sub nsw i32 %79, 1
  %81 = icmp ne i32 %78, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %77
  %83 = load i8**, i8*** %6, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %83, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %87)
  store i32 -1, i32* %4, align 4
  br label %98

89:                                               ; preds = %77
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  br label %92

92:                                               ; preds = %89, %15
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %9, align 4
  br label %11

96:                                               ; preds = %11
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %96, %82, %70, %61
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
