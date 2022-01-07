; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_spool.c_SpoolX.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_spool.c_SpoolX.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@gSpoolSerial = common dso_local global i32 0, align 4
@FOPEN_WRITE_TEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [102 x i8] c"# This is a NcFTP spool file entry.\0A# Run the \22ncftpbatch\22 program to process the spool directory.\0A#\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"op=%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"hostname=%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"host-ip=%s\0A\00", align 1
@kDefaultFTPPort = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"port=%u\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"anonymous\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"user=%s\0A\00", align 1
@kPasswordMagic = common dso_local global i32 0, align 4
@kPasswordMagicLen = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"pass=%s\0A\00", align 1
@gLib = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.8 = private unnamed_addr constant [14 x i8] c"anon-pass=%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"xtype=%c\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"recursive=%s\0A\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"delete=%s\0A\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"passive=%d\0A\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"remote-dir=%s\0A\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"local-dir=%s\0A\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"remote-file=%s\0A\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"local-file=%s\0A\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"pre-command=%s\0A\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"per-file-command=%s\0A\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"post-command=%s\0A\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"rename spoolfile failed\00", align 1
@gUnprocessedJobs = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [27 x i8] c"write to spool file failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SpoolX(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i32 %7, i8* %8, i8* %9, i32 %10, i32 %11, i32 %12, i32 %13, i8* %14, i8* %15, i8* %16, i32 %17) #0 {
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i8*, align 8
  %35 = alloca i8*, align 8
  %36 = alloca i8*, align 8
  %37 = alloca i32, align 4
  %38 = alloca [256 x i8], align 16
  %39 = alloca [160 x i8], align 16
  %40 = alloca [256 x i8], align 16
  %41 = alloca [256 x i8], align 16
  %42 = alloca [256 x i8], align 16
  %43 = alloca i32*, align 8
  %44 = alloca i32, align 4
  store i8* %0, i8** %20, align 8
  store i8* %1, i8** %21, align 8
  store i8* %2, i8** %22, align 8
  store i8* %3, i8** %23, align 8
  store i8* %4, i8** %24, align 8
  store i8* %5, i8** %25, align 8
  store i8* %6, i8** %26, align 8
  store i32 %7, i32* %27, align 4
  store i8* %8, i8** %28, align 8
  store i8* %9, i8** %29, align 8
  store i32 %10, i32* %30, align 4
  store i32 %11, i32* %31, align 4
  store i32 %12, i32* %32, align 4
  store i32 %13, i32* %33, align 4
  store i8* %14, i8** %34, align 8
  store i8* %15, i8** %35, align 8
  store i8* %16, i8** %36, align 8
  store i32 %17, i32* %37, align 4
  %45 = getelementptr inbounds [256 x i8], [256 x i8]* %38, i64 0, i64 0
  %46 = call i64 @MkSpoolDir(i8* %45, i32 256)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %18
  store i32 -1, i32* %19, align 4
  br label %336

49:                                               ; preds = %18
  %50 = load i32, i32* @gSpoolSerial, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* @gSpoolSerial, align 4
  %52 = getelementptr inbounds [256 x i8], [256 x i8]* %38, i64 0, i64 0
  %53 = getelementptr inbounds [256 x i8], [256 x i8]* %41, i64 0, i64 0
  %54 = load i8*, i8** %20, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  %56 = load i8, i8* %55, align 1
  %57 = load i32, i32* @gSpoolSerial, align 4
  %58 = load i32, i32* %37, align 4
  %59 = call i32 @SpoolName(i8* %52, i8* %53, i32 256, i8 signext %56, i32 %57, i32 %58)
  %60 = getelementptr inbounds [256 x i8], [256 x i8]* %38, i64 0, i64 0
  %61 = getelementptr inbounds [256 x i8], [256 x i8]* %40, i64 0, i64 0
  %62 = load i32, i32* @gSpoolSerial, align 4
  %63 = load i32, i32* %37, align 4
  %64 = call i32 @SpoolName(i8* %60, i8* %61, i32 256, i8 signext 122, i32 %62, i32 %63)
  %65 = call i32 @umask(i32 63)
  store i32 %65, i32* %44, align 4
  %66 = getelementptr inbounds [256 x i8], [256 x i8]* %40, i64 0, i64 0
  %67 = load i32, i32* @FOPEN_WRITE_TEXT, align 4
  %68 = call i32* @fopen(i8* %66, i32 %67)
  store i32* %68, i32** %43, align 8
  %69 = load i32, i32* %44, align 4
  %70 = call i32 @umask(i32 %69)
  %71 = load i32*, i32** %43, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %49
  store i32 -1, i32* %19, align 4
  br label %336

