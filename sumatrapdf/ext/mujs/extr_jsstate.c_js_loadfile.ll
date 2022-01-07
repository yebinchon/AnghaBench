; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsstate.c_js_loadfile.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsstate.c_js_loadfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"cannot open file '%s': %s\00", align 1
@errno = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"cannot seek in file '%s': %s\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"cannot tell in file '%s': %s\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"cannot read data from file '%s': %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @js_loadfile(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32* @fopen(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %10, i32** %5, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = load i32*, i32** %3, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = load i32, i32* @errno, align 4
  %17 = call i32 @strerror(i32 %16)
  %18 = call i32 @js_error(i32* %14, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %15, i32 %17)
  br label %19

19:                                               ; preds = %13, %2
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* @SEEK_END, align 4
  %22 = call i64 @fseek(i32* %20, i32 0, i32 %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @fclose(i32* %25)
  %27 = load i32*, i32** %3, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = load i32, i32* @errno, align 4
  %30 = call i32 @strerror(i32 %29)
  %31 = call i32 @js_error(i32* %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %28, i32 %30)
  br label %32

32:                                               ; preds = %24, %19
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @ftell(i32* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @fclose(i32* %38)
  %40 = load i32*, i32** %3, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = load i32, i32* @errno, align 4
  %43 = call i32 @strerror(i32 %42)
  %44 = call i32 @js_error(i32* %40, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %41, i32 %43)
  br label %45

45:                                               ; preds = %37, %32
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* @SEEK_SET, align 4
  %48 = call i64 @fseek(i32* %46, i32 0, i32 %47)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @fclose(i32* %51)
  %53 = load i32*, i32** %3, align 8
  %54 = load i8*, i8** %4, align 8
  %55 = load i32, i32* @errno, align 4
  %56 = call i32 @strerror(i32 %55)
  %57 = call i32 @js_error(i32* %53, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %54, i32 %56)
  br label %58

58:                                               ; preds = %50, %45
  %59 = load i32*, i32** %3, align 8
  %60 = call i64 @js_try(i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 @fclose(i32* %63)
  %65 = load i32*, i32** %3, align 8
  %66 = call i32 @js_throw(i32* %65)
  br label %67

67:                                               ; preds = %62, %58
  %68 = load i32*, i32** %3, align 8
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  %71 = call i8* @js_malloc(i32* %68, i32 %70)
  store i8* %71, i8** %6, align 8
  %72 = load i32*, i32** %3, align 8
  %73 = call i32 @js_endtry(i32* %72)
  %74 = load i8*, i8** %6, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = load i32*, i32** %5, align 8
  %78 = call i32 @fread(i8* %74, i32 1, i64 %76, i32* %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %67
  %83 = load i32*, i32** %3, align 8
  %84 = load i8*, i8** %6, align 8
  %85 = call i32 @js_free(i32* %83, i8* %84)
  %86 = load i32*, i32** %5, align 8
  %87 = call i32 @fclose(i32* %86)
  %88 = load i32*, i32** %3, align 8
  %89 = load i8*, i8** %4, align 8
  %90 = load i32, i32* @errno, align 4
  %91 = call i32 @strerror(i32 %90)
  %92 = call i32 @js_error(i32* %88, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* %89, i32 %91)
  br label %93

93:                                               ; preds = %82, %67
  %94 = load i8*, i8** %6, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  store i8 0, i8* %97, align 1
  %98 = load i32*, i32** %3, align 8
  %99 = call i64 @js_try(i32* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %93
  %102 = load i32*, i32** %3, align 8
  %103 = load i8*, i8** %6, align 8
  %104 = call i32 @js_free(i32* %102, i8* %103)
  %105 = load i32*, i32** %5, align 8
  %106 = call i32 @fclose(i32* %105)
  %107 = load i32*, i32** %3, align 8
  %108 = call i32 @js_throw(i32* %107)
  br label %109

109:                                              ; preds = %101, %93
  %110 = load i32*, i32** %3, align 8
  %111 = load i8*, i8** %4, align 8
  %112 = load i8*, i8** %6, align 8
  %113 = call i32 @js_loadstring(i32* %110, i8* %111, i8* %112)
  %114 = load i32*, i32** %3, align 8
  %115 = load i8*, i8** %6, align 8
  %116 = call i32 @js_free(i32* %114, i8* %115)
  %117 = load i32*, i32** %5, align 8
  %118 = call i32 @fclose(i32* %117)
  %119 = load i32*, i32** %3, align 8
  %120 = call i32 @js_endtry(i32* %119)
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @js_error(i32*, i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @fseek(i32*, i32, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @ftell(i32*) #1

declare dso_local i64 @js_try(i32*) #1

declare dso_local i32 @js_throw(i32*) #1

declare dso_local i8* @js_malloc(i32*, i32) #1

declare dso_local i32 @js_endtry(i32*) #1

declare dso_local i32 @fread(i8*, i32, i64, i32*) #1

declare dso_local i32 @js_free(i32*, i8*) #1

declare dso_local i32 @js_loadstring(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
