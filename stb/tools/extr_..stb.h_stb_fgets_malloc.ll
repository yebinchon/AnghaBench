; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_fgets_malloc.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_fgets_malloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @stb_fgets_malloc(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [800 x i8], align 16
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %9 = getelementptr inbounds [800 x i8], [800 x i8]* %4, i64 0, i64 798
  store i8 0, i8* %9, align 2
  %10 = getelementptr inbounds [800 x i8], [800 x i8]* %4, i64 0, i64 0
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @fgets(i8* %10, i32 800, i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %109

15:                                               ; preds = %1
  %16 = getelementptr inbounds [800 x i8], [800 x i8]* %4, i64 0, i64 798
  %17 = load i8, i8* %16, align 2
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %15
  %21 = getelementptr inbounds [800 x i8], [800 x i8]* %4, i64 0, i64 0
  %22 = call i64 @strlen(i8* %21)
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = icmp ugt i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %20
  %26 = load i64, i64* %5, align 8
  %27 = sub i64 %26, 1
  %28 = getelementptr inbounds [800 x i8], [800 x i8]* %4, i64 0, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 10
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load i64, i64* %5, align 8
  %34 = sub i64 %33, 1
  %35 = getelementptr inbounds [800 x i8], [800 x i8]* %4, i64 0, i64 %34
  store i8 0, i8* %35, align 1
  br label %36

36:                                               ; preds = %32, %25, %20
  %37 = getelementptr inbounds [800 x i8], [800 x i8]* %4, i64 0, i64 0
  %38 = call i8* @stb_p_strdup(i8* %37)
  store i8* %38, i8** %2, align 8
  br label %109

39:                                               ; preds = %15
  %40 = getelementptr inbounds [800 x i8], [800 x i8]* %4, i64 0, i64 0
  %41 = call i8* @stb_p_strdup(i8* %40)
  store i8* %41, i8** %7, align 8
  store i64 799, i64* %8, align 8
  br label %42

42:                                               ; preds = %89, %39
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @feof(i32* %43)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  br i1 %46, label %47, label %94

47:                                               ; preds = %42
  %48 = load i8*, i8** %7, align 8
  %49 = load i64, i64* %8, align 8
  %50 = sub i64 %49, 1
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 10
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %94

56:                                               ; preds = %47
  %57 = load i8*, i8** %7, align 8
  %58 = load i64, i64* %8, align 8
  %59 = mul i64 %58, 2
  %60 = call i64 @realloc(i8* %57, i64 %59)
  %61 = inttoptr i64 %60 to i8*
  store i8* %61, i8** %7, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = load i64, i64* %8, align 8
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  store i8* %64, i8** %6, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = load i64, i64* %8, align 8
  %67 = sub i64 %66, 2
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  store i8 0, i8* %68, align 1
  %69 = load i8*, i8** %6, align 8
  %70 = load i64, i64* %8, align 8
  %71 = trunc i64 %70 to i32
  %72 = load i32*, i32** %3, align 8
  %73 = call i32 @fgets(i8* %69, i32 %71, i32* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %56
  br label %94

76:                                               ; preds = %56
  %77 = load i8*, i8** %6, align 8
  %78 = load i64, i64* %8, align 8
  %79 = sub i64 %78, 2
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %76
  %85 = load i8*, i8** %6, align 8
  %86 = call i64 @strlen(i8* %85)
  %87 = load i64, i64* %8, align 8
  %88 = add i64 %87, %86
  store i64 %88, i64* %8, align 8
  br label %94

89:                                               ; preds = %76
  %90 = load i64, i64* %8, align 8
  %91 = load i64, i64* %8, align 8
  %92 = sub i64 %91, 1
  %93 = add i64 %90, %92
  store i64 %93, i64* %8, align 8
  br label %42

94:                                               ; preds = %84, %75, %55, %42
  %95 = load i8*, i8** %7, align 8
  %96 = load i64, i64* %8, align 8
  %97 = sub i64 %96, 1
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 10
  br i1 %101, label %102, label %107

102:                                              ; preds = %94
  %103 = load i8*, i8** %7, align 8
  %104 = load i64, i64* %8, align 8
  %105 = sub i64 %104, 1
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  store i8 0, i8* %106, align 1
  br label %107

107:                                              ; preds = %102, %94
  %108 = load i8*, i8** %7, align 8
  store i8* %108, i8** %2, align 8
  br label %109

109:                                              ; preds = %107, %36, %14
  %110 = load i8*, i8** %2, align 8
  ret i8* %110
}

declare dso_local i32 @fgets(i8*, i32, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @stb_p_strdup(i8*) #1

declare dso_local i32 @feof(i32*) #1

declare dso_local i64 @realloc(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
