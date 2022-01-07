; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/avi/extr_libavi.c_AVI_ChunkRead_list.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/avi/extr_libavi.c_AVI_ChunkRead_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.avi_chunk_u = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, %union.avi_chunk_u*, %union.avi_chunk_u* }
%struct.TYPE_4__ = type { i64 }

@VLC_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"empty list chunk\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"cannot peek while reading list chunk\00", align 1
@STREAM_CAN_SEEK = common dso_local global i32 0, align 4
@AVIFOURCC_ON2 = common dso_local global i64 0, align 8
@AVIFOURCC_ON2f = common dso_local global i64 0, align 8
@AVIFOURCC_RIFF = common dso_local global i64 0, align 8
@AVIFOURCC_AVI = common dso_local global i64 0, align 8
@AVIFOURCC_LIST = common dso_local global i64 0, align 8
@AVIFOURCC_movi = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"skipping movi chunk\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"cannot enter chunk\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"<list '%4.4s'>\00", align 1
@AVI_ZEROSIZED_CHUNK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"</list '%4.4s'>%x\00", align 1
@AVI_ZERO_FOURCC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %union.avi_chunk_u*)* @AVI_ChunkRead_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AVI_ChunkRead_list(i32* %0, %union.avi_chunk_u* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %union.avi_chunk_u*, align 8
  %6 = alloca %union.avi_chunk_u*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %union.avi_chunk_u**, align 8
  store i32* %0, i32** %4, align 8
  store %union.avi_chunk_u* %1, %union.avi_chunk_u** %5, align 8
  %11 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %11, i32* %9, align 4
  %12 = load %union.avi_chunk_u*, %union.avi_chunk_u** %5, align 8
  %13 = bitcast %union.avi_chunk_u* %12 to %struct.TYPE_3__*
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %2
  %18 = load %union.avi_chunk_u*, %union.avi_chunk_u** %5, align 8
  %19 = bitcast %union.avi_chunk_u* %18 to %struct.TYPE_3__*
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %21, 4
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @msg_Warn(i32* %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %26, i32* %3, align 4
  br label %212

27:                                               ; preds = %17, %2
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @vlc_stream_Peek(i32* %28, i32** %7, i32 12)
  %30 = icmp slt i32 %29, 12
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @msg_Warn(i32* %32, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %34, i32* %3, align 4
  br label %212

35:                                               ; preds = %27
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* @STREAM_CAN_SEEK, align 4
  %38 = call i32 @vlc_stream_Control(i32* %36, i32 %37, i32* %8)
  %39 = load i32*, i32** %7, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 8
  %41 = call i64 @GetFOURCC(i32* %40)
  %42 = load %union.avi_chunk_u*, %union.avi_chunk_u** %5, align 8
  %43 = bitcast %union.avi_chunk_u* %42 to %struct.TYPE_4__*
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i64 %41, i64* %44, align 8
  %45 = load %union.avi_chunk_u*, %union.avi_chunk_u** %5, align 8
  %46 = bitcast %union.avi_chunk_u* %45 to %struct.TYPE_3__*
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @AVIFOURCC_ON2, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %67

51:                                               ; preds = %35
  %52 = load %union.avi_chunk_u*, %union.avi_chunk_u** %5, align 8
  %53 = bitcast %union.avi_chunk_u* %52 to %struct.TYPE_4__*
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @AVIFOURCC_ON2f, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %51
  %59 = load i64, i64* @AVIFOURCC_RIFF, align 8
  %60 = load %union.avi_chunk_u*, %union.avi_chunk_u** %5, align 8
  %61 = bitcast %union.avi_chunk_u* %60 to %struct.TYPE_3__*
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  store i64 %59, i64* %62, align 8
  %63 = load i64, i64* @AVIFOURCC_AVI, align 8
  %64 = load %union.avi_chunk_u*, %union.avi_chunk_u** %5, align 8
  %65 = bitcast %union.avi_chunk_u* %64 to %struct.TYPE_4__*
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i64 %63, i64* %66, align 8
  br label %67

67:                                               ; preds = %58, %51, %35
  %68 = load %union.avi_chunk_u*, %union.avi_chunk_u** %5, align 8
  %69 = bitcast %union.avi_chunk_u* %68 to %struct.TYPE_3__*
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @AVIFOURCC_LIST, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %92

74:                                               ; preds = %67
  %75 = load %union.avi_chunk_u*, %union.avi_chunk_u** %5, align 8
  %76 = bitcast %union.avi_chunk_u* %75 to %struct.TYPE_4__*
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @AVIFOURCC_movi, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %74
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %81
  %85 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %85, i32* %3, align 4
  br label %212

86:                                               ; preds = %81
  %87 = load i32*, i32** %4, align 8
  %88 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %87, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %89 = load i32*, i32** %4, align 8
  %90 = load %union.avi_chunk_u*, %union.avi_chunk_u** %5, align 8
  %91 = call i32 @AVI_NextChunk(i32* %89, %union.avi_chunk_u* %90)
  store i32 %91, i32* %3, align 4
  br label %212

92:                                               ; preds = %74, %67
  %93 = load i32*, i32** %4, align 8
  %94 = call i32 @vlc_stream_Read(i32* %93, i32* null, i32 12)
  %95 = icmp ne i32 %94, 12
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = load i32*, i32** %4, align 8
  %98 = call i32 @msg_Warn(i32* %97, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %99 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %99, i32* %3, align 4
  br label %212

100:                                              ; preds = %92
  %101 = load i32*, i32** %4, align 8
  %102 = load %union.avi_chunk_u*, %union.avi_chunk_u** %5, align 8
  %103 = bitcast %union.avi_chunk_u* %102 to %struct.TYPE_4__*
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = bitcast i64* %104 to i8*
  %106 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %101, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %105)
  %107 = load %union.avi_chunk_u*, %union.avi_chunk_u** %5, align 8
  %108 = bitcast %union.avi_chunk_u* %107 to %struct.TYPE_3__*
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 3
  store %union.avi_chunk_u** %109, %union.avi_chunk_u*** %10, align 8
  br label %110

110:                                              ; preds = %190, %100
  %111 = call %union.avi_chunk_u* @calloc(i32 1, i32 32)
  store %union.avi_chunk_u* %111, %union.avi_chunk_u** %6, align 8
  %112 = load %union.avi_chunk_u*, %union.avi_chunk_u** %6, align 8
  %113 = icmp ne %union.avi_chunk_u* %112, null
  br i1 %113, label %116, label %114

114:                                              ; preds = %110
  %115 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %115, i32* %3, align 4
  br label %212

116:                                              ; preds = %110
  %117 = load i32*, i32** %4, align 8
  %118 = load %union.avi_chunk_u*, %union.avi_chunk_u** %6, align 8
  %119 = load %union.avi_chunk_u*, %union.avi_chunk_u** %5, align 8
  %120 = call i32 @AVI_ChunkRead(i32* %117, %union.avi_chunk_u* %118, %union.avi_chunk_u* %119)
  store i32 %120, i32* %9, align 4
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %134

123:                                              ; preds = %116
  %124 = load i32*, i32** %4, align 8
  %125 = load %union.avi_chunk_u*, %union.avi_chunk_u** %6, align 8
  %126 = call i32 @AVI_ChunkClean(i32* %124, %union.avi_chunk_u* %125)
  %127 = load %union.avi_chunk_u*, %union.avi_chunk_u** %6, align 8
  %128 = call i32 @free(%union.avi_chunk_u* %127)
  store %union.avi_chunk_u* null, %union.avi_chunk_u** %6, align 8
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* @AVI_ZEROSIZED_CHUNK, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %123
  br label %191

133:                                              ; preds = %123
  br label %134

134:                                              ; preds = %133, %116
  %135 = load %union.avi_chunk_u*, %union.avi_chunk_u** %6, align 8
  %136 = icmp ne %union.avi_chunk_u* %135, null
  br i1 %136, label %137, label %150

137:                                              ; preds = %134
  %138 = load %union.avi_chunk_u*, %union.avi_chunk_u** %6, align 8
  %139 = load %union.avi_chunk_u**, %union.avi_chunk_u*** %10, align 8
  store %union.avi_chunk_u* %138, %union.avi_chunk_u** %139, align 8
  br label %140

140:                                              ; preds = %144, %137
  %141 = load %union.avi_chunk_u**, %union.avi_chunk_u*** %10, align 8
  %142 = load %union.avi_chunk_u*, %union.avi_chunk_u** %141, align 8
  %143 = icmp ne %union.avi_chunk_u* %142, null
  br i1 %143, label %144, label %149

144:                                              ; preds = %140
  %145 = load %union.avi_chunk_u**, %union.avi_chunk_u*** %10, align 8
  %146 = load %union.avi_chunk_u*, %union.avi_chunk_u** %145, align 8
  %147 = bitcast %union.avi_chunk_u* %146 to %struct.TYPE_3__*
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 2
  store %union.avi_chunk_u** %148, %union.avi_chunk_u*** %10, align 8
  br label %140

149:                                              ; preds = %140
  br label %150

150:                                              ; preds = %149, %134
  %151 = load %union.avi_chunk_u*, %union.avi_chunk_u** %5, align 8
  %152 = bitcast %union.avi_chunk_u* %151 to %struct.TYPE_3__*
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = icmp sgt i32 %154, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %150
  %157 = load i32*, i32** %4, align 8
  %158 = call i64 @vlc_stream_Tell(i32* %157)
  %159 = load %union.avi_chunk_u*, %union.avi_chunk_u** %5, align 8
  %160 = call i64 @AVI_ChunkEnd(%union.avi_chunk_u* %159)
  %161 = icmp sge i64 %158, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %156
  br label %191

163:                                              ; preds = %156, %150
  %164 = load %union.avi_chunk_u*, %union.avi_chunk_u** %6, align 8
  %165 = icmp ne %union.avi_chunk_u* %164, null
  br i1 %165, label %166, label %190

166:                                              ; preds = %163
  %167 = load %union.avi_chunk_u*, %union.avi_chunk_u** %6, align 8
  %168 = bitcast %union.avi_chunk_u* %167 to %struct.TYPE_3__*
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @AVIFOURCC_LIST, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %190

173:                                              ; preds = %166
  %174 = load %union.avi_chunk_u*, %union.avi_chunk_u** %6, align 8
  %175 = bitcast %union.avi_chunk_u* %174 to %struct.TYPE_4__*
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @AVIFOURCC_movi, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %190

180:                                              ; preds = %173
  %181 = load i32, i32* %8, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %180
  %184 = load %union.avi_chunk_u*, %union.avi_chunk_u** %6, align 8
  %185 = bitcast %union.avi_chunk_u* %184 to %struct.TYPE_3__*
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %183, %180
  br label %191

190:                                              ; preds = %183, %173, %166, %163
  br label %110

191:                                              ; preds = %189, %162, %132
  %192 = load i32*, i32** %4, align 8
  %193 = load %union.avi_chunk_u*, %union.avi_chunk_u** %5, align 8
  %194 = bitcast %union.avi_chunk_u* %193 to %struct.TYPE_4__*
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 0
  %196 = bitcast i64* %195 to i8*
  %197 = load i32, i32* %9, align 4
  %198 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %192, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %196, i32 %197)
  %199 = load i32, i32* %9, align 4
  %200 = load i32, i32* @AVI_ZERO_FOURCC, align 4
  %201 = icmp eq i32 %199, %200
  br i1 %201, label %206, label %202

202:                                              ; preds = %191
  %203 = load i32, i32* %9, align 4
  %204 = load i32, i32* @AVI_ZEROSIZED_CHUNK, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %206, label %210

206:                                              ; preds = %202, %191
  %207 = load i32*, i32** %4, align 8
  %208 = load %union.avi_chunk_u*, %union.avi_chunk_u** %5, align 8
  %209 = call i32 @AVI_GotoNextChunk(i32* %207, %union.avi_chunk_u* %208)
  store i32 %209, i32* %3, align 4
  br label %212

210:                                              ; preds = %202
  %211 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %211, i32* %3, align 4
  br label %212

212:                                              ; preds = %210, %206, %114, %96, %86, %84, %31, %23
  %213 = load i32, i32* %3, align 4
  ret i32 %213
}

declare dso_local i32 @msg_Warn(i32*, i8*) #1

declare dso_local i32 @vlc_stream_Peek(i32*, i32**, i32) #1

declare dso_local i32 @vlc_stream_Control(i32*, i32, i32*) #1

declare dso_local i64 @GetFOURCC(i32*) #1

declare dso_local i32 @msg_Dbg(i32*, i8*, ...) #1

declare dso_local i32 @AVI_NextChunk(i32*, %union.avi_chunk_u*) #1

declare dso_local i32 @vlc_stream_Read(i32*, i32*, i32) #1

declare dso_local %union.avi_chunk_u* @calloc(i32, i32) #1

declare dso_local i32 @AVI_ChunkRead(i32*, %union.avi_chunk_u*, %union.avi_chunk_u*) #1

declare dso_local i32 @AVI_ChunkClean(i32*, %union.avi_chunk_u*) #1

declare dso_local i32 @free(%union.avi_chunk_u*) #1

declare dso_local i64 @vlc_stream_Tell(i32*) #1

declare dso_local i64 @AVI_ChunkEnd(%union.avi_chunk_u*) #1

declare dso_local i32 @AVI_GotoNextChunk(i32*, %union.avi_chunk_u*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
