; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zio_crypt.c_zio_do_crypt_abd.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zio_crypt.c_zio_do_crypt_abd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zio_do_crypt_abd(i64 %0, i32* %1, i32 %2, i64 %3, i32* %4, i32* %5, i32* %6, i32 %7, i32* %8, i32* %9, i64* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i64*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  store i64 %0, i64* %13, align 8
  store i32* %1, i32** %14, align 8
  store i32 %2, i32* %15, align 4
  store i64 %3, i64* %16, align 8
  store i32* %4, i32** %17, align 8
  store i32* %5, i32** %18, align 8
  store i32* %6, i32** %19, align 8
  store i32 %7, i32* %20, align 4
  store i32* %8, i32** %21, align 8
  store i32* %9, i32** %22, align 8
  store i64* %10, i64** %23, align 8
  %27 = load i64, i64* %13, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %11
  %30 = load i32*, i32** %21, align 8
  %31 = load i32, i32* %20, align 4
  %32 = call i8* @abd_borrow_buf_copy(i32* %30, i32 %31)
  store i8* %32, i8** %25, align 8
  %33 = load i32*, i32** %22, align 8
  %34 = load i32, i32* %20, align 4
  %35 = call i8* @abd_borrow_buf(i32* %33, i32 %34)
  store i8* %35, i8** %26, align 8
  br label %43

36:                                               ; preds = %11
  %37 = load i32*, i32** %21, align 8
  %38 = load i32, i32* %20, align 4
  %39 = call i8* @abd_borrow_buf(i32* %37, i32 %38)
  store i8* %39, i8** %25, align 8
  %40 = load i32*, i32** %22, align 8
  %41 = load i32, i32* %20, align 4
  %42 = call i8* @abd_borrow_buf_copy(i32* %40, i32 %41)
  store i8* %42, i8** %26, align 8
  br label %43

43:                                               ; preds = %36, %29
  %44 = load i64, i64* %13, align 8
  %45 = load i32*, i32** %14, align 8
  %46 = load i32, i32* %15, align 4
  %47 = load i64, i64* %16, align 8
  %48 = load i32*, i32** %17, align 8
  %49 = load i32*, i32** %18, align 8
  %50 = load i32*, i32** %19, align 8
  %51 = load i32, i32* %20, align 4
  %52 = load i8*, i8** %25, align 8
  %53 = load i8*, i8** %26, align 8
  %54 = load i64*, i64** %23, align 8
  %55 = call i32 @zio_do_crypt_data(i64 %44, i32* %45, i32 %46, i64 %47, i32* %48, i32* %49, i32* %50, i32 %51, i8* %52, i8* %53, i64* %54)
  store i32 %55, i32* %24, align 4
  %56 = load i32, i32* %24, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %43
  br label %81

59:                                               ; preds = %43
  %60 = load i64, i64* %13, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %59
  %63 = load i32*, i32** %21, align 8
  %64 = load i8*, i8** %25, align 8
  %65 = load i32, i32* %20, align 4
  %66 = call i32 @abd_return_buf(i32* %63, i8* %64, i32 %65)
  %67 = load i32*, i32** %22, align 8
  %68 = load i8*, i8** %26, align 8
  %69 = load i32, i32* %20, align 4
  %70 = call i32 @abd_return_buf_copy(i32* %67, i8* %68, i32 %69)
  br label %80

71:                                               ; preds = %59
  %72 = load i32*, i32** %21, align 8
  %73 = load i8*, i8** %25, align 8
  %74 = load i32, i32* %20, align 4
  %75 = call i32 @abd_return_buf_copy(i32* %72, i8* %73, i32 %74)
  %76 = load i32*, i32** %22, align 8
  %77 = load i8*, i8** %26, align 8
  %78 = load i32, i32* %20, align 4
  %79 = call i32 @abd_return_buf(i32* %76, i8* %77, i32 %78)
  br label %80

80:                                               ; preds = %71, %62
  store i32 0, i32* %12, align 4
  br label %104

81:                                               ; preds = %58
  %82 = load i64, i64* %13, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %81
  %85 = load i32*, i32** %21, align 8
  %86 = load i8*, i8** %25, align 8
  %87 = load i32, i32* %20, align 4
  %88 = call i32 @abd_return_buf(i32* %85, i8* %86, i32 %87)
  %89 = load i32*, i32** %22, align 8
  %90 = load i8*, i8** %26, align 8
  %91 = load i32, i32* %20, align 4
  %92 = call i32 @abd_return_buf_copy(i32* %89, i8* %90, i32 %91)
  br label %102

93:                                               ; preds = %81
  %94 = load i32*, i32** %21, align 8
  %95 = load i8*, i8** %25, align 8
  %96 = load i32, i32* %20, align 4
  %97 = call i32 @abd_return_buf_copy(i32* %94, i8* %95, i32 %96)
  %98 = load i32*, i32** %22, align 8
  %99 = load i8*, i8** %26, align 8
  %100 = load i32, i32* %20, align 4
  %101 = call i32 @abd_return_buf(i32* %98, i8* %99, i32 %100)
  br label %102

102:                                              ; preds = %93, %84
  %103 = load i32, i32* %24, align 4
  store i32 %103, i32* %12, align 4
  br label %104

104:                                              ; preds = %102, %80
  %105 = load i32, i32* %12, align 4
  ret i32 %105
}

declare dso_local i8* @abd_borrow_buf_copy(i32*, i32) #1

declare dso_local i8* @abd_borrow_buf(i32*, i32) #1

declare dso_local i32 @zio_do_crypt_data(i64, i32*, i32, i64, i32*, i32*, i32*, i32, i8*, i8*, i64*) #1

declare dso_local i32 @abd_return_buf(i32*, i8*, i32) #1

declare dso_local i32 @abd_return_buf_copy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
