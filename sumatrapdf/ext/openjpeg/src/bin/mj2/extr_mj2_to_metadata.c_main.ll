; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/mj2/extr_mj2_to_metadata.c_main.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/mj2/extr_mj2_to_metadata.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"i:o:f:v:hntrd\00", align 1
@optarg = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Input file name must have .mj2 extension, not .%c%c%c.\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"Output file name must have .xml extension, not .%c%c%c\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.4 = private unnamed_addr constant [68 x i8] c"-D's string must not contain any embedded double-quote characters.\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"PUBLIC \00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"SYSTEM \00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"-D's string must start with \22PUBLIC \22 or \22SYSTEM \22\0A\00", align 1
@.str.8 = private unnamed_addr constant [71 x i8] c"Correct usage: mj2_to_metadata -i mj2-file -o xml-file (plus options)\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"Failed to open %s for reading.\0A\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"Failed to open %s for writing.\0A\00", align 1
@error_callback = common dso_local global i32 0, align 4
@warning_callback = common dso_local global i32 0, align 4
@info_callback = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [43 x i8] c"Metadata correctly extracted to XML file \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_7__, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i32 1, i32* %18, align 4
  store i8* null, i8** %19, align 8
  %26 = load i64, i64* @TRUE, align 8
  store i64 %26, i64* %20, align 8
  %27 = load i64, i64* @FALSE, align 8
  store i64 %27, i64* %21, align 8
  %28 = load i64, i64* @TRUE, align 8
  store i64 %28, i64* %22, align 8
  %29 = load i64, i64* @TRUE, align 8
  store i64 %29, i64* %23, align 8
  br label %30

30:                                               ; preds = %188, %2
  %31 = load i64, i64* @TRUE, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %189

