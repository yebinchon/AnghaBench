; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/extr_LzmaEnc.c_LzmaEnc_Alloc.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/extr_LzmaEnc.c_LzmaEnc_Alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, i32, i32, i64, i32, %struct.TYPE_21__, %struct.TYPE_21__*, i32, %struct.TYPE_21__, %struct.TYPE_18__, i32*, i32, i64, i32 }
%struct.TYPE_21__ = type { i64, i32 }
%struct.TYPE_18__ = type { i32* }
%struct.TYPE_19__ = type { i64 (%struct.TYPE_19__*, i32)* }

@kNumOpts = common dso_local global i64 0, align 8
@SZ_ERROR_MEM = common dso_local global i32 0, align 4
@kBigHashDicLimit = common dso_local global i64 0, align 8
@LZMA_MATCH_LEN_MAX = common dso_local global i32 0, align 4
@SZ_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, i64, %struct.TYPE_19__*, %struct.TYPE_19__*)* @LzmaEnc_Alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LzmaEnc_Alloc(%struct.TYPE_20__* %0, i64 %1, %struct.TYPE_19__* %2, %struct.TYPE_19__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %8, align 8
  store %struct.TYPE_19__* %3, %struct.TYPE_19__** %9, align 8
  %13 = load i64, i64* @kNumOpts, align 8
  store i64 %13, i64* %10, align 8
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 14
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %17 = call i32 @RangeEnc_Alloc(i32* %15, %struct.TYPE_19__* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @SZ_ERROR_MEM, align 4
  store i32 %20, i32* %5, align 4
  br label %197

21:                                               ; preds = %4
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 6
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %11, align 4
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 13
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %21
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 12
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br label %40

40:                                               ; preds = %37, %32, %21
  %41 = phi i1 [ false, %32 ], [ false, %21 ], [ %39, %37 ]
  %42 = zext i1 %41 to i32
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = add i32 %47, %50
  store i32 %51, i32* %12, align 4
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 11
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %68, label %56

56:                                               ; preds = %40
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 10
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %68, label %62

62:                                               ; preds = %56
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %118

68:                                               ; preds = %62, %56, %40
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %71 = call i32 @LzmaEnc_FreeLits(%struct.TYPE_20__* %69, %struct.TYPE_19__* %70)
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 0
  %74 = load i64 (%struct.TYPE_19__*, i32)*, i64 (%struct.TYPE_19__*, i32)** %73, align 8
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %76 = load i32, i32* %12, align 4
  %77 = shl i32 768, %76
  %78 = sext i32 %77 to i64
  %79 = mul i64 %78, 4
  %80 = trunc i64 %79 to i32
  %81 = call i64 %74(%struct.TYPE_19__* %75, i32 %80)
  %82 = inttoptr i64 %81 to i32*
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 11
  store i32* %82, i32** %84, align 8
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 0
  %87 = load i64 (%struct.TYPE_19__*, i32)*, i64 (%struct.TYPE_19__*, i32)** %86, align 8
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %89 = load i32, i32* %12, align 4
  %90 = shl i32 768, %89
  %91 = sext i32 %90 to i64
  %92 = mul i64 %91, 4
  %93 = trunc i64 %92 to i32
  %94 = call i64 %87(%struct.TYPE_19__* %88, i32 %93)
  %95 = inttoptr i64 %94 to i32*
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 10
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 0
  store i32* %95, i32** %98, align 8
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 11
  %101 = load i32*, i32** %100, align 8
  %102 = icmp eq i32* %101, null
  br i1 %102, label %109, label %103

103:                                              ; preds = %68
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 10
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = icmp eq i32* %107, null
  br i1 %108, label %109, label %114

109:                                              ; preds = %103, %68
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %112 = call i32 @LzmaEnc_FreeLits(%struct.TYPE_20__* %110, %struct.TYPE_19__* %111)
  %113 = load i32, i32* @SZ_ERROR_MEM, align 4
  store i32 %113, i32* %5, align 4
  br label %197

114:                                              ; preds = %103
  %115 = load i32, i32* %12, align 4
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 3
  store i32 %115, i32* %117, align 4
  br label %118

118:                                              ; preds = %114, %62
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 4
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @kBigHashDicLimit, align 8
  %123 = icmp sgt i64 %121, %122
  %124 = zext i1 %123 to i32
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 6
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 1
  store i32 %124, i32* %127, align 8
  %128 = load i64, i64* %10, align 8
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 4
  %131 = load i64, i64* %130, align 8
  %132 = add nsw i64 %128, %131
  %133 = load i64, i64* %7, align 8
  %134 = icmp slt i64 %132, %133
  br i1 %134, label %135, label %141

135:                                              ; preds = %118
  %136 = load i64, i64* %7, align 8
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 4
  %139 = load i64, i64* %138, align 8
  %140 = sub nsw i64 %136, %139
  store i64 %140, i64* %10, align 8
  br label %141

141:                                              ; preds = %135, %118
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %169

146:                                              ; preds = %141
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 9
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 4
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* %10, align 8
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 8
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @LZMA_MATCH_LEN_MAX, align 4
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %158 = call i32 @MatchFinderMt_Create(%struct.TYPE_21__* %148, i64 %151, i64 %152, i32 %155, i32 %156, %struct.TYPE_19__* %157)
  %159 = call i32 @RINOK(i32 %158)
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %160, i32 0, i32 9
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %162, i32 0, i32 7
  store %struct.TYPE_21__* %161, %struct.TYPE_21__** %163, align 8
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %164, i32 0, i32 9
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 5
  %168 = call i32 @MatchFinderMt_CreateVTable(%struct.TYPE_21__* %165, i32* %167)
  br label %195

169:                                              ; preds = %141
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 6
  %172 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %172, i32 0, i32 4
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* %10, align 8
  %176 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %176, i32 0, i32 8
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @LZMA_MATCH_LEN_MAX, align 4
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %181 = call i32 @MatchFinder_Create(%struct.TYPE_21__* %171, i64 %174, i64 %175, i32 %178, i32 %179, %struct.TYPE_19__* %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %185, label %183

183:                                              ; preds = %169
  %184 = load i32, i32* @SZ_ERROR_MEM, align 4
  store i32 %184, i32* %5, align 4
  br label %197

185:                                              ; preds = %169
  %186 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %186, i32 0, i32 6
  %188 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %188, i32 0, i32 7
  store %struct.TYPE_21__* %187, %struct.TYPE_21__** %189, align 8
  %190 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %190, i32 0, i32 6
  %192 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %192, i32 0, i32 5
  %194 = call i32 @MatchFinder_CreateVTable(%struct.TYPE_21__* %191, i32* %193)
  br label %195

195:                                              ; preds = %185, %146
  %196 = load i32, i32* @SZ_OK, align 4
  store i32 %196, i32* %5, align 4
  br label %197

197:                                              ; preds = %195, %183, %109, %19
  %198 = load i32, i32* %5, align 4
  ret i32 %198
}

declare dso_local i32 @RangeEnc_Alloc(i32*, %struct.TYPE_19__*) #1

declare dso_local i32 @LzmaEnc_FreeLits(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

declare dso_local i32 @RINOK(i32) #1

declare dso_local i32 @MatchFinderMt_Create(%struct.TYPE_21__*, i64, i64, i32, i32, %struct.TYPE_19__*) #1

declare dso_local i32 @MatchFinderMt_CreateVTable(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @MatchFinder_Create(%struct.TYPE_21__*, i64, i64, i32, i32, %struct.TYPE_19__*) #1

declare dso_local i32 @MatchFinder_CreateVTable(%struct.TYPE_21__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
