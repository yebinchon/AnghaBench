; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/mux/extr_anim_encode.c_IncreasePreviousDuration.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/mux/extr_anim_encode.c_IncreasePreviousDuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_19__, i64, i32, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_20__ = type { %struct.TYPE_16__, %struct.TYPE_15__, i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i64, i64, i32 }
%struct.TYPE_17__ = type { i32*, i32 }

@MAX_DURATION = common dso_local global i32 0, align 4
@__const.IncreasePreviousDuration.rect = private unnamed_addr constant %struct.TYPE_19__ { i32 0, i32 0, i32 1, i32 1 }, align 4
@__const.IncreasePreviousDuration.lossless_1x1_bytes = private unnamed_addr constant [28 x i32] [i32 82, i32 73, i32 70, i32 70, i32 20, i32 0, i32 0, i32 0, i32 87, i32 69, i32 66, i32 80, i32 86, i32 80, i32 56, i32 76, i32 8, i32 0, i32 0, i32 0, i32 47, i32 0, i32 0, i32 0, i32 16, i32 136, i32 136, i32 8], align 16
@__const.IncreasePreviousDuration.lossy_1x1_bytes = private unnamed_addr constant [72 x i32] [i32 82, i32 73, i32 70, i32 70, i32 64, i32 0, i32 0, i32 0, i32 87, i32 69, i32 66, i32 80, i32 86, i32 80, i32 56, i32 88, i32 10, i32 0, i32 0, i32 0, i32 16, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 65, i32 76, i32 80, i32 72, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 86, i32 80, i32 56, i32 32, i32 24, i32 0, i32 0, i32 0, i32 48, i32 1, i32 0, i32 157, i32 1, i32 42, i32 1, i32 0, i32 1, i32 0, i32 2, i32 0, i32 52, i32 37, i32 164, i32 0, i32 3, i32 112, i32 0, i32 254, i32 251, i32 253, i32 80, i32 0], align 16
@WEBP_CHUNK_ANMF = common dso_local global i32 0, align 4
@WEBP_MUX_DISPOSE_NONE = common dso_local global i32 0, align 4
@WEBP_MUX_BLEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, i32)* @IncreasePreviousDuration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IncreasePreviousDuration(%struct.TYPE_18__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_19__, align 4
  %10 = alloca [28 x i32], align 16
  %11 = alloca %struct.TYPE_17__, align 8
  %12 = alloca [72 x i32], align 16
  %13 = alloca %struct.TYPE_17__, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %6, align 8
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call %struct.TYPE_20__* @GetFrame(%struct.TYPE_18__* %21, i64 %22)
  store %struct.TYPE_20__* %23, %struct.TYPE_20__** %7, align 8
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp sge i32 %26, 1
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %33, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @MAX_DURATION, align 4
  %50 = sub nsw i32 %49, 1
  %51 = and i32 %48, %50
  %52 = icmp eq i32 %44, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @MAX_DURATION, align 4
  %58 = sub nsw i32 %57, 1
  %59 = and i32 %56, %58
  %60 = icmp eq i32 %55, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %66, %67
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @MAX_DURATION, align 4
  %71 = icmp sge i32 %69, %70
  br i1 %71, label %72, label %159

72:                                               ; preds = %2
  %73 = bitcast %struct.TYPE_19__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %73, i8* align 4 bitcast (%struct.TYPE_19__* @__const.IncreasePreviousDuration.rect to i8*), i64 16, i1 false)
  %74 = bitcast [28 x i32]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %74, i8* align 16 bitcast ([28 x i32]* @__const.IncreasePreviousDuration.lossless_1x1_bytes to i8*), i64 112, i1 false)
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 0
  %76 = getelementptr inbounds [28 x i32], [28 x i32]* %10, i64 0, i64 0
  store i32* %76, i32** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 1
  store i32 112, i32* %77, align 8
  %78 = bitcast [72 x i32]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %78, i8* align 16 bitcast ([72 x i32]* @__const.IncreasePreviousDuration.lossy_1x1_bytes to i8*), i64 288, i1 false)
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  %80 = getelementptr inbounds [72 x i32], [72 x i32]* %12, i64 0, i64 0
  store i32* %80, i32** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 1
  store i32 288, i32* %81, align 8
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 6
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %72
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 5
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br label %93

93:                                               ; preds = %87, %72
  %94 = phi i1 [ true, %72 ], [ %92, %87 ]
  %95 = zext i1 %94 to i32
  store i32 %95, i32* %14, align 4
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = call %struct.TYPE_20__* @GetFrame(%struct.TYPE_18__* %96, i64 %100)
  store %struct.TYPE_20__* %101, %struct.TYPE_20__** %15, align 8
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 2
  store i64 0, i64* %103, align 8
  %104 = load i32, i32* @WEBP_CHUNK_ANMF, align 4
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 6
  store i32 %104, i32* %107, align 8
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 5
  store i64 0, i64* %110, align 8
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 4
  store i64 0, i64* %113, align 8
  %114 = load i32, i32* @WEBP_MUX_DISPOSE_NONE, align 4
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 3
  store i32 %114, i32* %117, align 4
  %118 = load i32, i32* @WEBP_MUX_BLEND, align 4
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 2
  store i32 %118, i32* %121, align 8
  %122 = load i32, i32* %5, align 4
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  store i32 %122, i32* %125, align 8
  %126 = load i32, i32* %14, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %93
  br label %130

129:                                              ; preds = %93
  br label %130

130:                                              ; preds = %129, %128
  %131 = phi %struct.TYPE_17__* [ %11, %128 ], [ %13, %129 ]
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 1
  %135 = call i32 @WebPDataCopy(%struct.TYPE_17__* %131, i32* %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %130
  store i32 0, i32* %3, align 4
  br label %169

138:                                              ; preds = %130
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %140, align 8
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 8
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %144, align 8
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = sub nsw i32 %149, 1
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 1
  store i32 %150, i32* %152, align 4
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 3
  store i64 0, i64* %154, align 8
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 2
  %157 = bitcast %struct.TYPE_19__* %156 to i8*
  %158 = bitcast %struct.TYPE_19__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %157, i8* align 4 %158, i64 16, i1 false)
  br label %168

159:                                              ; preds = %2
  %160 = load i32, i32* %8, align 4
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 0
  store i32 %160, i32* %163, align 8
  %164 = load i32, i32* %8, align 4
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 0
  store i32 %164, i32* %167, align 8
  br label %168

168:                                              ; preds = %159, %138
  store i32 1, i32* %3, align 4
  br label %169

169:                                              ; preds = %168, %137
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local %struct.TYPE_20__* @GetFrame(%struct.TYPE_18__*, i64) #1

declare dso_local i32 @assert(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @WebPDataCopy(%struct.TYPE_17__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
