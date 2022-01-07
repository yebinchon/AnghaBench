; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/android/extr_display.c_SubtitleGetDirtyBounds.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/android/extr_display.c_SubtitleGetDirtyBounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_18__*, %struct.TYPE_15__* }
%struct.TYPE_18__ = type { %struct.TYPE_19__, i32* }
%struct.TYPE_19__ = type { i64, i32, i32, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_14__*, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_13__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, i32*, %struct.TYPE_19__*)* @SubtitleGetDirtyBounds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SubtitleGetDirtyBounds(%struct.TYPE_16__* %0, i32* %1, %struct.TYPE_19__* %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %6, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  store %struct.TYPE_17__* %14, %struct.TYPE_17__** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %18 = icmp ne %struct.TYPE_18__* %17, null
  br i1 %18, label %19, label %60

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %56, %19
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %59

30:                                               ; preds = %20
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i64 %35
  store %struct.TYPE_18__* %36, %struct.TYPE_18__** %10, align 8
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %39, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %30
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  %53 = bitcast %struct.TYPE_19__* %50 to i8*
  %54 = bitcast %struct.TYPE_19__* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %53, i8* align 8 %54, i64 24, i1 false)
  store i32 1, i32* %9, align 4
  br label %59

55:                                               ; preds = %30
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %20

59:                                               ; preds = %49, %20
  br label %60

60:                                               ; preds = %59, %3
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %106

63:                                               ; preds = %60
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %106, label %68

68:                                               ; preds = %63
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = icmp ult i32 %71, 0
  br i1 %72, label %106, label %73

73:                                               ; preds = %68
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ugt i32 %76, %82
  br i1 %83, label %106, label %84

84:                                               ; preds = %73
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = icmp ult i32 %87, 0
  br i1 %88, label %106, label %89

89:                                               ; preds = %84
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = icmp slt i64 %92, 0
  br i1 %93, label %106, label %94

94:                                               ; preds = %89
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = trunc i64 %97 to i32
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp ugt i32 %98, %104
  br i1 %105, label %106, label %127

106:                                              ; preds = %94, %89, %84, %73, %68, %63, %60
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 0
  store i64 0, i64* %108, align 8
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 3
  store i64 0, i64* %110, align 8
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 8
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 4
  br label %127

127:                                              ; preds = %106, %94
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %129, align 8
  %131 = icmp ne %struct.TYPE_18__* %130, null
  br i1 %131, label %132, label %142

132:                                              ; preds = %127
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %134, align 8
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = icmp eq i32* %140, null
  br i1 %141, label %142, label %182

142:                                              ; preds = %132, %127
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %144, align 8
  %146 = load i32, i32* %8, align 4
  %147 = add nsw i32 %146, 2
  %148 = sext i32 %147 to i64
  %149 = mul i64 %148, 32
  %150 = trunc i64 %149 to i32
  %151 = call %struct.TYPE_18__* @realloc(%struct.TYPE_18__* %145, i32 %150)
  store %struct.TYPE_18__* %151, %struct.TYPE_18__** %11, align 8
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %153 = icmp ne %struct.TYPE_18__* %152, null
  br i1 %153, label %154, label %181

154:                                              ; preds = %142
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 0
  store %struct.TYPE_18__* %155, %struct.TYPE_18__** %157, align 8
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i64 0
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %167, align 8
  %169 = load i32, i32* %8, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 1
  store i32* %165, i32** %172, align 8
  %173 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %174, align 8
  %176 = load i32, i32* %8, align 4
  %177 = add nsw i32 %176, 1
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i32 0, i32 1
  store i32* null, i32** %180, align 8
  br label %181

181:                                              ; preds = %154, %142
  br label %182

182:                                              ; preds = %181, %132
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 0
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %184, align 8
  %186 = icmp ne %struct.TYPE_18__* %185, null
  br i1 %186, label %187, label %207

187:                                              ; preds = %182
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %189, align 8
  %191 = load i32, i32* %8, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %193, i32 0, i32 1
  %195 = load i32*, i32** %194, align 8
  %196 = icmp ne i32* %195, null
  br i1 %196, label %197, label %207

197:                                              ; preds = %187
  %198 = load i32*, i32** %5, align 8
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 0
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %200, align 8
  %202 = load i32, i32* %8, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %204, i32 0, i32 0
  %206 = call i32 @SubtitleRegionToBounds(i32* %198, %struct.TYPE_19__* %205)
  br label %207

207:                                              ; preds = %197, %187, %182
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.TYPE_18__* @realloc(%struct.TYPE_18__*, i32) #2

declare dso_local i32 @SubtitleRegionToBounds(i32*, %struct.TYPE_19__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
