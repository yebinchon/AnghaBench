; ModuleID = '/home/carl/AnghaBench/stb/tests/extr_prereleasestb_lib.h_stb_fgets_malloc.c'
source_filename = "/home/carl/AnghaBench/stb/tests/extr_prereleasestb_lib.h_stb_fgets_malloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @stb_fgets_malloc(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [800 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
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
  br label %116

15:                                               ; preds = %1
  %16 = getelementptr inbounds [800 x i8], [800 x i8]* %4, i64 0, i64 798
  %17 = load i8, i8* %16, align 2
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %15
  %21 = getelementptr inbounds [800 x i8], [800 x i8]* %4, i64 0, i64 0
  %22 = call i32 @strlen(i8* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %20
  %26 = load i32, i32* %5, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [800 x i8], [800 x i8]* %4, i64 0, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 10
  br i1 %32, label %33, label %38

33:                                               ; preds = %25
  %34 = load i32, i32* %5, align 4
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [800 x i8], [800 x i8]* %4, i64 0, i64 %36
  store i8 0, i8* %37, align 1
  br label %38

38:                                               ; preds = %33, %25, %20
  %39 = getelementptr inbounds [800 x i8], [800 x i8]* %4, i64 0, i64 0
  %40 = call i8* @strdup(i8* %39)
  store i8* %40, i8** %2, align 8
  br label %116

41:                                               ; preds = %15
  %42 = getelementptr inbounds [800 x i8], [800 x i8]* %4, i64 0, i64 0
  %43 = call i8* @strdup(i8* %42)
  store i8* %43, i8** %7, align 8
  store i32 799, i32* %8, align 4
  br label %44

44:                                               ; preds = %94, %41
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @feof(i32* %45)
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  br i1 %48, label %49, label %99

49:                                               ; preds = %44
  %50 = load i8*, i8** %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %50, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 10
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  br label %99

59:                                               ; preds = %49
  %60 = load i8*, i8** %7, align 8
  %61 = load i32, i32* %8, align 4
  %62 = mul nsw i32 %61, 2
  %63 = call i64 @realloc(i8* %60, i32 %62)
  %64 = inttoptr i64 %63 to i8*
  store i8* %64, i8** %7, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  store i8* %68, i8** %6, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sub nsw i32 %70, 2
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %69, i64 %72
  store i8 0, i8* %73, align 1
  %74 = load i8*, i8** %6, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load i32*, i32** %3, align 8
  %77 = call i32 @fgets(i8* %74, i32 %75, i32* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %59
  br label %99

80:                                               ; preds = %59
  %81 = load i8*, i8** %6, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sub nsw i32 %82, 2
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %81, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %80
  %90 = load i8*, i8** %6, align 8
  %91 = call i32 @strlen(i8* %90)
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* %8, align 4
  br label %99

94:                                               ; preds = %80
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = sub nsw i32 %96, 1
  %98 = add nsw i32 %95, %97
  store i32 %98, i32* %8, align 4
  br label %44

99:                                               ; preds = %89, %79, %58, %44
  %100 = load i8*, i8** %7, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sub nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %100, i64 %103
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 10
  br i1 %107, label %108, label %114

108:                                              ; preds = %99
  %109 = load i8*, i8** %7, align 8
  %110 = load i32, i32* %8, align 4
  %111 = sub nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %109, i64 %112
  store i8 0, i8* %113, align 1
  br label %114

114:                                              ; preds = %108, %99
  %115 = load i8*, i8** %7, align 8
  store i8* %115, i8** %2, align 8
  br label %116

116:                                              ; preds = %114, %38, %14
  %117 = load i8*, i8** %2, align 8
  ret i8* %117
}

declare dso_local i32 @fgets(i8*, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @feof(i32*) #1

declare dso_local i64 @realloc(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