33:                                               ; preds = %30
  %34 = load i32, i32* %4, align 4
  %35 = load i8**, i8*** %5, align 8
  %36 = call i32 @getopt(i32 %34, i8** %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %36, i32* %25, align 4
  %37 = load i32, i32* %25, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %189

40:                                               ; preds = %33
  %41 = load i32, i32* %25, align 4
  switch i32 %41, label %187 [
    i32 105, label %42
    i32 111, label %98
    i32 102, label %154
    i32 118, label %157
    i32 110, label %177
    i32 116, label %179
    i32 104, label %181
    i32 114, label %183
    i32 100, label %185
  ]

42:                                               ; preds = %40
  %43 = load i8*, i8** @optarg, align 8
  store i8* %43, i8** %11, align 8
  %44 = load i8*, i8** @optarg, align 8
  store i8* %44, i8** %13, align 8
  br label %45

45:                                               ; preds = %49, %42
  %46 = load i8*, i8** %13, align 8
  %47 = load i8, i8* %46, align 1
  %48 = icmp ne i8 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i8*, i8** %13, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %13, align 8
  br label %45

52:                                               ; preds = %45
  %53 = load i8*, i8** %13, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 -1
  store i8* %54, i8** %13, align 8
  %55 = load i8*, i8** %13, align 8
  %56 = load i8, i8* %55, align 1
  store i8 %56, i8* %16, align 1
  %57 = load i8*, i8** %13, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 -1
  store i8* %58, i8** %13, align 8
  %59 = load i8*, i8** %13, align 8
  %60 = load i8, i8* %59, align 1
  store i8 %60, i8* %15, align 1
  %61 = load i8*, i8** %13, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 -1
  store i8* %62, i8** %13, align 8
  %63 = load i8*, i8** %13, align 8
  %64 = load i8, i8* %63, align 1
  store i8 %64, i8* %14, align 1
  %65 = load i8, i8* %14, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 109
  br i1 %67, label %68, label %76

68:                                               ; preds = %52
  %69 = load i8, i8* %15, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 106
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load i8, i8* %16, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 50
  br i1 %75, label %88, label %76

76:                                               ; preds = %72, %68, %52
  %77 = load i8, i8* %14, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 77
  br i1 %79, label %80, label %89

80:                                               ; preds = %76
  %81 = load i8, i8* %15, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 74
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = load i8, i8* %16, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 50
  br i1 %87, label %88, label %89

88:                                               ; preds = %84, %72
  br label %188

89:                                               ; preds = %84, %80, %76
  %90 = load i32, i32* @stderr, align 4
  %91 = load i8, i8* %14, align 1
  %92 = sext i8 %91 to i32
  %93 = load i8, i8* %15, align 1
  %94 = sext i8 %93 to i32
  %95 = load i8, i8* %16, align 1
  %96 = sext i8 %95 to i32
  %97 = call i32 (i32, i8*, ...) @fprintf(i32 %90, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %92, i32 %94, i32 %96)
  store i32 1, i32* %3, align 4
  br label %299

98:                                               ; preds = %40
  %99 = load i8*, i8** @optarg, align 8
  store i8* %99, i8** %12, align 8
  br label %100

100:                                              ; preds = %104, %98
  %101 = load i8*, i8** %12, align 8
  %102 = load i8, i8* %101, align 1
  %103 = icmp ne i8 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load i8*, i8** %12, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %12, align 8
  br label %100

107:                                              ; preds = %100
  %108 = load i8*, i8** %12, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 -1
  store i8* %109, i8** %12, align 8
  %110 = load i8*, i8** %12, align 8
  %111 = load i8, i8* %110, align 1
  store i8 %111, i8* %16, align 1
  %112 = load i8*, i8** %12, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 -1
  store i8* %113, i8** %12, align 8
  %114 = load i8*, i8** %12, align 8
  %115 = load i8, i8* %114, align 1
  store i8 %115, i8* %15, align 1
  %116 = load i8*, i8** %12, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 -1
  store i8* %117, i8** %12, align 8
  %118 = load i8*, i8** %12, align 8
  %119 = load i8, i8* %118, align 1
  store i8 %119, i8* %14, align 1
  %120 = load i8*, i8** @optarg, align 8
  store i8* %120, i8** %12, align 8
  %121 = load i8, i8* %14, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 120
  br i1 %123, label %124, label %132

124:                                              ; preds = %107
  %125 = load i8, i8* %15, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, 109
  br i1 %127, label %128, label %132

128:                                              ; preds = %124
  %129 = load i8, i8* %16, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp eq i32 %130, 108
  br i1 %131, label %144, label %132

132:                                              ; preds = %128, %124, %107
  %133 = load i8, i8* %14, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp eq i32 %134, 88
  br i1 %135, label %136, label %145

136:                                              ; preds = %132
  %137 = load i8, i8* %15, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 %138, 77
  br i1 %139, label %140, label %145

140:                                              ; preds = %136
  %141 = load i8, i8* %16, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp eq i32 %142, 76
  br i1 %143, label %144, label %145

144:                                              ; preds = %140, %128
  br label %188

145:                                              ; preds = %140, %136, %132
  %146 = load i32, i32* @stderr, align 4
  %147 = load i8, i8* %14, align 1
  %148 = sext i8 %147 to i32
  %149 = load i8, i8* %15, align 1
  %150 = sext i8 %149 to i32
  %151 = load i8, i8* %16, align 1
  %152 = sext i8 %151 to i32
  %153 = call i32 (i32, i8*, ...) @fprintf(i32 %146, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %148, i32 %150, i32 %152)
  store i32 1, i32* %3, align 4
  br label %299

154:                                              ; preds = %40
  %155 = load i8*, i8** @optarg, align 8
  %156 = call i32 @sscanf(i8* %155, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %18)
  br label %188

157:                                              ; preds = %40
  %158 = load i8*, i8** @optarg, align 8
  store i8* %158, i8** %19, align 8
  %159 = load i8*, i8** %19, align 8
  %160 = call i32* @strchr(i8* %159, i8 signext 34)
  %161 = icmp ne i32* %160, null
  br i1 %161, label %162, label %165

162:                                              ; preds = %157
  %163 = load i32, i32* @stderr, align 4
  %164 = call i32 (i32, i8*, ...) @fprintf(i32 %163, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %299

165:                                              ; preds = %157
  %166 = load i8*, i8** %19, align 8
  %167 = call i32 @strncmp(i8* %166, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 7)
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %173, label %169

169:                                              ; preds = %165
  %170 = load i8*, i8** %19, align 8
  %171 = call i32 @strncmp(i8* %170, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 7)
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %169, %165
  br label %188

174:                                              ; preds = %169
  %175 = load i32, i32* @stderr, align 4
  %176 = call i32 (i32, i8*, ...) @fprintf(i32 %175, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %299

177:                                              ; preds = %40
  %178 = load i64, i64* @FALSE, align 8
  store i64 %178, i64* %20, align 8
  br label %188

179:                                              ; preds = %40
  %180 = load i64, i64* @TRUE, align 8
  store i64 %180, i64* %21, align 8
  br label %188

181:                                              ; preds = %40
  %182 = call i32 (...) @help_display()
  store i32 0, i32* %3, align 4
  br label %299

183:                                              ; preds = %40
  %184 = load i64, i64* @FALSE, align 8
  store i64 %184, i64* %22, align 8
  br label %188

185:                                              ; preds = %40
  %186 = load i64, i64* @FALSE, align 8
  store i64 %186, i64* %23, align 8
  br label %188

187:                                              ; preds = %40
  store i32 1, i32* %3, align 4
  br label %299

188:                                              ; preds = %185, %183, %179, %177, %173, %154, %144, %88
  br label %30

189:                                              ; preds = %39, %30
  %190 = load i64, i64* %22, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %197, label %192

192:                                              ; preds = %189
  %193 = load i64, i64* %23, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %197, label %195

195:                                              ; preds = %192
  %196 = load i64, i64* @TRUE, align 8
  store i64 %196, i64* %22, align 8
  br label %197

197:                                              ; preds = %195, %192, %189
  %198 = load i8*, i8** %11, align 8
  %199 = icmp ne i8* %198, null
  br i1 %199, label %200, label %203

200:                                              ; preds = %197
  %201 = load i8*, i8** %12, align 8
  %202 = icmp ne i8* %201, null
  br i1 %202, label %206, label %203

203:                                              ; preds = %200, %197
  %204 = load i32, i32* @stderr, align 4
  %205 = call i32 (i32, i8*, ...) @fprintf(i32 %204, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %299

206:                                              ; preds = %200
  %207 = load i8*, i8** %11, align 8
  %208 = call i32 @strlen(i8* %207)
  store i32 %208, i32* %17, align 4
  %209 = load i8*, i8** %11, align 8
  %210 = getelementptr inbounds i8, i8* %209, i64 0
  %211 = load i8, i8* %210, align 1
  %212 = sext i8 %211 to i32
  %213 = icmp eq i32 %212, 32
  br i1 %213, label %214, label %217

214:                                              ; preds = %206
  %215 = load i8*, i8** %11, align 8
  %216 = getelementptr inbounds i8, i8* %215, i32 1
  store i8* %216, i8** %11, align 8
  br label %217

217:                                              ; preds = %214, %206
  %218 = load i8*, i8** %11, align 8
  %219 = call i32* @fopen(i8* %218, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  store i32* %219, i32** %8, align 8
  %220 = load i32*, i32** %8, align 8
  %221 = icmp ne i32* %220, null
  br i1 %221, label %226, label %222

222:                                              ; preds = %217
  %223 = load i32, i32* @stderr, align 4
  %224 = load i8*, i8** %11, align 8
  %225 = call i32 (i32, i8*, ...) @fprintf(i32 %223, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i8* %224)
  store i32 1, i32* %3, align 4
  br label %299

226:                                              ; preds = %217
  %227 = load i8*, i8** %12, align 8
  %228 = call i32 @strlen(i8* %227)
  store i32 %228, i32* %17, align 4
  %229 = load i8*, i8** %12, align 8
  %230 = getelementptr inbounds i8, i8* %229, i64 0
  %231 = load i8, i8* %230, align 1
  %232 = sext i8 %231 to i32
  %233 = icmp eq i32 %232, 32
  br i1 %233, label %234, label %237

234:                                              ; preds = %226
  %235 = load i8*, i8** %12, align 8
  %236 = getelementptr inbounds i8, i8* %235, i32 1
  store i8* %236, i8** %12, align 8
  br label %237

237:                                              ; preds = %234, %226
  %238 = load i8*, i8** %12, align 8
  %239 = call i32* @fopen(i8* %238, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  store i32* %239, i32** %9, align 8
  %240 = load i32*, i32** %9, align 8
  %241 = icmp ne i32* %240, null
  br i1 %241, label %246, label %242

242:                                              ; preds = %237
  %243 = load i32, i32* @stderr, align 4
  %244 = load i8*, i8** %12, align 8
  %245 = call i32 (i32, i8*, ...) @fprintf(i32 %243, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i8* %244)
  store i32 1, i32* %3, align 4
  br label %299

246:                                              ; preds = %237
  %247 = call i32 @memset(%struct.TYPE_7__* %7, i32 0, i32 12)
  %248 = load i32, i32* @error_callback, align 4
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  store i32 %248, i32* %249, align 4
  %250 = load i32, i32* @warning_callback, align 4
  %251 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  store i32 %250, i32* %251, align 4
  %252 = load i32, i32* @info_callback, align 4
  %253 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i32 %252, i32* %253, align 4
  %254 = call %struct.TYPE_8__* (...) @mj2_create_decompress()
  store %struct.TYPE_8__* %254, %struct.TYPE_8__** %6, align 8
  %255 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %256 = ptrtoint %struct.TYPE_8__* %255 to i32
  %257 = load i32, i32* @stderr, align 4
  %258 = call i32 @opj_set_event_mgr(i32 %256, %struct.TYPE_7__* %7, i32 %257)
  %259 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = inttoptr i64 %261 to i32*
  store i32* %262, i32** %10, align 8
  %263 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = call i32 @mj2_setup_decoder(i64 %265, i32* %24)
  %267 = load i32*, i32** %8, align 8
  %268 = load i32*, i32** %10, align 8
  %269 = call i64 @mj2_read_struct(i32* %267, i32* %268)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %274

271:                                              ; preds = %246
  %272 = load i32*, i32** %9, align 8
  %273 = call i32 @fclose(i32* %272)
  store i32 1, i32* %3, align 4
  br label %299

274:                                              ; preds = %246
  %275 = load i64, i64* %20, align 8
  %276 = load i64, i64* %21, align 8
  %277 = load i64, i64* %22, align 8
  %278 = load i64, i64* %23, align 8
  %279 = call i32 @xml_write_init(i64 %275, i64 %276, i64 %277, i64 %278)
  %280 = load i32*, i32** %8, align 8
  %281 = load i32*, i32** %9, align 8
  %282 = load i32*, i32** %10, align 8
  %283 = load i32, i32* %18, align 4
  %284 = load i8*, i8** %19, align 8
  %285 = call i32 @xml_write_struct(i32* %280, i32* %281, i32* %282, i32 %283, i8* %284, %struct.TYPE_7__* %7)
  %286 = load i32*, i32** %9, align 8
  %287 = call i32 @fclose(i32* %286)
  %288 = load i32, i32* @stderr, align 4
  %289 = call i32 (i32, i8*, ...) @fprintf(i32 %288, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0))
  %290 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %291 = icmp ne %struct.TYPE_8__* %290, null
  br i1 %291, label %292, label %298

292:                                              ; preds = %274
  %293 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %294 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %293, i32 0, i32 0
  %295 = load i64, i64* %294, align 8
  %296 = inttoptr i64 %295 to i32*
  %297 = call i32 @mj2_destroy_decompress(i32* %296)
  br label %298

298:                                              ; preds = %292, %274
  store i32 0, i32* %3, align 4
  br label %299

299:                                              ; preds = %298, %271, %242, %222, %203, %187, %181, %174, %162, %145, %89
  %300 = load i32, i32* %3, align 4
  ret i32 %300
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @help_display(...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local %struct.TYPE_8__* @mj2_create_decompress(...) #1

declare dso_local i32 @opj_set_event_mgr(i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @mj2_setup_decoder(i64, i32*) #1

declare dso_local i64 @mj2_read_struct(i32*, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @xml_write_init(i64, i64, i64, i64) #1

declare dso_local i32 @xml_write_struct(i32*, i32*, i32*, i32, i8*, %struct.TYPE_7__*) #1

declare dso_local i32 @mj2_destroy_decompress(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
