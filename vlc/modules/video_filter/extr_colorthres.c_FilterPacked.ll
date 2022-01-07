; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_colorthres.c_FilterPacked.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_colorthres.c_FilterPacked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_17__, %struct.TYPE_21__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32*, i32, i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_19__* (%struct.TYPE_20__*, %struct.TYPE_19__*)* @FilterPacked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_19__* @FilterPacked(%struct.TYPE_20__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  store %struct.TYPE_21__* %24, %struct.TYPE_21__** %7, align 8
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 2
  %27 = call i32 @atomic_load(i32* %26)
  store i32 %27, i32* %8, align 4
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 1
  %30 = call i32 @atomic_load(i32* %29)
  store i32 %30, i32* %9, align 4
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 0
  %33 = call i32 @atomic_load(i32* %32)
  store i32 %33, i32* %10, align 4
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %35 = icmp ne %struct.TYPE_19__* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %2
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %3, align 8
  br label %193

37:                                               ; preds = %2
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %39 = call %struct.TYPE_19__* @filter_NewPicture(%struct.TYPE_20__* %38)
  store %struct.TYPE_19__* %39, %struct.TYPE_19__** %6, align 8
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %41 = icmp ne %struct.TYPE_19__* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %44 = call i32 @picture_Release(%struct.TYPE_19__* %43)
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %3, align 8
  br label %193

45:                                               ; preds = %37
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @GetPackedYuvOffsets(i32 %50, i32* %11, i32* %12, i32* %13)
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* @VLC_EGENERIC, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %45
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %57 = call i32 @picture_Release(%struct.TYPE_19__* %56)
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %3, align 8
  br label %193

58:                                               ; preds = %45
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @GetReference(i32* %15, i32* %16, i32* %17, i32 %59)
  store i32 0, i32* %18, align 4
  br label %61

61:                                               ; preds = %186, %58
  %62 = load i32, i32* %18, align 4
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %62, %67
  br i1 %68, label %69, label %189

69:                                               ; preds = %61
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %18, align 4
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = mul nsw i32 %75, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %74, i64 %82
  store i32* %83, i32** %19, align 8
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %18, align 4
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = mul nsw i32 %89, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %88, i64 %96
  store i32* %97, i32** %20, align 8
  store i32 0, i32* %21, align 4
  br label %98

98:                                               ; preds = %182, %69
  %99 = load i32, i32* %21, align 4
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = sdiv i32 %104, 4
  %106 = icmp slt i32 %99, %105
  br i1 %106, label %107, label %185

107:                                              ; preds = %98
  %108 = load i32*, i32** %19, align 8
  %109 = load i32, i32* %11, align 4
  %110 = add nsw i32 %109, 0
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32*, i32** %20, align 8
  %115 = load i32, i32* %11, align 4
  %116 = add nsw i32 %115, 0
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %114, i64 %117
  store i32 %113, i32* %118, align 4
  %119 = load i32*, i32** %19, align 8
  %120 = load i32, i32* %11, align 4
  %121 = add nsw i32 %120, 2
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %119, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = load i32*, i32** %20, align 8
  %126 = load i32, i32* %11, align 4
  %127 = add nsw i32 %126, 2
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %125, i64 %128
  store i32 %124, i32* %129, align 4
  %130 = load i32*, i32** %19, align 8
  %131 = load i32, i32* %12, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = sub nsw i32 %134, 128
  %136 = load i32*, i32** %19, align 8
  %137 = load i32, i32* %13, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = sub nsw i32 %140, 128
  %142 = load i32, i32* %15, align 4
  %143 = load i32, i32* %16, align 4
  %144 = load i32, i32* %17, align 4
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* %8, align 4
  %147 = call i64 @IsSimilar(i32 %135, i32 %141, i32 %142, i32 %143, i32 %144, i32 %145, i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %168

149:                                              ; preds = %107
  %150 = load i32*, i32** %19, align 8
  %151 = load i32, i32* %12, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = load i32*, i32** %20, align 8
  %156 = load i32, i32* %12, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  store i32 %154, i32* %158, align 4
  %159 = load i32*, i32** %19, align 8
  %160 = load i32, i32* %13, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = load i32*, i32** %20, align 8
  %165 = load i32, i32* %13, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  store i32 %163, i32* %167, align 4
  br label %177

168:                                              ; preds = %107
  %169 = load i32*, i32** %20, align 8
  %170 = load i32, i32* %12, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  store i32 128, i32* %172, align 4
  %173 = load i32*, i32** %20, align 8
  %174 = load i32, i32* %13, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  store i32 128, i32* %176, align 4
  br label %177

177:                                              ; preds = %168, %149
  %178 = load i32*, i32** %20, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 4
  store i32* %179, i32** %20, align 8
  %180 = load i32*, i32** %19, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 4
  store i32* %181, i32** %19, align 8
  br label %182

182:                                              ; preds = %177
  %183 = load i32, i32* %21, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %21, align 4
  br label %98

185:                                              ; preds = %98
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %18, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %18, align 4
  br label %61

189:                                              ; preds = %61
  %190 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %191 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %192 = call %struct.TYPE_19__* @CopyInfoAndRelease(%struct.TYPE_19__* %190, %struct.TYPE_19__* %191)
  store %struct.TYPE_19__* %192, %struct.TYPE_19__** %3, align 8
  br label %193

193:                                              ; preds = %189, %55, %42, %36
  %194 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  ret %struct.TYPE_19__* %194
}

declare dso_local i32 @atomic_load(i32*) #1

declare dso_local %struct.TYPE_19__* @filter_NewPicture(%struct.TYPE_20__*) #1

declare dso_local i32 @picture_Release(%struct.TYPE_19__*) #1

declare dso_local i32 @GetPackedYuvOffsets(i32, i32*, i32*, i32*) #1

declare dso_local i32 @GetReference(i32*, i32*, i32*, i32) #1

declare dso_local i64 @IsSimilar(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_19__* @CopyInfoAndRelease(%struct.TYPE_19__*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
