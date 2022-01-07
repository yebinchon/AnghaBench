; ModuleID = '/home/carl/AnghaBench/zstd/contrib/linux-kernel/lib/zstd/extr_huf_compress.c_HUF_compressWeights_wksp.c'
source_filename = "/home/carl/AnghaBench/zstd/contrib/linux-kernel/lib/zstd/extr_huf_compress.c_HUF_compressWeights_wksp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HUF_TABLELOG_MAX = common dso_local global i32 0, align 4
@MAX_FSE_TABLELOG_FOR_HUFF_HEADER = common dso_local global i32 0, align 4
@tableLog_tooLarge = common dso_local global i32 0, align 4
@maxCount = common dso_local global i64 0, align 8
@hSize = common dso_local global i64 0, align 8
@cSize = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @HUF_compressWeights_wksp(i8* %0, i64 %1, i8* %2, i64 %3, i8* %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = bitcast i8* %23 to i32*
  store i32* %24, i32** %14, align 8
  %25 = load i32*, i32** %14, align 8
  store i32* %25, i32** %15, align 8
  %26 = load i32*, i32** %14, align 8
  %27 = load i64, i64* %9, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  store i32* %28, i32** %16, align 8
  %29 = load i32, i32* @HUF_TABLELOG_MAX, align 4
  store i32 %29, i32* %17, align 4
  %30 = load i32, i32* @MAX_FSE_TABLELOG_FOR_HUFF_HEADER, align 4
  store i32 %30, i32* %18, align 4
  store i64 0, i64* %22, align 8
  %31 = call i32 @HUF_STATIC_ASSERT(i32 1)
  %32 = load i8*, i8** %12, align 8
  %33 = bitcast i8* %32 to i32*
  %34 = load i64, i64* %22, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  store i32* %35, i32** %19, align 8
  %36 = load i32, i32* @MAX_FSE_TABLELOG_FOR_HUFF_HEADER, align 4
  %37 = load i32, i32* @HUF_TABLELOG_MAX, align 4
  %38 = call i64 @FSE_CTABLE_SIZE_U32(i32 %36, i32 %37)
  %39 = load i64, i64* %22, align 8
  %40 = add i64 %39, %38
  store i64 %40, i64* %22, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = bitcast i8* %41 to i32*
  %43 = load i64, i64* %22, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32* %44, i32** %20, align 8
  %45 = load i32, i32* @HUF_TABLELOG_MAX, align 4
  %46 = add nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* %22, align 8
  %49 = add i64 %48, %47
  store i64 %49, i64* %22, align 8
  %50 = load i8*, i8** %12, align 8
  %51 = bitcast i8* %50 to i32*
  %52 = load i64, i64* %22, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  store i32* %53, i32** %21, align 8
  %54 = load i32, i32* @HUF_TABLELOG_MAX, align 4
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = mul i64 4, %56
  %58 = trunc i64 %57 to i32
  %59 = call i32 @ALIGN(i32 %58, i32 4)
  %60 = ashr i32 %59, 2
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* %22, align 8
  %63 = add i64 %62, %61
  store i64 %63, i64* %22, align 8
  %64 = load i64, i64* %22, align 8
  %65 = shl i64 %64, 2
  %66 = load i64, i64* %13, align 8
  %67 = icmp ugt i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %6
  %69 = load i32, i32* @tableLog_tooLarge, align 4
  %70 = call i64 @ERROR(i32 %69)
  store i64 %70, i64* %7, align 8
  br label %163

71:                                               ; preds = %6
  %72 = load i8*, i8** %12, align 8
  %73 = bitcast i8* %72 to i32*
  %74 = load i64, i64* %22, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = bitcast i32* %75 to i8*
  store i8* %76, i8** %12, align 8
  %77 = load i64, i64* %22, align 8
  %78 = shl i64 %77, 2
  %79 = load i64, i64* %13, align 8
  %80 = sub i64 %79, %78
  store i64 %80, i64* %13, align 8
  %81 = load i64, i64* %11, align 8
  %82 = icmp ule i64 %81, 1
  br i1 %82, label %83, label %84

83:                                               ; preds = %71
  store i64 0, i64* %7, align 8
  br label %163

84:                                               ; preds = %71
  %85 = load i64, i64* @maxCount, align 8
  %86 = load i32*, i32** %20, align 8
  %87 = load i8*, i8** %10, align 8
  %88 = load i64, i64* %11, align 8
  %89 = call i32 @FSE_count_simple(i32* %86, i32* %17, i8* %87, i64 %88)
  %90 = call i32 @CHECK_V_F(i64 %85, i32 %89)
  %91 = load i64, i64* @maxCount, align 8
  %92 = load i64, i64* %11, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %84
  store i64 1, i64* %7, align 8
  br label %163

95:                                               ; preds = %84
  %96 = load i64, i64* @maxCount, align 8
  %97 = icmp eq i64 %96, 1
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  store i64 0, i64* %7, align 8
  br label %163

99:                                               ; preds = %95
  %100 = load i32, i32* %18, align 4
  %101 = load i64, i64* %11, align 8
  %102 = load i32, i32* %17, align 4
  %103 = call i32 @FSE_optimalTableLog(i32 %100, i64 %101, i32 %102)
  store i32 %103, i32* %18, align 4
  %104 = load i32*, i32** %21, align 8
  %105 = load i32, i32* %18, align 4
  %106 = load i32*, i32** %20, align 8
  %107 = load i64, i64* %11, align 8
  %108 = load i32, i32* %17, align 4
  %109 = call i32 @FSE_normalizeCount(i32* %104, i32 %105, i32* %106, i64 %107, i32 %108)
  %110 = call i32 @CHECK_F(i32 %109)
  %111 = load i64, i64* @hSize, align 8
  %112 = load i32*, i32** %15, align 8
  %113 = load i32*, i32** %16, align 8
  %114 = load i32*, i32** %15, align 8
  %115 = ptrtoint i32* %113 to i64
  %116 = ptrtoint i32* %114 to i64
  %117 = sub i64 %115, %116
  %118 = sdiv exact i64 %117, 4
  %119 = trunc i64 %118 to i32
  %120 = load i32*, i32** %21, align 8
  %121 = load i32, i32* %17, align 4
  %122 = load i32, i32* %18, align 4
  %123 = call i32 @FSE_writeNCount(i32* %112, i32 %119, i32* %120, i32 %121, i32 %122)
  %124 = call i32 @CHECK_V_F(i64 %111, i32 %123)
  %125 = load i64, i64* @hSize, align 8
  %126 = load i32*, i32** %15, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 %125
  store i32* %127, i32** %15, align 8
  %128 = load i32*, i32** %19, align 8
  %129 = load i32*, i32** %21, align 8
  %130 = load i32, i32* %17, align 4
  %131 = load i32, i32* %18, align 4
  %132 = load i8*, i8** %12, align 8
  %133 = load i64, i64* %13, align 8
  %134 = call i32 @FSE_buildCTable_wksp(i32* %128, i32* %129, i32 %130, i32 %131, i8* %132, i64 %133)
  %135 = call i32 @CHECK_F(i32 %134)
  %136 = load i64, i64* @cSize, align 8
  %137 = load i32*, i32** %15, align 8
  %138 = load i32*, i32** %16, align 8
  %139 = load i32*, i32** %15, align 8
  %140 = ptrtoint i32* %138 to i64
  %141 = ptrtoint i32* %139 to i64
  %142 = sub i64 %140, %141
  %143 = sdiv exact i64 %142, 4
  %144 = trunc i64 %143 to i32
  %145 = load i8*, i8** %10, align 8
  %146 = load i64, i64* %11, align 8
  %147 = load i32*, i32** %19, align 8
  %148 = call i32 @FSE_compress_usingCTable(i32* %137, i32 %144, i8* %145, i64 %146, i32* %147)
  %149 = call i32 @CHECK_V_F(i64 %136, i32 %148)
  %150 = load i64, i64* @cSize, align 8
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %99
  store i64 0, i64* %7, align 8
  br label %163

153:                                              ; preds = %99
  %154 = load i64, i64* @cSize, align 8
  %155 = load i32*, i32** %15, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 %154
  store i32* %156, i32** %15, align 8
  %157 = load i32*, i32** %15, align 8
  %158 = load i32*, i32** %14, align 8
  %159 = ptrtoint i32* %157 to i64
  %160 = ptrtoint i32* %158 to i64
  %161 = sub i64 %159, %160
  %162 = sdiv exact i64 %161, 4
  store i64 %162, i64* %7, align 8
  br label %163

163:                                              ; preds = %153, %152, %98, %94, %83, %68
  %164 = load i64, i64* %7, align 8
  ret i64 %164
}

declare dso_local i32 @HUF_STATIC_ASSERT(i32) #1

declare dso_local i64 @FSE_CTABLE_SIZE_U32(i32, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i64 @ERROR(i32) #1

declare dso_local i32 @CHECK_V_F(i64, i32) #1

declare dso_local i32 @FSE_count_simple(i32*, i32*, i8*, i64) #1

declare dso_local i32 @FSE_optimalTableLog(i32, i64, i32) #1

declare dso_local i32 @CHECK_F(i32) #1

declare dso_local i32 @FSE_normalizeCount(i32*, i32, i32*, i64, i32) #1

declare dso_local i32 @FSE_writeNCount(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @FSE_buildCTable_wksp(i32*, i32*, i32, i32, i8*, i64) #1

declare dso_local i32 @FSE_compress_usingCTable(i32*, i32, i8*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
