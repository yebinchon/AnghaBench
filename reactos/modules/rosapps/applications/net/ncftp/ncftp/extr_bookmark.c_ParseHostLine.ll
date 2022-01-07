; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_bookmark.c_ParseHostLine.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_bookmark.c_ParseHostLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i8, i64, i64, i8*, i64, i64, i8*, i8*, i8*, i8*, i32, i64, i64, i64, i64, i64 }

@kDefaultFTPPort = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%lx\00", align 1
@kPasswordMagic = common dso_local global i32 0, align 4
@kPasswordMagicLen = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ParseHostLine(i8* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca [128 x i8], align 16
  %6 = alloca [128 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = call i32 @SetBookmarkDefaults(%struct.TYPE_4__* %16)
  %18 = load i8*, i8** %3, align 8
  store i8* %18, i8** %7, align 8
  %19 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %20 = getelementptr inbounds i8, i8* %19, i64 128
  %21 = getelementptr inbounds i8, i8* %20, i64 -1
  store i8* %21, i8** %9, align 8
  store i32 -1, i32* %12, align 4
  store i32 1, i32* %11, align 4
  br label %22

22:                                               ; preds = %256, %2
  %23 = load i8*, i8** %7, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %259

28:                                               ; preds = %22
  %29 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  store i8* %29, i8** %8, align 8
  br label %30

30:                                               ; preds = %129, %28
  %31 = load i8*, i8** %7, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %130

35:                                               ; preds = %30
  %36 = load i8*, i8** %7, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 92
  br i1 %39, label %40, label %59

40:                                               ; preds = %35
  %41 = load i8*, i8** %7, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %40
  %47 = load i8*, i8** %8, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = icmp ult i8* %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load i8*, i8** %7, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = load i8, i8* %52, align 1
  %54 = load i8*, i8** %8, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %8, align 8
  store i8 %53, i8* %54, align 1
  br label %56

56:                                               ; preds = %50, %46
  %57 = load i8*, i8** %7, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 2
  store i8* %58, i8** %7, align 8
  br label %129

59:                                               ; preds = %40, %35
  %60 = load i8*, i8** %7, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 44
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i8*, i8** %7, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %7, align 8
  br label %130

67:                                               ; preds = %59
  %68 = load i8*, i8** %7, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 36
  br i1 %71, label %72, label %115

72:                                               ; preds = %67
  %73 = load i8*, i8** %7, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %115

78:                                               ; preds = %72
  %79 = load i8*, i8** %7, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 2
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %115

84:                                               ; preds = %78
  %85 = load i8*, i8** %7, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  %87 = load i8, i8* %86, align 1
  %88 = call i32 @HexCharToNibble(i8 signext %87)
  store i32 %88, i32* %14, align 4
  %89 = load i8*, i8** %7, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 2
  %91 = load i8, i8* %90, align 1
  %92 = call i32 @HexCharToNibble(i8 signext %91)
  store i32 %92, i32* %15, align 4
  %93 = load i32, i32* %14, align 4
  %94 = icmp sge i32 %93, 0
  br i1 %94, label %95, label %112

95:                                               ; preds = %84
  %96 = load i32, i32* %15, align 4
  %97 = icmp sge i32 %96, 0
  br i1 %97, label %98, label %112

98:                                               ; preds = %95
  %99 = load i32, i32* %14, align 4
  %100 = shl i32 %99, 4
  %101 = load i32, i32* %15, align 4
  %102 = or i32 %100, %101
  store i32 %102, i32* %13, align 4
  %103 = load i8*, i8** %8, align 8
  %104 = load i8*, i8** %9, align 8
  %105 = icmp ult i8* %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %98
  %107 = load i32, i32* %13, align 4
  %108 = trunc i32 %107 to i8
  %109 = load i8*, i8** %8, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %8, align 8
  store i8 %108, i8* %109, align 1
  br label %111

111:                                              ; preds = %106, %98
  br label %112

112:                                              ; preds = %111, %95, %84
  %113 = load i8*, i8** %7, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 3
  store i8* %114, i8** %7, align 8
  br label %127

115:                                              ; preds = %78, %72, %67
  %116 = load i8*, i8** %8, align 8
  %117 = load i8*, i8** %9, align 8
  %118 = icmp ult i8* %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %115
  %120 = load i8*, i8** %7, align 8
  %121 = load i8, i8* %120, align 1
  %122 = load i8*, i8** %8, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %8, align 8
  store i8 %121, i8* %122, align 1
  br label %124

124:                                              ; preds = %119, %115
  %125 = load i8*, i8** %7, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %7, align 8
  br label %127

127:                                              ; preds = %124, %112
  br label %128

128:                                              ; preds = %127
  br label %129

129:                                              ; preds = %128, %56
  br label %30

130:                                              ; preds = %64, %30
  %131 = load i8*, i8** %8, align 8
  store i8 0, i8* %131, align 1
  %132 = load i32, i32* %11, align 4
  switch i32 %132, label %254 [
    i32 1, label %133
    i32 2, label %139
    i32 3, label %145
    i32 4, label %151
    i32 5, label %157
    i32 6, label %163
    i32 7, label %169
    i32 8, label %181
    i32 9, label %198
    i32 10, label %205
    i32 11, label %210
    i32 12, label %215
    i32 13, label %220
    i32 14, label %225
    i32 15, label %231
    i32 16, label %237
    i32 17, label %237
    i32 18, label %237
    i32 19, label %237
    i32 20, label %238
    i32 21, label %243
    i32 22, label %248
  ]

133:                                              ; preds = %130
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 17
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %138 = call i32 @STRNCPY(i64 %136, i8* %137)
  br label %255

139:                                              ; preds = %130
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 16
  %142 = load i64, i64* %141, align 8
  %143 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %144 = call i32 @STRNCPY(i64 %142, i8* %143)
  br label %255

145:                                              ; preds = %130
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 15
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %150 = call i32 @STRNCPY(i64 %148, i8* %149)
  br label %255

151:                                              ; preds = %130
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 3
  %154 = load i64, i64* %153, align 8
  %155 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %156 = call i32 @STRNCPY(i64 %154, i8* %155)
  br label %255

157:                                              ; preds = %130
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 14
  %160 = load i64, i64* %159, align 8
  %161 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %162 = call i32 @STRNCPY(i64 %160, i8* %161)
  br label %255

163:                                              ; preds = %130
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 13
  %166 = load i64, i64* %165, align 8
  %167 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %168 = call i32 @STRNCPY(i64 %166, i8* %167)
  store i32 0, i32* %12, align 4
  br label %255

169:                                              ; preds = %130
  %170 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %171 = load i8, i8* %170, align 16
  %172 = sext i8 %171 to i32
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %169
  %175 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %176 = load i8, i8* %175, align 16
  %177 = sext i8 %176 to i32
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  store i32 %177, i32* %179, align 8
  br label %180

180:                                              ; preds = %174, %169
  br label %255

181:                                              ; preds = %130
  %182 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %183 = load i8, i8* %182, align 16
  %184 = sext i8 %183 to i32
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %191

186:                                              ; preds = %181
  %187 = load i64, i64* @kDefaultFTPPort, align 8
  %188 = trunc i64 %187 to i32
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 1
  store i32 %188, i32* %190, align 4
  br label %197

191:                                              ; preds = %181
  %192 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %193 = call i8* @atoi(i8* %192)
  %194 = ptrtoint i8* %193 to i32
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 1
  store i32 %194, i32* %196, align 4
  br label %197

197:                                              ; preds = %191, %186
  br label %255

198:                                              ; preds = %130
  %199 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %200 = call i32 @sscanf(i8* %199, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64* %10)
  %201 = load i64, i64* %10, align 8
  %202 = trunc i64 %201 to i32
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 12
  store i32 %202, i32* %204, align 8
  br label %255

205:                                              ; preds = %130
  %206 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %207 = call i8* @atoi(i8* %206)
  %208 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 11
  store i8* %207, i8** %209, align 8
  br label %255

210:                                              ; preds = %130
  %211 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %212 = call i8* @atoi(i8* %211)
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 10
  store i8* %212, i8** %214, align 8
  br label %255

215:                                              ; preds = %130
  %216 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %217 = call i8* @atoi(i8* %216)
  %218 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 9
  store i8* %217, i8** %219, align 8
  br label %255

220:                                              ; preds = %130
  %221 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %222 = call i8* @atoi(i8* %221)
  %223 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 8
  store i8* %222, i8** %224, align 8
  store i32 3, i32* %12, align 4
  br label %255

225:                                              ; preds = %130
  %226 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 7
  %228 = load i64, i64* %227, align 8
  %229 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %230 = call i32 @STRNCPY(i64 %228, i8* %229)
  br label %255

231:                                              ; preds = %130
  %232 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 6
  %234 = load i64, i64* %233, align 8
  %235 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %236 = call i32 @STRNCPY(i64 %234, i8* %235)
  br label %255

237:                                              ; preds = %130, %130, %130, %130
  br label %255

238:                                              ; preds = %130
  %239 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %240 = load i8, i8* %239, align 16
  %241 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 2
  store i8 %240, i8* %242, align 8
  store i32 7, i32* %12, align 4
  br label %255

243:                                              ; preds = %130
  %244 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %245 = call i8* @atoi(i8* %244)
  %246 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 5
  store i8* %245, i8** %247, align 8
  br label %255

248:                                              ; preds = %130
  %249 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %249, i32 0, i32 4
  %251 = load i64, i64* %250, align 8
  %252 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %253 = call i32 @STRNCPY(i64 %251, i8* %252)
  store i32 8, i32* %12, align 4
  br label %255

254:                                              ; preds = %130
  store i32 99, i32* %12, align 4
  br label %260

255:                                              ; preds = %248, %243, %238, %237, %231, %225, %220, %215, %210, %205, %198, %197, %180, %163, %157, %151, %145, %139, %133
  br label %256

256:                                              ; preds = %255
  %257 = load i32, i32* %11, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %11, align 4
  br label %22

259:                                              ; preds = %27
  br label %260

260:                                              ; preds = %259, %254
  %261 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i32 0, i32 3
  %263 = load i64, i64* %262, align 8
  %264 = load i32, i32* @kPasswordMagic, align 4
  %265 = load i64, i64* @kPasswordMagicLen, align 8
  %266 = call i64 @strncmp(i64 %263, i32 %264, i64 %265)
  %267 = icmp eq i64 %266, 0
  br i1 %267, label %268, label %287

268:                                              ; preds = %260
  %269 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %270 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %270, i32 0, i32 3
  %272 = load i64, i64* %271, align 8
  %273 = load i64, i64* @kPasswordMagicLen, align 8
  %274 = add nsw i64 %272, %273
  %275 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %276 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %275, i32 0, i32 3
  %277 = load i64, i64* %276, align 8
  %278 = load i64, i64* @kPasswordMagicLen, align 8
  %279 = add nsw i64 %277, %278
  %280 = call i32 @strlen(i64 %279)
  %281 = call i32 @FromBase64(i8* %269, i64 %274, i32 %280, i32 1)
  %282 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %283 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %282, i32 0, i32 3
  %284 = load i64, i64* %283, align 8
  %285 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %286 = call i32 @STRNCPY(i64 %284, i8* %285)
  br label %287

287:                                              ; preds = %268, %260
  %288 = load i32, i32* %12, align 4
  ret i32 %288
}

declare dso_local i32 @SetBookmarkDefaults(%struct.TYPE_4__*) #1

declare dso_local i32 @HexCharToNibble(i8 signext) #1

declare dso_local i32 @STRNCPY(i64, i8*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*) #1

declare dso_local i64 @strncmp(i64, i32, i64) #1

declare dso_local i32 @FromBase64(i8*, i64, i32, i32) #1

declare dso_local i32 @strlen(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
