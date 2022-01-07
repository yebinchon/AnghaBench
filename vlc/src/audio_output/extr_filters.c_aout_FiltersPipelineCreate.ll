; ModuleID = '/home/carl/AnghaBench/vlc/src/audio_output/extr_filters.c_aout_FiltersPipelineCreate.c'
source_filename = "/home/carl/AnghaBench/vlc/src/audio_output/extr_filters.c_aout_FiltersPipelineCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [12 x i8] c"conversion:\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Can't convert non linear input\00", align 1
@VLC_CODEC_FL32 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"cannot find %s for conversion pipeline\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"pre-mix converter\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"audio renderer\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"audio converter\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"{headphones=true}\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"remixer\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"resampler\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"post-mix converter\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"conversion pipeline complete\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"maximum of %u conversion filters reached\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"Audio filtering failed\00", align 1
@.str.13 = private unnamed_addr constant [48 x i8] c"The maximum number of filters (%u) was reached.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32**, i32*, i32, %struct.TYPE_13__*, %struct.TYPE_13__*, i32)* @aout_FiltersPipelineCreate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aout_FiltersPipelineCreate(i32* %0, i32** %1, i32* %2, i32 %3, %struct.TYPE_13__* noalias %4, %struct.TYPE_13__* noalias %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_13__, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_13__, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.TYPE_13__, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  store i32* %0, i32** %9, align 8
  store i32** %1, i32*** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.TYPE_13__* %4, %struct.TYPE_13__** %13, align 8
  store %struct.TYPE_13__* %5, %struct.TYPE_13__** %14, align 8
  store i32 %6, i32* %15, align 4
  %26 = load i32*, i32** %9, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %29 = call i32 @aout_FormatsPrint(i32* %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.TYPE_13__* %27, %struct.TYPE_13__* %28)
  %30 = load i32*, i32** %11, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %12, align 4
  %33 = sub i32 %32, %31
  store i32 %33, i32* %12, align 4
  %34 = load i32*, i32** %11, align 8
  %35 = load i32, i32* %34, align 4
  %36 = load i32**, i32*** %10, align 8
  %37 = zext i32 %35 to i64
  %38 = getelementptr inbounds i32*, i32** %36, i64 %37
  store i32** %38, i32*** %10, align 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %40 = bitcast %struct.TYPE_13__* %16 to i8*
  %41 = bitcast %struct.TYPE_13__* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 %41, i64 40, i1 false)
  store i32 0, i32* %17, align 4
  %42 = call i32 @AOUT_FMT_LINEAR(%struct.TYPE_13__* %16)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %7
  %45 = load i32*, i32** %9, align 8
  %46 = call i32 (i32*, i8*, ...) @msg_Err(i32* %45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %244

47:                                               ; preds = %7
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %50, %53
  br i1 %54, label %71, label %55

55:                                               ; preds = %47
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %58, %61
  br i1 %62, label %71, label %63

63:                                               ; preds = %55
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %66, %69
  br i1 %70, label %71, label %160

71:                                               ; preds = %63, %55, %47
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @VLC_CODEC_FL32, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %97

76:                                               ; preds = %71
  %77 = load i32, i32* %17, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  br label %231

81:                                               ; preds = %76
  %82 = load i32*, i32** %9, align 8
  %83 = load i64, i64* @VLC_CODEC_FL32, align 8
  %84 = call i32* @TryFormat(i32* %82, i64 %83, %struct.TYPE_13__* %16)
  store i32* %84, i32** %18, align 8
  %85 = load i32*, i32** %18, align 8
  %86 = icmp eq i32* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load i32*, i32** %9, align 8
  %89 = call i32 (i32*, i8*, ...) @msg_Err(i32* %88, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %240

90:                                               ; preds = %81
  %91 = load i32*, i32** %18, align 8
  %92 = load i32**, i32*** %10, align 8
  %93 = load i32, i32* %17, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %17, align 4
  %95 = zext i32 %93 to i64
  %96 = getelementptr inbounds i32*, i32** %92, i64 %95
  store i32* %91, i32** %96, align 8
  br label %97

97:                                               ; preds = %90, %71
  %98 = load i32, i32* %17, align 4
  %99 = load i32, i32* %12, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  br label %231

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 3
  store i64 %104, i64* %105, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 4
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 4
  store i64 %107, i64* %108, align 8
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  store i64 %111, i64* %112, align 8
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 2
  store i64 %115, i64* %116, align 8
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  store i64 %119, i64* %120, align 8
  %121 = call i32 @aout_FormatPrepare(%struct.TYPE_13__* %19)
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %124, %127
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0)
  store i8* %130, i8** %20, align 8
  store i32* null, i32** %21, align 8
  %131 = load i32, i32* %15, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %102
  %134 = call i32 @config_ChainParseOptions(i32** %21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  br label %135

135:                                              ; preds = %133, %102
  %136 = load i32*, i32** %9, align 8
  %137 = load i8*, i8** %20, align 8
  %138 = load i32*, i32** %21, align 8
  %139 = call i32* @CreateFilter(i32* %136, i32* null, i8* %137, i32* null, %struct.TYPE_13__* %16, %struct.TYPE_13__* %19, i32* %138, i32 1)
  store i32* %139, i32** %22, align 8
  %140 = load i32*, i32** %21, align 8
  %141 = icmp ne i32* %140, null
  br i1 %141, label %142, label %145

142:                                              ; preds = %135
  %143 = load i32*, i32** %21, align 8
  %144 = call i32 @config_ChainDestroy(i32* %143)
  br label %145

145:                                              ; preds = %142, %135
  %146 = load i32*, i32** %22, align 8
  %147 = icmp eq i32* %146, null
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = load i32*, i32** %9, align 8
  %150 = call i32 (i32*, i8*, ...) @msg_Err(i32* %149, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  br label %240

151:                                              ; preds = %145
  %152 = bitcast %struct.TYPE_13__* %16 to i8*
  %153 = bitcast %struct.TYPE_13__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %152, i8* align 8 %153, i64 40, i1 false)
  %154 = load i32*, i32** %22, align 8
  %155 = load i32**, i32*** %10, align 8
  %156 = load i32, i32* %17, align 4
  %157 = add i32 %156, 1
  store i32 %157, i32* %17, align 4
  %158 = zext i32 %156 to i64
  %159 = getelementptr inbounds i32*, i32** %155, i64 %158
  store i32* %154, i32** %159, align 8
  br label %160

160:                                              ; preds = %151, %63
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 4
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 4
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %162, %165
  br i1 %166, label %167, label %195

167:                                              ; preds = %160
  %168 = load i32, i32* %17, align 4
  %169 = load i32, i32* %12, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %167
  br label %231

172:                                              ; preds = %167
  %173 = bitcast %struct.TYPE_13__* %23 to i8*
  %174 = bitcast %struct.TYPE_13__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %173, i8* align 8 %174, i64 40, i1 false)
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 4
  %177 = load i64, i64* %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 4
  store i64 %177, i64* %178, align 8
  %179 = load i32*, i32** %9, align 8
  %180 = call i32* @FindConverter(i32* %179, %struct.TYPE_13__* %16, %struct.TYPE_13__* %23)
  store i32* %180, i32** %24, align 8
  %181 = load i32*, i32** %24, align 8
  %182 = icmp eq i32* %181, null
  br i1 %182, label %183, label %186

183:                                              ; preds = %172
  %184 = load i32*, i32** %9, align 8
  %185 = call i32 (i32*, i8*, ...) @msg_Err(i32* %184, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  br label %240

186:                                              ; preds = %172
  %187 = bitcast %struct.TYPE_13__* %16 to i8*
  %188 = bitcast %struct.TYPE_13__* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %187, i8* align 8 %188, i64 40, i1 false)
  %189 = load i32*, i32** %24, align 8
  %190 = load i32**, i32*** %10, align 8
  %191 = load i32, i32* %17, align 4
  %192 = add i32 %191, 1
  store i32 %192, i32* %17, align 4
  %193 = zext i32 %191 to i64
  %194 = getelementptr inbounds i32*, i32** %190, i64 %193
  store i32* %189, i32** %194, align 8
  br label %195

195:                                              ; preds = %186, %160
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 3
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 3
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %197, %200
  br i1 %201, label %202, label %224

202:                                              ; preds = %195
  %203 = load i32, i32* %12, align 4
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %202
  br label %231

206:                                              ; preds = %202
  %207 = load i32*, i32** %9, align 8
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 3
  %210 = load i64, i64* %209, align 8
  %211 = call i32* @TryFormat(i32* %207, i64 %210, %struct.TYPE_13__* %16)
  store i32* %211, i32** %25, align 8
  %212 = load i32*, i32** %25, align 8
  %213 = icmp eq i32* %212, null
  br i1 %213, label %214, label %217

214:                                              ; preds = %206
  %215 = load i32*, i32** %9, align 8
  %216 = call i32 (i32*, i8*, ...) @msg_Err(i32* %215, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  br label %240

217:                                              ; preds = %206
  %218 = load i32*, i32** %25, align 8
  %219 = load i32**, i32*** %10, align 8
  %220 = load i32, i32* %17, align 4
  %221 = add i32 %220, 1
  store i32 %221, i32* %17, align 4
  %222 = zext i32 %220 to i64
  %223 = getelementptr inbounds i32*, i32** %219, i64 %222
  store i32* %218, i32** %223, align 8
  br label %224

224:                                              ; preds = %217, %195
  %225 = load i32*, i32** %9, align 8
  %226 = call i32 @msg_Dbg(i32* %225, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  %227 = load i32, i32* %17, align 4
  %228 = load i32*, i32** %11, align 8
  %229 = load i32, i32* %228, align 4
  %230 = add i32 %229, %227
  store i32 %230, i32* %228, align 4
  store i32 0, i32* %8, align 4
  br label %244

231:                                              ; preds = %205, %171, %101, %80
  %232 = load i32*, i32** %9, align 8
  %233 = load i32, i32* %12, align 4
  %234 = call i32 (i32*, i8*, ...) @msg_Err(i32* %232, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0), i32 %233)
  %235 = load i32*, i32** %9, align 8
  %236 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  %237 = call i32 @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13, i64 0, i64 0))
  %238 = load i32, i32* %12, align 4
  %239 = call i32 @vlc_dialog_display_error(i32* %235, i32 %236, i32 %237, i32 %238)
  br label %240

