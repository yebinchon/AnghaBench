; ModuleID = '/home/carl/AnghaBench/stb/tests/extr_prereleasestb_lib.h_stb_copyfile.c'
source_filename = "/home/carl/AnghaBench/stb/tests/extr_prereleasestb_lib.h_stb_copyfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stb_copyfile(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [1024 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 65536, i32* %8, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @stb_feq(i8* %12, i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %70

17:                                               ; preds = %2
  %18 = load i8*, i8** %4, align 8
  %19 = call i32* @stb__fopen(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %19, i32** %9, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %70

23:                                               ; preds = %17
  %24 = load i8*, i8** %5, align 8
  %25 = call i32* @stb__fopen(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %25, i32** %10, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32*, i32** %9, align 8
  %30 = call i32 @fclose(i32* %29)
  store i32 0, i32* %3, align 4
  br label %70

31:                                               ; preds = %23
  %32 = load i32, i32* %8, align 4
  %33 = call i64 @malloc(i32 %32)
  %34 = inttoptr i64 %33 to i8*
  store i8* %34, i8** %7, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  store i8* %38, i8** %7, align 8
  store i32 1024, i32* %8, align 4
  br label %39

39:                                               ; preds = %37, %31
  br label %40

40:                                               ; preds = %57, %39
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 @feof(i32* %41)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  br i1 %44, label %45, label %58

45:                                               ; preds = %40
  %46 = load i8*, i8** %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @fread(i8* %46, i32 1, i32 %47, i32* %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %45
  %53 = load i8*, i8** %7, align 8
  %54 = load i32, i32* %11, align 4
  %55 = load i32*, i32** %10, align 8
  %56 = call i32 @fwrite(i8* %53, i32 1, i32 %54, i32* %55)
  br label %57

57:                                               ; preds = %52, %45
  br label %40

58:                                               ; preds = %40
  %59 = load i32*, i32** %9, align 8
  %60 = call i32 @fclose(i32* %59)
  %61 = load i8*, i8** %7, align 8
  %62 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %63 = icmp ne i8* %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load i8*, i8** %7, align 8
  %66 = call i32 @free(i8* %65)
  br label %67

67:                                               ; preds = %64, %58
  %68 = load i32*, i32** %10, align 8
  %69 = call i32 @fclose(i32* %68)
  store i32 1, i32* %3, align 4
  br label %70

70:                                               ; preds = %67, %28, %22, %16
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i64 @stb_feq(i8*, i8*) #1

declare dso_local i32* @stb__fopen(i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @feof(i32*) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
