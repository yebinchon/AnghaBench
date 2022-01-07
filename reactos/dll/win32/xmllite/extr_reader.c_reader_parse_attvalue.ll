; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_reader_parse_attvalue.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_reader_parse_attvalue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WC_E_QUOTE = common dso_local global i32 0, align 4
@WC_E_LESSTHAN = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @reader_parse_attvalue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reader_parse_attvalue(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i8* @reader_get_ptr(i32* %10)
  store i8* %11, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %7, align 1
  %14 = load i8, i8* %7, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 34
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load i8, i8* %7, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 39
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @WC_E_QUOTE, align 4
  store i32 %22, i32* %3, align 4
  br label %88

23:                                               ; preds = %17, %2
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @reader_skipn(i32* %24, i32 1)
  %26 = load i32*, i32** %4, align 8
  %27 = call i8* @reader_get_ptr(i32* %26)
  store i8* %27, i8** %6, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = call i64 @reader_get_cur(i32* %28)
  store i64 %29, i64* %8, align 8
  br label %30

30:                                               ; preds = %83, %23
  %31 = load i8*, i8** %6, align 8
  %32 = load i8, i8* %31, align 1
  %33 = icmp ne i8 %32, 0
  br i1 %33, label %34, label %86

34:                                               ; preds = %30
  %35 = load i8*, i8** %6, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 60
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @WC_E_LESSTHAN, align 4
  store i32 %40, i32* %3, align 4
  br label %88

41:                                               ; preds = %34
  %42 = load i8*, i8** %6, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = load i8, i8* %7, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %41
  %49 = load i64, i64* %8, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = call i64 @reader_get_cur(i32* %50)
  %52 = load i64, i64* %8, align 8
  %53 = sub nsw i64 %51, %52
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @reader_init_strvalue(i64 %49, i64 %53, i32* %54)
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @reader_skipn(i32* %56, i32 1)
  %58 = load i32, i32* @S_OK, align 4
  store i32 %58, i32* %3, align 4
  br label %88

59:                                               ; preds = %41
  %60 = load i8*, i8** %6, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 38
  br i1 %63, label %64, label %73

64:                                               ; preds = %59
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @reader_parse_reference(i32* %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i64 @FAILED(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %3, align 4
  br label %88

72:                                               ; preds = %64
  br label %83

73:                                               ; preds = %59
  %74 = load i8*, i8** %6, align 8
  %75 = load i8, i8* %74, align 1
  %76 = call i64 @is_wchar_space(i8 signext %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i8*, i8** %6, align 8
  store i8 32, i8* %79, align 1
  br label %80

80:                                               ; preds = %78, %73
  %81 = load i32*, i32** %4, align 8
  %82 = call i32 @reader_skipn(i32* %81, i32 1)
  br label %83

83:                                               ; preds = %80, %72
  %84 = load i32*, i32** %4, align 8
  %85 = call i8* @reader_get_ptr(i32* %84)
  store i8* %85, i8** %6, align 8
  br label %30

86:                                               ; preds = %30
  %87 = load i32, i32* @WC_E_QUOTE, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %86, %70, %48, %39, %21
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i8* @reader_get_ptr(i32*) #1

declare dso_local i32 @reader_skipn(i32*, i32) #1

declare dso_local i64 @reader_get_cur(i32*) #1

declare dso_local i32 @reader_init_strvalue(i64, i64, i32*) #1

declare dso_local i32 @reader_parse_reference(i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i64 @is_wchar_space(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
