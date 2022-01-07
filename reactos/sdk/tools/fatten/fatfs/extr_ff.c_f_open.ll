; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/fatten/fatfs/extr_ff.c_f_open.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/fatten/fatfs/extr_ff.c_f_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32*, i32, %struct.TYPE_16__*, i32, i64, i64, i64, i32, i8*, i64, i32, i8* }
%struct.TYPE_16__ = type { i32, i32, i8*, i64 }
%struct.TYPE_15__ = type { i32*, %struct.TYPE_16__* }

@DEFINE_NAMEBUF = common dso_local global i32 0, align 4
@FR_INVALID_OBJECT = common dso_local global i64 0, align 8
@FA_READ = common dso_local global i32 0, align 4
@FA_WRITE = common dso_local global i32 0, align 4
@FA_CREATE_ALWAYS = common dso_local global i32 0, align 4
@FA_OPEN_ALWAYS = common dso_local global i32 0, align 4
@FA_CREATE_NEW = common dso_local global i32 0, align 4
@FR_OK = common dso_local global i64 0, align 8
@FR_INVALID_NAME = common dso_local global i64 0, align 8
@FR_NO_FILE = common dso_local global i64 0, align 8
@DIR_Attr = common dso_local global i64 0, align 8
@AM_RDO = common dso_local global i32 0, align 4
@AM_DIR = common dso_local global i32 0, align 4
@FR_DENIED = common dso_local global i64 0, align 8
@FR_EXIST = common dso_local global i64 0, align 8
@DIR_CrtTime = common dso_local global i32 0, align 4
@DIR_WrtTime = common dso_local global i32 0, align 4
@DIR_FileSize = common dso_local global i32 0, align 4
@FA__WRITTEN = common dso_local global i32 0, align 4
@FR_INT_ERR = common dso_local global i64 0, align 8
@FR_TOO_MANY_OPEN_FILES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @f_open(%struct.TYPE_14__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_15__, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @DEFINE_NAMEBUF, align 4
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %15 = icmp ne %struct.TYPE_14__* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = load i64, i64* @FR_INVALID_OBJECT, align 8
  store i64 %17, i64* %4, align 8
  br label %275

18:                                               ; preds = %3
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 2
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %20, align 8
  %21 = load i32, i32* @FA_READ, align 4
  %22 = load i32, i32* @FA_WRITE, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @FA_CREATE_ALWAYS, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @FA_OPEN_ALWAYS, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @FA_CREATE_NEW, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %7, align 4
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @FA_READ, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  %37 = call i64 @find_volume(%struct.TYPE_16__** %32, i32** %6, i32 %36)
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* @FR_OK, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %270

41:                                               ; preds = %18
  %42 = bitcast %struct.TYPE_15__* %9 to { i32*, %struct.TYPE_16__* }*
  %43 = getelementptr inbounds { i32*, %struct.TYPE_16__* }, { i32*, %struct.TYPE_16__* }* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds { i32*, %struct.TYPE_16__* }, { i32*, %struct.TYPE_16__* }* %42, i32 0, i32 1
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %45, align 8
  %47 = call i32 @INIT_BUF(i32* %44, %struct.TYPE_16__* %46)
  %48 = load i32*, i32** %6, align 8
  %49 = call i64 @follow_path(%struct.TYPE_15__* %9, i32* %48)
  store i64 %49, i64* %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %10, align 8
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* @FR_OK, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %41
  %56 = load i32*, i32** %10, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %55
  %59 = load i64, i64* @FR_INVALID_NAME, align 8
  store i64 %59, i64* %8, align 8
  br label %60

60:                                               ; preds = %58, %55
  br label %61

61:                                               ; preds = %60, %41
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @FA_CREATE_ALWAYS, align 4
  %64 = load i32, i32* @FA_OPEN_ALWAYS, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @FA_CREATE_NEW, align 4
  %67 = or i32 %65, %66
  %68 = and i32 %62, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %175

70:                                               ; preds = %61
  %71 = load i64, i64* %8, align 8
  %72 = load i64, i64* @FR_OK, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %86

74:                                               ; preds = %70
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* @FR_NO_FILE, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = call i64 @dir_register(%struct.TYPE_15__* %9)
  store i64 %79, i64* %8, align 8
  br label %80

80:                                               ; preds = %78, %74
  %81 = load i32, i32* @FA_CREATE_ALWAYS, align 4
  %82 = load i32, i32* %7, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %7, align 4
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  store i32* %85, i32** %10, align 8
  br label %107

86:                                               ; preds = %70
  %87 = load i32*, i32** %10, align 8
  %88 = load i64, i64* @DIR_Attr, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @AM_RDO, align 4
  %92 = load i32, i32* @AM_DIR, align 4
  %93 = or i32 %91, %92
  %94 = and i32 %90, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %86
  %97 = load i64, i64* @FR_DENIED, align 8
  store i64 %97, i64* %8, align 8
  br label %106

98:                                               ; preds = %86
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @FA_CREATE_NEW, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = load i64, i64* @FR_EXIST, align 8
  store i64 %104, i64* %8, align 8
  br label %105

105:                                              ; preds = %103, %98
  br label %106

106:                                              ; preds = %105, %96
  br label %107

107:                                              ; preds = %106, %80
  %108 = load i64, i64* %8, align 8
  %109 = load i64, i64* @FR_OK, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %174

111:                                              ; preds = %107
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* @FA_CREATE_ALWAYS, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %174

116:                                              ; preds = %111
  %117 = call i8* (...) @GET_FATTIME()
  store i8* %117, i8** %11, align 8
  %118 = load i32*, i32** %10, align 8
  %119 = load i32, i32* @DIR_CrtTime, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i8*, i8** %11, align 8
  %123 = call i32 @ST_DWORD(i32* %121, i8* %122)
  %124 = load i32*, i32** %10, align 8
  %125 = load i32, i32* @DIR_WrtTime, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i8*, i8** %11, align 8
  %129 = call i32 @ST_DWORD(i32* %127, i8* %128)
  %130 = load i32*, i32** %10, align 8
  %131 = load i64, i64* @DIR_Attr, align 8
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  store i32 0, i32* %132, align 4
  %133 = load i32*, i32** %10, align 8
  %134 = load i32, i32* @DIR_FileSize, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = call i32 @ST_DWORD(i32* %136, i8* null)
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %138, align 8
  %140 = load i32*, i32** %10, align 8
  %141 = call i8* @ld_clust(%struct.TYPE_16__* %139, i32* %140)
  store i8* %141, i8** %12, align 8
  %142 = load i32*, i32** %10, align 8
  %143 = call i32 @st_clust(i32* %142, i32 0)
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 0
  store i32 1, i32* %146, align 8
  %147 = load i8*, i8** %12, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %149, label %173

149:                                              ; preds = %116
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 2
  %153 = load i8*, i8** %152, align 8
  store i8* %153, i8** %11, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %154, align 8
  %156 = load i8*, i8** %12, align 8
  %157 = call i64 @remove_chain(%struct.TYPE_16__* %155, i8* %156)
  store i64 %157, i64* %8, align 8
  %158 = load i64, i64* %8, align 8
  %159 = load i64, i64* @FR_OK, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %172

161:                                              ; preds = %149
  %162 = load i8*, i8** %12, align 8
  %163 = getelementptr i8, i8* %162, i64 -1
  %164 = ptrtoint i8* %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 3
  store i64 %164, i64* %167, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %168, align 8
  %170 = load i8*, i8** %11, align 8
  %171 = call i64 @move_window(%struct.TYPE_16__* %169, i8* %170)
  store i64 %171, i64* %8, align 8
  br label %172

172:                                              ; preds = %161, %149
  br label %173

173:                                              ; preds = %172, %116
  br label %174

174:                                              ; preds = %173, %111, %107
  br label %207

175:                                              ; preds = %61
  %176 = load i64, i64* %8, align 8
  %177 = load i64, i64* @FR_OK, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %206

179:                                              ; preds = %175
  %180 = load i32*, i32** %10, align 8
  %181 = load i64, i64* @DIR_Attr, align 8
  %182 = getelementptr inbounds i32, i32* %180, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @AM_DIR, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %179
  %188 = load i64, i64* @FR_NO_FILE, align 8
  store i64 %188, i64* %8, align 8
  br label %205

189:                                              ; preds = %179
  %190 = load i32, i32* %7, align 4
  %191 = load i32, i32* @FA_WRITE, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %204

194:                                              ; preds = %189
  %195 = load i32*, i32** %10, align 8
  %196 = load i64, i64* @DIR_Attr, align 8
  %197 = getelementptr inbounds i32, i32* %195, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @AM_RDO, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %194
  %203 = load i64, i64* @FR_DENIED, align 8
  store i64 %203, i64* %8, align 8
  br label %204

204:                                              ; preds = %202, %194, %189
  br label %205

205:                                              ; preds = %204, %187
  br label %206

206:                                              ; preds = %205, %175
  br label %207

207:                                              ; preds = %206, %174
  %208 = load i64, i64* %8, align 8
  %209 = load i64, i64* @FR_OK, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %211, label %230

211:                                              ; preds = %207
  %212 = load i32, i32* %7, align 4
  %213 = load i32, i32* @FA_CREATE_ALWAYS, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %211
  %217 = load i32, i32* @FA__WRITTEN, align 4
  %218 = load i32, i32* %7, align 4
  %219 = or i32 %218, %217
  store i32 %219, i32* %7, align 4
  br label %220

220:                                              ; preds = %216, %211
  %221 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %222 = load %struct.TYPE_16__*, %struct.TYPE_16__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %222, i32 0, i32 2
  %224 = load i8*, i8** %223, align 8
  %225 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %225, i32 0, i32 11
  store i8* %224, i8** %226, align 8
  %227 = load i32*, i32** %10, align 8
  %228 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i32 0, i32 0
  store i32* %227, i32** %229, align 8
  br label %230

230:                                              ; preds = %220, %207
  %231 = call i32 (...) @FREE_BUF()
  %232 = load i64, i64* %8, align 8
  %233 = load i64, i64* @FR_OK, align 8
  %234 = icmp eq i64 %232, %233
  br i1 %234, label %235, label %269

235:                                              ; preds = %230
  %236 = load i32, i32* %7, align 4
  %237 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %237, i32 0, i32 1
  store i32 %236, i32* %238, align 8
  %239 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %239, i32 0, i32 9
  store i64 0, i64* %240, align 8
  %241 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %242 = load %struct.TYPE_16__*, %struct.TYPE_16__** %241, align 8
  %243 = load i32*, i32** %10, align 8
  %244 = call i8* @ld_clust(%struct.TYPE_16__* %242, i32* %243)
  %245 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i32 0, i32 8
  store i8* %244, i8** %246, align 8
  %247 = load i32*, i32** %10, align 8
  %248 = load i32, i32* @DIR_FileSize, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %247, i64 %249
  %251 = call i32 @LD_DWORD(i32* %250)
  %252 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %253 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %252, i32 0, i32 7
  store i32 %251, i32* %253, align 8
  %254 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %255 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %254, i32 0, i32 6
  store i64 0, i64* %255, align 8
  %256 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %257 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %256, i32 0, i32 5
  store i64 0, i64* %257, align 8
  %258 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %259 = load %struct.TYPE_16__*, %struct.TYPE_16__** %258, align 8
  %260 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %261 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %260, i32 0, i32 2
  store %struct.TYPE_16__* %259, %struct.TYPE_16__** %261, align 8
  %262 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %263 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %262, i32 0, i32 2
  %264 = load %struct.TYPE_16__*, %struct.TYPE_16__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %268 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %267, i32 0, i32 3
  store i32 %266, i32* %268, align 8
  br label %269

269:                                              ; preds = %235, %230
  br label %270

270:                                              ; preds = %269, %18
  %271 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %272 = load %struct.TYPE_16__*, %struct.TYPE_16__** %271, align 8
  %273 = load i64, i64* %8, align 8
  %274 = call i32 @LEAVE_FF(%struct.TYPE_16__* %272, i64 %273)
  br label %275

275:                                              ; preds = %270, %16
  %276 = load i64, i64* %4, align 8
  ret i64 %276
}

declare dso_local i64 @find_volume(%struct.TYPE_16__**, i32**, i32) #1

declare dso_local i32 @INIT_BUF(i32*, %struct.TYPE_16__*) #1

declare dso_local i64 @follow_path(%struct.TYPE_15__*, i32*) #1

declare dso_local i64 @dir_register(%struct.TYPE_15__*) #1

declare dso_local i8* @GET_FATTIME(...) #1

declare dso_local i32 @ST_DWORD(i32*, i8*) #1

declare dso_local i8* @ld_clust(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @st_clust(i32*, i32) #1

declare dso_local i64 @remove_chain(%struct.TYPE_16__*, i8*) #1

declare dso_local i64 @move_window(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @FREE_BUF(...) #1

declare dso_local i32 @LD_DWORD(i32*) #1

declare dso_local i32 @LEAVE_FF(%struct.TYPE_16__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
