; ModuleID = '/home/carl/AnghaBench/redis/deps/lua/src/extr_fpconv.c_fpconv_strtod.c'
source_filename = "/home/carl/AnghaBench/redis/deps/lua/src/extr_fpconv.c_fpconv_strtod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FPCONV_G_FMT_BUFSIZE = common dso_local global i32 0, align 4
@locale_decimal_point = common dso_local global i8 0, align 1
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @fpconv_strtod(i8* %0, i8** %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  %14 = load i32, i32* @FPCONV_G_FMT_BUFSIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %18 = load i8, i8* @locale_decimal_point, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 46
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load i8*, i8** %4, align 8
  %23 = load i8**, i8*** %5, align 8
  %24 = call double @strtod(i8* %22, i8** %23)
  store double %24, double* %3, align 8
  store i32 1, i32* %13, align 4
  br label %84

25:                                               ; preds = %2
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @strtod_buffer_size(i8* %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i8*, i8** %4, align 8
  %32 = load i8**, i8*** %5, align 8
  store i8* %31, i8** %32, align 8
  store double 0.000000e+00, double* %3, align 8
  store i32 1, i32* %13, align 4
  br label %84

33:                                               ; preds = %25
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @FPCONV_G_FMT_BUFSIZE, align 4
  %36 = icmp sge i32 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %33
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %38, 1
  %40 = call i8* @malloc(i32 %39)
  store i8* %40, i8** %8, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* @stderr, align 4
  %45 = call i32 @fprintf(i32 %44, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %46 = call i32 (...) @abort() #4
  unreachable

47:                                               ; preds = %37
  br label %49

48:                                               ; preds = %33
  store i8* %17, i8** %8, align 8
  br label %49

49:                                               ; preds = %48, %47
  %50 = load i8*, i8** %8, align 8
  %51 = load i8*, i8** %4, align 8
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @memcpy(i8* %50, i8* %51, i32 %52)
  %54 = load i8*, i8** %8, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  store i8 0, i8* %57, align 1
  %58 = load i8*, i8** %8, align 8
  %59 = call i8* @strchr(i8* %58, i8 signext 46)
  store i8* %59, i8** %10, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %49
  %63 = load i8, i8* @locale_decimal_point, align 1
  %64 = load i8*, i8** %10, align 8
  store i8 %63, i8* %64, align 1
  br label %65

65:                                               ; preds = %62, %49
  %66 = load i8*, i8** %8, align 8
  %67 = call double @strtod(i8* %66, i8** %9)
  store double %67, double* %12, align 8
  %68 = load i8*, i8** %4, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = ptrtoint i8* %69 to i64
  %72 = ptrtoint i8* %70 to i64
  %73 = sub i64 %71, %72
  %74 = getelementptr inbounds i8, i8* %68, i64 %73
  %75 = load i8**, i8*** %5, align 8
  store i8* %74, i8** %75, align 8
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* @FPCONV_G_FMT_BUFSIZE, align 4
  %78 = icmp sge i32 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %65
  %80 = load i8*, i8** %8, align 8
  %81 = call i32 @free(i8* %80)
  br label %82

82:                                               ; preds = %79, %65
  %83 = load double, double* %12, align 8
  store double %83, double* %3, align 8
  store i32 1, i32* %13, align 4
  br label %84

84:                                               ; preds = %82, %30, %21
  %85 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %85)
  %86 = load double, double* %3, align 8
  ret double %86
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local double @strtod(i8*, i8**) #2

declare dso_local i32 @strtod_buffer_size(i8*) #2

declare dso_local i8* @malloc(i32) #2

declare dso_local i32 @fprintf(i32, i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #3

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
