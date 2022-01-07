; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_main.c_jsB_read.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_main.c_jsB_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"cannot open file '%s': %s\00", align 1
@errno = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"cannot seek in file '%s': %s\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"cannot tell in file '%s': %s\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"cannot read data from file '%s': %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @jsB_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jsB_read(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call i8* @js_tostring(i32* %8, i32 1)
  store i8* %9, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i32* @fopen(i8* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %11, i32** %4, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load i32*, i32** %2, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = load i32, i32* @errno, align 4
  %18 = call i32 @strerror(i32 %17)
  %19 = call i32 (i32*, i8*, ...) @js_error(i32* %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %16, i32 %18)
  br label %20

20:                                               ; preds = %14, %1
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* @SEEK_END, align 4
  %23 = call i64 @fseek(i32* %21, i32 0, i32 %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @fclose(i32* %26)
  %28 = load i32*, i32** %2, align 8
  %29 = load i8*, i8** %3, align 8
  %30 = load i32, i32* @errno, align 4
  %31 = call i32 @strerror(i32 %30)
  %32 = call i32 (i32*, i8*, ...) @js_error(i32* %28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %29, i32 %31)
  br label %33

33:                                               ; preds = %25, %20
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @ftell(i32* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @fclose(i32* %39)
  %41 = load i32*, i32** %2, align 8
  %42 = load i8*, i8** %3, align 8
  %43 = load i32, i32* @errno, align 4
  %44 = call i32 @strerror(i32 %43)
  %45 = call i32 (i32*, i8*, ...) @js_error(i32* %41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %42, i32 %44)
  br label %46

46:                                               ; preds = %38, %33
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* @SEEK_SET, align 4
  %49 = call i64 @fseek(i32* %47, i32 0, i32 %48)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @fclose(i32* %52)
  %54 = load i32*, i32** %2, align 8
  %55 = load i8*, i8** %3, align 8
  %56 = load i32, i32* @errno, align 4
  %57 = call i32 @strerror(i32 %56)
  %58 = call i32 (i32*, i8*, ...) @js_error(i32* %54, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %55, i32 %57)
  br label %59

59:                                               ; preds = %51, %46
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  %62 = call i8* @malloc(i32 %61)
  store i8* %62, i8** %5, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %70, label %65

65:                                               ; preds = %59
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 @fclose(i32* %66)
  %68 = load i32*, i32** %2, align 8
  %69 = call i32 (i32*, i8*, ...) @js_error(i32* %68, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %70

70:                                               ; preds = %65, %59
  %71 = load i8*, i8** %5, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load i32*, i32** %4, align 8
  %74 = call i32 @fread(i8* %71, i32 1, i32 %72, i32* %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %70
  %79 = load i8*, i8** %5, align 8
  %80 = call i32 @free(i8* %79)
  %81 = load i32*, i32** %4, align 8
  %82 = call i32 @fclose(i32* %81)
  %83 = load i32*, i32** %2, align 8
  %84 = load i8*, i8** %3, align 8
  %85 = load i32, i32* @errno, align 4
  %86 = call i32 @strerror(i32 %85)
  %87 = call i32 (i32*, i8*, ...) @js_error(i32* %83, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i8* %84, i32 %86)
  br label %88

88:                                               ; preds = %78, %70
  %89 = load i8*, i8** %5, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  store i8 0, i8* %92, align 1
  %93 = load i32*, i32** %2, align 8
  %94 = load i8*, i8** %5, align 8
  %95 = call i32 @js_pushstring(i32* %93, i8* %94)
  %96 = load i8*, i8** %5, align 8
  %97 = call i32 @free(i8* %96)
  %98 = load i32*, i32** %4, align 8
  %99 = call i32 @fclose(i32* %98)
  ret void
}

declare dso_local i8* @js_tostring(i32*, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @js_error(i32*, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @fseek(i32*, i32, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @ftell(i32*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @js_pushstring(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
