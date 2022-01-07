; ModuleID = '/home/carl/AnghaBench/zstd/lib/legacy/extr_zstd_v06.c_ZSTDv06_decompressFrame.c'
source_filename = "/home/carl/AnghaBench/zstd/lib/legacy/extr_zstd_v06.c_ZSTDv06_decompressFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@__const.ZSTDv06_decompressFrame.blockProperties = private unnamed_addr constant %struct.TYPE_3__ { i32 131, i32 0, i32 0 }, align 4
@ZSTDv06_frameHeaderSize_min = common dso_local global i64 0, align 8
@ZSTDv06_blockHeaderSize = common dso_local global i64 0, align 8
@srcSize_wrong = common dso_local global i32 0, align 4
@corruption_detected = common dso_local global i32 0, align 4
@GENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i8*, i64, i8*, i64)* @ZSTDv06_decompressFrame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTDv06_decompressFrame(i32* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
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
  %18 = alloca %struct.TYPE_3__, align 4
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
  %34 = bitcast %struct.TYPE_3__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 bitcast (%struct.TYPE_3__* @__const.ZSTDv06_decompressFrame.blockProperties to i8*), i64 12, i1 false)
  %35 = load i64, i64* %11, align 8
  %36 = load i64, i64* @ZSTDv06_frameHeaderSize_min, align 8
  %37 = load i64, i64* @ZSTDv06_blockHeaderSize, align 8
  %38 = add i64 %36, %37
  %39 = icmp ult i64 %35, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %5
  %41 = load i32, i32* @srcSize_wrong, align 4
  %42 = call i64 @ERROR(i32 %41)
  store i64 %42, i64* %6, align 8
  br label %173

