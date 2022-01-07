; ModuleID = '/home/carl/AnghaBench/zstd/lib/decompress/extr_huf_decompress.c_HUF_decompress4X1_DCtx_wksp_bmi2.c'
source_filename = "/home/carl/AnghaBench/zstd/lib/decompress/extr_huf_decompress.c_HUF_decompress4X1_DCtx_wksp_bmi2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@srcSize_wrong = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i8*, i64, i8*, i64, i8*, i64, i32)* @HUF_decompress4X1_DCtx_wksp_bmi2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @HUF_decompress4X1_DCtx_wksp_bmi2(i32* %0, i8* %1, i64 %2, i8* %3, i64 %4, i8* %5, i64 %6, i32 %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  store i32* %0, i32** %10, align 8
  store i8* %1, i8** %11, align 8
  store i64 %2, i64* %12, align 8
  store i8* %3, i8** %13, align 8
  store i64 %4, i64* %14, align 8
  store i8* %5, i8** %15, align 8
  store i64 %6, i64* %16, align 8
  store i32 %7, i32* %17, align 4
  %20 = load i8*, i8** %13, align 8
  %21 = bitcast i8* %20 to i32*
  store i32* %21, i32** %18, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = load i8*, i8** %13, align 8
  %24 = load i64, i64* %14, align 8
  %25 = load i8*, i8** %15, align 8
  %26 = load i64, i64* %16, align 8
  %27 = call i64 @HUF_readDTableX1_wksp(i32* %22, i8* %23, i64 %24, i8* %25, i64 %26)
  store i64 %27, i64* %19, align 8
  %28 = load i64, i64* %19, align 8
  %29 = call i64 @HUF_isError(i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %8
  %32 = load i64, i64* %19, align 8
  store i64 %32, i64* %9, align 8
  br label %54

33:                                               ; preds = %8
  %34 = load i64, i64* %19, align 8
  %35 = load i64, i64* %14, align 8
  %36 = icmp uge i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @srcSize_wrong, align 4
  %39 = call i64 @ERROR(i32 %38)
  store i64 %39, i64* %9, align 8
  br label %54

40:                                               ; preds = %33
  %41 = load i64, i64* %19, align 8
  %42 = load i32*, i32** %18, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 %41
  store i32* %43, i32** %18, align 8
  %44 = load i64, i64* %19, align 8
  %45 = load i64, i64* %14, align 8
  %46 = sub i64 %45, %44
  store i64 %46, i64* %14, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = load i64, i64* %12, align 8
  %49 = load i32*, i32** %18, align 8
  %50 = load i64, i64* %14, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = load i32, i32* %17, align 4
  %53 = call i64 @HUF_decompress4X1_usingDTable_internal(i8* %47, i64 %48, i32* %49, i64 %50, i32* %51, i32 %52)
  store i64 %53, i64* %9, align 8
  br label %54

54:                                               ; preds = %40, %37, %31
  %55 = load i64, i64* %9, align 8
  ret i64 %55
}

declare dso_local i64 @HUF_readDTableX1_wksp(i32*, i8*, i64, i8*, i64) #1

declare dso_local i64 @HUF_isError(i64) #1

declare dso_local i64 @ERROR(i32) #1

declare dso_local i64 @HUF_decompress4X1_usingDTable_internal(i8*, i64, i32*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
