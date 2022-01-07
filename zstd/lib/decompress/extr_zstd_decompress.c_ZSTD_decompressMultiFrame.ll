; ModuleID = '/home/carl/AnghaBench/zstd/lib/decompress/extr_zstd_decompress.c_ZSTD_decompressMultiFrame.c'
source_filename = "/home/carl/AnghaBench/zstd/lib/decompress/extr_zstd_decompress.c_ZSTD_decompressMultiFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32 }

@.str = private unnamed_addr constant [26 x i8] c"ZSTD_decompressMultiFrame\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"reading magic number %08X (expecting %08X)\00", align 1
@ZSTD_MAGICNUMBER = common dso_local global i32 0, align 4
@ZSTD_MAGIC_SKIPPABLE_MASK = common dso_local global i32 0, align 4
@ZSTD_MAGIC_SKIPPABLE_START = common dso_local global i32 0, align 4
@ZSTD_error_prefix_unknown = common dso_local global i64 0, align 8
@srcSize_wrong = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [484 x i8] c"at least one frame successfully completed, but following bytes are garbage: it's more likely to be a srcSize error, specifying more bytes than compressed size of frame(s). This error message replaces ERROR(prefix_unknown), which would be confusing, as the first header is actually correct. Note that one could be unlucky, it might be a corruption error instead, happening right at the place where we expect zstd magic bytes. But this is _much_ less likely than a srcSize field error.\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"input not entirely consumed\00", align 1
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
  %38 = call i8* @ZSTD_DDict_dictContent(i32* %37)
  store i8* %38, i8** %15, align 8
  %39 = load i32*, i32** %17, align 8
  %40 = call i64 @ZSTD_DDict_dictSize(i32* %39)
  store i64 %40, i64* %16, align 8
  br label %41

41:                                               ; preds = %36, %30
  br label %42

42:                                               ; preds = %119, %60, %41
  %43 = load i64, i64* %14, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @ZSTD_startingInputLength(i32 %46)
  %48 = icmp uge i64 %43, %47
  br i1 %48, label %49, label %133

49:                                               ; preds = %42
  %50 = load i8*, i8** %13, align 8
  %51 = call i32 @MEM_readLE32(i8* %50)
  store i32 %51, i32* %20, align 4
  %52 = load i32, i32* %20, align 4
  %53 = load i32, i32* @ZSTD_MAGICNUMBER, align 4
  %54 = call i32 (i32, i8*, ...) @DEBUGLOG(i32 4, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %53)
  %55 = load i32, i32* %20, align 4
  %56 = load i32, i32* @ZSTD_MAGIC_SKIPPABLE_MASK, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* @ZSTD_MAGIC_SKIPPABLE_START, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %79

60:                                               ; preds = %49
  %61 = load i8*, i8** %13, align 8
  %62 = load i64, i64* %14, align 8
  %63 = call i64 @readSkippableFrameSize(i8* %61, i64 %62)
  store i64 %63, i64* %21, align 8
  %64 = load i64, i64* %21, align 8
  %65 = call i32 @FORWARD_IF_ERROR(i64 %64)
  %66 = load i64, i64* %21, align 8
  %67 = load i64, i64* %14, align 8
  %68 = icmp ule i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = load i8*, i8** %13, align 8
  %72 = bitcast i8* %71 to i32*
  %73 = load i64, i64* %21, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = bitcast i32* %74 to i8*
  store i8* %75, i8** %13, align 8
  %76 = load i64, i64* %21, align 8
  %77 = load i64, i64* %14, align 8
  %78 = sub i64 %77, %76
  store i64 %78, i64* %14, align 8
  br label %42

79:                                               ; preds = %49
  %80 = load i32*, i32** %17, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %84 = load i32*, i32** %17, align 8
  %85 = call i64 @ZSTD_decompressBegin_usingDDict(%struct.TYPE_7__* %83, i32* %84)
  %86 = call i32 @FORWARD_IF_ERROR(i64 %85)
  br label %93

87:                                               ; preds = %79
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %89 = load i8*, i8** %15, align 8
  %90 = load i64, i64* %16, align 8
  %91 = call i64 @ZSTD_decompressBegin_usingDict(%struct.TYPE_7__* %88, i8* %89, i64 %90)
  %92 = call i32 @FORWARD_IF_ERROR(i64 %91)
  br label %93

