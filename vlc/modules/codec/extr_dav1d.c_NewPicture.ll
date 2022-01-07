; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_dav1d.c_NewPicture.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_dav1d.c_NewPicture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64*, %struct.TYPE_24__*, i32*, %struct.TYPE_18__*, %struct.TYPE_17__ }
%struct.TYPE_24__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64, i32 }
%struct.TYPE_18__ = type { i64, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_21__, %struct.TYPE_20__ }
%struct.TYPE_21__ = type { i32, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64, i32, i32, i32 }

@COLOR_PRIMARIES_UNDEF = common dso_local global i64 0, align 8
@COLOR_RANGE_FULL = common dso_local global i32 0, align 4
@COLOR_RANGE_LIMITED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i8*)* @NewPicture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NewPicture(%struct.TYPE_16__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %10, %struct.TYPE_25__** %6, align 8
  %11 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 1
  store %struct.TYPE_23__* %13, %struct.TYPE_23__** %7, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 127
  %31 = and i32 %30, -128
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 127
  %39 = and i32 %38, -128
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %2
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %46, %2
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 4
  store i32 1, i32* %53, align 4
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 5
  store i32 1, i32* %55, align 4
  br label %56

56:                                               ; preds = %51, %46
  %57 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @COLOR_PRIMARIES_UNDEF, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %108

64:                                               ; preds = %56
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 3
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %66, align 8
  %68 = icmp ne %struct.TYPE_18__* %67, null
  br i1 %68, label %69, label %108

69:                                               ; preds = %64
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 3
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @iso_23001_8_cp_to_vlc_primaries(i32 %74)
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i32 0, i32 13
  store i32 %75, i32* %77, align 4
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 3
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @iso_23001_8_tc_to_vlc_xfer(i32 %82)
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 12
  store i32 %83, i32* %85, align 4
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 3
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @iso_23001_8_mc_to_vlc_coeffs(i32 %90)
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %92, i32 0, i32 11
  store i32 %91, i32* %93, align 4
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 3
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %69
  %101 = load i32, i32* @COLOR_RANGE_FULL, align 4
  br label %104

102:                                              ; preds = %69
  %103 = load i32, i32* @COLOR_RANGE_LIMITED, align 4
  br label %104

104:                                              ; preds = %102, %100
  %105 = phi i32 [ %101, %100 ], [ %103, %102 ]
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i32 0, i32 10
  store i32 %105, i32* %107, align 4
  br label %108

108:                                              ; preds = %104, %64, %56
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %114, i32 0, i32 9
  store i32 %113, i32* %115, align 4
  %116 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %121, i32 0, i32 8
  store i32 %120, i32* %122, align 4
  %123 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %128, i32 0, i32 7
  store i32 %127, i32* %129, align 4
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %131 = call i32 @FindVlcChroma(%struct.TYPE_16__* %130)
  %132 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 0
  store i32 %131, i32* %134, align 8
  %135 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %137, i32 0, i32 6
  store i32 %131, i32* %138, align 4
  %139 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %140 = call i64 @decoder_UpdateVideoFormat(%struct.TYPE_25__* %139)
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %220

142:                                              ; preds = %108
  %143 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %144 = call %struct.TYPE_24__* @decoder_NewPicture(%struct.TYPE_25__* %143)
  store %struct.TYPE_24__* %144, %struct.TYPE_24__** %8, align 8
  %145 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %146 = icmp ne %struct.TYPE_24__* %145, null
  %147 = zext i1 %146 to i32
  %148 = call i64 @likely(i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %219

150:                                              ; preds = %142
  %151 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_22__*, %struct.TYPE_22__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %153, i64 0
  %155 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 2
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 0
  store i32 %156, i32* %160, align 4
  %161 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_22__*, %struct.TYPE_22__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %163, i64 0
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 0
  %169 = load i64*, i64** %168, align 8
  %170 = getelementptr inbounds i64, i64* %169, i64 0
  store i64 %166, i64* %170, align 8
  %171 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_22__*, %struct.TYPE_22__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %173, i64 1
  %175 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 2
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 1
  store i32 %176, i32* %180, align 4
  %181 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_22__*, %struct.TYPE_22__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %183, i64 2
  %185 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 2
  %189 = load i32*, i32** %188, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 2
  store i32 %186, i32* %190, align 4
  %191 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %191, i32 0, i32 0
  %193 = load %struct.TYPE_22__*, %struct.TYPE_22__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %193, i64 1
  %195 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %197, i32 0, i32 0
  %199 = load %struct.TYPE_22__*, %struct.TYPE_22__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %199, i64 2
  %201 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = icmp eq i64 %196, %202
  %204 = zext i1 %203 to i32
  %205 = call i32 @assert(i32 %204)
  %206 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %206, i32 0, i32 0
  %208 = load %struct.TYPE_22__*, %struct.TYPE_22__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %208, i64 1
  %210 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %212, i32 0, i32 0
  %214 = load i64*, i64** %213, align 8
  %215 = getelementptr inbounds i64, i64* %214, i64 1
  store i64 %211, i64* %215, align 8
  %216 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %217 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %217, i32 0, i32 1
  store %struct.TYPE_24__* %216, %struct.TYPE_24__** %218, align 8
  store i32 0, i32* %3, align 4
  br label %221

219:                                              ; preds = %142
  br label %220

220:                                              ; preds = %219, %108
  store i32 -1, i32* %3, align 4
  br label %221

221:                                              ; preds = %220, %150
  %222 = load i32, i32* %3, align 4
  ret i32 %222
}

declare dso_local i32 @iso_23001_8_cp_to_vlc_primaries(i32) #1

declare dso_local i32 @iso_23001_8_tc_to_vlc_xfer(i32) #1

declare dso_local i32 @iso_23001_8_mc_to_vlc_coeffs(i32) #1

declare dso_local i32 @FindVlcChroma(%struct.TYPE_16__*) #1

declare dso_local i64 @decoder_UpdateVideoFormat(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_24__* @decoder_NewPicture(%struct.TYPE_25__*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
