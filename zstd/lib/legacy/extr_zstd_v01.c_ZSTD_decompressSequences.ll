; ModuleID = '/home/carl/AnghaBench/zstd/lib/legacy/extr_zstd_v01.c_ZSTD_decompressSequences.c'
source_filename = "/home/carl/AnghaBench/zstd/lib/legacy/extr_zstd_v01.c_ZSTD_decompressSequences.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32*, i32*, i32* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32*, i32* }

@corruption_detected = common dso_local global i32 0, align 4
@FSE_DStream_completed = common dso_local global i64 0, align 8
@dstSize_tooSmall = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i64, i8*, i64, i32*, i64)* @ZSTD_decompressSequences to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTD_decompressSequences(i8* %0, i8* %1, i64 %2, i8* %3, i64 %4, i32* %5, i64 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_5__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32, align 4
  %33 = alloca %struct.TYPE_4__, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i32* %5, i32** %14, align 8
  store i64 %6, i64* %15, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = bitcast i8* %36 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %37, %struct.TYPE_5__** %16, align 8
  %38 = load i8*, i8** %12, align 8
  %39 = bitcast i8* %38 to i32*
  store i32* %39, i32** %17, align 8
  %40 = load i32*, i32** %17, align 8
  %41 = load i64, i64* %13, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  store i32* %42, i32** %18, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = bitcast i8* %43 to i32*
  store i32* %44, i32** %19, align 8
  %45 = load i32*, i32** %19, align 8
  store i32* %45, i32** %20, align 8
  %46 = load i32*, i32** %19, align 8
  %47 = load i64, i64* %11, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  store i32* %48, i32** %21, align 8
  %49 = load i32*, i32** %14, align 8
  store i32* %49, i32** %24, align 8
  %50 = load i32*, i32** %14, align 8
  %51 = load i64, i64* %15, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  store i32* %52, i32** %25, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  store i32* %55, i32** %28, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  store i32* %58, i32** %29, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  store i32* %61, i32** %30, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to i32*
  store i32* %65, i32** %31, align 8
  %66 = load i32*, i32** %28, align 8
  %67 = load i32*, i32** %29, align 8
  %68 = load i32*, i32** %30, align 8
  %69 = load i32*, i32** %17, align 8
  %70 = load i32*, i32** %18, align 8
  %71 = load i32*, i32** %17, align 8
  %72 = ptrtoint i32* %70 to i64
  %73 = ptrtoint i32* %71 to i64
  %74 = sub i64 %72, %73
  %75 = sdiv exact i64 %74, 4
  %76 = trunc i64 %75 to i32
  %77 = call i64 @ZSTDv01_decodeSeqHeaders(i32* %26, i32** %27, i64* %23, i32* %66, i32* %67, i32* %68, i32* %69, i32 %76)
  store i64 %77, i64* %22, align 8
  %78 = load i64, i64* %22, align 8
  %79 = call i64 @ZSTDv01_isError(i64 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %7
  %82 = load i64, i64* %22, align 8
  store i64 %82, i64* %8, align 8
  br label %200

83:                                               ; preds = %7
  %84 = load i64, i64* %22, align 8
  %85 = load i32*, i32** %17, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 %84
  store i32* %86, i32** %17, align 8
  %87 = call i32 @memset(i32* %32, i32 0, i32 4)
  %88 = load i32*, i32** %27, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 6
  store i32* %88, i32** %89, align 8
  %90 = load i32*, i32** %27, align 8
  %91 = load i64, i64* %23, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 5
  store i32* %92, i32** %93, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 1, i32* %94, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %96 = load i32*, i32** %17, align 8
  %97 = load i32*, i32** %18, align 8
  %98 = load i32*, i32** %17, align 8
  %99 = ptrtoint i32* %97 to i64
  %100 = ptrtoint i32* %98 to i64
  %101 = sub i64 %99, %100
  %102 = sdiv exact i64 %101, 4
  %103 = trunc i64 %102 to i32
  %104 = call i64 @FSE_initDStream(i32* %95, i32* %96, i32 %103)
  store i64 %104, i64* %22, align 8
  %105 = load i64, i64* %22, align 8
  %106 = call i64 @FSE_isError(i64 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %83
  %109 = load i32, i32* @corruption_detected, align 4
  %110 = call i64 @ERROR(i32 %109)
  store i64 %110, i64* %8, align 8
  br label %200

111:                                              ; preds = %83
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 4
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %114 = load i32*, i32** %28, align 8
  %115 = call i32 @FSE_initDState(i32* %112, i32* %113, i32* %114)
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %118 = load i32*, i32** %30, align 8
  %119 = call i32 @FSE_initDState(i32* %116, i32* %117, i32* %118)
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %122 = load i32*, i32** %29, align 8
  %123 = call i32 @FSE_initDState(i32* %120, i32* %121, i32* %122)
  br label %124

124:                                              ; preds = %149, %111
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %126 = call i64 @FSE_reloadDStream(i32* %125)
  %127 = load i64, i64* @FSE_DStream_completed, align 8
  %128 = icmp sle i64 %126, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = load i32, i32* %26, align 4
  %131 = icmp sgt i32 %130, 0
  br label %132

132:                                              ; preds = %129, %124
  %133 = phi i1 [ false, %124 ], [ %131, %129 ]
  br i1 %133, label %134, label %153

134:                                              ; preds = %132
  %135 = load i32, i32* %26, align 4
  %136 = add nsw i32 %135, -1
  store i32 %136, i32* %26, align 4
  %137 = call i32 @ZSTD_decodeSequence(i32* %32, %struct.TYPE_4__* %33)
  %138 = load i32*, i32** %20, align 8
  %139 = load i32, i32* %32, align 4
  %140 = load i32*, i32** %25, align 8
  %141 = load i32*, i32** %31, align 8
  %142 = load i32*, i32** %21, align 8
  %143 = call i64 @ZSTD_execSequence(i32* %138, i32 %139, i32** %24, i32* %140, i32* %141, i32* %142)
  store i64 %143, i64* %34, align 8
  %144 = load i64, i64* %34, align 8
  %145 = call i64 @ZSTDv01_isError(i64 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %134
  %148 = load i64, i64* %34, align 8
  store i64 %148, i64* %8, align 8
  br label %200

149:                                              ; preds = %134
  %150 = load i64, i64* %34, align 8
  %151 = load i32*, i32** %20, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 %150
  store i32* %152, i32** %20, align 8
  br label %124

153:                                              ; preds = %132
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %155 = call i32 @FSE_endOfDStream(i32* %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %160, label %157

157:                                              ; preds = %153
  %158 = load i32, i32* @corruption_detected, align 4
  %159 = call i64 @ERROR(i32 %158)
  store i64 %159, i64* %8, align 8
  br label %200

160:                                              ; preds = %153
  %161 = load i32, i32* %26, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %160
  %164 = load i32, i32* @corruption_detected, align 4
  %165 = call i64 @ERROR(i32 %164)
  store i64 %165, i64* %8, align 8
  br label %200

166:                                              ; preds = %160
  %167 = load i32*, i32** %25, align 8
  %168 = load i32*, i32** %24, align 8
  %169 = ptrtoint i32* %167 to i64
  %170 = ptrtoint i32* %168 to i64
  %171 = sub i64 %169, %170
  %172 = sdiv exact i64 %171, 4
  store i64 %172, i64* %35, align 8
  %173 = load i32*, i32** %20, align 8
  %174 = load i64, i64* %35, align 8
  %175 = getelementptr inbounds i32, i32* %173, i64 %174
  %176 = load i32*, i32** %21, align 8
  %177 = icmp ugt i32* %175, %176
  br i1 %177, label %178, label %181

178:                                              ; preds = %166
  %179 = load i32, i32* @dstSize_tooSmall, align 4
  %180 = call i64 @ERROR(i32 %179)
  store i64 %180, i64* %8, align 8
  br label %200

181:                                              ; preds = %166
  %182 = load i32*, i32** %20, align 8
  %183 = load i32*, i32** %24, align 8
  %184 = icmp ne i32* %182, %183
  br i1 %184, label %185, label %190

185:                                              ; preds = %181
  %186 = load i32*, i32** %20, align 8
  %187 = load i32*, i32** %24, align 8
  %188 = load i64, i64* %35, align 8
  %189 = call i32 @memmove(i32* %186, i32* %187, i64 %188)
  br label %190

190:                                              ; preds = %185, %181
  %191 = load i64, i64* %35, align 8
  %192 = load i32*, i32** %20, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 %191
  store i32* %193, i32** %20, align 8
  %194 = load i32*, i32** %20, align 8
  %195 = load i32*, i32** %19, align 8
  %196 = ptrtoint i32* %194 to i64
  %197 = ptrtoint i32* %195 to i64
  %198 = sub i64 %196, %197
  %199 = sdiv exact i64 %198, 4
  store i64 %199, i64* %8, align 8
  br label %200

200:                                              ; preds = %190, %178, %163, %157, %147, %108, %81
  %201 = load i64, i64* %8, align 8
  ret i64 %201
}

declare dso_local i64 @ZSTDv01_decodeSeqHeaders(i32*, i32**, i64*, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i64 @ZSTDv01_isError(i64) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @FSE_initDStream(i32*, i32*, i32) #1

declare dso_local i64 @FSE_isError(i64) #1

declare dso_local i64 @ERROR(i32) #1

declare dso_local i32 @FSE_initDState(i32*, i32*, i32*) #1

declare dso_local i64 @FSE_reloadDStream(i32*) #1

declare dso_local i32 @ZSTD_decodeSequence(i32*, %struct.TYPE_4__*) #1

declare dso_local i64 @ZSTD_execSequence(i32*, i32, i32**, i32*, i32*, i32*) #1

declare dso_local i32 @FSE_endOfDStream(i32*) #1

declare dso_local i32 @memmove(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
