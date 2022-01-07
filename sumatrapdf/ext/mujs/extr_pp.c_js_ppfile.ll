; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_pp.c_js_ppfile.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_pp.c_js_ppfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"cannot open file: '%s'\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"cannot seek in file: '%s'\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"cannot tell in file: '%s'\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"cannot allocate storage for file contents: '%s'\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"cannot read data from file: '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @js_ppfile(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = call i32* @fopen(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %12, i32** %7, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32*, i32** %4, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @js_error(i32* %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  br label %19

19:                                               ; preds = %15, %3
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* @SEEK_END, align 4
  %22 = call i64 @fseek(i32* %20, i32 0, i32 %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @fclose(i32* %25)
  %27 = load i32*, i32** %4, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @js_error(i32* %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %24, %19
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @ftell(i32* %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @fclose(i32* %36)
  %38 = load i32*, i32** %4, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @js_error(i32* %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %39)
  br label %41

41:                                               ; preds = %35, %30
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* @SEEK_SET, align 4
  %44 = call i64 @fseek(i32* %42, i32 0, i32 %43)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @fclose(i32* %47)
  %49 = load i32*, i32** %4, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 @js_error(i32* %49, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %50)
  br label %52

52:                                               ; preds = %46, %41
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  %56 = call i8* @js_malloc(i32* %53, i32 %55)
  store i8* %56, i8** %8, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %65, label %59

59:                                               ; preds = %52
  %60 = load i32*, i32** %7, align 8
  %61 = call i32 @fclose(i32* %60)
  %62 = load i32*, i32** %4, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = call i32 @js_error(i32* %62, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i8* %63)
  br label %65

65:                                               ; preds = %59, %52
  %66 = load i8*, i8** %8, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = load i32*, i32** %7, align 8
  %70 = call i32 @fread(i8* %66, i32 1, i64 %68, i32* %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %65
  %75 = load i32*, i32** %4, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = call i32 @js_free(i32* %75, i8* %76)
  %78 = load i32*, i32** %7, align 8
  %79 = call i32 @fclose(i32* %78)
  %80 = load i32*, i32** %4, align 8
  %81 = load i8*, i8** %5, align 8
  %82 = call i32 @js_error(i32* %80, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i8* %81)
  br label %83

83:                                               ; preds = %74, %65
  %84 = load i8*, i8** %8, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  store i8 0, i8* %87, align 1
  %88 = load i32*, i32** %4, align 8
  %89 = call i64 @js_try(i32* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %83
  %92 = load i32*, i32** %4, align 8
  %93 = load i8*, i8** %8, align 8
  %94 = call i32 @js_free(i32* %92, i8* %93)
  %95 = load i32*, i32** %7, align 8
  %96 = call i32 @fclose(i32* %95)
  %97 = load i32*, i32** %4, align 8
  %98 = call i32 @js_throw(i32* %97)
  br label %99

99:                                               ; preds = %91, %83
  %100 = load i32*, i32** %4, align 8
  %101 = load i8*, i8** %5, align 8
  %102 = load i8*, i8** %8, align 8
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @js_ppstring(i32* %100, i8* %101, i8* %102, i32 %103)
  %105 = load i32*, i32** %4, align 8
  %106 = load i8*, i8** %8, align 8
  %107 = call i32 @js_free(i32* %105, i8* %106)
  %108 = load i32*, i32** %7, align 8
  %109 = call i32 @fclose(i32* %108)
  %110 = load i32*, i32** %4, align 8
  %111 = call i32 @js_endtry(i32* %110)
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @js_error(i32*, i8*, i8*) #1

declare dso_local i64 @fseek(i32*, i32, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @ftell(i32*) #1

declare dso_local i8* @js_malloc(i32*, i32) #1

declare dso_local i32 @fread(i8*, i32, i64, i32*) #1

declare dso_local i32 @js_free(i32*, i8*) #1

declare dso_local i64 @js_try(i32*) #1

declare dso_local i32 @js_throw(i32*) #1

declare dso_local i32 @js_ppstring(i32*, i8*, i8*, i32) #1

declare dso_local i32 @js_endtry(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