93:                                               ; preds = %87, %82
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %95 = load i8*, i8** %11, align 8
  %96 = call i32 @ZSTD_checkContinuity(%struct.TYPE_7__* %94, i8* %95)
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %98 = load i8*, i8** %11, align 8
  %99 = load i64, i64* %12, align 8
  %100 = call i64 @ZSTD_decompressFrame(%struct.TYPE_7__* %97, i8* %98, i64 %99, i8** %13, i64* %14)
  store i64 %100, i64* %22, align 8
  %101 = load i64, i64* %22, align 8
  %102 = call i64 @ZSTD_getErrorCode(i64 %101)
  %103 = load i64, i64* @ZSTD_error_prefix_unknown, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %93
  %106 = load i32, i32* %19, align 4
  %107 = icmp eq i32 %106, 1
  br label %108

108:                                              ; preds = %105, %93
  %109 = phi i1 [ false, %93 ], [ %107, %105 ]
  %110 = zext i1 %109 to i32
  %111 = sext i32 %110 to i64
  %112 = load i32, i32* @srcSize_wrong, align 4
  %113 = call i32 @RETURN_ERROR_IF(i64 %111, i32 %112, i8* getelementptr inbounds ([484 x i8], [484 x i8]* @.str.2, i64 0, i64 0))
  %114 = load i64, i64* %22, align 8
  %115 = call i64 @ZSTD_isError(i64 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %108
  %118 = load i64, i64* %22, align 8
  store i64 %118, i64* %9, align 8
  br label %145

119:                                              ; preds = %108
  %120 = load i64, i64* %22, align 8
  %121 = load i64, i64* %12, align 8
  %122 = icmp ule i64 %120, %121
  %123 = zext i1 %122 to i32
  %124 = call i32 @assert(i32 %123)
  %125 = load i8*, i8** %11, align 8
  %126 = bitcast i8* %125 to i32*
  %127 = load i64, i64* %22, align 8
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  %129 = bitcast i32* %128 to i8*
  store i8* %129, i8** %11, align 8
  %130 = load i64, i64* %22, align 8
  %131 = load i64, i64* %12, align 8
  %132 = sub i64 %131, %130
  store i64 %132, i64* %12, align 8
  store i32 1, i32* %19, align 4
  br label %42

133:                                              ; preds = %42
  %134 = load i64, i64* %14, align 8
  %135 = load i32, i32* @srcSize_wrong, align 4
  %136 = call i32 @RETURN_ERROR_IF(i64 %134, i32 %135, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %137 = load i8*, i8** %11, align 8
  %138 = bitcast i8* %137 to i32*
  %139 = load i8*, i8** %18, align 8
  %140 = bitcast i8* %139 to i32*
  %141 = ptrtoint i32* %138 to i64
  %142 = ptrtoint i32* %140 to i64
  %143 = sub i64 %141, %142
  %144 = sdiv exact i64 %143, 4
  store i64 %144, i64* %9, align 8
  br label %145

145:                                              ; preds = %133, %117
  %146 = load i64, i64* %9, align 8
  ret i64 %146
}

declare dso_local i32 @DEBUGLOG(i32, i8*, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @ZSTD_DDict_dictContent(i32*) #1

declare dso_local i64 @ZSTD_DDict_dictSize(i32*) #1

declare dso_local i64 @ZSTD_startingInputLength(i32) #1

declare dso_local i32 @MEM_readLE32(i8*) #1

declare dso_local i64 @readSkippableFrameSize(i8*, i64) #1

declare dso_local i32 @FORWARD_IF_ERROR(i64) #1

declare dso_local i64 @ZSTD_decompressBegin_usingDDict(%struct.TYPE_7__*, i32*) #1

declare dso_local i64 @ZSTD_decompressBegin_usingDict(%struct.TYPE_7__*, i8*, i64) #1

declare dso_local i32 @ZSTD_checkContinuity(%struct.TYPE_7__*, i8*) #1

declare dso_local i64 @ZSTD_decompressFrame(%struct.TYPE_7__*, i8*, i64, i8**, i64*) #1

declare dso_local i32 @RETURN_ERROR_IF(i64, i32, i8*) #1

declare dso_local i64 @ZSTD_getErrorCode(i64) #1

declare dso_local i64 @ZSTD_isError(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
