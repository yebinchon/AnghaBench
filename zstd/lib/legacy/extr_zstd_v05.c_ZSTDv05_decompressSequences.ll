; ModuleID = '/home/carl/AnghaBench/zstd/lib/legacy/extr_zstd_v05.c_ZSTDv05_decompressSequences.c'
source_filename = "/home/carl/AnghaBench/zstd/lib/legacy/extr_zstd_v05.c_ZSTDv05_decompressSequences.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32*, i32*, i32*, i32, i64, i64, i64, i32* }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i8*, i32*, i32* }

@REPCODE_STARTVALUE = common dso_local global i8* null, align 8
@corruption_detected = common dso_local global i32 0, align 4
@BITv05_DStream_completed = common dso_local global i64 0, align 8
@dstSize_tooSmall = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_11__*, i8*, i64, i8*, i64)* @ZSTDv05_decompressSequences to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTDv05_decompressSequences(%struct.TYPE_11__* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
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
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca %struct.TYPE_9__, align 8
  %30 = alloca %struct.TYPE_10__, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = bitcast i8* %33 to i32*
  store i32* %34, i32** %12, align 8
  %35 = load i32*, i32** %12, align 8
  %36 = load i64, i64* %11, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  store i32* %37, i32** %13, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = bitcast i8* %38 to i32*
  store i32* %39, i32** %14, align 8
  %40 = load i32*, i32** %14, align 8
  store i32* %40, i32** %15, align 8
  %41 = load i32*, i32** %14, align 8
  %42 = load i64, i64* %9, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  store i32* %43, i32** %16, align 8
  store i64 0, i64* %18, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 8
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %19, align 8
  %47 = load i32*, i32** %19, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %47, i64 %51
  store i32* %52, i32** %20, align 8
  store i32 0, i32* %21, align 4
  store i32* null, i32** %22, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  store i32* %55, i32** %23, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  store i32* %58, i32** %24, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  store i32* %61, i32** %25, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 7
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to i32*
  store i32* %65, i32** %26, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 6
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to i32*
  store i32* %69, i32** %27, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 5
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to i32*
  store i32* %73, i32** %28, align 8
  %74 = load i32*, i32** %23, align 8
  %75 = load i32*, i32** %24, align 8
  %76 = load i32*, i32** %25, align 8
  %77 = load i32*, i32** %12, align 8
  %78 = load i64, i64* %11, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @ZSTDv05_decodeSeqHeaders(i32* %21, i32** %22, i64* %18, i32* %74, i32* %75, i32* %76, i32* %77, i64 %78, i32 %81)
  store i64 %82, i64* %17, align 8
  %83 = load i64, i64* %17, align 8
  %84 = call i64 @ZSTDv05_isError(i64 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %5
  %87 = load i64, i64* %17, align 8
  store i64 %87, i64* %6, align 8
  br label %210

88:                                               ; preds = %5
  %89 = load i64, i64* %17, align 8
  %90 = load i32*, i32** %12, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 %89
  store i32* %91, i32** %12, align 8
  %92 = load i32, i32* %21, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %174

94:                                               ; preds = %88
  %95 = call i32 @memset(%struct.TYPE_9__* %29, i32 0, i32 8)
  %96 = load i8*, i8** @REPCODE_STARTVALUE, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  store i8* %96, i8** %97, align 8
  %98 = load i32*, i32** %22, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 6
  store i32* %98, i32** %99, align 8
  %100 = load i32*, i32** %22, align 8
  %101 = load i64, i64* %18, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 5
  store i32* %102, i32** %103, align 8
  %104 = load i8*, i8** @REPCODE_STARTVALUE, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 4
  store i8* %104, i8** %105, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %107 = load i32*, i32** %12, align 8
  %108 = load i32*, i32** %13, align 8
  %109 = load i32*, i32** %12, align 8
  %110 = ptrtoint i32* %108 to i64
  %111 = ptrtoint i32* %109 to i64
  %112 = sub i64 %110, %111
  %113 = sdiv exact i64 %112, 4
  %114 = trunc i64 %113 to i32
  %115 = call i64 @BITv05_initDStream(i32* %106, i32* %107, i32 %114)
  store i64 %115, i64* %17, align 8
  %116 = load i64, i64* %17, align 8
  %117 = call i64 @ERR_isError(i64 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %94
  %120 = load i32, i32* @corruption_detected, align 4
  %121 = call i64 @ERROR(i32 %120)
  store i64 %121, i64* %6, align 8
  br label %210

122:                                              ; preds = %94
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %125 = load i32*, i32** %23, align 8
  %126 = call i32 @FSEv05_initDState(i32* %123, i32* %124, i32* %125)
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %129 = load i32*, i32** %25, align 8
  %130 = call i32 @FSEv05_initDState(i32* %127, i32* %128, i32* %129)
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %133 = load i32*, i32** %24, align 8
  %134 = call i32 @FSEv05_initDState(i32* %131, i32* %132, i32* %133)
  br label %135

135:                                              ; preds = %163, %122
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %137 = call i64 @BITv05_reloadDStream(i32* %136)
  %138 = load i64, i64* @BITv05_DStream_completed, align 8
  %139 = icmp sle i64 %137, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %135
  %141 = load i32, i32* %21, align 4
  %142 = icmp ne i32 %141, 0
  br label %143

143:                                              ; preds = %140, %135
  %144 = phi i1 [ false, %135 ], [ %142, %140 ]
  br i1 %144, label %145, label %167

145:                                              ; preds = %143
  %146 = load i32, i32* %21, align 4
  %147 = add nsw i32 %146, -1
  store i32 %147, i32* %21, align 4
  %148 = call i32 @ZSTDv05_decodeSequence(%struct.TYPE_9__* %29, %struct.TYPE_10__* %30)
  %149 = load i32*, i32** %15, align 8
  %150 = load i32*, i32** %16, align 8
  %151 = load i32*, i32** %20, align 8
  %152 = load i32*, i32** %26, align 8
  %153 = load i32*, i32** %27, align 8
  %154 = load i32*, i32** %28, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = call i64 @ZSTDv05_execSequence(i32* %149, i32* %150, i8* %156, i32** %19, i32* %151, i32* %152, i32* %153, i32* %154)
  store i64 %157, i64* %31, align 8
  %158 = load i64, i64* %31, align 8
  %159 = call i64 @ZSTDv05_isError(i64 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %145
  %162 = load i64, i64* %31, align 8
  store i64 %162, i64* %6, align 8
  br label %210

163:                                              ; preds = %145
  %164 = load i64, i64* %31, align 8
  %165 = load i32*, i32** %15, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 %164
  store i32* %166, i32** %15, align 8
  br label %135

167:                                              ; preds = %143
  %168 = load i32, i32* %21, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %167
  %171 = load i32, i32* @corruption_detected, align 4
  %172 = call i64 @ERROR(i32 %171)
  store i64 %172, i64* %6, align 8
  br label %210

173:                                              ; preds = %167
  br label %174

174:                                              ; preds = %173, %88
  %175 = load i32*, i32** %20, align 8
  %176 = load i32*, i32** %19, align 8
  %177 = ptrtoint i32* %175 to i64
  %178 = ptrtoint i32* %176 to i64
  %179 = sub i64 %177, %178
  %180 = sdiv exact i64 %179, 4
  store i64 %180, i64* %32, align 8
  %181 = load i32*, i32** %19, align 8
  %182 = load i32*, i32** %20, align 8
  %183 = icmp ugt i32* %181, %182
  br i1 %183, label %184, label %187

184:                                              ; preds = %174
  %185 = load i32, i32* @corruption_detected, align 4
  %186 = call i64 @ERROR(i32 %185)
  store i64 %186, i64* %6, align 8
  br label %210

187:                                              ; preds = %174
  %188 = load i32*, i32** %15, align 8
  %189 = load i64, i64* %32, align 8
  %190 = getelementptr inbounds i32, i32* %188, i64 %189
  %191 = load i32*, i32** %16, align 8
  %192 = icmp ugt i32* %190, %191
  br i1 %192, label %193, label %196

193:                                              ; preds = %187
  %194 = load i32, i32* @dstSize_tooSmall, align 4
  %195 = call i64 @ERROR(i32 %194)
  store i64 %195, i64* %6, align 8
  br label %210

196:                                              ; preds = %187
  %197 = load i32*, i32** %15, align 8
  %198 = load i32*, i32** %19, align 8
  %199 = load i64, i64* %32, align 8
  %200 = call i32 @memcpy(i32* %197, i32* %198, i64 %199)
  %201 = load i64, i64* %32, align 8
  %202 = load i32*, i32** %15, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 %201
  store i32* %203, i32** %15, align 8
  %204 = load i32*, i32** %15, align 8
  %205 = load i32*, i32** %14, align 8
  %206 = ptrtoint i32* %204 to i64
  %207 = ptrtoint i32* %205 to i64
  %208 = sub i64 %206, %207
  %209 = sdiv exact i64 %208, 4
  store i64 %209, i64* %6, align 8
  br label %210

210:                                              ; preds = %196, %193, %184, %170, %161, %119, %86
  %211 = load i64, i64* %6, align 8
  ret i64 %211
}

declare dso_local i64 @ZSTDv05_decodeSeqHeaders(i32*, i32**, i64*, i32*, i32*, i32*, i32*, i64, i32) #1

declare dso_local i64 @ZSTDv05_isError(i64) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i64 @BITv05_initDStream(i32*, i32*, i32) #1

declare dso_local i64 @ERR_isError(i64) #1

declare dso_local i64 @ERROR(i32) #1

declare dso_local i32 @FSEv05_initDState(i32*, i32*, i32*) #1

declare dso_local i64 @BITv05_reloadDStream(i32*) #1

declare dso_local i32 @ZSTDv05_decodeSequence(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i64 @ZSTDv05_execSequence(i32*, i32*, i8*, i32**, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
