; ModuleID = '/home/carl/AnghaBench/tmux/extr_regsub.c_regsub.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_regsub.c_regsub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@REG_STARTEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @regsub(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [10 x %struct.TYPE_5__], align 16
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %15, align 8
  store i32 0, i32* %16, align 4
  store i8* null, i8** %17, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = call i8* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %23, i8** %5, align 8
  br label %107

24:                                               ; preds = %4
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i64 @regcomp(i32* %10, i8* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i8* null, i8** %5, align 8
  br label %107

30:                                               ; preds = %24
  store i64 0, i64* %12, align 8
  store i64 0, i64* %14, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = call i64 @strlen(i8* %31)
  store i64 %32, i64* %13, align 8
  br label %33

33:                                               ; preds = %100, %30
  %34 = load i64, i64* %12, align 8
  %35 = load i64, i64* %13, align 8
  %36 = icmp sle i64 %34, %35
  br i1 %36, label %37, label %101

37:                                               ; preds = %33
  %38 = load i64, i64* %12, align 8
  %39 = getelementptr inbounds [10 x %struct.TYPE_5__], [10 x %struct.TYPE_5__]* %11, i64 0, i64 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 16
  %41 = load i64, i64* %13, align 8
  %42 = getelementptr inbounds [10 x %struct.TYPE_5__], [10 x %struct.TYPE_5__]* %11, i64 0, i64 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = getelementptr inbounds [10 x %struct.TYPE_5__], [10 x %struct.TYPE_5__]* %11, i64 0, i64 0
  %46 = call i32 @nitems(%struct.TYPE_5__* %45)
  %47 = getelementptr inbounds [10 x %struct.TYPE_5__], [10 x %struct.TYPE_5__]* %11, i64 0, i64 0
  %48 = load i32, i32* @REG_STARTEND, align 4
  %49 = call i64 @regexec(i32* %10, i8* %44, i32 %46, %struct.TYPE_5__* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %37
  %52 = load i8*, i8** %8, align 8
  %53 = load i64, i64* %12, align 8
  %54 = load i64, i64* %13, align 8
  %55 = call i32 @regsub_copy(i8** %17, i64* %15, i8* %52, i64 %53, i64 %54)
  br label %101

56:                                               ; preds = %37
  %57 = load i8*, i8** %8, align 8
  %58 = load i64, i64* %14, align 8
  %59 = getelementptr inbounds [10 x %struct.TYPE_5__], [10 x %struct.TYPE_5__]* %11, i64 0, i64 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 16
  %62 = call i32 @regsub_copy(i8** %17, i64* %15, i8* %57, i64 %58, i64 %61)
  %63 = load i32, i32* %16, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %79, label %65

65:                                               ; preds = %56
  %66 = getelementptr inbounds [10 x %struct.TYPE_5__], [10 x %struct.TYPE_5__]* %11, i64 0, i64 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 16
  %69 = load i64, i64* %14, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %79, label %71

71:                                               ; preds = %65
  %72 = getelementptr inbounds [10 x %struct.TYPE_5__], [10 x %struct.TYPE_5__]* %11, i64 0, i64 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 16
  %75 = getelementptr inbounds [10 x %struct.TYPE_5__], [10 x %struct.TYPE_5__]* %11, i64 0, i64 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %74, %77
  br i1 %78, label %79, label %92

79:                                               ; preds = %71, %65, %56
  %80 = load i8*, i8** %7, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = getelementptr inbounds [10 x %struct.TYPE_5__], [10 x %struct.TYPE_5__]* %11, i64 0, i64 0
  %83 = getelementptr inbounds [10 x %struct.TYPE_5__], [10 x %struct.TYPE_5__]* %11, i64 0, i64 0
  %84 = call i32 @nitems(%struct.TYPE_5__* %83)
  %85 = call i32 @regsub_expand(i8** %17, i64* %15, i8* %80, i8* %81, %struct.TYPE_5__* %82, i32 %84)
  %86 = getelementptr inbounds [10 x %struct.TYPE_5__], [10 x %struct.TYPE_5__]* %11, i64 0, i64 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %14, align 8
  %89 = getelementptr inbounds [10 x %struct.TYPE_5__], [10 x %struct.TYPE_5__]* %11, i64 0, i64 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %12, align 8
  store i32 0, i32* %16, align 4
  br label %100

92:                                               ; preds = %71
  %93 = getelementptr inbounds [10 x %struct.TYPE_5__], [10 x %struct.TYPE_5__]* %11, i64 0, i64 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  store i64 %95, i64* %14, align 8
  %96 = getelementptr inbounds [10 x %struct.TYPE_5__], [10 x %struct.TYPE_5__]* %11, i64 0, i64 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %98, 1
  store i64 %99, i64* %12, align 8
  store i32 1, i32* %16, align 4
  br label %100

100:                                              ; preds = %92, %79
  br label %33

101:                                              ; preds = %51, %33
  %102 = load i8*, i8** %17, align 8
  %103 = load i64, i64* %15, align 8
  %104 = getelementptr inbounds i8, i8* %102, i64 %103
  store i8 0, i8* %104, align 1
  %105 = call i32 @regfree(i32* %10)
  %106 = load i8*, i8** %17, align 8
  store i8* %106, i8** %5, align 8
  br label %107

107:                                              ; preds = %101, %29, %22
  %108 = load i8*, i8** %5, align 8
  ret i8* %108
}

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i64 @regcomp(i32*, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @regexec(i32*, i8*, i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @nitems(%struct.TYPE_5__*) #1

declare dso_local i32 @regsub_copy(i8**, i64*, i8*, i64, i64) #1

declare dso_local i32 @regsub_expand(i8**, i64*, i8*, i8*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @regfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
