; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/mux/extr_muxedit.c_WebPMuxPushFrame.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/mux/extr_muxedit.c_WebPMuxPushFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__*, i32, i32, i32* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { i64, i32, i32, i64, i32, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64, i32* }

@WEBP_MUX_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@WEBP_CHUNK_ANMF = common dso_local global i64 0, align 8
@MAX_CHUNK_PAYLOAD = common dso_local global i64 0, align 8
@WEBP_CHUNK_IMAGE = common dso_local global i64 0, align 8
@WEBP_MUX_OK = common dso_local global i64 0, align 8
@kChunks = common dso_local global %struct.TYPE_19__* null, align 8
@IDX_ANMF = common dso_local global i64 0, align 8
@MAX_POSITION_OFFSET = common dso_local global i32 0, align 4
@MAX_DURATION = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @WebPMuxPushFrame(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_17__, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %16 = icmp eq %struct.TYPE_18__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %19 = icmp eq %struct.TYPE_17__* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %17, %3
  %21 = load i64, i64* @WEBP_MUX_INVALID_ARGUMENT, align 8
  store i64 %21, i64* %4, align 8
  br label %174

22:                                               ; preds = %17
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @WEBP_CHUNK_ANMF, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i64, i64* @WEBP_MUX_INVALID_ARGUMENT, align 8
  store i64 %29, i64* %4, align 8
  br label %174

30:                                               ; preds = %22
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %43, label %36

36:                                               ; preds = %30
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 5
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @MAX_CHUNK_PAYLOAD, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %36, %30
  %44 = load i64, i64* @WEBP_MUX_INVALID_ARGUMENT, align 8
  store i64 %44, i64* %4, align 8
  br label %174

45:                                               ; preds = %36
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %47, align 8
  %49 = icmp ne %struct.TYPE_16__* %48, null
  br i1 %49, label %50, label %77

50:                                               ; preds = %45
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %52, align 8
  store %struct.TYPE_16__* %53, %struct.TYPE_16__** %10, align 8
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %55, align 8
  %57 = icmp ne %struct.TYPE_15__* %56, null
  br i1 %57, label %58, label %65

58:                                               ; preds = %50
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @ChunkGetIdFromTag(i32 %63)
  br label %67

65:                                               ; preds = %50
  %66 = load i64, i64* @WEBP_CHUNK_IMAGE, align 8
  br label %67

67:                                               ; preds = %65, %58
  %68 = phi i64 [ %64, %58 ], [ %66, %65 ]
  store i64 %68, i64* %11, align 8
  %69 = load i64, i64* %11, align 8
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %69, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = load i64, i64* @WEBP_MUX_INVALID_ARGUMENT, align 8
  store i64 %75, i64* %4, align 8
  br label %174

76:                                               ; preds = %67
  br label %77

77:                                               ; preds = %76, %45
  %78 = call i32 @MuxImageInit(%struct.TYPE_16__* %8)
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 5
  %81 = load i32, i32* %7, align 4
  %82 = call i64 @SetAlphaAndImageChunks(%struct.TYPE_20__* %80, i32 %81, %struct.TYPE_16__* %8)
  store i64 %82, i64* %9, align 8
  %83 = load i64, i64* %9, align 8
  %84 = load i64, i64* @WEBP_MUX_OK, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %77
  br label %171

87:                                               ; preds = %77
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 3
  %89 = load i32*, i32** %88, align 8
  %90 = icmp ne i32* %89, null
  %91 = zext i1 %90 to i32
  %92 = call i32 @assert(i32 %91)
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** @kChunks, align 8
  %94 = load i64, i64* @IDX_ANMF, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %13, align 8
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %99 = bitcast %struct.TYPE_17__* %14 to i8*
  %100 = bitcast %struct.TYPE_17__* %98 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %99, i8* align 8 %100, i64 48, i1 false)
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = and i32 %102, -2
  store i32 %103, i32* %101, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %105, -2
  store i32 %106, i32* %104, align 4
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %140, label %110

110:                                              ; preds = %87
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @MAX_POSITION_OFFSET, align 4
  %114 = icmp sge i32 %112, %113
  br i1 %114, label %140, label %115

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %140, label %119

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @MAX_POSITION_OFFSET, align 4
  %123 = icmp sge i32 %121, %122
  br i1 %123, label %140, label %124

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %140, label %128

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @MAX_DURATION, align 8
  %132 = icmp sge i64 %130, %131
  br i1 %132, label %140, label %133

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 4
  %137 = load i32, i32* %136, align 8
  %138 = and i32 %137, 1
  %139 = icmp ne i32 %135, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %133, %128, %124, %119, %115, %110, %87
  %141 = load i64, i64* @WEBP_MUX_INVALID_ARGUMENT, align 8
  store i64 %141, i64* %9, align 8
  br label %171

142:                                              ; preds = %133
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = call i64 @CreateFrameData(i32 %144, i32 %146, %struct.TYPE_17__* %14, i32* %12)
  store i64 %147, i64* %9, align 8
  %148 = load i64, i64* %9, align 8
  %149 = load i64, i64* @WEBP_MUX_OK, align 8
  %150 = icmp ne i64 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %142
  br label %171

152:                                              ; preds = %142
  %153 = load i64, i64* %13, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %155 = call i64 @AddDataToChunkList(i32* %12, i32 1, i64 %153, %struct.TYPE_15__** %154)
  store i64 %155, i64* %9, align 8
  %156 = call i32 @WebPDataClear(i32* %12)
  %157 = load i64, i64* %9, align 8
  %158 = load i64, i64* @WEBP_MUX_OK, align 8
  %159 = icmp ne i64 %157, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %152
  br label %171

161:                                              ; preds = %152
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 0
  %164 = call i64 @MuxImagePush(%struct.TYPE_16__* %8, %struct.TYPE_16__** %163)
  store i64 %164, i64* %9, align 8
  %165 = load i64, i64* %9, align 8
  %166 = load i64, i64* @WEBP_MUX_OK, align 8
  %167 = icmp ne i64 %165, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %161
  br label %171

169:                                              ; preds = %161
  %170 = load i64, i64* @WEBP_MUX_OK, align 8
  store i64 %170, i64* %4, align 8
  br label %174

171:                                              ; preds = %168, %160, %151, %140, %86
  %172 = call i32 @MuxImageRelease(%struct.TYPE_16__* %8)
  %173 = load i64, i64* %9, align 8
  store i64 %173, i64* %4, align 8
  br label %174

174:                                              ; preds = %171, %169, %74, %43, %28, %20
  %175 = load i64, i64* %4, align 8
  ret i64 %175
}

declare dso_local i64 @ChunkGetIdFromTag(i32) #1

declare dso_local i32 @MuxImageInit(%struct.TYPE_16__*) #1

declare dso_local i64 @SetAlphaAndImageChunks(%struct.TYPE_20__*, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @assert(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @CreateFrameData(i32, i32, %struct.TYPE_17__*, i32*) #1

declare dso_local i64 @AddDataToChunkList(i32*, i32, i64, %struct.TYPE_15__**) #1

declare dso_local i32 @WebPDataClear(i32*) #1

declare dso_local i64 @MuxImagePush(%struct.TYPE_16__*, %struct.TYPE_16__**) #1

declare dso_local i32 @MuxImageRelease(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
