; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/Util/Lzma/extr_LzmaUtil.c_Encode.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/Util/Lzma/extr_LzmaUtil.c_Encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 (%struct.TYPE_5__*, i64*, i64)* }

@g_Alloc = common dso_local global i32 0, align 4
@SZ_ERROR_MEM = common dso_local global i64 0, align 8
@SZ_OK = common dso_local global i64 0, align 8
@LZMA_PROPS_SIZE = common dso_local global i32 0, align 4
@SZ_ERROR_WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i32*, i32, i8*)* @Encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @Encode(%struct.TYPE_5__* %0, i32* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  store i8* %17, i8** %9, align 8
  %18 = call i64 @LzmaEnc_Create(i32* @g_Alloc)
  store i64 %18, i64* %10, align 8
  %19 = load i64, i64* %10, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i64, i64* @SZ_ERROR_MEM, align 8
  store i64 %22, i64* %5, align 8
  br label %82

23:                                               ; preds = %4
  %24 = call i32 @LzmaEncProps_Init(i32* %12)
  %25 = load i64, i64* %10, align 8
  %26 = call i64 @LzmaEnc_SetProps(i64 %25, i32* %12)
  store i64 %26, i64* %11, align 8
  %27 = load i64, i64* %11, align 8
  %28 = load i64, i64* @SZ_OK, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %78

30:                                               ; preds = %23
  %31 = load i32, i32* @LZMA_PROPS_SIZE, align 4
  %32 = add nsw i32 %31, 8
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %13, align 8
  %35 = alloca i64, i64 %33, align 16
  store i64 %33, i64* %14, align 8
  %36 = load i32, i32* @LZMA_PROPS_SIZE, align 4
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %15, align 8
  %38 = load i64, i64* %10, align 8
  %39 = call i64 @LzmaEnc_WriteProperties(i64 %38, i64* %35, i64* %15)
  store i64 %39, i64* %11, align 8
  store i32 0, i32* %16, align 4
  br label %40

40:                                               ; preds = %52, %30
  %41 = load i32, i32* %16, align 4
  %42 = icmp slt i32 %41, 8
  br i1 %42, label %43, label %55

43:                                               ; preds = %40
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %16, align 4
  %46 = mul nsw i32 8, %45
  %47 = ashr i32 %44, %46
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* %15, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %15, align 8
  %51 = getelementptr inbounds i64, i64* %35, i64 %49
  store i64 %48, i64* %51, align 8
  br label %52

52:                                               ; preds = %43
  %53 = load i32, i32* %16, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %16, align 4
  br label %40

55:                                               ; preds = %40
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i64 (%struct.TYPE_5__*, i64*, i64)*, i64 (%struct.TYPE_5__*, i64*, i64)** %57, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %60 = load i64, i64* %15, align 8
  %61 = call i64 %58(%struct.TYPE_5__* %59, i64* %35, i64 %60)
  %62 = load i64, i64* %15, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %55
  %65 = load i64, i64* @SZ_ERROR_WRITE, align 8
  store i64 %65, i64* %11, align 8
  br label %76

66:                                               ; preds = %55
  %67 = load i64, i64* %11, align 8
  %68 = load i64, i64* @SZ_OK, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load i64, i64* %10, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = call i64 @LzmaEnc_Encode(i64 %71, %struct.TYPE_5__* %72, i32* %73, i32* null, i32* @g_Alloc, i32* @g_Alloc)
  store i64 %74, i64* %11, align 8
  br label %75

75:                                               ; preds = %70, %66
  br label %76

76:                                               ; preds = %75, %64
  %77 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %77)
  br label %78

78:                                               ; preds = %76, %23
  %79 = load i64, i64* %10, align 8
  %80 = call i32 @LzmaEnc_Destroy(i64 %79, i32* @g_Alloc, i32* @g_Alloc)
  %81 = load i64, i64* %11, align 8
  store i64 %81, i64* %5, align 8
  br label %82

82:                                               ; preds = %78, %21
  %83 = load i64, i64* %5, align 8
  ret i64 %83
}

declare dso_local i64 @LzmaEnc_Create(i32*) #1

declare dso_local i32 @LzmaEncProps_Init(i32*) #1

declare dso_local i64 @LzmaEnc_SetProps(i64, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @LzmaEnc_WriteProperties(i64, i64*, i64*) #1

declare dso_local i64 @LzmaEnc_Encode(i64, %struct.TYPE_5__*, i32*, i32*, i32*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @LzmaEnc_Destroy(i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
