; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_copyfile.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_copyfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STB_TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@STB_FALSE = common dso_local global i32 0, align 4
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
  %11 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 65536, i32* %8, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @stb_feq(i8* %12, i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @STB_TRUE, align 4
  store i32 %17, i32* %3, align 4
  br label %74

18:                                               ; preds = %2
  %19 = load i8*, i8** %4, align 8
  %20 = call i32* @stb__fopen(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %20, i32** %9, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @STB_FALSE, align 4
  store i32 %24, i32* %3, align 4
  br label %74

25:                                               ; preds = %18
  %26 = load i8*, i8** %5, align 8
  %27 = call i32* @stb__fopen(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %27, i32** %10, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @fclose(i32* %31)
  %33 = load i32, i32* @STB_FALSE, align 4
  store i32 %33, i32* %3, align 4
  br label %74

34:                                               ; preds = %25
  %35 = load i32, i32* %8, align 4
  %36 = call i64 @malloc(i32 %35)
  %37 = inttoptr i64 %36 to i8*
  store i8* %37, i8** %7, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  store i8* %41, i8** %7, align 8
  store i32 1024, i32* %8, align 4
  br label %42

42:                                               ; preds = %40, %34
  br label %43

43:                                               ; preds = %60, %42
  %44 = load i32*, i32** %9, align 8
  %45 = call i32 @feof(i32* %44)
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  br i1 %47, label %48, label %61

48:                                               ; preds = %43
  %49 = load i8*, i8** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32*, i32** %9, align 8
  %52 = call i64 @fread(i8* %49, i32 1, i32 %50, i32* %51)
  store i64 %52, i64* %11, align 8
  %53 = load i64, i64* %11, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = load i8*, i8** %7, align 8
  %57 = load i64, i64* %11, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = call i32 @fwrite(i8* %56, i32 1, i64 %57, i32* %58)
  br label %60

60:                                               ; preds = %55, %48
  br label %43

61:                                               ; preds = %43
  %62 = load i32*, i32** %9, align 8
  %63 = call i32 @fclose(i32* %62)
  %64 = load i8*, i8** %7, align 8
  %65 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %66 = icmp ne i8* %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i8*, i8** %7, align 8
  %69 = call i32 @free(i8* %68)
  br label %70

70:                                               ; preds = %67, %61
  %71 = load i32*, i32** %10, align 8
  %72 = call i32 @fclose(i32* %71)
  %73 = load i32, i32* @STB_TRUE, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %70, %30, %23, %16
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i64 @stb_feq(i8*, i8*) #1

declare dso_local i32* @stb__fopen(i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @feof(i32*) #1

declare dso_local i64 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @fwrite(i8*, i32, i64, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