74:                                               ; preds = %49
  %75 = load i32*, i32** %43, align 8
  %76 = call i64 (i32*, i8*, ...) @fprintf(i32* %75, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str, i64 0, i64 0))
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  br label %328

79:                                               ; preds = %74
  %80 = load i32*, i32** %43, align 8
  %81 = load i8*, i8** %20, align 8
  %82 = call i64 (i32*, i8*, ...) @fprintf(i32* %80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %81)
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %328

85:                                               ; preds = %79
  %86 = load i32*, i32** %43, align 8
  %87 = load i8*, i8** %25, align 8
  %88 = call i64 (i32*, i8*, ...) @fprintf(i32* %86, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %87)
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  br label %328

91:                                               ; preds = %85
  %92 = load i8*, i8** %26, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %106

94:                                               ; preds = %91
  %95 = load i8*, i8** %26, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 0
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %94
  %101 = load i32*, i32** %43, align 8
  %102 = load i8*, i8** %26, align 8
  %103 = call i64 (i32*, i8*, ...) @fprintf(i32* %101, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %102)
  %104 = icmp slt i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  br label %328

106:                                              ; preds = %100, %94, %91
  %107 = load i32, i32* %27, align 4
  %108 = icmp ugt i32 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %106
  %110 = load i32, i32* %27, align 4
  %111 = load i64, i64* @kDefaultFTPPort, align 8
  %112 = trunc i64 %111 to i32
  %113 = icmp ne i32 %110, %112
  br i1 %113, label %114, label %120

114:                                              ; preds = %109
  %115 = load i32*, i32** %43, align 8
  %116 = load i32, i32* %27, align 4
  %117 = call i64 (i32*, i8*, ...) @fprintf(i32* %115, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %116)
  %118 = icmp slt i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  br label %328

120:                                              ; preds = %114, %109, %106
  %121 = load i8*, i8** %28, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %139

123:                                              ; preds = %120
  %124 = load i8*, i8** %28, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 0
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %139

