; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_zstd_decompress.c_ZSTD_initStaticDDict.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_zstd_decompress.c_ZSTD_initStaticDDict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZSTD_dlm_byRef = common dso_local global i64 0, align 8
@ZSTD_dlm_byCopy = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ZSTD_initStaticDDict(i8* %0, i64 %1, i8* %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load i64, i64* %12, align 8
  %17 = load i64, i64* @ZSTD_dlm_byRef, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %6
  br label %22

20:                                               ; preds = %6
  %21 = load i64, i64* %11, align 8
  br label %22

22:                                               ; preds = %20, %19
  %23 = phi i64 [ 0, %19 ], [ %21, %20 ]
  %24 = add i64 4, %23
  store i64 %24, i64* %14, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = bitcast i8* %25 to i32*
  store i32* %26, i32** %15, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = icmp ne i8* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i8*, i8** %10, align 8
  %32 = icmp ne i8* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i8*, i8** %8, align 8
  %36 = ptrtoint i8* %35 to i64
  %37 = and i64 %36, 7
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %22
  store i32* null, i32** %7, align 8
  br label %70

40:                                               ; preds = %22
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* %14, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32* null, i32** %7, align 8
  br label %70

45:                                               ; preds = %40
  %46 = load i64, i64* %12, align 8
  %47 = load i64, i64* @ZSTD_dlm_byCopy, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %45
  %50 = load i32*, i32** %15, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i8*, i8** %10, align 8
  %53 = load i64, i64* %11, align 8
  %54 = call i32 @memcpy(i32* %51, i8* %52, i64 %53)
  %55 = load i32*, i32** %15, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = bitcast i32* %56 to i8*
  store i8* %57, i8** %10, align 8
  br label %58

58:                                               ; preds = %49, %45
  %59 = load i32*, i32** %15, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = load i64, i64* %11, align 8
  %62 = load i64, i64* @ZSTD_dlm_byRef, align 8
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @ZSTD_initDDict_internal(i32* %59, i8* %60, i64 %61, i64 %62, i32 %63)
  %65 = call i64 @ZSTD_isError(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  store i32* null, i32** %7, align 8
  br label %70

68:                                               ; preds = %58
  %69 = load i32*, i32** %15, align 8
  store i32* %69, i32** %7, align 8
  br label %70

70:                                               ; preds = %68, %67, %44, %39
  %71 = load i32*, i32** %7, align 8
  ret i32* %71
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i64 @ZSTD_isError(i32) #1

declare dso_local i32 @ZSTD_initDDict_internal(i32*, i8*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
