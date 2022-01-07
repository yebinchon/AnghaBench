; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_zstd_decompress.c_ZSTD_findFrameCompressedSize.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_zstd_decompress.c_ZSTD_findFrameCompressedSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64 }

@ZSTD_skippableHeaderSize = common dso_local global i64 0, align 8
@ZSTD_MAGIC_SKIPPABLE_START = common dso_local global i32 0, align 4
@ZSTD_FRAMEIDSIZE = common dso_local global i32 0, align 4
@srcSize_wrong = common dso_local global i32 0, align 4
@ZSTD_blockHeaderSize = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ZSTD_findFrameCompressedSize(i8* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_6__, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_5__, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @ZSTD_skippableHeaderSize, align 8
  %15 = icmp uge i64 %13, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = call i64 @MEM_readLE32(i8* %17)
  %19 = and i64 %18, 4294967280
  %20 = load i32, i32* @ZSTD_MAGIC_SKIPPABLE_START, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp eq i64 %19, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %16
  %24 = load i64, i64* @ZSTD_skippableHeaderSize, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = load i32, i32* @ZSTD_FRAMEIDSIZE, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr i8, i8* %25, i64 %27
  %29 = call i64 @MEM_readLE32(i8* %28)
  %30 = add i64 %24, %29
  store i64 %30, i64* %3, align 8
  br label %111

31:                                               ; preds = %16, %2
  %32 = load i8*, i8** %4, align 8
  store i8* %32, i8** %6, align 8
  %33 = load i8*, i8** %6, align 8
  store i8* %33, i8** %7, align 8
  %34 = load i64, i64* %5, align 8
  store i64 %34, i64* %8, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = load i64, i64* %5, align 8
  %37 = call i64 @ZSTD_getFrameHeader(%struct.TYPE_6__* %9, i8* %35, i64 %36)
  store i64 %37, i64* %10, align 8
  %38 = load i64, i64* %10, align 8
  %39 = call i64 @ZSTD_isError(i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = load i64, i64* %10, align 8
  store i64 %42, i64* %3, align 8
  br label %111

43:                                               ; preds = %31
  %44 = load i64, i64* %10, align 8
  %45 = icmp ugt i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* @srcSize_wrong, align 4
  %48 = call i64 @ERROR(i32 %47)
  store i64 %48, i64* %3, align 8
  br label %111

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = getelementptr i8, i8* %52, i64 %51
  store i8* %53, i8** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %8, align 8
  %57 = sub i64 %56, %55
  store i64 %57, i64* %8, align 8
  br label %58

58:                                               ; preds = %49, %91
  %59 = load i8*, i8** %6, align 8
  %60 = load i64, i64* %8, align 8
  %61 = call i64 @ZSTD_getcBlockSize(i8* %59, i64 %60, %struct.TYPE_5__* %11)
  store i64 %61, i64* %12, align 8
  %62 = load i64, i64* %12, align 8
  %63 = call i64 @ZSTD_isError(i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i64, i64* %12, align 8
  store i64 %66, i64* %3, align 8
  br label %111

67:                                               ; preds = %58
  %68 = load i64, i64* @ZSTD_blockHeaderSize, align 8
  %69 = load i64, i64* %12, align 8
  %70 = add i64 %68, %69
  %71 = load i64, i64* %8, align 8
  %72 = icmp ugt i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load i32, i32* @srcSize_wrong, align 4
  %75 = call i64 @ERROR(i32 %74)
  store i64 %75, i64* %3, align 8
  br label %111

76:                                               ; preds = %67
  %77 = load i64, i64* @ZSTD_blockHeaderSize, align 8
  %78 = load i64, i64* %12, align 8
  %79 = add i64 %77, %78
  %80 = load i8*, i8** %6, align 8
  %81 = getelementptr i8, i8* %80, i64 %79
  store i8* %81, i8** %6, align 8
  %82 = load i64, i64* @ZSTD_blockHeaderSize, align 8
  %83 = load i64, i64* %12, align 8
  %84 = add i64 %82, %83
  %85 = load i64, i64* %8, align 8
  %86 = sub i64 %85, %84
  store i64 %86, i64* %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %76
  br label %92

91:                                               ; preds = %76
  br label %58

92:                                               ; preds = %90
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %92
  %97 = load i64, i64* %8, align 8
  %98 = icmp ult i64 %97, 4
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i32, i32* @srcSize_wrong, align 4
  %101 = call i64 @ERROR(i32 %100)
  store i64 %101, i64* %3, align 8
  br label %111

102:                                              ; preds = %96
  %103 = load i8*, i8** %6, align 8
  %104 = getelementptr i8, i8* %103, i64 4
  store i8* %104, i8** %6, align 8
  br label %105

105:                                              ; preds = %102, %92
  %106 = load i8*, i8** %6, align 8
  %107 = load i8*, i8** %7, align 8
  %108 = ptrtoint i8* %106 to i64
  %109 = ptrtoint i8* %107 to i64
  %110 = sub i64 %108, %109
  store i64 %110, i64* %3, align 8
  br label %111

111:                                              ; preds = %105, %99, %73, %65, %46, %41, %23
  %112 = load i64, i64* %3, align 8
  ret i64 %112
}

declare dso_local i64 @MEM_readLE32(i8*) #1

declare dso_local i64 @ZSTD_getFrameHeader(%struct.TYPE_6__*, i8*, i64) #1

declare dso_local i64 @ZSTD_isError(i64) #1

declare dso_local i64 @ERROR(i32) #1

declare dso_local i64 @ZSTD_getcBlockSize(i8*, i64, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
