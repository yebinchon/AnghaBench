; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_pathsearch.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_pathsearch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c".:/bin:/usr/bin\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pathsearch(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = call i8* @strrchr(i8* %13, i8 signext 47)
  store i8* %14, i8** %11, align 8
  %15 = load i8*, i8** %11, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %39

17:                                               ; preds = %3
  %18 = load i8*, i8** %11, align 8
  %19 = load i8, i8* %18, align 1
  store i8 %19, i8* %12, align 1
  %20 = load i8*, i8** %11, align 8
  store i8 0, i8* %20, align 1
  %21 = load i8*, i8** %4, align 8
  %22 = call i64 @lemonStrlen(i8* %21)
  %23 = load i8*, i8** %5, align 8
  %24 = call i64 @lemonStrlen(i8* %23)
  %25 = add i64 %22, %24
  %26 = add i64 %25, 2
  %27 = call i64 @malloc(i64 %26)
  %28 = inttoptr i64 %27 to i8*
  store i8* %28, i8** %10, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %17
  %32 = load i8*, i8** %10, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @lemon_sprintf(i8* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %33, i8* %34)
  br label %36

36:                                               ; preds = %31, %17
  %37 = load i8, i8* %12, align 1
  %38 = load i8*, i8** %11, align 8
  store i8 %37, i8* %38, align 1
  br label %112

39:                                               ; preds = %3
  %40 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %40, i8** %7, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  br label %44

44:                                               ; preds = %43, %39
  %45 = load i8*, i8** %7, align 8
  %46 = call i64 @lemonStrlen(i8* %45)
  %47 = add i64 %46, 1
  %48 = call i64 @malloc(i64 %47)
  %49 = inttoptr i64 %48 to i8*
  store i8* %49, i8** %9, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = call i64 @lemonStrlen(i8* %50)
  %52 = load i8*, i8** %5, align 8
  %53 = call i64 @lemonStrlen(i8* %52)
  %54 = add i64 %51, %53
  %55 = add i64 %54, 2
  %56 = call i64 @malloc(i64 %55)
  %57 = inttoptr i64 %56 to i8*
  store i8* %57, i8** %10, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %111

60:                                               ; preds = %44
  %61 = load i8*, i8** %10, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %111

63:                                               ; preds = %60
  %64 = load i8*, i8** %9, align 8
  store i8* %64, i8** %8, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 @lemon_strcpy(i8* %65, i8* %66)
  br label %68

68:                                               ; preds = %107, %63
  %69 = load i8*, i8** %9, align 8
  %70 = load i8, i8* %69, align 1
  %71 = icmp ne i8 %70, 0
  br i1 %71, label %72, label %108

72:                                               ; preds = %68
  %73 = load i8*, i8** %9, align 8
  %74 = call i8* @strchr(i8* %73, i8 signext 58)
  store i8* %74, i8** %11, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = icmp eq i8* %75, null
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load i8*, i8** %9, align 8
  %79 = load i8*, i8** %9, align 8
  %80 = call i64 @lemonStrlen(i8* %79)
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  store i8* %81, i8** %11, align 8
  br label %82

82:                                               ; preds = %77, %72
  %83 = load i8*, i8** %11, align 8
  %84 = load i8, i8* %83, align 1
  store i8 %84, i8* %12, align 1
  %85 = load i8*, i8** %11, align 8
  store i8 0, i8* %85, align 1
  %86 = load i8*, i8** %10, align 8
  %87 = load i8*, i8** %9, align 8
  %88 = load i8*, i8** %5, align 8
  %89 = call i32 @lemon_sprintf(i8* %86, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %87, i8* %88)
  %90 = load i8, i8* %12, align 1
  %91 = load i8*, i8** %11, align 8
  store i8 %90, i8* %91, align 1
  %92 = load i8, i8* %12, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %82
  %96 = load i8*, i8** %9, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 0
  store i8 0, i8* %97, align 1
  br label %101

98:                                               ; preds = %82
  %99 = load i8*, i8** %11, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 1
  store i8* %100, i8** %9, align 8
  br label %101

101:                                              ; preds = %98, %95
  %102 = load i8*, i8** %10, align 8
  %103 = load i32, i32* %6, align 4
  %104 = call i64 @access(i8* %102, i32 %103)
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  br label %108

107:                                              ; preds = %101
  br label %68

108:                                              ; preds = %106, %68
  %109 = load i8*, i8** %8, align 8
  %110 = call i32 @free(i8* %109)
  br label %111

111:                                              ; preds = %108, %60, %44
  br label %112

112:                                              ; preds = %111, %36
  %113 = load i8*, i8** %10, align 8
  ret i8* %113
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i64 @lemonStrlen(i8*) #1

declare dso_local i32 @lemon_sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @lemon_strcpy(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