129:                                              ; preds = %123
  %130 = load i8*, i8** %28, align 8
  %131 = call i64 @strcmp(i8* %130, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %129
  %134 = load i32*, i32** %43, align 8
  %135 = load i8*, i8** %28, align 8
  %136 = call i64 (i32*, i8*, ...) @fprintf(i32* %134, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* %135)
  %137 = icmp slt i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %133
  br label %328

139:                                              ; preds = %133, %129, %123, %120
  %140 = load i8*, i8** %28, align 8
  %141 = call i64 @strcmp(i8* %140, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %171

143:                                              ; preds = %139
  %144 = load i8*, i8** %29, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %146, label %171

146:                                              ; preds = %143
  %147 = load i8*, i8** %29, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 0
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %171

152:                                              ; preds = %146
  %153 = getelementptr inbounds [160 x i8], [160 x i8]* %39, i64 0, i64 0
  %154 = load i32, i32* @kPasswordMagic, align 4
  %155 = load i32, i32* @kPasswordMagicLen, align 4
  %156 = call i32 @memcpy(i8* %153, i32 %154, i32 %155)
  %157 = getelementptr inbounds [160 x i8], [160 x i8]* %39, i64 0, i64 0
  %158 = load i32, i32* @kPasswordMagicLen, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8, i8* %157, i64 %159
  %161 = load i8*, i8** %29, align 8
  %162 = load i8*, i8** %29, align 8
  %163 = call i32 @strlen(i8* %162)
  %164 = call i32 @ToBase64(i8* %160, i8* %161, i32 %163, i32 1)
  %165 = load i32*, i32** %43, align 8
  %166 = getelementptr inbounds [160 x i8], [160 x i8]* %39, i64 0, i64 0
  %167 = call i64 (i32*, i8*, ...) @fprintf(i32* %165, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* %166)
  %168 = icmp slt i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %152
  br label %328

170:                                              ; preds = %152
  br label %189

171:                                              ; preds = %146, %143, %139
  %172 = load i8*, i8** %28, align 8
  %173 = call i64 @strcmp(i8* %172, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %188

175:                                              ; preds = %171
  %176 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gLib, i32 0, i32 0), align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 0
  %178 = load i8, i8* %177, align 1
  %179 = sext i8 %178 to i32
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %188

181:                                              ; preds = %175
  %182 = load i32*, i32** %43, align 8
  %183 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gLib, i32 0, i32 0), align 8
  %184 = call i64 (i32*, i8*, ...) @fprintf(i32* %182, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* %183)
  %185 = icmp slt i64 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %181
  br label %328

187:                                              ; preds = %181
  br label %188

188:                                              ; preds = %187, %175, %171
  br label %189

189:                                              ; preds = %188, %170
  %190 = load i32*, i32** %43, align 8
  %191 = load i32, i32* %30, align 4
  %192 = call i64 (i32*, i8*, ...) @fprintf(i32* %190, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 %191)
  %193 = icmp slt i64 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %189
  br label %328

195:                                              ; preds = %189
  %196 = load i32, i32* %31, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %205

198:                                              ; preds = %195
  %199 = load i32*, i32** %43, align 8
  %200 = load i32, i32* %31, align 4
  %201 = call i8* @YESNO(i32 %200)
  %202 = call i64 (i32*, i8*, ...) @fprintf(i32* %199, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* %201)
  %203 = icmp slt i64 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %198
  br label %328

205:                                              ; preds = %198, %195
  %206 = load i32, i32* %32, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %215

208:                                              ; preds = %205
  %209 = load i32*, i32** %43, align 8
  %210 = load i32, i32* %32, align 4
  %211 = call i8* @YESNO(i32 %210)
  %212 = call i64 (i32*, i8*, ...) @fprintf(i32* %209, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8* %211)
  %213 = icmp slt i64 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %208
  br label %328

215:                                              ; preds = %208, %205
  %216 = load i32*, i32** %43, align 8
  %217 = load i32, i32* %33, align 4
  %218 = call i64 (i32*, i8*, ...) @fprintf(i32* %216, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i32 %217)
  %219 = icmp slt i64 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %215
  br label %328

221:                                              ; preds = %215
  %222 = load i32*, i32** %43, align 8
  %223 = load i8*, i8** %22, align 8
  %224 = call i64 (i32*, i8*, ...) @fprintf(i32* %222, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i8* %223)
  %225 = icmp slt i64 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %221
  br label %328

227:                                              ; preds = %221
  %228 = load i8*, i8** %24, align 8
  %229 = icmp eq i8* %228, null
  br i1 %229, label %240, label %230

230:                                              ; preds = %227
  %231 = load i8*, i8** %24, align 8
  %232 = getelementptr inbounds i8, i8* %231, i64 0
  %233 = load i8, i8* %232, align 1
  %234 = sext i8 %233 to i32
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %240, label %236

236:                                              ; preds = %230
  %237 = load i8*, i8** %24, align 8
  %238 = call i64 @strcmp(i8* %237, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %239 = icmp eq i64 %238, 0
  br i1 %239, label %240, label %249

240:                                              ; preds = %236, %230, %227
  %241 = getelementptr inbounds [256 x i8], [256 x i8]* %42, i64 0, i64 0
  %242 = call i32 @FTPGetLocalCWD(i8* %241, i32 256)
  %243 = load i32*, i32** %43, align 8
  %244 = getelementptr inbounds [256 x i8], [256 x i8]* %42, i64 0, i64 0
  %245 = call i64 (i32*, i8*, ...) @fprintf(i32* %243, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* %244)
  %246 = icmp slt i64 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %240
  br label %328

248:                                              ; preds = %240
  br label %256

249:                                              ; preds = %236
  %250 = load i32*, i32** %43, align 8
  %251 = load i8*, i8** %24, align 8
  %252 = call i64 (i32*, i8*, ...) @fprintf(i32* %250, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* %251)
  %253 = icmp slt i64 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %249
  br label %328

255:                                              ; preds = %249
  br label %256

256:                                              ; preds = %255, %248
  %257 = load i32*, i32** %43, align 8
  %258 = load i8*, i8** %21, align 8
  %259 = call i64 (i32*, i8*, ...) @fprintf(i32* %257, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i8* %258)
  %260 = icmp slt i64 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %256
  br label %328

262:                                              ; preds = %256
  %263 = load i32*, i32** %43, align 8
  %264 = load i8*, i8** %23, align 8
  %265 = call i64 (i32*, i8*, ...) @fprintf(i32* %263, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i8* %264)
  %266 = icmp slt i64 %265, 0
  br i1 %266, label %267, label %268

267:                                              ; preds = %262
  br label %328

268:                                              ; preds = %262
  %269 = load i8*, i8** %34, align 8
  %270 = icmp ne i8* %269, null
  br i1 %270, label %271, label %283

271:                                              ; preds = %268
  %272 = load i8*, i8** %34, align 8
  %273 = getelementptr inbounds i8, i8* %272, i64 0
  %274 = load i8, i8* %273, align 1
  %275 = sext i8 %274 to i32
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %283

277:                                              ; preds = %271
  %278 = load i32*, i32** %43, align 8
  %279 = load i8*, i8** %34, align 8
  %280 = call i64 (i32*, i8*, ...) @fprintf(i32* %278, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i8* %279)
  %281 = icmp slt i64 %280, 0
  br i1 %281, label %282, label %283

282:                                              ; preds = %277
  br label %328

283:                                              ; preds = %277, %271, %268
  %284 = load i8*, i8** %35, align 8
  %285 = icmp ne i8* %284, null
  br i1 %285, label %286, label %298

286:                                              ; preds = %283
  %287 = load i8*, i8** %35, align 8
  %288 = getelementptr inbounds i8, i8* %287, i64 0
  %289 = load i8, i8* %288, align 1
  %290 = sext i8 %289 to i32
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %298

292:                                              ; preds = %286
  %293 = load i32*, i32** %43, align 8
  %294 = load i8*, i8** %35, align 8
  %295 = call i64 (i32*, i8*, ...) @fprintf(i32* %293, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0), i8* %294)
  %296 = icmp slt i64 %295, 0
  br i1 %296, label %297, label %298

297:                                              ; preds = %292
  br label %328

298:                                              ; preds = %292, %286, %283
  %299 = load i8*, i8** %36, align 8
  %300 = icmp ne i8* %299, null
  br i1 %300, label %301, label %313

301:                                              ; preds = %298
  %302 = load i8*, i8** %36, align 8
  %303 = getelementptr inbounds i8, i8* %302, i64 0
  %304 = load i8, i8* %303, align 1
  %305 = sext i8 %304 to i32
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %313

307:                                              ; preds = %301
  %308 = load i32*, i32** %43, align 8
  %309 = load i8*, i8** %36, align 8
  %310 = call i64 (i32*, i8*, ...) @fprintf(i32* %308, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0), i8* %309)
  %311 = icmp slt i64 %310, 0
  br i1 %311, label %312, label %313

