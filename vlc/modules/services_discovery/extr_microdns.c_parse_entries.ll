; ModuleID = '/home/carl/AnghaBench/vlc/modules/services_discovery/extr_microdns.c_parse_entries.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/services_discovery/extr_microdns.c_parse_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.rr_entry = type { i64, %struct.TYPE_9__, i32, %struct.rr_entry* }
%struct.TYPE_9__ = type { %struct.rr_data_txt*, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.rr_data_txt = type { i64, %struct.rr_data_txt* }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { i32 }
%struct.srv = type { %struct.srv*, i32, i32, i32 }

@RR_SRV = common dso_local global i64 0, align 8
@VLC_EGENERIC = common dso_local global i32 0, align 4
@NB_PROTOCOLS = common dso_local global i32 0, align 4
@protocols = common dso_local global %struct.TYPE_10__* null, align 8
@RR_A = common dso_local global i64 0, align 8
@RR_AAAA = common dso_local global i64 0, align 8
@RR_TXT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"chromecast\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"fn=\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ca=\00", align 1
@VLC_RENDERER_CAN_VIDEO = common dso_local global i32 0, align 4
@VLC_RENDERER_CAN_AUDIO = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rr_entry*, i32, %struct.srv**, i32*, i8**, i32*)* @parse_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_entries(%struct.rr_entry* %0, i32 %1, %struct.srv** %2, i32* %3, i8** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.rr_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.srv**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.rr_entry*, align 8
  %16 = alloca %struct.srv*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.srv*, align 8
  %19 = alloca %struct.rr_entry*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.rr_data_txt*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.rr_entry* %0, %struct.rr_entry** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.srv** %2, %struct.srv*** %10, align 8
  store i32* %3, i32** %11, align 8
  store i8** %4, i8*** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %14, align 4
  %24 = load %struct.rr_entry*, %struct.rr_entry** %8, align 8
  store %struct.rr_entry* %24, %struct.rr_entry** %15, align 8
  br label %25

25:                                               ; preds = %38, %6
  %26 = load %struct.rr_entry*, %struct.rr_entry** %15, align 8
  %27 = icmp ne %struct.rr_entry* %26, null
  br i1 %27, label %28, label %42

28:                                               ; preds = %25
  %29 = load %struct.rr_entry*, %struct.rr_entry** %15, align 8
  %30 = getelementptr inbounds %struct.rr_entry, %struct.rr_entry* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @RR_SRV, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* %14, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %14, align 4
  br label %37

37:                                               ; preds = %34, %28
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.rr_entry*, %struct.rr_entry** %15, align 8
  %40 = getelementptr inbounds %struct.rr_entry, %struct.rr_entry* %39, i32 0, i32 3
  %41 = load %struct.rr_entry*, %struct.rr_entry** %40, align 8
  store %struct.rr_entry* %41, %struct.rr_entry** %15, align 8
  br label %25

42:                                               ; preds = %25
  %43 = load i32, i32* %14, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %46, i32* %7, align 4
  br label %305

47:                                               ; preds = %42
  %48 = load i32, i32* %14, align 4
  %49 = call %struct.srv* @calloc(i32 %48, i32 24)
  store %struct.srv* %49, %struct.srv** %16, align 8
  %50 = load %struct.srv*, %struct.srv** %16, align 8
  %51 = icmp eq %struct.srv* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %53, i32* %7, align 4
  br label %305

54:                                               ; preds = %47
  store i8* null, i8** %17, align 8
  store %struct.srv* null, %struct.srv** %18, align 8
  store i32 0, i32* %14, align 4
  %55 = load %struct.rr_entry*, %struct.rr_entry** %8, align 8
  store %struct.rr_entry* %55, %struct.rr_entry** %19, align 8
  br label %56

56:                                               ; preds = %267, %54
  %57 = load %struct.rr_entry*, %struct.rr_entry** %19, align 8
  %58 = icmp ne %struct.rr_entry* %57, null
  br i1 %58, label %59, label %271

59:                                               ; preds = %56
  %60 = load %struct.rr_entry*, %struct.rr_entry** %19, align 8
  %61 = getelementptr inbounds %struct.rr_entry, %struct.rr_entry* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @RR_SRV, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %151

65:                                               ; preds = %59
  store i32 0, i32* %20, align 4
  br label %66

66:                                               ; preds = %147, %65
  %67 = load i32, i32* %20, align 4
  %68 = load i32, i32* @NB_PROTOCOLS, align 4
  %69 = icmp ult i32 %67, %68
  br i1 %69, label %70, label %150

70:                                               ; preds = %66
  %71 = load %struct.rr_entry*, %struct.rr_entry** %19, align 8
  %72 = getelementptr inbounds %struct.rr_entry, %struct.rr_entry* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** @protocols, align 8
  %75 = load i32, i32* %20, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @strrcmp(i32 %73, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %146, label %82

82:                                               ; preds = %70
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** @protocols, align 8
  %84 = load i32, i32* %20, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %146

91:                                               ; preds = %82
  %92 = load %struct.srv*, %struct.srv** %16, align 8
  %93 = load i32, i32* %14, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.srv, %struct.srv* %92, i64 %94
  store %struct.srv* %95, %struct.srv** %18, align 8
  %96 = load %struct.rr_entry*, %struct.rr_entry** %19, align 8
  %97 = getelementptr inbounds %struct.rr_entry, %struct.rr_entry* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.rr_entry*, %struct.rr_entry** %19, align 8
  %100 = getelementptr inbounds %struct.rr_entry, %struct.rr_entry* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i64 @strlen(i32 %101)
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** @protocols, align 8
  %104 = load i32, i32* %20, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @strlen(i32 %108)
  %110 = sub nsw i64 %102, %109
  %111 = sub nsw i64 %110, 1
  %112 = call %struct.srv* @strndup(i32 %98, i64 %111)
  %113 = load %struct.srv*, %struct.srv** %18, align 8
  %114 = getelementptr inbounds %struct.srv, %struct.srv* %113, i32 0, i32 0
  store %struct.srv* %112, %struct.srv** %114, align 8
  %115 = load %struct.srv*, %struct.srv** %18, align 8
  %116 = getelementptr inbounds %struct.srv, %struct.srv* %115, i32 0, i32 0
  %117 = load %struct.srv*, %struct.srv** %116, align 8
  %118 = icmp eq %struct.srv* %117, null
  br i1 %118, label %119, label %120

119:                                              ; preds = %91
  br label %150

120:                                              ; preds = %91
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** @protocols, align 8
  %122 = load i32, i32* %20, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.srv*, %struct.srv** %18, align 8
  %128 = getelementptr inbounds %struct.srv, %struct.srv* %127, i32 0, i32 2
  store i32 %126, i32* %128, align 4
  %129 = load %struct.rr_entry*, %struct.rr_entry** %19, align 8
  %130 = getelementptr inbounds %struct.rr_entry, %struct.rr_entry* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.srv*, %struct.srv** %18, align 8
  %135 = getelementptr inbounds %struct.srv, %struct.srv* %134, i32 0, i32 3
  store i32 %133, i32* %135, align 8
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** @protocols, align 8
  %137 = load i32, i32* %20, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.srv*, %struct.srv** %18, align 8
  %143 = getelementptr inbounds %struct.srv, %struct.srv* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 8
  %144 = load i32, i32* %14, align 4
  %145 = add i32 %144, 1
  store i32 %145, i32* %14, align 4
  br label %150

146:                                              ; preds = %82, %70
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %20, align 4
  %149 = add i32 %148, 1
  store i32 %149, i32* %20, align 4
  br label %66

150:                                              ; preds = %120, %119, %66
  br label %266

151:                                              ; preds = %59
  %152 = load %struct.rr_entry*, %struct.rr_entry** %19, align 8
  %153 = getelementptr inbounds %struct.rr_entry, %struct.rr_entry* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @RR_A, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %166

157:                                              ; preds = %151
  %158 = load i8*, i8** %17, align 8
  %159 = icmp eq i8* %158, null
  br i1 %159, label %160, label %166

160:                                              ; preds = %157
  %161 = load %struct.rr_entry*, %struct.rr_entry** %19, align 8
  %162 = getelementptr inbounds %struct.rr_entry, %struct.rr_entry* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8
  store i8* %165, i8** %17, align 8
  br label %265

166:                                              ; preds = %157, %151
  %167 = load %struct.rr_entry*, %struct.rr_entry** %19, align 8
  %168 = getelementptr inbounds %struct.rr_entry, %struct.rr_entry* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @RR_AAAA, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %182

172:                                              ; preds = %166
  %173 = load i8*, i8** %17, align 8
  %174 = icmp eq i8* %173, null
  br i1 %174, label %175, label %182

175:                                              ; preds = %172
  %176 = load %struct.rr_entry*, %struct.rr_entry** %19, align 8
  %177 = getelementptr inbounds %struct.rr_entry, %struct.rr_entry* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 0
  %180 = load i8*, i8** %179, align 8
  store i8* %180, i8** %17, align 8
  %181 = load i32*, i32** %13, align 8
  store i32 1, i32* %181, align 4
  br label %264

182:                                              ; preds = %172, %166
  %183 = load %struct.rr_entry*, %struct.rr_entry** %19, align 8
  %184 = getelementptr inbounds %struct.rr_entry, %struct.rr_entry* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @RR_TXT, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %263

188:                                              ; preds = %182
  %189 = load %struct.srv*, %struct.srv** %18, align 8
  %190 = icmp ne %struct.srv* %189, null
  br i1 %190, label %191, label %263

191:                                              ; preds = %188
  %192 = load %struct.rr_entry*, %struct.rr_entry** %19, align 8
  %193 = getelementptr inbounds %struct.rr_entry, %struct.rr_entry* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 0
  %195 = load %struct.rr_data_txt*, %struct.rr_data_txt** %194, align 8
  store %struct.rr_data_txt* %195, %struct.rr_data_txt** %21, align 8
  br label %196

196:                                              ; preds = %258, %191
  %197 = load %struct.rr_data_txt*, %struct.rr_data_txt** %21, align 8
  %198 = icmp ne %struct.rr_data_txt* %197, null
  br i1 %198, label %199, label %262

199:                                              ; preds = %196
  %200 = load %struct.srv*, %struct.srv** %18, align 8
  %201 = getelementptr inbounds %struct.srv, %struct.srv* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @strcmp(i32 %202, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %257, label %205

205:                                              ; preds = %199
  %206 = load %struct.rr_data_txt*, %struct.rr_data_txt** %21, align 8
  %207 = getelementptr inbounds %struct.rr_data_txt, %struct.rr_data_txt* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = call i32 @strncmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 %208, i32 3)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %223, label %211

211:                                              ; preds = %205
  %212 = load %struct.srv*, %struct.srv** %18, align 8
  %213 = getelementptr inbounds %struct.srv, %struct.srv* %212, i32 0, i32 0
  %214 = load %struct.srv*, %struct.srv** %213, align 8
  %215 = call i32 @free(%struct.srv* %214)
  %216 = load %struct.rr_data_txt*, %struct.rr_data_txt** %21, align 8
  %217 = getelementptr inbounds %struct.rr_data_txt, %struct.rr_data_txt* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = add nsw i64 %218, 3
  %220 = call %struct.srv* @strdup(i64 %219)
  %221 = load %struct.srv*, %struct.srv** %18, align 8
  %222 = getelementptr inbounds %struct.srv, %struct.srv* %221, i32 0, i32 0
  store %struct.srv* %220, %struct.srv** %222, align 8
  br label %256

223:                                              ; preds = %205
  %224 = load %struct.rr_data_txt*, %struct.rr_data_txt** %21, align 8
  %225 = getelementptr inbounds %struct.rr_data_txt, %struct.rr_data_txt* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = call i32 @strncmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 %226, i32 3)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %255, label %229

229:                                              ; preds = %223
  %230 = load %struct.rr_data_txt*, %struct.rr_data_txt** %21, align 8
  %231 = getelementptr inbounds %struct.rr_data_txt, %struct.rr_data_txt* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = add nsw i64 %232, 3
  %234 = call i32 @atoi(i64 %233)
  store i32 %234, i32* %22, align 4
  %235 = load i32, i32* %22, align 4
  %236 = and i32 %235, 1
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %244

238:                                              ; preds = %229
  %239 = load i32, i32* @VLC_RENDERER_CAN_VIDEO, align 4
  %240 = load %struct.srv*, %struct.srv** %18, align 8
  %241 = getelementptr inbounds %struct.srv, %struct.srv* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 8
  %243 = or i32 %242, %239
  store i32 %243, i32* %241, align 8
  br label %244

244:                                              ; preds = %238, %229
  %245 = load i32, i32* %22, align 4
  %246 = and i32 %245, 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %254

248:                                              ; preds = %244
  %249 = load i32, i32* @VLC_RENDERER_CAN_AUDIO, align 4
  %250 = load %struct.srv*, %struct.srv** %18, align 8
  %251 = getelementptr inbounds %struct.srv, %struct.srv* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 8
  %253 = or i32 %252, %249
  store i32 %253, i32* %251, align 8
  br label %254

254:                                              ; preds = %248, %244
  br label %255

255:                                              ; preds = %254, %223
  br label %256

256:                                              ; preds = %255, %211
  br label %257

257:                                              ; preds = %256, %199
  br label %258

258:                                              ; preds = %257
  %259 = load %struct.rr_data_txt*, %struct.rr_data_txt** %21, align 8
  %260 = getelementptr inbounds %struct.rr_data_txt, %struct.rr_data_txt* %259, i32 0, i32 1
  %261 = load %struct.rr_data_txt*, %struct.rr_data_txt** %260, align 8
  store %struct.rr_data_txt* %261, %struct.rr_data_txt** %21, align 8
  br label %196

262:                                              ; preds = %196
  br label %263

263:                                              ; preds = %262, %188, %182
  br label %264

264:                                              ; preds = %263, %175
  br label %265

265:                                              ; preds = %264, %160
  br label %266

266:                                              ; preds = %265, %150
  br label %267

267:                                              ; preds = %266
  %268 = load %struct.rr_entry*, %struct.rr_entry** %19, align 8
  %269 = getelementptr inbounds %struct.rr_entry, %struct.rr_entry* %268, i32 0, i32 3
  %270 = load %struct.rr_entry*, %struct.rr_entry** %269, align 8
  store %struct.rr_entry* %270, %struct.rr_entry** %19, align 8
  br label %56

271:                                              ; preds = %56
  %272 = load i8*, i8** %17, align 8
  %273 = icmp eq i8* %272, null
  br i1 %273, label %277, label %274

274:                                              ; preds = %271
  %275 = load i32, i32* %14, align 4
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %297

277:                                              ; preds = %274, %271
  store i32 0, i32* %23, align 4
  br label %278

278:                                              ; preds = %290, %277
  %279 = load i32, i32* %23, align 4
  %280 = load i32, i32* %14, align 4
  %281 = icmp ult i32 %279, %280
  br i1 %281, label %282, label %293

282:                                              ; preds = %278
  %283 = load %struct.srv*, %struct.srv** %16, align 8
  %284 = load i32, i32* %23, align 4
  %285 = zext i32 %284 to i64
  %286 = getelementptr inbounds %struct.srv, %struct.srv* %283, i64 %285
  %287 = getelementptr inbounds %struct.srv, %struct.srv* %286, i32 0, i32 0
  %288 = load %struct.srv*, %struct.srv** %287, align 8
  %289 = call i32 @free(%struct.srv* %288)
  br label %290

290:                                              ; preds = %282
  %291 = load i32, i32* %23, align 4
  %292 = add i32 %291, 1
  store i32 %292, i32* %23, align 4
  br label %278

293:                                              ; preds = %278
  %294 = load %struct.srv*, %struct.srv** %16, align 8
  %295 = call i32 @free(%struct.srv* %294)
  %296 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %296, i32* %7, align 4
  br label %305

297:                                              ; preds = %274
  %298 = load %struct.srv*, %struct.srv** %16, align 8
  %299 = load %struct.srv**, %struct.srv*** %10, align 8
  store %struct.srv* %298, %struct.srv** %299, align 8
  %300 = load i32, i32* %14, align 4
  %301 = load i32*, i32** %11, align 8
  store i32 %300, i32* %301, align 4
  %302 = load i8*, i8** %17, align 8
  %303 = load i8**, i8*** %12, align 8
  store i8* %302, i8** %303, align 8
  %304 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %304, i32* %7, align 4
  br label %305

305:                                              ; preds = %297, %293, %52, %45
  %306 = load i32, i32* %7, align 4
  ret i32 %306
}

declare dso_local %struct.srv* @calloc(i32, i32) #1

declare dso_local i32 @strrcmp(i32, i32) #1

declare dso_local %struct.srv* @strndup(i32, i64) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @strncmp(i8*, i64, i32) #1

declare dso_local i32 @free(%struct.srv*) #1

declare dso_local %struct.srv* @strdup(i64) #1

declare dso_local i32 @atoi(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
