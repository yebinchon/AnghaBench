; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/mms/extr_asf.c_asf_HeaderParse.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/mms/extr_asf.c_asf_HeaderParse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__*, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i32, i8*, i64 }

@ASF_CODEC_TYPE_UNKNOWN = common dso_local global i8* null, align 8
@asf_object_header_guid = common dso_local global i32 0, align 4
@asf_object_file_properties_guid = common dso_local global i32 0, align 4
@asf_object_header_extension_guid = common dso_local global i32 0, align 4
@asf_object_extended_stream_properties_guid = common dso_local global i32 0, align 4
@asf_object_stream_properties_guid = common dso_local global i32 0, align 4
@asf_object_stream_type_video = common dso_local global i32 0, align 4
@ASF_CODEC_TYPE_VIDEO = common dso_local global i8* null, align 8
@asf_object_stream_type_audio = common dso_local global i32 0, align 4
@ASF_CODEC_TYPE_AUDIO = common dso_local global i8* null, align 8
@asf_object_stream_bitrate_properties = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @asf_HeaderParse(%struct.TYPE_5__* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
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
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 3
  store i8* null, i8** %23, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  store i8* null, i8** %25, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  store i8* null, i8** %27, align 8
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %54, %3
  %29 = load i32, i32* %10, align 4
  %30 = icmp ult i32 %29, 128
  br i1 %30, label %31, label %57

31:                                               ; preds = %28
  %32 = load i8*, i8** @ASF_CODEC_TYPE_UNKNOWN, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store i8* %32, i8** %39, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load i32, i32* %10, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  store i64 0, i64* %46, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i32 -1, i32* %53, align 8
  br label %54

54:                                               ; preds = %31
  %55 = load i32, i32* %10, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %10, align 4
  br label %28

57:                                               ; preds = %28
  %58 = load i64*, i64** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @var_buffer_initread(i32* %7, i64* %58, i32 %59)
  %61 = call i32 @var_buffer_getguid(i32* %7, i32* %8)
  %62 = call i64 @guidcmp(i32* %8, i32* @asf_object_header_guid)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %64, %57
  %66 = call i32 @var_buffer_getmemory(i32* %7, i32* null, i32 14)
  br label %67

67:                                               ; preds = %245, %65
  %68 = call i32 @var_buffer_getguid(i32* %7, i32* %8)
  %69 = call i8* @var_buffer_get64(i32* %7)
  %70 = ptrtoint i8* %69 to i32
  store i32 %70, i32* %9, align 4
  %71 = call i64 @guidcmp(i32* %8, i32* @asf_object_file_properties_guid)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %98

73:                                               ; preds = %67
  %74 = call i32 @var_buffer_getmemory(i32* %7, i32* null, i32 16)
  %75 = call i8* @var_buffer_get64(i32* %7)
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 3
  store i8* %75, i8** %77, align 8
  %78 = call i32 @var_buffer_getmemory(i32* %7, i32* null, i32 8)
  %79 = call i8* @var_buffer_get64(i32* %7)
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 2
  store i8* %79, i8** %81, align 8
  %82 = call i32 @var_buffer_getmemory(i32* %7, i32* null, i32 28)
  %83 = call i8* @var_buffer_get32(i32* %7)
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  store i8* %83, i8** %85, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sub nsw i32 %86, 24
  %88 = sub nsw i32 %87, 16
  %89 = sub nsw i32 %88, 8
  %90 = sub nsw i32 %89, 8
  %91 = sub nsw i32 %90, 8
  %92 = sub nsw i32 %91, 8
  %93 = sub nsw i32 %92, 8
  %94 = sub nsw i32 %93, 8
  %95 = sub nsw i32 %94, 4
  %96 = sub nsw i32 %95, 4
  %97 = call i32 @var_buffer_getmemory(i32* %7, i32* null, i32 %96)
  br label %241

98:                                               ; preds = %67
  %99 = call i64 @guidcmp(i32* %8, i32* @asf_object_header_extension_guid)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = call i32 @var_buffer_getmemory(i32* %7, i32* null, i32 22)
  br label %240

103:                                              ; preds = %98
  %104 = call i64 @guidcmp(i32* %8, i32* @asf_object_extended_stream_properties_guid)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %155

106:                                              ; preds = %103
  %107 = call i32 @var_buffer_getmemory(i32* %7, i32* null, i32 60)
  %108 = call i32 @var_buffer_get16(i32* %7)
  store i32 %108, i32* %11, align 4
  %109 = call i32 @var_buffer_get16(i32* %7)
  store i32 %109, i32* %12, align 4
  store i32 88, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %110

110:                                              ; preds = %123, %106
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* %11, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %126

114:                                              ; preds = %110
  %115 = call i32 @var_buffer_get16(i32* %7)
  %116 = call i32 @var_buffer_get16(i32* %7)
  store i32 %116, i32* %15, align 4
  %117 = load i32, i32* %15, align 4
  %118 = call i32 @var_buffer_getmemory(i32* %7, i32* null, i32 %117)
  %119 = load i32, i32* %15, align 4
  %120 = add nsw i32 4, %119
  %121 = load i32, i32* %13, align 4
  %122 = add nsw i32 %121, %120
  store i32 %122, i32* %13, align 4
  br label %123

123:                                              ; preds = %114
  %124 = load i32, i32* %14, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %14, align 4
  br label %110

126:                                              ; preds = %110
  store i32 0, i32* %16, align 4
  br label %127

127:                                              ; preds = %141, %126
  %128 = load i32, i32* %16, align 4
  %129 = load i32, i32* %12, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %144

131:                                              ; preds = %127
  %132 = call i32 @var_buffer_getmemory(i32* %7, i32* null, i32 18)
  %133 = call i8* @var_buffer_get32(i32* %7)
  %134 = ptrtoint i8* %133 to i32
  store i32 %134, i32* %17, align 4
  %135 = load i32, i32* %17, align 4
  %136 = call i32 @var_buffer_getmemory(i32* %7, i32* null, i32 %135)
  %137 = load i32, i32* %17, align 4
  %138 = add nsw i32 22, %137
  %139 = load i32, i32* %13, align 4
  %140 = add nsw i32 %139, %138
  store i32 %140, i32* %13, align 4
  br label %141

141:                                              ; preds = %131
  %142 = load i32, i32* %16, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %16, align 4
  br label %127

144:                                              ; preds = %127
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* %13, align 4
  %147 = sub nsw i32 %145, %146
  %148 = icmp sle i32 %147, 24
  br i1 %148, label %149, label %154

149:                                              ; preds = %144
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* %13, align 4
  %152 = sub nsw i32 %150, %151
  %153 = call i32 @var_buffer_getmemory(i32* %7, i32* null, i32 %152)
  br label %154

154:                                              ; preds = %149, %144
  br label %239

155:                                              ; preds = %103
  %156 = call i64 @guidcmp(i32* %8, i32* @asf_object_stream_properties_guid)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %203

158:                                              ; preds = %155
  %159 = call i32 @var_buffer_getguid(i32* %7, i32* %19)
  %160 = call i32 @var_buffer_getmemory(i32* %7, i32* null, i32 32)
  %161 = call i32 @var_buffer_get8(i32* %7)
  %162 = and i32 %161, 127
  store i32 %162, i32* %18, align 4
  %163 = load i32, i32* %9, align 4
  %164 = sub nsw i32 %163, 24
  %165 = sub nsw i32 %164, 32
  %166 = sub nsw i32 %165, 16
  %167 = sub nsw i32 %166, 1
  %168 = call i32 @var_buffer_getmemory(i32* %7, i32* null, i32 %167)
  %169 = call i64 @guidcmp(i32* %19, i32* @asf_object_stream_type_video)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %180

171:                                              ; preds = %158
  %172 = load i8*, i8** @ASF_CODEC_TYPE_VIDEO, align 8
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %174, align 8
  %176 = load i32, i32* %18, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 1
  store i8* %172, i8** %179, align 8
  br label %202

180:                                              ; preds = %158
  %181 = call i64 @guidcmp(i32* %19, i32* @asf_object_stream_type_audio)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %192

183:                                              ; preds = %180
  %184 = load i8*, i8** @ASF_CODEC_TYPE_AUDIO, align 8
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %186, align 8
  %188 = load i32, i32* %18, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 1
  store i8* %184, i8** %191, align 8
  br label %201

192:                                              ; preds = %180
  %193 = load i8*, i8** @ASF_CODEC_TYPE_UNKNOWN, align 8
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 0
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %195, align 8
  %197 = load i32, i32* %18, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 1
  store i8* %193, i8** %200, align 8
  br label %201

201:                                              ; preds = %192, %183
  br label %202

202:                                              ; preds = %201, %171
  br label %238

203:                                              ; preds = %155
  %204 = call i64 @guidcmp(i32* %8, i32* @asf_object_stream_bitrate_properties)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %233

206:                                              ; preds = %203
  %207 = call i32 @var_buffer_get16(i32* %7)
  store i32 %207, i32* %20, align 4
  %208 = load i32, i32* %9, align 4
  %209 = sub nsw i32 %208, 2
  store i32 %209, i32* %9, align 4
  br label %210

210:                                              ; preds = %213, %206
  %211 = load i32, i32* %20, align 4
  %212 = icmp sgt i32 %211, 0
  br i1 %212, label %213, label %229

213:                                              ; preds = %210
  %214 = call i32 @var_buffer_get16(i32* %7)
  %215 = and i32 %214, 127
  %216 = sext i32 %215 to i64
  store i64 %216, i64* %21, align 8
  %217 = call i8* @var_buffer_get32(i32* %7)
  %218 = ptrtoint i8* %217 to i32
  %219 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 0
  %221 = load %struct.TYPE_4__*, %struct.TYPE_4__** %220, align 8
  %222 = load i64, i64* %21, align 8
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 0
  store i32 %218, i32* %224, align 8
  %225 = load i32, i32* %20, align 4
  %226 = add nsw i32 %225, -1
  store i32 %226, i32* %20, align 4
  %227 = load i32, i32* %9, align 4
  %228 = sub nsw i32 %227, 6
  store i32 %228, i32* %9, align 4
  br label %210

229:                                              ; preds = %210
  %230 = load i32, i32* %9, align 4
  %231 = sub nsw i32 %230, 24
  %232 = call i32 @var_buffer_getmemory(i32* %7, i32* null, i32 %231)
  br label %237

233:                                              ; preds = %203
  %234 = load i32, i32* %9, align 4
  %235 = sub nsw i32 %234, 24
  %236 = call i32 @var_buffer_getmemory(i32* %7, i32* null, i32 %235)
  br label %237

237:                                              ; preds = %233, %229
  br label %238

238:                                              ; preds = %237, %202
  br label %239

239:                                              ; preds = %238, %154
  br label %240

240:                                              ; preds = %239, %101
  br label %241

241:                                              ; preds = %240, %73
  %242 = call i64 @var_buffer_readempty(i32* %7)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %241
  ret void

245:                                              ; preds = %241
  br label %67
}

declare dso_local i32 @var_buffer_initread(i32*, i64*, i32) #1

declare dso_local i32 @var_buffer_getguid(i32*, i32*) #1

declare dso_local i64 @guidcmp(i32*, i32*) #1

declare dso_local i32 @var_buffer_getmemory(i32*, i32*, i32) #1

declare dso_local i8* @var_buffer_get64(i32*) #1

declare dso_local i8* @var_buffer_get32(i32*) #1

declare dso_local i32 @var_buffer_get16(i32*) #1

declare dso_local i32 @var_buffer_get8(i32*) #1

declare dso_local i64 @var_buffer_readempty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