240:                                              ; preds = %231, %214, %183, %148, %87
  %241 = load i32**, i32*** %10, align 8
  %242 = load i32, i32* %17, align 4
  %243 = call i32 @aout_FiltersPipelineDestroy(i32** %241, i32 %242)
  store i32 -1, i32* %8, align 4
  br label %244

244:                                              ; preds = %240, %224, %44
  %245 = load i32, i32* %8, align 4
  ret i32 %245
}

declare dso_local i32 @aout_FormatsPrint(i32*, i8*, %struct.TYPE_13__*, %struct.TYPE_13__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @AOUT_FMT_LINEAR(%struct.TYPE_13__*) #1

declare dso_local i32 @msg_Err(i32*, i8*, ...) #1

declare dso_local i32* @TryFormat(i32*, i64, %struct.TYPE_13__*) #1

declare dso_local i32 @aout_FormatPrepare(%struct.TYPE_13__*) #1

declare dso_local i32 @config_ChainParseOptions(i32**, i8*) #1

declare dso_local i32* @CreateFilter(i32*, i32*, i8*, i32*, %struct.TYPE_13__*, %struct.TYPE_13__*, i32*, i32) #1

declare dso_local i32 @config_ChainDestroy(i32*) #1

declare dso_local i32* @FindConverter(i32*, %struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i32 @msg_Dbg(i32*, i8*) #1

declare dso_local i32 @vlc_dialog_display_error(i32*, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @aout_FiltersPipelineDestroy(i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
