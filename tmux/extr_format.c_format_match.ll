; ModuleID = '/home/carl/AnghaBench/tmux/extr_format.c_format_match.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_format.c_format_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.format_modifier = type { i32, i8** }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@FNM_CASEFOLD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@REG_EXTENDED = common dso_local global i32 0, align 4
@REG_NOSUB = common dso_local global i32 0, align 4
@REG_ICASE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.format_modifier*, i8*, i8*)* @format_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @format_match(%struct.format_modifier* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.format_modifier*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.format_modifier* %0, %struct.format_modifier** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.format_modifier*, %struct.format_modifier** %5, align 8
  %12 = getelementptr inbounds %struct.format_modifier, %struct.format_modifier* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sge i32 %13, 1
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load %struct.format_modifier*, %struct.format_modifier** %5, align 8
  %17 = getelementptr inbounds %struct.format_modifier, %struct.format_modifier* %16, i32 0, i32 1
  %18 = load i8**, i8*** %17, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %8, align 8
  br label %21

21:                                               ; preds = %15, %3
  %22 = load i8*, i8** %8, align 8
  %23 = call i32* @strchr(i8* %22, i8 signext 114)
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %42

25:                                               ; preds = %21
  %26 = load i8*, i8** %8, align 8
  %27 = call i32* @strchr(i8* %26, i8 signext 105)
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32, i32* @FNM_CASEFOLD, align 4
  %31 = load i32, i32* %10, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %10, align 4
  br label %33

33:                                               ; preds = %29, %25
  %34 = load i8*, i8** %6, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i64 @fnmatch(i8* %34, i8* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = call i8* @xstrdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %40, i8** %4, align 8
  br label %71

41:                                               ; preds = %33
  br label %69

42:                                               ; preds = %21
  %43 = load i32, i32* @REG_EXTENDED, align 4
  %44 = load i32, i32* @REG_NOSUB, align 4
  %45 = or i32 %43, %44
  store i32 %45, i32* %10, align 4
  %46 = load i8*, i8** %8, align 8
  %47 = call i32* @strchr(i8* %46, i8 signext 105)
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load i32, i32* @REG_ICASE, align 4
  %51 = load i32, i32* %10, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %49, %42
  %54 = load i8*, i8** %6, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i64 @regcomp(i32* %9, i8* %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = call i8* @xstrdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %59, i8** %4, align 8
  br label %71

60:                                               ; preds = %53
  %61 = load i8*, i8** %7, align 8
  %62 = call i64 @regexec(i32* %9, i8* %61, i32 0, i32* null, i32 0)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = call i32 @regfree(i32* %9)
  %66 = call i8* @xstrdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %66, i8** %4, align 8
  br label %71

67:                                               ; preds = %60
  %68 = call i32 @regfree(i32* %9)
  br label %69

69:                                               ; preds = %67, %41
  %70 = call i8* @xstrdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %70, i8** %4, align 8
  br label %71

71:                                               ; preds = %69, %64, %58, %39
  %72 = load i8*, i8** %4, align 8
  ret i8* %72
}

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i64 @fnmatch(i8*, i8*, i32) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i64 @regcomp(i32*, i8*, i32) #1

declare dso_local i64 @regexec(i32*, i8*, i32, i32*, i32) #1

declare dso_local i32 @regfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
