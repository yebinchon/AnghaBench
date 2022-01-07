; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_uri.c_check_ipv4address.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_uri.c_check_ipv4address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8**, i64)* @check_ipv4address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @check_ipv4address(i8** %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i8**, i8*** %4, align 8
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %6, align 8
  %9 = load i8**, i8*** %4, align 8
  %10 = call i32 @check_dec_octet(i8** %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i8*, i8** %6, align 8
  %14 = load i8**, i8*** %4, align 8
  store i8* %13, i8** %14, align 8
  %15 = load i64, i64* @FALSE, align 8
  store i64 %15, i64* %3, align 8
  br label %91

16:                                               ; preds = %2
  %17 = load i8**, i8*** %4, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 46
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load i8*, i8** %6, align 8
  %24 = load i8**, i8*** %4, align 8
  store i8* %23, i8** %24, align 8
  %25 = load i64, i64* @FALSE, align 8
  store i64 %25, i64* %3, align 8
  br label %91

26:                                               ; preds = %16
  %27 = load i8**, i8*** %4, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %27, align 8
  %30 = load i8**, i8*** %4, align 8
  %31 = call i32 @check_dec_octet(i8** %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %26
  %34 = load i8*, i8** %6, align 8
  %35 = load i8**, i8*** %4, align 8
  store i8* %34, i8** %35, align 8
  %36 = load i64, i64* @FALSE, align 8
  store i64 %36, i64* %3, align 8
  br label %91

37:                                               ; preds = %26
  %38 = load i8**, i8*** %4, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 46
  br i1 %42, label %43, label %52

43:                                               ; preds = %37
  %44 = load i64, i64* %5, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i8*, i8** %6, align 8
  %48 = load i8**, i8*** %4, align 8
  store i8* %47, i8** %48, align 8
  %49 = load i64, i64* @FALSE, align 8
  store i64 %49, i64* %3, align 8
  br label %91

50:                                               ; preds = %43
  %51 = load i64, i64* @TRUE, align 8
  store i64 %51, i64* %3, align 8
  br label %91

52:                                               ; preds = %37
  %53 = load i8**, i8*** %4, align 8
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %53, align 8
  %56 = load i8**, i8*** %4, align 8
  %57 = call i32 @check_dec_octet(i8** %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %52
  %60 = load i8*, i8** %6, align 8
  %61 = load i8**, i8*** %4, align 8
  store i8* %60, i8** %61, align 8
  %62 = load i64, i64* @FALSE, align 8
  store i64 %62, i64* %3, align 8
  br label %91

63:                                               ; preds = %52
  %64 = load i8**, i8*** %4, align 8
  %65 = load i8*, i8** %64, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 46
  br i1 %68, label %69, label %78

69:                                               ; preds = %63
  %70 = load i64, i64* %5, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load i8*, i8** %6, align 8
  %74 = load i8**, i8*** %4, align 8
  store i8* %73, i8** %74, align 8
  %75 = load i64, i64* @FALSE, align 8
  store i64 %75, i64* %3, align 8
  br label %91

76:                                               ; preds = %69
  %77 = load i64, i64* @TRUE, align 8
  store i64 %77, i64* %3, align 8
  br label %91

78:                                               ; preds = %63
  %79 = load i8**, i8*** %4, align 8
  %80 = load i8*, i8** %79, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %79, align 8
  %82 = load i8**, i8*** %4, align 8
  %83 = call i32 @check_dec_octet(i8** %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %78
  %86 = load i8*, i8** %6, align 8
  %87 = load i8**, i8*** %4, align 8
  store i8* %86, i8** %87, align 8
  %88 = load i64, i64* @FALSE, align 8
  store i64 %88, i64* %3, align 8
  br label %91

89:                                               ; preds = %78
  %90 = load i64, i64* @TRUE, align 8
  store i64 %90, i64* %3, align 8
  br label %91

91:                                               ; preds = %89, %85, %76, %72, %59, %50, %46, %33, %22, %12
  %92 = load i64, i64* %3, align 8
  ret i64 %92
}

declare dso_local i32 @check_dec_octet(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
