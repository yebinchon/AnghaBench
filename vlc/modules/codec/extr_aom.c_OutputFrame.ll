; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_aom.c_OutputFrame.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_aom.c_OutputFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_23__*, %struct.TYPE_18__, %struct.TYPE_16__ }
%struct.TYPE_23__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, i32, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.aom_image = type { i64, i64, i64, i64, i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i32 }

@COLOR_PRIMARIES_UNDEF = common dso_local global i64 0, align 8
@AOM_CR_FULL_RANGE = common dso_local global i64 0, align 8
@COLOR_RANGE_FULL = common dso_local global i32 0, align 4
@COLOR_RANGE_LIMITED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*, %struct.aom_image*)* @OutputFrame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @OutputFrame(%struct.TYPE_22__* %0, %struct.aom_image* %1) #0 {
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.aom_image*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  store %struct.aom_image* %1, %struct.aom_image** %4, align 8
  %8 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  store %struct.TYPE_20__* %10, %struct.TYPE_20__** %5, align 8
  %11 = load %struct.aom_image*, %struct.aom_image** %4, align 8
  %12 = getelementptr inbounds %struct.aom_image, %struct.aom_image* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %13, %16
  br i1 %17, label %26, label %18

18:                                               ; preds = %2
  %19 = load %struct.aom_image*, %struct.aom_image** %4, align 8
  %20 = getelementptr inbounds %struct.aom_image, %struct.aom_image* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %26, label %45

26:                                               ; preds = %18, %2
  %27 = load %struct.aom_image*, %struct.aom_image** %4, align 8
  %28 = getelementptr inbounds %struct.aom_image, %struct.aom_image* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 2
  store i64 %29, i64* %33, align 8
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 0
  store i64 %29, i64* %35, align 8
  %36 = load %struct.aom_image*, %struct.aom_image** %4, align 8
  %37 = getelementptr inbounds %struct.aom_image, %struct.aom_image* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 3
  store i64 %38, i64* %42, align 8
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 1
  store i64 %38, i64* %44, align 8
  br label %45

45:                                               ; preds = %26, %18
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %45
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %52, %45
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 4
  store i32 1, i32* %63, align 8
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 5
  store i32 1, i32* %67, align 4
  br label %68

68:                                               ; preds = %59, %52
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @COLOR_PRIMARIES_UNDEF, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %108

76:                                               ; preds = %68
  %77 = load %struct.aom_image*, %struct.aom_image** %4, align 8
  %78 = getelementptr inbounds %struct.aom_image, %struct.aom_image* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @iso_23001_8_cp_to_vlc_primaries(i32 %79)
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 12
  store i32 %80, i32* %82, align 8
  %83 = load %struct.aom_image*, %struct.aom_image** %4, align 8
  %84 = getelementptr inbounds %struct.aom_image, %struct.aom_image* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @iso_23001_8_tc_to_vlc_xfer(i32 %85)
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 11
  store i32 %86, i32* %88, align 4
  %89 = load %struct.aom_image*, %struct.aom_image** %4, align 8
  %90 = getelementptr inbounds %struct.aom_image, %struct.aom_image* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @iso_23001_8_mc_to_vlc_coeffs(i32 %91)
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 10
  store i32 %92, i32* %94, align 8
  %95 = load %struct.aom_image*, %struct.aom_image** %4, align 8
  %96 = getelementptr inbounds %struct.aom_image, %struct.aom_image* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @AOM_CR_FULL_RANGE, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %76
  %101 = load i32, i32* @COLOR_RANGE_FULL, align 4
  br label %104

102:                                              ; preds = %76
  %103 = load i32, i32* @COLOR_RANGE_LIMITED, align 4
  br label %104

104:                                              ; preds = %102, %100
  %105 = phi i32 [ %101, %100 ], [ %103, %102 ]
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 9
  store i32 %105, i32* %107, align 4
  br label %108

108:                                              ; preds = %104, %68
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 8
  store i32 %113, i32* %117, align 8
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 7
  store i32 %122, i32* %126, align 4
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 6
  store i32 %131, i32* %135, align 8
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %137 = call i64 @decoder_UpdateVideoFormat(%struct.TYPE_22__* %136)
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %168

139:                                              ; preds = %108
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %141 = call %struct.TYPE_21__* @decoder_NewPicture(%struct.TYPE_22__* %140)
  store %struct.TYPE_21__* %141, %struct.TYPE_21__** %6, align 8
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %143 = icmp ne %struct.TYPE_21__* %142, null
  br i1 %143, label %144, label %167

144:                                              ; preds = %139
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %146, align 8
  store %struct.TYPE_23__* %147, %struct.TYPE_23__** %7, align 8
  %148 = load %struct.aom_image*, %struct.aom_image** %4, align 8
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %150 = call i32 @CopyPicture(%struct.aom_image* %148, %struct.TYPE_21__* %149)
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 0
  store i32 1, i32* %152, align 4
  %153 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %154, align 8
  %156 = load %struct.aom_image*, %struct.aom_image** %4, align 8
  %157 = getelementptr inbounds %struct.aom_image, %struct.aom_image* %156, i32 0, i32 3
  %158 = load i64, i64* %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i32 0, i32 1
  store i32 %161, i32* %163, align 4
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %166 = call i32 @decoder_QueueVideo(%struct.TYPE_22__* %164, %struct.TYPE_21__* %165)
  br label %167

167:                                              ; preds = %144, %139
  br label %168

168:                                              ; preds = %167, %108
  ret void
}

declare dso_local i32 @iso_23001_8_cp_to_vlc_primaries(i32) #1

declare dso_local i32 @iso_23001_8_tc_to_vlc_xfer(i32) #1

declare dso_local i32 @iso_23001_8_mc_to_vlc_coeffs(i32) #1

declare dso_local i64 @decoder_UpdateVideoFormat(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_21__* @decoder_NewPicture(%struct.TYPE_22__*) #1

declare dso_local i32 @CopyPicture(%struct.aom_image*, %struct.TYPE_21__*) #1

declare dso_local i32 @decoder_QueueVideo(%struct.TYPE_22__*, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
