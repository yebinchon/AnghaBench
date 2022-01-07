; ModuleID = '/home/carl/AnghaBench/zstd/lib/legacy/extr_zstd_v05.c_ZSTDv05_decompress_continueDCtx.c'
source_filename = "/home/carl/AnghaBench/zstd/lib/legacy/extr_zstd_v05.c_ZSTDv05_decompress_continueDCtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@ZSTDv05_frameHeaderSize_min = common dso_local global i64 0, align 8
@ZSTDv05_blockHeaderSize = common dso_local global i64 0, align 8
@srcSize_wrong = common dso_local global i32 0, align 4
@GENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i8*, i64, i8*, i64)* @ZSTDv05_decompress_continueDCtx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTDv05_decompress_continueDCtx(i32* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_4__, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = bitcast i8* %22 to i32*
  store i32* %23, i32** %12, align 8
  %24 = load i32*, i32** %12, align 8
  %25 = load i64, i64* %11, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  store i32* %26, i32** %13, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = bitcast i8* %27 to i32*
  store i32* %28, i32** %14, align 8
  %29 = load i32*, i32** %14, align 8
  store i32* %29, i32** %15, align 8
  %30 = load i32*, i32** %14, align 8
  %31 = load i64, i64* %9, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32* %32, i32** %16, align 8
  %33 = load i64, i64* %11, align 8
  store i64 %33, i64* %17, align 8
  %34 = call i32 @memset(%struct.TYPE_4__* %18, i32 0, i32 4)
  %35 = load i64, i64* %11, align 8
  %36 = load i64, i64* @ZSTDv05_frameHeaderSize_min, align 8
  %37 = load i64, i64* @ZSTDv05_blockHeaderSize, align 8
  %38 = add i64 %36, %37
  %39 = icmp ult i64 %35, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %5
  %41 = load i32, i32* @srcSize_wrong, align 4
  %42 = call i64 @ERROR(i32 %41)
  store i64 %42, i64* %6, align 8
  br label %175

43:                                               ; preds = %5
  %44 = load i32*, i32** %7, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = load i64, i64* @ZSTDv05_frameHeaderSize_min, align 8
  %47 = call i64 @ZSTDv05_decodeFrameHeader_Part1(i32* %44, i8* %45, i64 %46)
  store i64 %47, i64* %19, align 8
  %48 = load i64, i64* %19, align 8
  %49 = call i64 @ZSTDv05_isError(i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i64, i64* %19, align 8
  store i64 %52, i64* %6, align 8
  br label %175

53:                                               ; preds = %43
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* %19, align 8
  %56 = load i64, i64* @ZSTDv05_blockHeaderSize, align 8
  %57 = add i64 %55, %56
  %58 = icmp ult i64 %54, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i32, i32* @srcSize_wrong, align 4
  %61 = call i64 @ERROR(i32 %60)
  store i64 %61, i64* %6, align 8
  br label %175

62:                                               ; preds = %53
  %63 = load i64, i64* %19, align 8
  %64 = load i32*, i32** %12, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 %63
  store i32* %65, i32** %12, align 8
  %66 = load i64, i64* %19, align 8
  %67 = load i64, i64* %17, align 8
  %68 = sub i64 %67, %66
  store i64 %68, i64* %17, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = load i8*, i8** %10, align 8
  %71 = load i64, i64* %19, align 8
  %72 = call i64 @ZSTDv05_decodeFrameHeader_Part2(i32* %69, i8* %70, i64 %71)
  store i64 %72, i64* %19, align 8
  %73 = load i64, i64* %19, align 8
  %74 = call i64 @ZSTDv05_isError(i64 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %62
  %77 = load i64, i64* %19, align 8
  store i64 %77, i64* %6, align 8
  br label %175

78:                                               ; preds = %62
  br label %79

79:                                               ; preds = %78, %158
  store i64 0, i64* %20, align 8
  %80 = load i32*, i32** %12, align 8
  %81 = load i32*, i32** %13, align 8
  %82 = load i32*, i32** %12, align 8
  %83 = ptrtoint i32* %81 to i64
  %84 = ptrtoint i32* %82 to i64
  %85 = sub i64 %83, %84
  %86 = sdiv exact i64 %85, 4
  %87 = trunc i64 %86 to i32
  %88 = call i64 @ZSTDv05_getcBlockSize(i32* %80, i32 %87, %struct.TYPE_4__* %18)
  store i64 %88, i64* %21, align 8
  %89 = load i64, i64* %21, align 8
  %90 = call i64 @ZSTDv05_isError(i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %79
  %93 = load i64, i64* %21, align 8
  store i64 %93, i64* %6, align 8
  br label %175

94:                                               ; preds = %79
  %95 = load i64, i64* @ZSTDv05_blockHeaderSize, align 8
  %96 = load i32*, i32** %12, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 %95
  store i32* %97, i32** %12, align 8
  %98 = load i64, i64* @ZSTDv05_blockHeaderSize, align 8
  %99 = load i64, i64* %17, align 8
  %100 = sub i64 %99, %98
  store i64 %100, i64* %17, align 8
  %101 = load i64, i64* %21, align 8
  %102 = load i64, i64* %17, align 8
  %103 = icmp ugt i64 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %94
  %105 = load i32, i32* @srcSize_wrong, align 4
  %106 = call i64 @ERROR(i32 %105)
  store i64 %106, i64* %6, align 8
  br label %175

107:                                              ; preds = %94
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  switch i32 %109, label %145 [
    i32 131, label %110
    i32 129, label %123
    i32 128, label %135
    i32 130, label %138
  ]

110:                                              ; preds = %107
  %111 = load i32*, i32** %7, align 8
  %112 = load i32*, i32** %15, align 8
  %113 = load i32*, i32** %16, align 8
  %114 = load i32*, i32** %15, align 8
  %115 = ptrtoint i32* %113 to i64
  %116 = ptrtoint i32* %114 to i64
  %117 = sub i64 %115, %116
  %118 = sdiv exact i64 %117, 4
  %119 = trunc i64 %118 to i32
  %120 = load i32*, i32** %12, align 8
  %121 = load i64, i64* %21, align 8
  %122 = call i64 @ZSTDv05_decompressBlock_internal(i32* %111, i32* %112, i32 %119, i32* %120, i64 %121)
  store i64 %122, i64* %20, align 8
  br label %148

123:                                              ; preds = %107
  %124 = load i32*, i32** %15, align 8
  %125 = load i32*, i32** %16, align 8
  %126 = load i32*, i32** %15, align 8
  %127 = ptrtoint i32* %125 to i64
  %128 = ptrtoint i32* %126 to i64
  %129 = sub i64 %127, %128
  %130 = sdiv exact i64 %129, 4
  %131 = trunc i64 %130 to i32
  %132 = load i32*, i32** %12, align 8
  %133 = load i64, i64* %21, align 8
  %134 = call i64 @ZSTDv05_copyRawBlock(i32* %124, i32 %131, i32* %132, i64 %133)
  store i64 %134, i64* %20, align 8
  br label %148

135:                                              ; preds = %107
  %136 = load i32, i32* @GENERIC, align 4
  %137 = call i64 @ERROR(i32 %136)
  store i64 %137, i64* %6, align 8
  br label %175

138:                                              ; preds = %107
  %139 = load i64, i64* %17, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = load i32, i32* @srcSize_wrong, align 4
  %143 = call i64 @ERROR(i32 %142)
  store i64 %143, i64* %6, align 8
  br label %175

144:                                              ; preds = %138
  br label %148

145:                                              ; preds = %107
  %146 = load i32, i32* @GENERIC, align 4
  %147 = call i64 @ERROR(i32 %146)
  store i64 %147, i64* %6, align 8
  br label %175

148:                                              ; preds = %144, %123, %110
  %149 = load i64, i64* %21, align 8
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %148
  br label %168

152:                                              ; preds = %148
  %153 = load i64, i64* %20, align 8
  %154 = call i64 @ZSTDv05_isError(i64 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %152
  %157 = load i64, i64* %20, align 8
  store i64 %157, i64* %6, align 8
  br label %175

158:                                              ; preds = %152
  %159 = load i64, i64* %20, align 8
  %160 = load i32*, i32** %15, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 %159
  store i32* %161, i32** %15, align 8
  %162 = load i64, i64* %21, align 8
  %163 = load i32*, i32** %12, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 %162
  store i32* %164, i32** %12, align 8
  %165 = load i64, i64* %21, align 8
  %166 = load i64, i64* %17, align 8
  %167 = sub i64 %166, %165
  store i64 %167, i64* %17, align 8
  br label %79

168:                                              ; preds = %151
  %169 = load i32*, i32** %15, align 8
  %170 = load i32*, i32** %14, align 8
  %171 = ptrtoint i32* %169 to i64
  %172 = ptrtoint i32* %170 to i64
  %173 = sub i64 %171, %172
  %174 = sdiv exact i64 %173, 4
  store i64 %174, i64* %6, align 8
  br label %175

175:                                              ; preds = %168, %156, %145, %141, %135, %104, %92, %76, %59, %51, %40
  %176 = load i64, i64* %6, align 8
  ret i64 %176
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i64 @ERROR(i32) #1

declare dso_local i64 @ZSTDv05_decodeFrameHeader_Part1(i32*, i8*, i64) #1

declare dso_local i64 @ZSTDv05_isError(i64) #1

declare dso_local i64 @ZSTDv05_decodeFrameHeader_Part2(i32*, i8*, i64) #1

declare dso_local i64 @ZSTDv05_getcBlockSize(i32*, i32, %struct.TYPE_4__*) #1

declare dso_local i64 @ZSTDv05_decompressBlock_internal(i32*, i32*, i32, i32*, i64) #1

declare dso_local i64 @ZSTDv05_copyRawBlock(i32*, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
