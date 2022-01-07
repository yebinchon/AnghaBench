; ModuleID = '/home/carl/AnghaBench/zstd/lib/decompress/extr_zstd_decompress_block.c_ZSTD_decodeSeqHeaders.c'
source_filename = "/home/carl/AnghaBench/zstd/lib/decompress/extr_zstd_decompress_block.c_ZSTD_decodeSeqHeaders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"ZSTD_decodeSeqHeaders\00", align 1
@MIN_SEQUENCES_SIZE = common dso_local global i64 0, align 8
@srcSize_wrong = common dso_local global i32 0, align 4
@LONGNBSEQ = common dso_local global i32 0, align 4
@MaxLL = common dso_local global i32 0, align 4
@LLFSELog = common dso_local global i32 0, align 4
@LL_base = common dso_local global i32 0, align 4
@LL_bits = common dso_local global i32 0, align 4
@LL_defaultDTable = common dso_local global i32 0, align 4
@corruption_detected = common dso_local global i32 0, align 4
@MaxOff = common dso_local global i32 0, align 4
@OffFSELog = common dso_local global i32 0, align 4
@OF_base = common dso_local global i32 0, align 4
@OF_bits = common dso_local global i32 0, align 4
@OF_defaultDTable = common dso_local global i32 0, align 4
@MaxML = common dso_local global i32 0, align 4
@MLFSELog = common dso_local global i32 0, align 4
@ML_base = common dso_local global i32 0, align 4
@ML_bits = common dso_local global i32 0, align 4
@ML_defaultDTable = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ZSTD_decodeSeqHeaders(%struct.TYPE_5__* %0, i32* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = bitcast i8* %20 to i32*
  store i32* %21, i32** %10, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = load i64, i64* %9, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  store i32* %24, i32** %11, align 8
  %25 = load i32*, i32** %10, align 8
  store i32* %25, i32** %12, align 8
  %26 = call i32 @DEBUGLOG(i32 5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* @MIN_SEQUENCES_SIZE, align 8
  %29 = icmp ult i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* @srcSize_wrong, align 4
  %32 = call i32 @RETURN_ERROR_IF(i32 %30, i32 %31)
  %33 = load i32*, i32** %12, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %12, align 8
  %35 = load i32, i32* %33, align 4
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %4
  %39 = load i32*, i32** %7, align 8
  store i32 0, i32* %39, align 4
  %40 = load i64, i64* %9, align 8
  %41 = icmp ne i64 %40, 1
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* @srcSize_wrong, align 4
  %44 = call i32 @RETURN_ERROR_IF(i32 %42, i32 %43)
  store i64 1, i64* %5, align 8
  br label %214

45:                                               ; preds = %4
  %46 = load i32, i32* %13, align 4
  %47 = icmp sgt i32 %46, 127
  br i1 %47, label %48, label %80

48:                                               ; preds = %45
  %49 = load i32, i32* %13, align 4
  %50 = icmp eq i32 %49, 255
  br i1 %50, label %51, label %65

51:                                               ; preds = %48
  %52 = load i32*, i32** %12, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  %54 = load i32*, i32** %11, align 8
  %55 = icmp ugt i32* %53, %54
  %56 = zext i1 %55 to i32
  %57 = load i32, i32* @srcSize_wrong, align 4
  %58 = call i32 @RETURN_ERROR_IF(i32 %56, i32 %57)
  %59 = load i32*, i32** %12, align 8
  %60 = call i32 @MEM_readLE16(i32* %59)
  %61 = load i32, i32* @LONGNBSEQ, align 4
  %62 = add nsw i32 %60, %61
  store i32 %62, i32* %13, align 4
  %63 = load i32*, i32** %12, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  store i32* %64, i32** %12, align 8
  br label %79

65:                                               ; preds = %48
  %66 = load i32*, i32** %12, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = icmp uge i32* %66, %67
  %69 = zext i1 %68 to i32
  %70 = load i32, i32* @srcSize_wrong, align 4
  %71 = call i32 @RETURN_ERROR_IF(i32 %69, i32 %70)
  %72 = load i32, i32* %13, align 4
  %73 = sub nsw i32 %72, 128
  %74 = shl i32 %73, 8
  %75 = load i32*, i32** %12, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %12, align 8
  %77 = load i32, i32* %75, align 4
  %78 = add nsw i32 %74, %77
  store i32 %78, i32* %13, align 4
  br label %79

79:                                               ; preds = %65, %51
  br label %80

80:                                               ; preds = %79, %45
  %81 = load i32, i32* %13, align 4
  %82 = load i32*, i32** %7, align 8
  store i32 %81, i32* %82, align 4
  %83 = load i32*, i32** %12, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = load i32*, i32** %11, align 8
  %86 = icmp ugt i32* %84, %85
  %87 = zext i1 %86 to i32
  %88 = load i32, i32* @srcSize_wrong, align 4
  %89 = call i32 @RETURN_ERROR_IF(i32 %87, i32 %88)
  %90 = load i32*, i32** %12, align 8
  %91 = load i32, i32* %90, align 4
  %92 = ashr i32 %91, 6
  store i32 %92, i32* %14, align 4
  %93 = load i32*, i32** %12, align 8
  %94 = load i32, i32* %93, align 4
  %95 = ashr i32 %94, 4
  %96 = and i32 %95, 3
  store i32 %96, i32* %15, align 4
  %97 = load i32*, i32** %12, align 8
  %98 = load i32, i32* %97, align 4
  %99 = ashr i32 %98, 2
  %100 = and i32 %99, 3
  store i32 %100, i32* %16, align 4
  %101 = load i32*, i32** %12, align 8
  %102 = getelementptr inbounds i32, i32* %101, i32 1
  store i32* %102, i32** %12, align 8
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 5
  %109 = load i32, i32* %14, align 4
  %110 = load i32, i32* @MaxLL, align 4
  %111 = load i32, i32* @LLFSELog, align 4
  %112 = load i32*, i32** %12, align 8
  %113 = load i32*, i32** %11, align 8
  %114 = load i32*, i32** %12, align 8
  %115 = ptrtoint i32* %113 to i64
  %116 = ptrtoint i32* %114 to i64
  %117 = sub i64 %115, %116
  %118 = sdiv exact i64 %117, 4
  %119 = trunc i64 %118 to i32
  %120 = load i32, i32* @LL_base, align 4
  %121 = load i32, i32* @LL_bits, align 4
  %122 = load i32, i32* @LL_defaultDTable, align 4
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %13, align 4
  %130 = call i64 @ZSTD_buildSeqTable(i32 %106, i32* %108, i32 %109, i32 %110, i32 %111, i32* %112, i32 %119, i32 %120, i32 %121, i32 %122, i32 %125, i32 %128, i32 %129)
  store i64 %130, i64* %17, align 8
  %131 = load i64, i64* %17, align 8
  %132 = call i32 @ZSTD_isError(i64 %131)
  %133 = load i32, i32* @corruption_detected, align 4
  %134 = call i32 @RETURN_ERROR_IF(i32 %132, i32 %133)
  %135 = load i64, i64* %17, align 8
  %136 = load i32*, i32** %12, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 %135
  store i32* %137, i32** %12, align 8
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 4
  %144 = load i32, i32* %15, align 4
  %145 = load i32, i32* @MaxOff, align 4
  %146 = load i32, i32* @OffFSELog, align 4
  %147 = load i32*, i32** %12, align 8
  %148 = load i32*, i32** %11, align 8
  %149 = load i32*, i32** %12, align 8
  %150 = ptrtoint i32* %148 to i64
  %151 = ptrtoint i32* %149 to i64
  %152 = sub i64 %150, %151
  %153 = sdiv exact i64 %152, 4
  %154 = trunc i64 %153 to i32
  %155 = load i32, i32* @OF_base, align 4
  %156 = load i32, i32* @OF_bits, align 4
  %157 = load i32, i32* @OF_defaultDTable, align 4
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %13, align 4
  %165 = call i64 @ZSTD_buildSeqTable(i32 %141, i32* %143, i32 %144, i32 %145, i32 %146, i32* %147, i32 %154, i32 %155, i32 %156, i32 %157, i32 %160, i32 %163, i32 %164)
  store i64 %165, i64* %18, align 8
  %166 = load i64, i64* %18, align 8
  %167 = call i32 @ZSTD_isError(i64 %166)
  %168 = load i32, i32* @corruption_detected, align 4
  %169 = call i32 @RETURN_ERROR_IF(i32 %167, i32 %168)
  %170 = load i64, i64* %18, align 8
  %171 = load i32*, i32** %12, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 %170
  store i32* %172, i32** %12, align 8
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 3
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 2
  %179 = load i32, i32* %16, align 4
  %180 = load i32, i32* @MaxML, align 4
  %181 = load i32, i32* @MLFSELog, align 4
  %182 = load i32*, i32** %12, align 8
  %183 = load i32*, i32** %11, align 8
  %184 = load i32*, i32** %12, align 8
  %185 = ptrtoint i32* %183 to i64
  %186 = ptrtoint i32* %184 to i64
  %187 = sub i64 %185, %186
  %188 = sdiv exact i64 %187, 4
  %189 = trunc i64 %188 to i32
  %190 = load i32, i32* @ML_base, align 4
  %191 = load i32, i32* @ML_bits, align 4
  %192 = load i32, i32* @ML_defaultDTable, align 4
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* %13, align 4
  %200 = call i64 @ZSTD_buildSeqTable(i32 %176, i32* %178, i32 %179, i32 %180, i32 %181, i32* %182, i32 %189, i32 %190, i32 %191, i32 %192, i32 %195, i32 %198, i32 %199)
  store i64 %200, i64* %19, align 8
  %201 = load i64, i64* %19, align 8
  %202 = call i32 @ZSTD_isError(i64 %201)
  %203 = load i32, i32* @corruption_detected, align 4
  %204 = call i32 @RETURN_ERROR_IF(i32 %202, i32 %203)
  %205 = load i64, i64* %19, align 8
  %206 = load i32*, i32** %12, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 %205
  store i32* %207, i32** %12, align 8
  %208 = load i32*, i32** %12, align 8
  %209 = load i32*, i32** %10, align 8
  %210 = ptrtoint i32* %208 to i64
  %211 = ptrtoint i32* %209 to i64
  %212 = sub i64 %210, %211
  %213 = sdiv exact i64 %212, 4
  store i64 %213, i64* %5, align 8
  br label %214

214:                                              ; preds = %80, %38
  %215 = load i64, i64* %5, align 8
  ret i64 %215
}

declare dso_local i32 @DEBUGLOG(i32, i8*) #1

declare dso_local i32 @RETURN_ERROR_IF(i32, i32) #1

declare dso_local i32 @MEM_readLE16(i32*) #1

declare dso_local i64 @ZSTD_buildSeqTable(i32, i32*, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ZSTD_isError(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