312:                                              ; preds = %307
  br label %328

313:                                              ; preds = %307, %301, %298
  %314 = load i32*, i32** %43, align 8
  %315 = call i64 @fclose(i32* %314)
  %316 = icmp slt i64 %315, 0
  br i1 %316, label %317, label %318

317:                                              ; preds = %313
  br label %331

318:                                              ; preds = %313
  %319 = getelementptr inbounds [256 x i8], [256 x i8]* %40, i64 0, i64 0
  %320 = getelementptr inbounds [256 x i8], [256 x i8]* %41, i64 0, i64 0
  %321 = call i64 @rename(i8* %319, i8* %320)
  %322 = icmp slt i64 %321, 0
  br i1 %322, label %323, label %325

323:                                              ; preds = %318
  %324 = call i32 @perror(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0))
  br label %333

325:                                              ; preds = %318
  %326 = load i32, i32* @gUnprocessedJobs, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* @gUnprocessedJobs, align 4
  store i32 0, i32* %19, align 4
  br label %336

328:                                              ; preds = %312, %297, %282, %267, %261, %254, %247, %226, %220, %214, %204, %194, %186, %169, %138, %119, %105, %90, %84, %78
  %329 = load i32*, i32** %43, align 8
  %330 = call i64 @fclose(i32* %329)
  br label %331

331:                                              ; preds = %328, %317
  %332 = call i32 @perror(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i64 0, i64 0))
  br label %333

333:                                              ; preds = %331, %323
  %334 = getelementptr inbounds [256 x i8], [256 x i8]* %40, i64 0, i64 0
  %335 = call i32 @unlink(i8* %334)
  store i32 -1, i32* %19, align 4
  br label %336

336:                                              ; preds = %333, %325, %73, %48
  %337 = load i32, i32* %19, align 4
  ret i32 %337
}

declare dso_local i64 @MkSpoolDir(i8*, i32) #1

declare dso_local i32 @SpoolName(i8*, i8*, i32, i8 signext, i32, i32) #1

declare dso_local i32 @umask(i32) #1

declare dso_local i32* @fopen(i8*, i32) #1

declare dso_local i64 @fprintf(i32*, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @ToBase64(i8*, i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @YESNO(i32) #1

declare dso_local i32 @FTPGetLocalCWD(i8*, i32) #1

declare dso_local i64 @fclose(i32*) #1

declare dso_local i64 @rename(i8*, i8*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
