; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_cmds.c_FTPMkdir2.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_cmds.c_FTPMkdir2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i8*, i32, i32, i32 }

@kErrBadParameter = common dso_local global i32 0, align 4
@kLibraryMagic = common dso_local global i32 0, align 4
@kErrBadMagic = common dso_local global i32 0, align 4
@kErrInvalidDirParam = common dso_local global i32 0, align 4
@kNoErr = common dso_local global i32 0, align 4
@kErrCannotGoToPrevDir = common dso_local global i8* null, align 8
@kRecursiveNo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"MKD %s\00", align 1
@kDontPerror = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"MKD %s failed; [%s]\0A\00", align 1
@kErrMKDFailed = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"Cwd=%s; MKD %s failed; [%s]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FTPMkdir2(%struct.TYPE_7__* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca [512 x i8], align 16
  %16 = alloca [512 x i8], align 16
  %17 = alloca i8, align 1
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %19 = icmp eq %struct.TYPE_7__* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @kErrBadParameter, align 4
  store i32 %21, i32* %5, align 4
  br label %384

22:                                               ; preds = %4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @kLibraryMagic, align 4
  %27 = call i64 @strcmp(i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* @kErrBadMagic, align 4
  store i32 %30, i32* %5, align 4
  br label %384

31:                                               ; preds = %22
  %32 = load i8*, i8** %7, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = load i8*, i8** %7, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %34, %31
  %41 = load i32, i32* @kErrInvalidDirParam, align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* @kErrInvalidDirParam, align 4
  store i32 %44, i32* %5, align 4
  br label %384

45:                                               ; preds = %34
  %46 = load i8*, i8** %9, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %45
  %49 = load i8*, i8** %9, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %48, %45
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @FTPGetCWD(%struct.TYPE_7__* %55, i8* %58, i32 %61)
  br label %63

63:                                               ; preds = %54, %48
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = call i32 @FTPChdir(%struct.TYPE_7__* %64, i8* %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @kNoErr, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %101

70:                                               ; preds = %63
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = icmp eq i8* %72, null
  br i1 %73, label %80, label %74

74:                                               ; preds = %70
  %75 = load i8*, i8** %9, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 0
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %74, %70
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  br label %86

84:                                               ; preds = %74
  %85 = load i8*, i8** %9, align 8
  br label %86

86:                                               ; preds = %84, %80
  %87 = phi i8* [ %83, %80 ], [ %85, %84 ]
  %88 = call i32 @FTPChdir(%struct.TYPE_7__* %71, i8* %87)
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %86
  %92 = load i8*, i8** @kErrCannotGoToPrevDir, align 8
  %93 = ptrtoint i8* %92 to i32
  store i32 %93, i32* %10, align 4
  %94 = load i8*, i8** @kErrCannotGoToPrevDir, align 8
  %95 = ptrtoint i8* %94 to i32
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load i32, i32* %10, align 4
  store i32 %98, i32* %5, align 4
  br label %384

99:                                               ; preds = %86
  %100 = load i32, i32* @kNoErr, align 4
  store i32 %100, i32* %5, align 4
  br label %384

101:                                              ; preds = %63
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* @kRecursiveNo, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %135

105:                                              ; preds = %101
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %107 = load i8*, i8** %7, align 8
  %108 = call i32 @FTPCmd(%struct.TYPE_7__* %106, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %107)
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %10, align 4
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %134

111:                                              ; preds = %105
  %112 = load i32, i32* %10, align 4
  %113 = icmp ne i32 %112, 2
  br i1 %113, label %114, label %131

114:                                              ; preds = %111
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %116 = load i32, i32* @kDontPerror, align 4
  %117 = load i8*, i8** %7, align 8
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = sext i32 %120 to i64
  %122 = inttoptr i64 %121 to i8*
  %123 = call i32 (%struct.TYPE_7__*, i32, i8*, i8*, i8*, ...) @Error(%struct.TYPE_7__* %115, i32 %116, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %117, i8* %122)
  %124 = load i8*, i8** @kErrMKDFailed, align 8
  %125 = ptrtoint i8* %124 to i32
  store i32 %125, i32* %10, align 4
  %126 = load i8*, i8** @kErrMKDFailed, align 8
  %127 = ptrtoint i8* %126 to i32
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  %130 = load i32, i32* %10, align 4
  store i32 %130, i32* %5, align 4
  br label %384

131:                                              ; preds = %111
  %132 = load i32, i32* @kNoErr, align 4
  store i32 %132, i32* %10, align 4
  br label %133

133:                                              ; preds = %131
  br label %134

134:                                              ; preds = %133, %105
  br label %382

135:                                              ; preds = %101
  %136 = getelementptr inbounds [512 x i8], [512 x i8]* %15, i64 0, i64 0
  %137 = load i8*, i8** %7, align 8
  %138 = call i32 @STRNCPY(i8* %136, i8* %137)
  %139 = getelementptr inbounds [512 x i8], [512 x i8]* %15, i64 0, i64 0
  %140 = getelementptr inbounds [512 x i8], [512 x i8]* %15, i64 0, i64 0
  %141 = call i32 @strlen(i8* %140)
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %139, i64 %142
  %144 = getelementptr inbounds i8, i8* %143, i64 -1
  store i8* %144, i8** %12, align 8
  br label %145

145:                                              ; preds = %178, %135
  %146 = load i8*, i8** %12, align 8
  %147 = getelementptr inbounds [512 x i8], [512 x i8]* %15, i64 0, i64 0
  %148 = icmp ule i8* %146, %147
  br i1 %148, label %149, label %165

149:                                              ; preds = %145
  %150 = load i8*, i8** %7, align 8
  %151 = icmp eq i8* %150, null
  br i1 %151, label %158, label %152

152:                                              ; preds = %149
  %153 = load i8*, i8** %7, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 0
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %152, %149
  %159 = load i32, i32* @kErrInvalidDirParam, align 4
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 8
  %162 = load i32, i32* @kErrInvalidDirParam, align 4
  store i32 %162, i32* %10, align 4
  %163 = load i32, i32* %10, align 4
  store i32 %163, i32* %5, align 4
  br label %384

164:                                              ; preds = %152
  br label %165

165:                                              ; preds = %164, %145
  %166 = load i8*, i8** %12, align 8
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = icmp ne i32 %168, 47
  br i1 %169, label %170, label %178

170:                                              ; preds = %165
  %171 = load i8*, i8** %12, align 8
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp ne i32 %173, 92
  br i1 %174, label %175, label %178

175:                                              ; preds = %170
  %176 = load i8*, i8** %12, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 1
  store i8 0, i8* %177, align 1
  br label %181

178:                                              ; preds = %170, %165
  %179 = load i8*, i8** %12, align 8
  %180 = getelementptr inbounds i8, i8* %179, i32 -1
  store i8* %180, i8** %12, align 8
  br label %145

181:                                              ; preds = %175
  %182 = getelementptr inbounds [512 x i8], [512 x i8]* %16, i64 0, i64 0
  %183 = getelementptr inbounds [512 x i8], [512 x i8]* %15, i64 0, i64 0
  %184 = call i32 @STRNCPY(i8* %182, i8* %183)
  %185 = getelementptr inbounds [512 x i8], [512 x i8]* %15, i64 0, i64 0
  %186 = call i8* @strrchr(i8* %185, i8 signext 47)
  %187 = getelementptr inbounds [512 x i8], [512 x i8]* %15, i64 0, i64 0
  %188 = icmp eq i8* %186, %187
  br i1 %188, label %194, label %189

189:                                              ; preds = %181
  %190 = getelementptr inbounds [512 x i8], [512 x i8]* %15, i64 0, i64 0
  %191 = call i8* @strrchr(i8* %190, i8 signext 92)
  %192 = getelementptr inbounds [512 x i8], [512 x i8]* %15, i64 0, i64 0
  %193 = icmp eq i8* %191, %192
  br i1 %193, label %194, label %224

194:                                              ; preds = %189, %181
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %196 = getelementptr inbounds [512 x i8], [512 x i8]* %15, i64 0, i64 0
  %197 = call i32 @FTPCmd(%struct.TYPE_7__* %195, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %196)
  store i32 %197, i32* %10, align 4
  %198 = load i32, i32* %10, align 4
  %199 = icmp slt i32 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %194
  %201 = load i32, i32* %10, align 4
  store i32 %201, i32* %5, align 4
  br label %384

202:                                              ; preds = %194
  %203 = load i32, i32* %10, align 4
  %204 = icmp ne i32 %203, 2
  br i1 %204, label %205, label %222

205:                                              ; preds = %202
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %207 = load i32, i32* @kDontPerror, align 4
  %208 = getelementptr inbounds [512 x i8], [512 x i8]* %15, i64 0, i64 0
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = sext i32 %211 to i64
  %213 = inttoptr i64 %212 to i8*
  %214 = call i32 (%struct.TYPE_7__*, i32, i8*, i8*, i8*, ...) @Error(%struct.TYPE_7__* %206, i32 %207, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %208, i8* %213)
  %215 = load i8*, i8** @kErrMKDFailed, align 8
  %216 = ptrtoint i8* %215 to i32
  store i32 %216, i32* %10, align 4
  %217 = load i8*, i8** @kErrMKDFailed, align 8
  %218 = ptrtoint i8* %217 to i32
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 0
  store i32 %218, i32* %220, align 8
  %221 = load i32, i32* %10, align 4
  store i32 %221, i32* %5, align 4
  br label %384

222:                                              ; preds = %202
  %223 = load i32, i32* @kNoErr, align 4
  store i32 %223, i32* %5, align 4
  br label %384

224:                                              ; preds = %189
  br label %225

225:                                              ; preds = %278, %224
  %226 = getelementptr inbounds [512 x i8], [512 x i8]* %15, i64 0, i64 0
  %227 = call i8* @strrchr(i8* %226, i8 signext 47)
  store i8* %227, i8** %12, align 8
  %228 = load i8*, i8** %12, align 8
  %229 = icmp eq i8* %228, null
  br i1 %229, label %230, label %233

230:                                              ; preds = %225
  %231 = getelementptr inbounds [512 x i8], [512 x i8]* %15, i64 0, i64 0
  %232 = call i8* @strrchr(i8* %231, i8 signext 92)
  store i8* %232, i8** %12, align 8
  br label %233

233:                                              ; preds = %230, %225
  %234 = load i8*, i8** %12, align 8
  %235 = icmp eq i8* %234, null
  br i1 %235, label %236, label %258

236:                                              ; preds = %233
  %237 = getelementptr inbounds [512 x i8], [512 x i8]* %15, i64 0, i64 0
  %238 = getelementptr inbounds [512 x i8], [512 x i8]* %15, i64 0, i64 0
  %239 = call i32 @strlen(i8* %238)
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i8, i8* %237, i64 %240
  %242 = getelementptr inbounds i8, i8* %241, i64 -1
  store i8* %242, i8** %12, align 8
  %243 = getelementptr inbounds [512 x i8], [512 x i8]* %15, i64 0, i64 0
  %244 = load i8, i8* %243, align 16
  %245 = sext i8 %244 to i32
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %255

247:                                              ; preds = %236
  %248 = load i8*, i8** @kErrMKDFailed, align 8
  %249 = ptrtoint i8* %248 to i32
  store i32 %249, i32* %10, align 4
  %250 = load i8*, i8** @kErrMKDFailed, align 8
  %251 = ptrtoint i8* %250 to i32
  %252 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %253 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i32 0, i32 0
  store i32 %251, i32* %253, align 8
  %254 = load i32, i32* %10, align 4
  store i32 %254, i32* %5, align 4
  br label %384

255:                                              ; preds = %236
  %256 = getelementptr inbounds [512 x i8], [512 x i8]* %15, i64 0, i64 0
  %257 = getelementptr inbounds i8, i8* %256, i64 -1
  store i8* %257, i8** %12, align 8
  br label %279

258:                                              ; preds = %233
  %259 = load i8*, i8** %12, align 8
  %260 = getelementptr inbounds [512 x i8], [512 x i8]* %15, i64 0, i64 0
  %261 = icmp eq i8* %259, %260
  br i1 %261, label %262, label %270

262:                                              ; preds = %258
  %263 = load i8*, i8** @kErrMKDFailed, align 8
  %264 = ptrtoint i8* %263 to i32
  store i32 %264, i32* %10, align 4
  %265 = load i8*, i8** @kErrMKDFailed, align 8
  %266 = ptrtoint i8* %265 to i32
  %267 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %267, i32 0, i32 0
  store i32 %266, i32* %268, align 8
  %269 = load i32, i32* %10, align 4
  store i32 %269, i32* %5, align 4
  br label %384

270:                                              ; preds = %258
  %271 = load i8*, i8** %12, align 8
  store i8 0, i8* %271, align 1
  %272 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %273 = getelementptr inbounds [512 x i8], [512 x i8]* %15, i64 0, i64 0
  %274 = call i32 @FTPChdir(%struct.TYPE_7__* %272, i8* %273)
  store i32 %274, i32* %10, align 4
  %275 = load i32, i32* %10, align 4
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %278

277:                                              ; preds = %270
  br label %279

278:                                              ; preds = %270
  br label %225

279:                                              ; preds = %277, %255
  %280 = getelementptr inbounds [512 x i8], [512 x i8]* %16, i64 0, i64 0
  %281 = load i8*, i8** %12, align 8
  %282 = getelementptr inbounds i8, i8* %281, i64 1
  %283 = getelementptr inbounds [512 x i8], [512 x i8]* %15, i64 0, i64 0
  %284 = ptrtoint i8* %282 to i64
  %285 = ptrtoint i8* %283 to i64
  %286 = sub i64 %284, %285
  %287 = getelementptr inbounds i8, i8* %280, i64 %286
  store i8* %287, i8** %13, align 8
  %288 = load i8*, i8** %13, align 8
  store i8* %288, i8** %12, align 8
  br label %289

289:                                              ; preds = %344, %279
  %290 = load i8*, i8** %12, align 8
  store i8* %290, i8** %14, align 8
  %291 = load i8*, i8** %14, align 8
  %292 = call i8* @strchr(i8* %291, i8 signext 47)
  store i8* %292, i8** %12, align 8
  store i8 47, i8* %17, align 1
  %293 = load i8*, i8** %12, align 8
  %294 = icmp eq i8* %293, null
  br i1 %294, label %295, label %298

295:                                              ; preds = %289
  %296 = load i8*, i8** %14, align 8
  %297 = call i8* @strchr(i8* %296, i8 signext 92)
  store i8* %297, i8** %12, align 8
  br label %298

298:                                              ; preds = %295, %289
  %299 = load i8*, i8** %12, align 8
  %300 = icmp ne i8* %299, null
  br i1 %300, label %301, label %312

301:                                              ; preds = %298
  %302 = load i8*, i8** %12, align 8
  %303 = load i8, i8* %302, align 1
  store i8 %303, i8* %17, align 1
  %304 = load i8*, i8** %12, align 8
  store i8 0, i8* %304, align 1
  %305 = load i8*, i8** %12, align 8
  %306 = getelementptr inbounds i8, i8* %305, i64 1
  %307 = load i8, i8* %306, align 1
  %308 = sext i8 %307 to i32
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %310, label %311

310:                                              ; preds = %301
  br label %348

311:                                              ; preds = %301
  br label %312

312:                                              ; preds = %311, %298
  %313 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %314 = load i8*, i8** %13, align 8
  %315 = call i32 @FTPCmd(%struct.TYPE_7__* %313, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %314)
  store i32 %315, i32* %10, align 4
  %316 = load i32, i32* %10, align 4
  %317 = icmp slt i32 %316, 0
  br i1 %317, label %318, label %320

318:                                              ; preds = %312
  %319 = load i32, i32* %10, align 4
  store i32 %319, i32* %5, align 4
  br label %384

320:                                              ; preds = %312
  %321 = load i32, i32* %10, align 4
  %322 = icmp ne i32 %321, 2
  br i1 %322, label %323, label %340

323:                                              ; preds = %320
  %324 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %325 = load i32, i32* @kDontPerror, align 4
  %326 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %327 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %326, i32 0, i32 1
  %328 = load i8*, i8** %327, align 8
  %329 = load i8*, i8** %13, align 8
  %330 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %331 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %330, i32 0, i32 2
  %332 = load i32, i32* %331, align 8
  %333 = call i32 (%struct.TYPE_7__*, i32, i8*, i8*, i8*, ...) @Error(%struct.TYPE_7__* %324, i32 %325, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %328, i8* %329, i32 %332)
  %334 = load i8*, i8** @kErrMKDFailed, align 8
  %335 = ptrtoint i8* %334 to i32
  store i32 %335, i32* %10, align 4
  %336 = load i8*, i8** @kErrMKDFailed, align 8
  %337 = ptrtoint i8* %336 to i32
  %338 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %339 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %338, i32 0, i32 0
  store i32 %337, i32* %339, align 8
  br label %350

340:                                              ; preds = %320
  %341 = load i8*, i8** %12, align 8
  %342 = icmp eq i8* %341, null
  br i1 %342, label %343, label %344

343:                                              ; preds = %340
  br label %348

344:                                              ; preds = %340
  %345 = load i8, i8* %17, align 1
  %346 = load i8*, i8** %12, align 8
  %347 = getelementptr inbounds i8, i8* %346, i32 1
  store i8* %347, i8** %12, align 8
  store i8 %345, i8* %346, align 1
  br label %289

348:                                              ; preds = %343, %310
  %349 = load i32, i32* @kNoErr, align 4
  store i32 %349, i32* %10, align 4
  br label %350

350:                                              ; preds = %348, %323
  %351 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %352 = load i8*, i8** %9, align 8
  %353 = icmp eq i8* %352, null
  br i1 %353, label %360, label %354

354:                                              ; preds = %350
  %355 = load i8*, i8** %9, align 8
  %356 = getelementptr inbounds i8, i8* %355, i64 0
  %357 = load i8, i8* %356, align 1
  %358 = sext i8 %357 to i32
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %360, label %364

360:                                              ; preds = %354, %350
  %361 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %362 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %361, i32 0, i32 1
  %363 = load i8*, i8** %362, align 8
  br label %366

364:                                              ; preds = %354
  %365 = load i8*, i8** %9, align 8
  br label %366

366:                                              ; preds = %364, %360
  %367 = phi i8* [ %363, %360 ], [ %365, %364 ]
  %368 = call i32 @FTPChdir(%struct.TYPE_7__* %351, i8* %367)
  store i32 %368, i32* %11, align 4
  %369 = load i32, i32* %10, align 4
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %371, label %381

371:                                              ; preds = %366
  %372 = load i32, i32* %11, align 4
  %373 = icmp slt i32 %372, 0
  br i1 %373, label %374, label %381

374:                                              ; preds = %371
  %375 = load i8*, i8** @kErrCannotGoToPrevDir, align 8
  %376 = ptrtoint i8* %375 to i32
  store i32 %376, i32* %10, align 4
  %377 = load i8*, i8** @kErrCannotGoToPrevDir, align 8
  %378 = ptrtoint i8* %377 to i32
  %379 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %380 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %379, i32 0, i32 0
  store i32 %378, i32* %380, align 8
  br label %381

381:                                              ; preds = %374, %371, %366
  br label %382

382:                                              ; preds = %381, %134
  %383 = load i32, i32* %10, align 4
  store i32 %383, i32* %5, align 4
  br label %384

384:                                              ; preds = %382, %318, %262, %247, %222, %205, %200, %158, %114, %99, %91, %40, %29, %20
  %385 = load i32, i32* %5, align 4
  ret i32 %385
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @FTPGetCWD(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @FTPChdir(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @FTPCmd(%struct.TYPE_7__*, i8*, i8*) #1

declare dso_local i32 @Error(%struct.TYPE_7__*, i32, i8*, i8*, i8*, ...) #1

declare dso_local i32 @STRNCPY(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