43:                                               ; preds = %5
  %44 = load i8*, i8** %10, align 8
  %45 = load i64, i64* @ZSTDv06_frameHeaderSize_min, align 8
  %46 = call i64 @ZSTDv06_frameHeaderSize(i8* %44, i64 %45)
  store i64 %46, i64* %19, align 8
  %47 = load i64, i64* %19, align 8
  %48 = call i64 @ZSTDv06_isError(i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i64, i64* %19, align 8
  store i64 %51, i64* %6, align 8
  br label %173

52:                                               ; preds = %43
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* %19, align 8
  %55 = load i64, i64* @ZSTDv06_blockHeaderSize, align 8
  %56 = add i64 %54, %55
  %57 = icmp ult i64 %53, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32, i32* @srcSize_wrong, align 4
  %60 = call i64 @ERROR(i32 %59)
  store i64 %60, i64* %6, align 8
  br label %173

61:                                               ; preds = %52
  %62 = load i32*, i32** %7, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = load i64, i64* %19, align 8
  %65 = call i64 @ZSTDv06_decodeFrameHeader(i32* %62, i8* %63, i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i32, i32* @corruption_detected, align 4
  %69 = call i64 @ERROR(i32 %68)
  store i64 %69, i64* %6, align 8
  br label %173

70:                                               ; preds = %61
  %71 = load i64, i64* %19, align 8
  %72 = load i32*, i32** %12, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 %71
  store i32* %73, i32** %12, align 8
  %74 = load i64, i64* %19, align 8
  %75 = load i64, i64* %17, align 8
  %76 = sub i64 %75, %74
  store i64 %76, i64* %17, align 8
  br label %77

77:                                               ; preds = %70, %156
  store i64 0, i64* %20, align 8
  %78 = load i32*, i32** %12, align 8
  %79 = load i32*, i32** %13, align 8
  %80 = load i32*, i32** %12, align 8
  %81 = ptrtoint i32* %79 to i64
  %82 = ptrtoint i32* %80 to i64
  %83 = sub i64 %81, %82
  %84 = sdiv exact i64 %83, 4
  %85 = trunc i64 %84 to i32
  %86 = call i64 @ZSTDv06_getcBlockSize(i32* %78, i32 %85, %struct.TYPE_3__* %18)
  store i64 %86, i64* %21, align 8
  %87 = load i64, i64* %21, align 8
  %88 = call i64 @ZSTDv06_isError(i64 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %77
  %91 = load i64, i64* %21, align 8
  store i64 %91, i64* %6, align 8
  br label %173

92:                                               ; preds = %77
  %93 = load i64, i64* @ZSTDv06_blockHeaderSize, align 8
  %94 = load i32*, i32** %12, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 %93
  store i32* %95, i32** %12, align 8
  %96 = load i64, i64* @ZSTDv06_blockHeaderSize, align 8
  %97 = load i64, i64* %17, align 8
  %98 = sub i64 %97, %96
  store i64 %98, i64* %17, align 8
  %99 = load i64, i64* %21, align 8
  %100 = load i64, i64* %17, align 8
  %101 = icmp ugt i64 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %92
  %103 = load i32, i32* @srcSize_wrong, align 4
  %104 = call i64 @ERROR(i32 %103)
  store i64 %104, i64* %6, align 8
  br label %173

105:                                              ; preds = %92
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  switch i32 %107, label %143 [
    i32 131, label %108
    i32 129, label %121
    i32 128, label %133
    i32 130, label %136
  ]

108:                                              ; preds = %105
  %109 = load i32*, i32** %7, align 8
  %110 = load i32*, i32** %15, align 8
  %111 = load i32*, i32** %16, align 8
  %112 = load i32*, i32** %15, align 8
  %113 = ptrtoint i32* %111 to i64
  %114 = ptrtoint i32* %112 to i64
  %115 = sub i64 %113, %114
  %116 = sdiv exact i64 %115, 4
  %117 = trunc i64 %116 to i32
  %118 = load i32*, i32** %12, align 8
  %119 = load i64, i64* %21, align 8
  %120 = call i64 @ZSTDv06_decompressBlock_internal(i32* %109, i32* %110, i32 %117, i32* %118, i64 %119)
  store i64 %120, i64* %20, align 8
  br label %146

121:                                              ; preds = %105
  %122 = load i32*, i32** %15, align 8
  %123 = load i32*, i32** %16, align 8
  %124 = load i32*, i32** %15, align 8
  %125 = ptrtoint i32* %123 to i64
  %126 = ptrtoint i32* %124 to i64
  %127 = sub i64 %125, %126
  %128 = sdiv exact i64 %127, 4
  %129 = trunc i64 %128 to i32
  %130 = load i32*, i32** %12, align 8
  %131 = load i64, i64* %21, align 8
  %132 = call i64 @ZSTDv06_copyRawBlock(i32* %122, i32 %129, i32* %130, i64 %131)
  store i64 %132, i64* %20, align 8
  br label %146

133:                                              ; preds = %105
  %134 = load i32, i32* @GENERIC, align 4
  %135 = call i64 @ERROR(i32 %134)
  store i64 %135, i64* %6, align 8
  br label %173

136:                                              ; preds = %105
  %137 = load i64, i64* %17, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load i32, i32* @srcSize_wrong, align 4
  %141 = call i64 @ERROR(i32 %140)
  store i64 %141, i64* %6, align 8
  br label %173

142:                                              ; preds = %136
  br label %146

143:                                              ; preds = %105
  %144 = load i32, i32* @GENERIC, align 4
  %145 = call i64 @ERROR(i32 %144)
  store i64 %145, i64* %6, align 8
  br label %173

146:                                              ; preds = %142, %121, %108
  %147 = load i64, i64* %21, align 8
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %146
  br label %166

150:                                              ; preds = %146
  %151 = load i64, i64* %20, align 8
  %152 = call i64 @ZSTDv06_isError(i64 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %150
  %155 = load i64, i64* %20, align 8
  store i64 %155, i64* %6, align 8
  br label %173

156:                                              ; preds = %150
  %157 = load i64, i64* %20, align 8
  %158 = load i32*, i32** %15, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 %157
  store i32* %159, i32** %15, align 8
  %160 = load i64, i64* %21, align 8
  %161 = load i32*, i32** %12, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 %160
  store i32* %162, i32** %12, align 8
  %163 = load i64, i64* %21, align 8
  %164 = load i64, i64* %17, align 8
  %165 = sub i64 %164, %163
  store i64 %165, i64* %17, align 8
  br label %77

166:                                              ; preds = %149
  %167 = load i32*, i32** %15, align 8
  %168 = load i32*, i32** %14, align 8
  %169 = ptrtoint i32* %167 to i64
  %170 = ptrtoint i32* %168 to i64
  %171 = sub i64 %169, %170
  %172 = sdiv exact i64 %171, 4
  store i64 %172, i64* %6, align 8
  br label %173

173:                                              ; preds = %166, %154, %143, %139, %133, %102, %90, %67, %58, %50, %40
  %174 = load i64, i64* %6, align 8
  ret i64 %174
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @ERROR(i32) #2

declare dso_local i64 @ZSTDv06_frameHeaderSize(i8*, i64) #2

declare dso_local i64 @ZSTDv06_isError(i64) #2

declare dso_local i64 @ZSTDv06_decodeFrameHeader(i32*, i8*, i64) #2

declare dso_local i64 @ZSTDv06_getcBlockSize(i32*, i32, %struct.TYPE_3__*) #2

declare dso_local i64 @ZSTDv06_decompressBlock_internal(i32*, i32*, i32, i32*, i64) #2

declare dso_local i64 @ZSTDv06_copyRawBlock(i32*, i32, i32*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
