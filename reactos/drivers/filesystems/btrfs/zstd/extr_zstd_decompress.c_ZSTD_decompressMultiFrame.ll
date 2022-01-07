; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_zstd_decompress.c_ZSTD_decompressMultiFrame.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_zstd_decompress.c_ZSTD_decompressMultiFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }

@.str = private unnamed_addr constant [26 x i8] c"ZSTD_decompressMultiFrame\00", align 1
@ZSTD_frameHeaderSize_prefix = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"reading magic number %08X (expecting %08X)\00", align 1
@ZSTD_MAGICNUMBER = common dso_local global i64 0, align 8
@ZSTD_MAGIC_SKIPPABLE_START = common dso_local global i32 0, align 4
@ZSTD_skippableHeaderSize = common dso_local global i64 0, align 8
@srcSize_wrong = common dso_local global i32 0, align 4
@ZSTD_FRAMEIDSIZE = common dso_local global i32 0, align 4
@ZSTD_error_prefix_unknown = common dso_local global i64 0, align 8
@memory_allocation = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*, i8*, i64, i8*, i64, i8*, i64, i32*)* @ZSTD_decompressMultiFrame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTD_decompressMultiFrame(%struct.TYPE_7__* %0, i8* %1, i64 %2, i8* %3, i64 %4, i8* %5, i64 %6, i32* %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %10, align 8
  store i8* %1, i8** %11, align 8
  store i64 %2, i64* %12, align 8
  store i8* %3, i8** %13, align 8
  store i64 %4, i64* %14, align 8
  store i8* %5, i8** %15, align 8
  store i64 %6, i64* %16, align 8
  store i32* %7, i32** %17, align 8
  %23 = load i8*, i8** %11, align 8
  store i8* %23, i8** %18, align 8
  store i32 0, i32* %19, align 4
  %24 = call i32 (i32, i8*, ...) @DEBUGLOG(i32 5, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %25 = load i8*, i8** %15, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %8
  %28 = load i32*, i32** %17, align 8
  %29 = icmp eq i32* %28, null
  br label %30

30:                                               ; preds = %27, %8
  %31 = phi i1 [ true, %8 ], [ %29, %27 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load i32*, i32** %17, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load i32*, i32** %17, align 8
  %38 = call i8* @ZSTD_DDictDictContent(i32* %37)
  store i8* %38, i8** %15, align 8
  %39 = load i32*, i32** %17, align 8
  %40 = call i64 @ZSTD_DDictDictSize(i32* %39)
  store i64 %40, i64* %16, align 8
  br label %41

41:                                               ; preds = %36, %30
  br label %42

42:                                               ; preds = %124, %79, %41
  %43 = load i64, i64* %14, align 8
  %44 = load i64, i64* @ZSTD_frameHeaderSize_prefix, align 8
  %45 = icmp uge i64 %43, %44
  br i1 %45, label %46, label %131

46:                                               ; preds = %42
  %47 = load i8*, i8** %13, align 8
  %48 = call i32 @MEM_readLE32(i8* %47)
  store i32 %48, i32* %20, align 4
  %49 = load i32, i32* %20, align 4
  %50 = load i64, i64* @ZSTD_MAGICNUMBER, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i32 (i32, i8*, ...) @DEBUGLOG(i32 4, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %51)
  %53 = load i32, i32* %20, align 4
  %54 = and i32 %53, -16
  %55 = load i32, i32* @ZSTD_MAGIC_SKIPPABLE_START, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %86

57:                                               ; preds = %46
  %58 = load i64, i64* %14, align 8
  %59 = load i64, i64* @ZSTD_skippableHeaderSize, align 8
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32, i32* @srcSize_wrong, align 4
  %63 = call i64 @ERROR(i32 %62)
  store i64 %63, i64* %9, align 8
  br label %143

64:                                               ; preds = %57
  %65 = load i8*, i8** %13, align 8
  %66 = load i32, i32* @ZSTD_FRAMEIDSIZE, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr i8, i8* %65, i64 %67
  %69 = call i32 @MEM_readLE32(i8* %68)
  %70 = sext i32 %69 to i64
  %71 = load i64, i64* @ZSTD_skippableHeaderSize, align 8
  %72 = add i64 %70, %71
  store i64 %72, i64* %21, align 8
  %73 = load i64, i64* %14, align 8
  %74 = load i64, i64* %21, align 8
  %75 = icmp ult i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %64
  %77 = load i32, i32* @srcSize_wrong, align 4
  %78 = call i64 @ERROR(i32 %77)
  store i64 %78, i64* %9, align 8
  br label %143

79:                                               ; preds = %64
  %80 = load i8*, i8** %13, align 8
  %81 = load i64, i64* %21, align 8
  %82 = getelementptr i8, i8* %80, i64 %81
  store i8* %82, i8** %13, align 8
  %83 = load i64, i64* %21, align 8
  %84 = load i64, i64* %14, align 8
  %85 = sub i64 %84, %83
  store i64 %85, i64* %14, align 8
  br label %42

86:                                               ; preds = %46
  %87 = load i32*, i32** %17, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %91 = load i32*, i32** %17, align 8
  %92 = call i32 @ZSTD_decompressBegin_usingDDict(%struct.TYPE_7__* %90, i32* %91)
  %93 = call i32 @CHECK_F(i32 %92)
  br label %100

94:                                               ; preds = %86
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %96 = load i8*, i8** %15, align 8
  %97 = load i64, i64* %16, align 8
  %98 = call i32 @ZSTD_decompressBegin_usingDict(%struct.TYPE_7__* %95, i8* %96, i64 %97)
  %99 = call i32 @CHECK_F(i32 %98)
  br label %100

100:                                              ; preds = %94, %89
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %102 = load i8*, i8** %11, align 8
  %103 = call i32 @ZSTD_checkContinuity(%struct.TYPE_7__* %101, i8* %102)
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %105 = load i8*, i8** %11, align 8
  %106 = load i64, i64* %12, align 8
  %107 = call i64 @ZSTD_decompressFrame(%struct.TYPE_7__* %104, i8* %105, i64 %106, i8** %13, i64* %14)
  store i64 %107, i64* %22, align 8
  %108 = load i64, i64* %22, align 8
  %109 = call i64 @ZSTD_getErrorCode(i64 %108)
  %110 = load i64, i64* @ZSTD_error_prefix_unknown, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %100
  %113 = load i32, i32* %19, align 4
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load i32, i32* @srcSize_wrong, align 4
  %117 = call i64 @ERROR(i32 %116)
  store i64 %117, i64* %9, align 8
  br label %143

118:                                              ; preds = %112, %100
  %119 = load i64, i64* %22, align 8
  %120 = call i64 @ZSTD_isError(i64 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %118
  %123 = load i64, i64* %22, align 8
  store i64 %123, i64* %9, align 8
  br label %143

124:                                              ; preds = %118
  %125 = load i8*, i8** %11, align 8
  %126 = load i64, i64* %22, align 8
  %127 = getelementptr i8, i8* %125, i64 %126
  store i8* %127, i8** %11, align 8
  %128 = load i64, i64* %22, align 8
  %129 = load i64, i64* %12, align 8
  %130 = sub i64 %129, %128
  store i64 %130, i64* %12, align 8
  store i32 1, i32* %19, align 4
  br label %42

131:                                              ; preds = %42
  %132 = load i64, i64* %14, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load i32, i32* @srcSize_wrong, align 4
  %136 = call i64 @ERROR(i32 %135)
  store i64 %136, i64* %9, align 8
  br label %143

137:                                              ; preds = %131
  %138 = load i8*, i8** %11, align 8
  %139 = load i8*, i8** %18, align 8
  %140 = ptrtoint i8* %138 to i64
  %141 = ptrtoint i8* %139 to i64
  %142 = sub i64 %140, %141
  store i64 %142, i64* %9, align 8
  br label %143

143:                                              ; preds = %137, %134, %122, %115, %76, %61
  %144 = load i64, i64* %9, align 8
  ret i64 %144
}

declare dso_local i32 @DEBUGLOG(i32, i8*, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @ZSTD_DDictDictContent(i32*) #1

declare dso_local i64 @ZSTD_DDictDictSize(i32*) #1

declare dso_local i32 @MEM_readLE32(i8*) #1

declare dso_local i64 @ERROR(i32) #1

declare dso_local i32 @CHECK_F(i32) #1

declare dso_local i32 @ZSTD_decompressBegin_usingDDict(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @ZSTD_decompressBegin_usingDict(%struct.TYPE_7__*, i8*, i64) #1

declare dso_local i32 @ZSTD_checkContinuity(%struct.TYPE_7__*, i8*) #1

declare dso_local i64 @ZSTD_decompressFrame(%struct.TYPE_7__*, i8*, i64, i8**, i64*) #1

declare dso_local i64 @ZSTD_getErrorCode(i64) #1

declare dso_local i64 @ZSTD_isError(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
