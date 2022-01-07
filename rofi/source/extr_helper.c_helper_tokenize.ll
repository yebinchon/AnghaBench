; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_helper.c_helper_tokenize.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_helper.c_helper_tokenize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32** @helper_tokenize(i8* %0, i32 %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32** null, i32*** %3, align 8
  br label %69

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = call i64 @strlen(i8* %17)
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32** null, i32*** %3, align 8
  br label %69

22:                                               ; preds = %16
  store i8* null, i8** %7, align 8
  store i32** null, i32*** %9, align 8
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %22
  %26 = call i32** @g_malloc0(i32 16)
  store i32** %26, i32*** %9, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32* @create_regex(i8* %27, i32 %28)
  %30 = load i32**, i32*** %9, align 8
  %31 = getelementptr inbounds i32*, i32** %30, i64 0
  store i32* %29, i32** %31, align 8
  %32 = load i32**, i32*** %9, align 8
  store i32** %32, i32*** %3, align 8
  br label %69

33:                                               ; preds = %22
  store i32 0, i32* %10, align 4
  %34 = load i8*, i8** %4, align 8
  %35 = call i8* @g_strdup(i8* %34)
  store i8* %35, i8** %11, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = call i8* @strtok_r(i8* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8** %7)
  store i8* %37, i8** %8, align 8
  br label %38

38:                                               ; preds = %63, %33
  %39 = load i8*, i8** %8, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %65

41:                                               ; preds = %38
  %42 = load i32**, i32*** %9, align 8
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, 2
  %45 = sext i32 %44 to i64
  %46 = mul i64 8, %45
  %47 = trunc i64 %46 to i32
  %48 = call i32** @g_realloc(i32** %42, i32 %47)
  store i32** %48, i32*** %9, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32* @create_regex(i8* %49, i32 %50)
  %52 = load i32**, i32*** %9, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %52, i64 %54
  store i32* %51, i32** %55, align 8
  %56 = load i32**, i32*** %9, align 8
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32*, i32** %56, i64 %59
  store i32* null, i32** %60, align 8
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %41
  %64 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8** %7)
  store i8* %64, i8** %8, align 8
  br label %38

65:                                               ; preds = %38
  %66 = load i8*, i8** %11, align 8
  %67 = call i32 @g_free(i8* %66)
  %68 = load i32**, i32*** %9, align 8
  store i32** %68, i32*** %3, align 8
  br label %69

69:                                               ; preds = %65, %25, %21, %15
  %70 = load i32**, i32*** %3, align 8
  ret i32** %70
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32** @g_malloc0(i32) #1

declare dso_local i32* @create_regex(i8*, i32) #1

declare dso_local i8* @g_strdup(i8*) #1

declare dso_local i8* @strtok_r(i8*, i8*, i8**) #1

declare dso_local i32** @g_realloc(i32**, i32) #1

declare dso_local i32 @g_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
