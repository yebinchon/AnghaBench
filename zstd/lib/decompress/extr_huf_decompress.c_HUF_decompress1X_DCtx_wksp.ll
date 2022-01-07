; ModuleID = '/home/carl/AnghaBench/zstd/lib/decompress/extr_huf_decompress.c_HUF_decompress1X_DCtx_wksp.c'
source_filename = "/home/carl/AnghaBench/zstd/lib/decompress/extr_huf_decompress.c_HUF_decompress1X_DCtx_wksp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dstSize_tooSmall = common dso_local global i32 0, align 4
@corruption_detected = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @HUF_decompress1X_DCtx_wksp(i32* %0, i8* %1, i64 %2, i8* %3, i64 %4, i8* %5, i64 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  %17 = load i64, i64* %11, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %7
  %20 = load i32, i32* @dstSize_tooSmall, align 4
  %21 = call i64 @ERROR(i32 %20)
  store i64 %21, i64* %8, align 8
  br label %76

22:                                               ; preds = %7
  %23 = load i64, i64* %13, align 8
  %24 = load i64, i64* %11, align 8
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @corruption_detected, align 4
  %28 = call i64 @ERROR(i32 %27)
  store i64 %28, i64* %8, align 8
  br label %76

29:                                               ; preds = %22
  %30 = load i64, i64* %13, align 8
  %31 = load i64, i64* %11, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i8*, i8** %10, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = load i64, i64* %11, align 8
  %37 = call i32 @memcpy(i8* %34, i8* %35, i64 %36)
  %38 = load i64, i64* %11, align 8
  store i64 %38, i64* %8, align 8
  br label %76

39:                                               ; preds = %29
  %40 = load i64, i64* %13, align 8
  %41 = icmp eq i64 %40, 1
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load i8*, i8** %10, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = bitcast i8* %44 to i32*
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* %11, align 8
  %48 = call i32 @memset(i8* %43, i32 %46, i64 %47)
  %49 = load i64, i64* %11, align 8
  store i64 %49, i64* %8, align 8
  br label %76

50:                                               ; preds = %39
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* %13, align 8
  %53 = call i32 @HUF_selectDecoder(i64 %51, i64 %52)
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %16, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %50
  %57 = load i32*, i32** %9, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = load i64, i64* %11, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = load i64, i64* %13, align 8
  %62 = load i8*, i8** %14, align 8
  %63 = load i64, i64* %15, align 8
  %64 = call i64 @HUF_decompress1X2_DCtx_wksp(i32* %57, i8* %58, i64 %59, i8* %60, i64 %61, i8* %62, i64 %63)
  br label %74

65:                                               ; preds = %50
  %66 = load i32*, i32** %9, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = load i64, i64* %11, align 8
  %69 = load i8*, i8** %12, align 8
  %70 = load i64, i64* %13, align 8
  %71 = load i8*, i8** %14, align 8
  %72 = load i64, i64* %15, align 8
  %73 = call i64 @HUF_decompress1X1_DCtx_wksp(i32* %66, i8* %67, i64 %68, i8* %69, i64 %70, i8* %71, i64 %72)
  br label %74

74:                                               ; preds = %65, %56
  %75 = phi i64 [ %64, %56 ], [ %73, %65 ]
  store i64 %75, i64* %8, align 8
  br label %76

76:                                               ; preds = %74, %42, %33, %26, %19
  %77 = load i64, i64* %8, align 8
  ret i64 %77
}

declare dso_local i64 @ERROR(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @HUF_selectDecoder(i64, i64) #1

declare dso_local i64 @HUF_decompress1X2_DCtx_wksp(i32*, i8*, i64, i8*, i64, i8*, i64) #1

declare dso_local i64 @HUF_decompress1X1_DCtx_wksp(i32*, i8*, i64, i8*, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
