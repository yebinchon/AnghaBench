; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_decompress_fromfile.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_decompress_fromfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @stb_decompress_fromfile(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32* @stb_p_fopen(i8* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %11, i32** %9, align 8
  %12 = load i32*, i32** %9, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %97

15:                                               ; preds = %2
  %16 = load i32*, i32** %9, align 8
  %17 = load i32, i32* @SEEK_END, align 4
  %18 = call i32 @fseek(i32* %16, i32 0, i32 %17)
  %19 = load i32*, i32** %9, align 8
  %20 = call i32 @ftell(i32* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* @SEEK_SET, align 4
  %23 = call i32 @fseek(i32* %21, i32 0, i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @malloc(i32 %24)
  %26 = inttoptr i64 %25 to i8*
  store i8* %26, i8** %8, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %15
  store i8* null, i8** %3, align 8
  br label %97

30:                                               ; preds = %15
  %31 = load i8*, i8** %8, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @fread(i8* %31, i32 1, i32 %32, i32* %33)
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @fclose(i32* %35)
  %37 = load i8*, i8** %8, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  store i8* null, i8** %3, align 8
  br label %97

40:                                               ; preds = %30
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp ne i32 %44, 87
  br i1 %45, label %64, label %46

46:                                               ; preds = %40
  %47 = load i8*, i8** %8, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp ne i32 %50, 188
  br i1 %51, label %64, label %52

52:                                               ; preds = %46
  %53 = load i8*, i8** %8, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 2
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %52
  %59 = load i8*, i8** %8, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 3
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %58, %52, %46, %40
  %65 = load i8*, i8** %8, align 8
  %66 = call i32 @free(i8* %65)
  store i8* null, i8** %3, align 8
  br label %97

67:                                               ; preds = %58
  %68 = load i8*, i8** %8, align 8
  %69 = call i32 @stb_decompress_length(i8* %68)
  %70 = add nsw i32 %69, 1
  %71 = call i64 @malloc(i32 %70)
  %72 = inttoptr i64 %71 to i8*
  store i8* %72, i8** %7, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %67
  %76 = load i8*, i8** %8, align 8
  %77 = call i32 @free(i8* %76)
  store i8* null, i8** %3, align 8
  br label %97

78:                                               ; preds = %67
  %79 = load i8*, i8** %7, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @stb_decompress(i8* %79, i8* %80, i32 %81)
  %83 = load i32*, i32** %5, align 8
  store i32 %82, i32* %83, align 4
  %84 = load i32*, i32** %5, align 8
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %78
  %88 = load i8*, i8** %7, align 8
  %89 = load i32*, i32** %5, align 8
  %90 = load i32, i32* %89, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %88, i64 %91
  store i8 0, i8* %92, align 1
  br label %93

93:                                               ; preds = %87, %78
  %94 = load i8*, i8** %8, align 8
  %95 = call i32 @free(i8* %94)
  %96 = load i8*, i8** %7, align 8
  store i8* %96, i8** %3, align 8
  br label %97

97:                                               ; preds = %93, %75, %64, %39, %29, %14
  %98 = load i8*, i8** %3, align 8
  ret i8* %98
}

declare dso_local i32* @stb_p_fopen(i8*, i8*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @ftell(i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @stb_decompress_length(i8*) #1

declare dso_local i32 @stb_decompress(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
