; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_zstd_compress.c_ZSTD_writeEpilogue.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_zstd_compress.c_ZSTD_writeEpilogue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [19 x i8] c"ZSTD_writeEpilogue\00", align 1
@ZSTDcs_created = common dso_local global i64 0, align 8
@stage_wrong = common dso_local global i32 0, align 4
@ZSTDcs_init = common dso_local global i64 0, align 8
@ZSTDcs_ongoing = common dso_local global i64 0, align 8
@ZSTDcs_ending = common dso_local global i64 0, align 8
@bt_raw = common dso_local global i64 0, align 8
@dstSize_tooSmall = common dso_local global i32 0, align 4
@ZSTD_blockHeaderSize = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"ZSTD_writeEpilogue: write checksum : %08X\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*, i8*, i64)* @ZSTD_writeEpilogue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTD_writeEpilogue(%struct.TYPE_6__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %8, align 8
  %15 = load i32*, i32** %8, align 8
  store i32* %15, i32** %9, align 8
  store i64 0, i64* %10, align 8
  %16 = call i32 (i32, i8*, ...) @DEBUGLOG(i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ZSTDcs_created, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @stage_wrong, align 4
  %24 = call i64 @ERROR(i32 %23)
  store i64 %24, i64* %4, align 8
  br label %117

25:                                               ; preds = %3
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ZSTDcs_init, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %55

31:                                               ; preds = %25
  %32 = load i8*, i8** %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @ZSTD_writeFrameHeader(i8* %32, i64 %33, i64 %38, i32 0, i32 0)
  store i64 %39, i64* %10, align 8
  %40 = load i64, i64* %10, align 8
  %41 = call i64 @ZSTD_isError(i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %31
  %44 = load i64, i64* %10, align 8
  store i64 %44, i64* %4, align 8
  br label %117

45:                                               ; preds = %31
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* %7, align 8
  %48 = sub i64 %47, %46
  store i64 %48, i64* %7, align 8
  %49 = load i64, i64* %10, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 %49
  store i32* %51, i32** %9, align 8
  %52 = load i64, i64* @ZSTDcs_ongoing, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  br label %55

55:                                               ; preds = %45, %25
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @ZSTDcs_ending, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %82

61:                                               ; preds = %55
  %62 = load i64, i64* @bt_raw, align 8
  %63 = trunc i64 %62 to i32
  %64 = shl i32 %63, 1
  %65 = add nsw i32 1, %64
  %66 = add nsw i32 %65, 0
  store i32 %66, i32* %11, align 4
  %67 = load i64, i64* %7, align 8
  %68 = icmp ult i64 %67, 4
  br i1 %68, label %69, label %72

69:                                               ; preds = %61
  %70 = load i32, i32* @dstSize_tooSmall, align 4
  %71 = call i64 @ERROR(i32 %70)
  store i64 %71, i64* %4, align 8
  br label %117

72:                                               ; preds = %61
  %73 = load i32*, i32** %9, align 8
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @MEM_writeLE32(i32* %73, i32 %74)
  %76 = load i64, i64* @ZSTD_blockHeaderSize, align 8
  %77 = load i32*, i32** %9, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 %76
  store i32* %78, i32** %9, align 8
  %79 = load i64, i64* @ZSTD_blockHeaderSize, align 8
  %80 = load i64, i64* %7, align 8
  %81 = sub i64 %80, %79
  store i64 %81, i64* %7, align 8
  br label %82

82:                                               ; preds = %72, %55
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %107

89:                                               ; preds = %82
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = call i64 @XXH64_digest(i32* %91)
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %12, align 4
  %94 = load i64, i64* %7, align 8
  %95 = icmp ult i64 %94, 4
  br i1 %95, label %96, label %99

96:                                               ; preds = %89
  %97 = load i32, i32* @dstSize_tooSmall, align 4
  %98 = call i64 @ERROR(i32 %97)
  store i64 %98, i64* %4, align 8
  br label %117

99:                                               ; preds = %89
  %100 = load i32, i32* %12, align 4
  %101 = call i32 (i32, i8*, ...) @DEBUGLOG(i32 4, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %100)
  %102 = load i32*, i32** %9, align 8
  %103 = load i32, i32* %12, align 4
  %104 = call i32 @MEM_writeLE32(i32* %102, i32 %103)
  %105 = load i32*, i32** %9, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 4
  store i32* %106, i32** %9, align 8
  br label %107

107:                                              ; preds = %99, %82
  %108 = load i64, i64* @ZSTDcs_created, align 8
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  store i64 %108, i64* %110, align 8
  %111 = load i32*, i32** %9, align 8
  %112 = load i32*, i32** %8, align 8
  %113 = ptrtoint i32* %111 to i64
  %114 = ptrtoint i32* %112 to i64
  %115 = sub i64 %113, %114
  %116 = sdiv exact i64 %115, 4
  store i64 %116, i64* %4, align 8
  br label %117

117:                                              ; preds = %107, %96, %69, %43, %22
  %118 = load i64, i64* %4, align 8
  ret i64 %118
}

declare dso_local i32 @DEBUGLOG(i32, i8*, ...) #1

declare dso_local i64 @ERROR(i32) #1

declare dso_local i64 @ZSTD_writeFrameHeader(i8*, i64, i64, i32, i32) #1

declare dso_local i64 @ZSTD_isError(i64) #1

declare dso_local i32 @MEM_writeLE32(i32*, i32) #1

declare dso_local i64 @XXH64_digest(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
