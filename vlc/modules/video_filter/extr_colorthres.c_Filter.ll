; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_colorthres.c_Filter.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_colorthres.c_Filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i8**, i32, i32 }

@Y_PLANE = common dso_local global i64 0, align 8
@U_PLANE = common dso_local global i64 0, align 8
@V_PLANE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_15__* (%struct.TYPE_16__*, %struct.TYPE_15__*)* @Filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_15__* @Filter(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8**, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i8**, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  store %struct.TYPE_17__* %22, %struct.TYPE_17__** %7, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 2
  %25 = call i32 @atomic_load(i32* %24)
  store i32 %25, i32* %8, align 4
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 1
  %28 = call i32 @atomic_load(i32* %27)
  store i32 %28, i32* %9, align 4
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = call i32 @atomic_load(i32* %30)
  store i32 %31, i32* %10, align 4
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %33 = icmp ne %struct.TYPE_15__* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %2
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %3, align 8
  br label %194

35:                                               ; preds = %2
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %37 = call %struct.TYPE_15__* @filter_NewPicture(%struct.TYPE_16__* %36)
  store %struct.TYPE_15__* %37, %struct.TYPE_15__** %6, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %39 = icmp ne %struct.TYPE_15__* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %42 = call i32 @picture_Release(%struct.TYPE_15__* %41)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %3, align 8
  br label %194

43:                                               ; preds = %35
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %45, align 8
  %47 = load i64, i64* @Y_PLANE, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i64 %47
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %50, align 8
  %52 = load i64, i64* @Y_PLANE, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i64 %52
  %54 = call i32 @plane_CopyPixels(%struct.TYPE_18__* %48, %struct.TYPE_18__* %53)
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @GetReference(i32* %11, i32* %12, i32* %13, i32 %55)
  store i32 0, i32* %14, align 4
  br label %57

57:                                               ; preds = %187, %43
  %58 = load i32, i32* %14, align 4
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %60, align 8
  %62 = load i64, i64* @U_PLANE, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %58, %65
  br i1 %66, label %67, label %190

67:                                               ; preds = %57
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %69, align 8
  %71 = load i64, i64* @U_PLANE, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 1
  %74 = load i8**, i8*** %73, align 8
  %75 = load i32, i32* %14, align 4
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %77, align 8
  %79 = load i64, i64* @U_PLANE, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = mul nsw i32 %75, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8*, i8** %74, i64 %84
  store i8** %85, i8*** %15, align 8
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %87, align 8
  %89 = load i64, i64* @V_PLANE, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 1
  %92 = load i8**, i8*** %91, align 8
  %93 = load i32, i32* %14, align 4
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %95, align 8
  %97 = load i64, i64* @V_PLANE, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = mul nsw i32 %93, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8*, i8** %92, i64 %102
  store i8** %103, i8*** %16, align 8
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %105, align 8
  %107 = load i64, i64* @U_PLANE, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 1
  %110 = load i8**, i8*** %109, align 8
  %111 = load i32, i32* %14, align 4
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %113, align 8
  %115 = load i64, i64* @U_PLANE, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = mul nsw i32 %111, %118
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8*, i8** %110, i64 %120
  store i8** %121, i8*** %17, align 8
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %123, align 8
  %125 = load i64, i64* @V_PLANE, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 1
  %128 = load i8**, i8*** %127, align 8
  %129 = load i32, i32* %14, align 4
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %131, align 8
  %133 = load i64, i64* @V_PLANE, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = mul nsw i32 %129, %136
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8*, i8** %128, i64 %138
  store i8** %139, i8*** %18, align 8
  store i32 0, i32* %19, align 4
  br label %140

140:                                              ; preds = %183, %67
  %141 = load i32, i32* %19, align 4
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %143, align 8
  %145 = load i64, i64* @U_PLANE, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = icmp slt i32 %141, %148
  br i1 %149, label %150, label %186

150:                                              ; preds = %140
  %151 = load i8**, i8*** %15, align 8
  %152 = load i8*, i8** %151, align 8
  %153 = getelementptr i8, i8* %152, i64 -128
  %154 = load i8**, i8*** %16, align 8
  %155 = load i8*, i8** %154, align 8
  %156 = getelementptr i8, i8* %155, i64 -128
  %157 = load i32, i32* %11, align 4
  %158 = load i32, i32* %12, align 4
  %159 = load i32, i32* %13, align 4
  %160 = load i32, i32* %9, align 4
  %161 = load i32, i32* %8, align 4
  %162 = call i64 @IsSimilar(i8* %153, i8* %156, i32 %157, i32 %158, i32 %159, i32 %160, i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %173

164:                                              ; preds = %150
  %165 = load i8**, i8*** %15, align 8
  %166 = load i8*, i8** %165, align 8
  %167 = load i8**, i8*** %17, align 8
  %168 = getelementptr inbounds i8*, i8** %167, i32 1
  store i8** %168, i8*** %17, align 8
  store i8* %166, i8** %167, align 8
  %169 = load i8**, i8*** %16, align 8
  %170 = load i8*, i8** %169, align 8
  %171 = load i8**, i8*** %18, align 8
  %172 = getelementptr inbounds i8*, i8** %171, i32 1
  store i8** %172, i8*** %18, align 8
  store i8* %170, i8** %171, align 8
  br label %178

173:                                              ; preds = %150
  %174 = load i8**, i8*** %17, align 8
  %175 = getelementptr inbounds i8*, i8** %174, i32 1
  store i8** %175, i8*** %17, align 8
  store i8* inttoptr (i64 128 to i8*), i8** %174, align 8
  %176 = load i8**, i8*** %18, align 8
  %177 = getelementptr inbounds i8*, i8** %176, i32 1
  store i8** %177, i8*** %18, align 8
  store i8* inttoptr (i64 128 to i8*), i8** %176, align 8
  br label %178

178:                                              ; preds = %173, %164
  %179 = load i8**, i8*** %15, align 8
  %180 = getelementptr inbounds i8*, i8** %179, i32 1
  store i8** %180, i8*** %15, align 8
  %181 = load i8**, i8*** %16, align 8
  %182 = getelementptr inbounds i8*, i8** %181, i32 1
  store i8** %182, i8*** %16, align 8
  br label %183

183:                                              ; preds = %178
  %184 = load i32, i32* %19, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %19, align 4
  br label %140

186:                                              ; preds = %140
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %14, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %14, align 4
  br label %57

190:                                              ; preds = %57
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %193 = call %struct.TYPE_15__* @CopyInfoAndRelease(%struct.TYPE_15__* %191, %struct.TYPE_15__* %192)
  store %struct.TYPE_15__* %193, %struct.TYPE_15__** %3, align 8
  br label %194

194:                                              ; preds = %190, %40, %34
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  ret %struct.TYPE_15__* %195
}

declare dso_local i32 @atomic_load(i32*) #1

declare dso_local %struct.TYPE_15__* @filter_NewPicture(%struct.TYPE_16__*) #1

declare dso_local i32 @picture_Release(%struct.TYPE_15__*) #1

declare dso_local i32 @plane_CopyPixels(%struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i32 @GetReference(i32*, i32*, i32*, i32) #1

declare dso_local i64 @IsSimilar(i8*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_15__* @CopyInfoAndRelease(%struct.TYPE_15__*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
