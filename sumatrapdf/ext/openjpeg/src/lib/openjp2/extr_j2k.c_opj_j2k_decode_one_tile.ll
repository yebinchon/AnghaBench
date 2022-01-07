; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_j2k.c_opj_j2k_decode_one_tile.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_j2k.c_opj_j2k_decode_one_tile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_18__*, %struct.TYPE_17__, i32, i32, %struct.TYPE_16__ }
%struct.TYPE_18__ = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_17__ = type { i64, i64, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, i64, i64 }

@OPJ_TRUE = common dso_local global i32 0, align 4
@OPJ_FALSE = common dso_local global i32 0, align 4
@EVT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Problem with seek function\0A\00", align 1
@J2K_STATE_EOC = common dso_local global i64 0, align 8
@J2K_STATE_TPHSOT = common dso_local global i64 0, align 8
@EVT_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Tile %d/%d has been decoded.\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Image data has been updated with tile %d.\0A\0A\00", align 1
@EVT_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [67 x i8] c"Tile read, decoded and updated is not the desired one (%d vs %d).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, i32*, i32*)* @opj_j2k_decode_one_tile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opj_j2k_decode_one_tile(%struct.TYPE_19__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %18 = load i32, i32* @OPJ_TRUE, align 4
  store i32 %18, i32* %8, align 4
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %24 = icmp ne %struct.TYPE_14__* %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %3
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %27 = call i32 @opj_j2k_allocate_tile_element_cstr_index(%struct.TYPE_19__* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %30, i32* %4, align 4
  br label %237

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %31, %3
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %10, align 8
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %41, align 8
  %43 = icmp ne %struct.TYPE_14__* %42, null
  br i1 %43, label %44, label %121

44:                                               ; preds = %32
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %50, align 8
  %52 = icmp ne %struct.TYPE_13__* %51, null
  br i1 %52, label %53, label %120

53:                                               ; preds = %44
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %57, align 8
  %59 = load i64, i64* %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %81, label %64

64:                                               ; preds = %53
  %65 = load i32*, i32** %6, align 8
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, 2
  %72 = load i32*, i32** %7, align 8
  %73 = call i32 @opj_stream_read_seek(i32* %65, i64 %71, i32* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %64
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* @EVT_ERROR, align 4
  %78 = call i32 (i32*, i32, i8*, ...) @opj_event_msg(i32* %76, i32 %77, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %79 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %79, i32* %4, align 4
  br label %237

80:                                               ; preds = %64
  br label %105

81:                                               ; preds = %53
  %82 = load i32*, i32** %6, align 8
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %86, align 8
  %88 = load i64, i64* %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i64 0
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, 2
  %96 = load i32*, i32** %7, align 8
  %97 = call i32 @opj_stream_read_seek(i32* %82, i64 %95, i32* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %81
  %100 = load i32*, i32** %7, align 8
  %101 = load i32, i32* @EVT_ERROR, align 4
  %102 = call i32 (i32*, i32, i8*, ...) @opj_event_msg(i32* %100, i32 %101, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %103 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %103, i32* %4, align 4
  br label %237

104:                                              ; preds = %81
  br label %105

105:                                              ; preds = %104, %80
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @J2K_STATE_EOC, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %105
  %114 = load i64, i64* @J2K_STATE_TPHSOT, align 8
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 4
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 0
  store i64 %114, i64* %118, align 8
  br label %119

119:                                              ; preds = %113, %105
  br label %120

120:                                              ; preds = %119, %44
  br label %121

121:                                              ; preds = %120, %32
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = mul i64 %125, %129
  store i64 %130, i64* %16, align 8
  store i64 0, i64* %17, align 8
  br label %131

131:                                              ; preds = %143, %121
  %132 = load i64, i64* %17, align 8
  %133 = load i64, i64* %16, align 8
  %134 = icmp ult i64 %132, %133
  br i1 %134, label %135, label %146

135:                                              ; preds = %131
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 2
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %138, align 8
  %140 = load i64, i64* %17, align 8
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i32 0, i32 0
  store i32 -1, i32* %142, align 4
  br label %143

143:                                              ; preds = %135
  %144 = load i64, i64* %17, align 8
  %145 = add i64 %144, 1
  store i64 %145, i64* %17, align 8
  br label %131

146:                                              ; preds = %131
  br label %147

147:                                              ; preds = %234, %146
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %149 = load i32*, i32** %6, align 8
  %150 = load i32*, i32** %7, align 8
  %151 = call i32 @opj_j2k_read_tile_header(%struct.TYPE_19__* %148, i64* %9, i32* null, i32* %11, i32* %12, i32* %13, i32* %14, i64* %15, i32* %8, i32* %149, i32* %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %155, label %153

153:                                              ; preds = %147
  %154 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %154, i32* %4, align 4
  br label %237

155:                                              ; preds = %147
  %156 = load i32, i32* %8, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %155
  br label %235

159:                                              ; preds = %155
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %161 = load i64, i64* %9, align 8
  %162 = load i32*, i32** %6, align 8
  %163 = load i32*, i32** %7, align 8
  %164 = call i32 @opj_j2k_decode_tile(%struct.TYPE_19__* %160, i64 %161, i32* null, i32 0, i32* %162, i32* %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %168, label %166

166:                                              ; preds = %159
  %167 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %167, i32* %4, align 4
  br label %237

168:                                              ; preds = %159
  %169 = load i32*, i32** %7, align 8
  %170 = load i32, i32* @EVT_INFO, align 4
  %171 = load i64, i64* %9, align 8
  %172 = add i64 %171, 1
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = mul i64 %176, %180
  %182 = call i32 (i32*, i32, i8*, ...) @opj_event_msg(i32* %169, i32 %170, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %172, i64 %181)
  %183 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @opj_j2k_update_image_data(i32 %185, i32 %188)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %193, label %191

191:                                              ; preds = %168
  %192 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %192, i32* %4, align 4
  br label %237

193:                                              ; preds = %168
  %194 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 2
  %197 = load %struct.TYPE_20__*, %struct.TYPE_20__** %196, align 8
  %198 = load i64, i64* %9, align 8
  %199 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %197, i64 %198
  %200 = call i32 @opj_j2k_tcp_data_destroy(%struct.TYPE_20__* %199)
  %201 = load i32*, i32** %7, align 8
  %202 = load i32, i32* @EVT_INFO, align 4
  %203 = load i64, i64* %9, align 8
  %204 = add i64 %203, 1
  %205 = call i32 (i32*, i32, i8*, ...) @opj_event_msg(i32* %201, i32 %202, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i64 %204)
  %206 = load i64, i64* %9, align 8
  %207 = load i64, i64* %10, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %226

209:                                              ; preds = %193
  %210 = load i32*, i32** %6, align 8
  %211 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %211, i32 0, i32 0
  %213 = load %struct.TYPE_18__*, %struct.TYPE_18__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = add nsw i64 %215, 2
  %217 = load i32*, i32** %7, align 8
  %218 = call i32 @opj_stream_read_seek(i32* %210, i64 %216, i32* %217)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %225, label %220

220:                                              ; preds = %209
  %221 = load i32*, i32** %7, align 8
  %222 = load i32, i32* @EVT_ERROR, align 4
  %223 = call i32 (i32*, i32, i8*, ...) @opj_event_msg(i32* %221, i32 %222, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %224 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %224, i32* %4, align 4
  br label %237

225:                                              ; preds = %209
  br label %235

226:                                              ; preds = %193
  %227 = load i32*, i32** %7, align 8
  %228 = load i32, i32* @EVT_WARNING, align 4
  %229 = load i64, i64* %9, align 8
  %230 = add i64 %229, 1
  %231 = load i64, i64* %10, align 8
  %232 = add i64 %231, 1
  %233 = call i32 (i32*, i32, i8*, ...) @opj_event_msg(i32* %227, i32 %228, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i64 %230, i64 %232)
  br label %234

234:                                              ; preds = %226
  br label %147

235:                                              ; preds = %225, %158
  %236 = load i32, i32* @OPJ_TRUE, align 4
  store i32 %236, i32* %4, align 4
  br label %237

237:                                              ; preds = %235, %220, %191, %166, %153, %99, %75, %29
  %238 = load i32, i32* %4, align 4
  ret i32 %238
}

declare dso_local i32 @opj_j2k_allocate_tile_element_cstr_index(%struct.TYPE_19__*) #1

declare dso_local i32 @opj_stream_read_seek(i32*, i64, i32*) #1

declare dso_local i32 @opj_event_msg(i32*, i32, i8*, ...) #1

declare dso_local i32 @opj_j2k_read_tile_header(%struct.TYPE_19__*, i64*, i32*, i32*, i32*, i32*, i32*, i64*, i32*, i32*, i32*) #1

declare dso_local i32 @opj_j2k_decode_tile(%struct.TYPE_19__*, i64, i32*, i32, i32*, i32*) #1

declare dso_local i32 @opj_j2k_update_image_data(i32, i32) #1

declare dso_local i32 @opj_j2k_tcp_data_destroy(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
