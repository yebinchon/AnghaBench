; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/arib/extr_aribsub.c_render.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/arib/extr_aribsub.c_render.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64, i32, i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_21__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i64, i64 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_23__ = type { i32, i32, i32, %struct.TYPE_23__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_17__* (%struct.TYPE_18__*, i32*, i32*, %struct.TYPE_20__*)* @render to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_17__* @render(%struct.TYPE_18__* %0, i32* %1, i32* %2, %struct.TYPE_20__* %3) #0 {
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_22__*, align 8
  %17 = alloca %struct.TYPE_21__*, align 8
  %18 = alloca %struct.TYPE_23__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_20__* %3, %struct.TYPE_20__** %9, align 8
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  store %struct.TYPE_19__* %23, %struct.TYPE_19__** %10, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %11, align 8
  store i8* null, i8** %12, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = call i8* @arib_parser_get_data(i32* %24, i64* %13)
  store i8* %25, i8** %14, align 8
  %26 = load i8*, i8** %14, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load i64, i64* %13, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28, %4
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %5, align 8
  br label %248

32:                                               ; preds = %28
  %33 = load i64, i64* %13, align 8
  %34 = mul i64 %33, 4
  store i64 %34, i64* %15, align 8
  %35 = load i64, i64* %15, align 8
  %36 = add i64 %35, 1
  %37 = trunc i64 %36 to i32
  %38 = call i64 @calloc(i32 %37, i32 1)
  %39 = inttoptr i64 %38 to i8*
  store i8* %39, i8** %12, align 8
  %40 = load i8*, i8** %12, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %5, align 8
  br label %248

43:                                               ; preds = %32
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @arib_initialize_decoder_a_profile(i32* %49)
  br label %54

51:                                               ; preds = %43
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @arib_initialize_decoder_c_profile(i32* %52)
  br label %54

54:                                               ; preds = %51, %48
  %55 = load i32*, i32** %8, align 8
  %56 = load i8*, i8** %14, align 8
  %57 = load i64, i64* %13, align 8
  %58 = load i8*, i8** %12, align 8
  %59 = load i64, i64* %15, align 8
  %60 = call i64 @arib_decode_buffer(i32* %55, i8* %56, i64 %57, i8* %58, i64 %59)
  store i64 %60, i64* %15, align 8
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %62 = call %struct.TYPE_17__* @decoder_NewSubpictureText(%struct.TYPE_18__* %61)
  store %struct.TYPE_17__* %62, %struct.TYPE_17__** %11, align 8
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %64 = icmp eq %struct.TYPE_17__* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %54
  br label %241

66:                                               ; preds = %54
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = call i32 @arib_decoder_get_time(i32* %75)
  %77 = call i64 @VLC_TICK_FROM_US(i32 %76)
  %78 = add nsw i64 %74, %77
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %83, %86
  %88 = zext i1 %87 to i32
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 3
  store i32 1, i32* %92, align 4
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %95, align 8
  store %struct.TYPE_22__* %96, %struct.TYPE_22__** %16, align 8
  %97 = call i64 @calloc(i32 1, i32 72)
  %98 = inttoptr i64 %97 to %struct.TYPE_21__*
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 0
  store %struct.TYPE_21__* %98, %struct.TYPE_21__** %100, align 8
  store %struct.TYPE_21__* %98, %struct.TYPE_21__** %17, align 8
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %102 = icmp eq %struct.TYPE_21__* %101, null
  br i1 %102, label %103, label %104

103:                                              ; preds = %66
  br label %242

104:                                              ; preds = %66
  %105 = load i32*, i32** %8, align 8
  %106 = call %struct.TYPE_23__* @arib_decoder_get_regions(i32* %105)
  store %struct.TYPE_23__* %106, %struct.TYPE_23__** %18, align 8
  br label %107

107:                                              ; preds = %236, %104
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %109 = icmp ne %struct.TYPE_23__* %108, null
  br i1 %109, label %110, label %240

110:                                              ; preds = %107
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %110
  %116 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %117 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp eq i32 %118, 18
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  br label %236

121:                                              ; preds = %115, %110
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %123 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = sub nsw i32 %124, %127
  store i32 %128, i32* %19, align 4
  %129 = load i32, i32* %19, align 4
  %130 = add nsw i32 %129, 1
  %131 = call i64 @calloc(i32 %130, i32 1)
  %132 = inttoptr i64 %131 to i8*
  store i8* %132, i8** %20, align 8
  %133 = load i8*, i8** %20, align 8
  %134 = icmp eq i8* %133, null
  br i1 %134, label %135, label %136

135:                                              ; preds = %121
  br label %242

136:                                              ; preds = %121
  %137 = load i8*, i8** %20, align 8
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %139 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %19, align 4
  %142 = call i32 @strncpy(i8* %137, i32 %140, i32 %141)
  %143 = load i8*, i8** %20, align 8
  %144 = load i32, i32* %19, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %143, i64 %145
  store i8 0, i8* %146, align 1
  %147 = load i8*, i8** %20, align 8
  %148 = call i32 @strdup(i8* %147)
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i32 0, i32 13
  store i32 %148, i32* %150, align 8
  %151 = load i8*, i8** %20, align 8
  %152 = call i32 @free(i8* %151)
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %154 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %153, i32 0, i32 12
  store i32* null, i32** %154, align 8
  %155 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %156 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %155, i32 0, i32 13
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %158, i32 0, i32 11
  store i32 %157, i32* %159, align 4
  %160 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %161 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %160, i32 0, i32 12
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %164 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %163, i32 0, i32 10
  store i32 %162, i32* %164, align 8
  %165 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %166 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %165, i32 0, i32 11
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %169 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %168, i32 0, i32 9
  store i32 %167, i32* %169, align 4
  %170 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %171 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %170, i32 0, i32 10
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %174 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %173, i32 0, i32 8
  store i32 %172, i32* %174, align 8
  %175 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %176 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %179 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %178, i32 0, i32 0
  store i32 %177, i32* %179, align 8
  %180 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %181 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %180, i32 0, i32 9
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %184 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %183, i32 0, i32 7
  store i32 %182, i32* %184, align 4
  %185 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %186 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %185, i32 0, i32 8
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %189 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %188, i32 0, i32 6
  store i32 %187, i32* %189, align 8
  %190 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %191 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %190, i32 0, i32 7
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %194 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %193, i32 0, i32 5
  store i32 %192, i32* %194, align 4
  %195 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %196 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %195, i32 0, i32 6
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %199 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %198, i32 0, i32 4
  store i32 %197, i32* %199, align 8
  %200 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %201 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %200, i32 0, i32 3
  store i32 0, i32* %201, align 4
  %202 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %203 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %202, i32 0, i32 2
  store i32 0, i32* %203, align 8
  %204 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %205 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %219, label %208

208:                                              ; preds = %136
  %209 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %210 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %209, i32 0, i32 5
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %213 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %212, i32 0, i32 3
  store i32 %211, i32* %213, align 4
  %214 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %215 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %214, i32 0, i32 4
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %218 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %217, i32 0, i32 2
  store i32 %216, i32* %218, align 8
  br label %219

219:                                              ; preds = %208, %136
  %220 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %221 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %220, i32 0, i32 1
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %221, align 8
  %222 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %223 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %222, i32 0, i32 3
  %224 = load %struct.TYPE_23__*, %struct.TYPE_23__** %223, align 8
  %225 = icmp ne %struct.TYPE_23__* %224, null
  br i1 %225, label %226, label %235

226:                                              ; preds = %219
  %227 = call i64 @calloc(i32 1, i32 72)
  %228 = inttoptr i64 %227 to %struct.TYPE_21__*
  %229 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %230 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %229, i32 0, i32 1
  store %struct.TYPE_21__* %228, %struct.TYPE_21__** %230, align 8
  store %struct.TYPE_21__* %228, %struct.TYPE_21__** %17, align 8
  %231 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %232 = icmp eq %struct.TYPE_21__* %231, null
  br i1 %232, label %233, label %234

233:                                              ; preds = %226
  br label %242

234:                                              ; preds = %226
  br label %235

235:                                              ; preds = %234, %219
  br label %236

236:                                              ; preds = %235, %120
  %237 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %238 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %237, i32 0, i32 3
  %239 = load %struct.TYPE_23__*, %struct.TYPE_23__** %238, align 8
  store %struct.TYPE_23__* %239, %struct.TYPE_23__** %18, align 8
  br label %107

240:                                              ; preds = %107
  br label %241

241:                                              ; preds = %240, %65
  br label %242

242:                                              ; preds = %241, %233, %135, %103
  %243 = load i32*, i32** %8, align 8
  %244 = call i32 @arib_finalize_decoder(i32* %243)
  %245 = load i8*, i8** %12, align 8
  %246 = call i32 @free(i8* %245)
  %247 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  store %struct.TYPE_17__* %247, %struct.TYPE_17__** %5, align 8
  br label %248

248:                                              ; preds = %242, %42, %31
  %249 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  ret %struct.TYPE_17__* %249
}

declare dso_local i8* @arib_parser_get_data(i32*, i64*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @arib_initialize_decoder_a_profile(i32*) #1

declare dso_local i32 @arib_initialize_decoder_c_profile(i32*) #1

declare dso_local i64 @arib_decode_buffer(i32*, i8*, i64, i8*, i64) #1

declare dso_local %struct.TYPE_17__* @decoder_NewSubpictureText(%struct.TYPE_18__*) #1

declare dso_local i64 @VLC_TICK_FROM_US(i32) #1

declare dso_local i32 @arib_decoder_get_time(i32*) #1

declare dso_local %struct.TYPE_23__* @arib_decoder_get_regions(i32*) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @arib_finalize_decoder(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
