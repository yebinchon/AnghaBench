; ModuleID = '/home/carl/AnghaBench/rufus/src/syslinux/libfat/extr_dumpdir.c_libfat_dumpdir.c'
source_filename = "/home/carl/AnghaBench/rufus/src/syslinux/libfat/extr_dumpdir.c_libfat_dumpdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libfat_filesystem = type { i32 }
%struct.TYPE_5__ = type { i64, i64, i32 }
%struct.TYPE_6__ = type { i8*, i32, i32 }
%struct.fat_dirent = type { i32, i32*, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libfat_dumpdir(%struct.libfat_filesystem* %0, %struct.TYPE_5__* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.libfat_filesystem*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fat_dirent*, align 8
  store %struct.libfat_filesystem* %0, %struct.libfat_filesystem** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @memset(i8* %13, i32 0, i32 8)
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 2
  store i32 0, i32* %16, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  store i32 0, i32* %18, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %49

23:                                               ; preds = %3
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %5, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @libfat_clustertosector(%struct.libfat_filesystem* %26, i32 %29)
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %23
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, -1
  br i1 %41, label %42, label %43

42:                                               ; preds = %37, %23
  store i32 -1, i32* %4, align 4
  br label %328

43:                                               ; preds = %37
  %44 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %5, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call %struct.fat_dirent* @libfat_get_sector(%struct.libfat_filesystem* %44, i64 %47)
  store %struct.fat_dirent* %48, %struct.fat_dirent** %10, align 8
  br label %56

49:                                               ; preds = %3
  %50 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %5, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = call %struct.fat_dirent* @get_next_dirent(%struct.libfat_filesystem* %50, i64* %52, i64* %54)
  store %struct.fat_dirent* %55, %struct.fat_dirent** %10, align 8
  br label %56

56:                                               ; preds = %49, %43
  %57 = load %struct.fat_dirent*, %struct.fat_dirent** %10, align 8
  %58 = icmp ne %struct.fat_dirent* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  store i32 -1, i32* %4, align 4
  br label %328

60:                                               ; preds = %56
  br label %61

61:                                               ; preds = %117, %60
  %62 = load %struct.fat_dirent*, %struct.fat_dirent** %10, align 8
  %63 = getelementptr inbounds %struct.fat_dirent, %struct.fat_dirent* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, 8
  br i1 %65, label %105, label %66

66:                                               ; preds = %61
  %67 = load %struct.fat_dirent*, %struct.fat_dirent** %10, align 8
  %68 = getelementptr inbounds %struct.fat_dirent, %struct.fat_dirent* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 229
  br i1 %72, label %105, label %73

73:                                               ; preds = %66
  %74 = load %struct.fat_dirent*, %struct.fat_dirent** %10, align 8
  %75 = getelementptr inbounds %struct.fat_dirent, %struct.fat_dirent* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 46
  br i1 %79, label %80, label %103

80:                                               ; preds = %73
  %81 = load %struct.fat_dirent*, %struct.fat_dirent** %10, align 8
  %82 = getelementptr inbounds %struct.fat_dirent, %struct.fat_dirent* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 2
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 32
  br i1 %86, label %87, label %103

87:                                               ; preds = %80
  %88 = load %struct.fat_dirent*, %struct.fat_dirent** %10, align 8
  %89 = getelementptr inbounds %struct.fat_dirent, %struct.fat_dirent* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 32
  br i1 %93, label %101, label %94

94:                                               ; preds = %87
  %95 = load %struct.fat_dirent*, %struct.fat_dirent** %10, align 8
  %96 = getelementptr inbounds %struct.fat_dirent, %struct.fat_dirent* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %99, 46
  br label %101

101:                                              ; preds = %94, %87
  %102 = phi i1 [ true, %87 ], [ %100, %94 ]
  br label %103

103:                                              ; preds = %101, %80, %73
  %104 = phi i1 [ false, %80 ], [ false, %73 ], [ %102, %101 ]
  br label %105

105:                                              ; preds = %103, %66, %61
  %106 = phi i1 [ true, %66 ], [ true, %61 ], [ %104, %103 ]
  br i1 %106, label %107, label %118

107:                                              ; preds = %105
  %108 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %5, align 8
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = call %struct.fat_dirent* @get_next_dirent(%struct.libfat_filesystem* %108, i64* %110, i64* %112)
  store %struct.fat_dirent* %113, %struct.fat_dirent** %10, align 8
  %114 = load %struct.fat_dirent*, %struct.fat_dirent** %10, align 8
  %115 = icmp ne %struct.fat_dirent* %114, null
  br i1 %115, label %117, label %116

116:                                              ; preds = %107
  store i32 -1, i32* %4, align 4
  br label %328

117:                                              ; preds = %107
  br label %61

118:                                              ; preds = %105
  %119 = load %struct.fat_dirent*, %struct.fat_dirent** %10, align 8
  %120 = getelementptr inbounds %struct.fat_dirent, %struct.fat_dirent* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  %123 = load i32, i32* %122, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %118
  store i32 -2, i32* %4, align 4
  br label %328

126:                                              ; preds = %118
  store i32 -1, i32* %9, align 4
  br label %127

127:                                              ; preds = %179, %126
  %128 = load %struct.fat_dirent*, %struct.fat_dirent** %10, align 8
  %129 = getelementptr inbounds %struct.fat_dirent, %struct.fat_dirent* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp eq i32 %130, 15
  br i1 %131, label %132, label %180

132:                                              ; preds = %127
  %133 = load %struct.fat_dirent*, %struct.fat_dirent** %10, align 8
  %134 = getelementptr inbounds %struct.fat_dirent, %struct.fat_dirent* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %8, align 4
  %138 = load i32, i32* %9, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %132
  %141 = load i32, i32* %8, align 4
  %142 = and i32 %141, 240
  %143 = icmp ne i32 %142, 64
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  br label %180

145:                                              ; preds = %140, %132
  %146 = load i32, i32* %8, align 4
  %147 = and i32 %146, 15
  %148 = sub nsw i32 %147, 1
  store i32 %148, i32* %8, align 4
  %149 = load i32, i32* %9, align 4
  %150 = icmp sge i32 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %145
  %152 = load i32, i32* %8, align 4
  %153 = load i32, i32* %9, align 4
  %154 = sub nsw i32 %153, 1
  %155 = icmp ne i32 %152, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %151
  store i32 -3, i32* %4, align 4
  br label %328

157:                                              ; preds = %151, %145
  %158 = load i32, i32* %8, align 4
  store i32 %158, i32* %9, align 4
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  %162 = load i32, i32* %8, align 4
  %163 = mul nsw i32 13, %162
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8, i8* %161, i64 %164
  %166 = load %struct.fat_dirent*, %struct.fat_dirent** %10, align 8
  %167 = getelementptr inbounds %struct.fat_dirent, %struct.fat_dirent* %166, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = call i32 @fill_utf16(i8* %165, i32* %168)
  %170 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %5, align 8
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 1
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 0
  %175 = call %struct.fat_dirent* @get_next_dirent(%struct.libfat_filesystem* %170, i64* %172, i64* %174)
  store %struct.fat_dirent* %175, %struct.fat_dirent** %10, align 8
  %176 = load %struct.fat_dirent*, %struct.fat_dirent** %10, align 8
  %177 = icmp ne %struct.fat_dirent* %176, null
  br i1 %177, label %179, label %178

178:                                              ; preds = %157
  store i32 -1, i32* %4, align 4
  br label %328

179:                                              ; preds = %157
  br label %127

180:                                              ; preds = %144, %127
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 0
  %183 = load i8*, i8** %182, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 0
  %185 = load i8, i8* %184, align 1
  %186 = sext i8 %185 to i32
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %308

188:                                              ; preds = %180
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %189

189:                                              ; preds = %304, %188
  %190 = load i32, i32* %8, align 4
  %191 = icmp slt i32 %190, 12
  br i1 %191, label %192, label %307

192:                                              ; preds = %189
  %193 = load i32, i32* %8, align 4
  %194 = icmp sge i32 %193, 8
  br i1 %194, label %195, label %205

195:                                              ; preds = %192
  %196 = load %struct.fat_dirent*, %struct.fat_dirent** %10, align 8
  %197 = getelementptr inbounds %struct.fat_dirent, %struct.fat_dirent* %196, i32 0, i32 1
  %198 = load i32*, i32** %197, align 8
  %199 = load i32, i32* %8, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = icmp eq i32 %202, 32
  br i1 %203, label %204, label %205

204:                                              ; preds = %195
  br label %307

205:                                              ; preds = %195, %192
  %206 = load i32, i32* %8, align 4
  %207 = icmp eq i32 %206, 8
  br i1 %207, label %208, label %216

208:                                              ; preds = %205
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 0
  %211 = load i8*, i8** %210, align 8
  %212 = load i32, i32* %9, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %9, align 4
  %214 = sext i32 %212 to i64
  %215 = getelementptr inbounds i8, i8* %211, i64 %214
  store i8 46, i8* %215, align 1
  br label %216

216:                                              ; preds = %208, %205
  %217 = load %struct.fat_dirent*, %struct.fat_dirent** %10, align 8
  %218 = getelementptr inbounds %struct.fat_dirent, %struct.fat_dirent* %217, i32 0, i32 1
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* %8, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = icmp eq i32 %223, 32
  br i1 %224, label %225, label %226

225:                                              ; preds = %216
  br label %304

226:                                              ; preds = %216
  %227 = load %struct.fat_dirent*, %struct.fat_dirent** %10, align 8
  %228 = getelementptr inbounds %struct.fat_dirent, %struct.fat_dirent* %227, i32 0, i32 1
  %229 = load i32*, i32** %228, align 8
  %230 = load i32, i32* %8, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %229, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = trunc i32 %233 to i8
  %235 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 0
  %237 = load i8*, i8** %236, align 8
  %238 = load i32, i32* %9, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i8, i8* %237, i64 %239
  store i8 %234, i8* %240, align 1
  %241 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 0
  %243 = load i8*, i8** %242, align 8
  %244 = load i32, i32* %9, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i8, i8* %243, i64 %245
  %247 = load i8, i8* %246, align 1
  %248 = sext i8 %247 to i32
  %249 = icmp sge i32 %248, 65
  br i1 %249, label %250, label %301

250:                                              ; preds = %226
  %251 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 0
  %253 = load i8*, i8** %252, align 8
  %254 = load i32, i32* %9, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i8, i8* %253, i64 %255
  %257 = load i8, i8* %256, align 1
  %258 = sext i8 %257 to i32
  %259 = icmp sle i32 %258, 90
  br i1 %259, label %260, label %301

260:                                              ; preds = %250
  %261 = load %struct.fat_dirent*, %struct.fat_dirent** %10, align 8
  %262 = getelementptr inbounds %struct.fat_dirent, %struct.fat_dirent* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 8
  %264 = and i32 %263, 2
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %280

266:                                              ; preds = %260
  %267 = load i32, i32* %8, align 4
  %268 = icmp slt i32 %267, 8
  br i1 %268, label %269, label %280

269:                                              ; preds = %266
  %270 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %271 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %270, i32 0, i32 0
  %272 = load i8*, i8** %271, align 8
  %273 = load i32, i32* %9, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i8, i8* %272, i64 %274
  %276 = load i8, i8* %275, align 1
  %277 = sext i8 %276 to i32
  %278 = add nsw i32 %277, 32
  %279 = trunc i32 %278 to i8
  store i8 %279, i8* %275, align 1
  br label %280

280:                                              ; preds = %269, %266, %260
  %281 = load %struct.fat_dirent*, %struct.fat_dirent** %10, align 8
  %282 = getelementptr inbounds %struct.fat_dirent, %struct.fat_dirent* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 8
  %284 = and i32 %283, 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %300

286:                                              ; preds = %280
  %287 = load i32, i32* %8, align 4
  %288 = icmp sge i32 %287, 8
  br i1 %288, label %289, label %300

289:                                              ; preds = %286
  %290 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %291 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %290, i32 0, i32 0
  %292 = load i8*, i8** %291, align 8
  %293 = load i32, i32* %9, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i8, i8* %292, i64 %294
  %296 = load i8, i8* %295, align 1
  %297 = sext i8 %296 to i32
  %298 = add nsw i32 %297, 32
  %299 = trunc i32 %298 to i8
  store i8 %299, i8* %295, align 1
  br label %300

300:                                              ; preds = %289, %286, %280
  br label %301

301:                                              ; preds = %300, %250, %226
  %302 = load i32, i32* %9, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %9, align 4
  br label %304

304:                                              ; preds = %301, %225
  %305 = load i32, i32* %8, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %8, align 4
  br label %189

307:                                              ; preds = %204, %189
  br label %308

308:                                              ; preds = %307, %180
  %309 = load %struct.fat_dirent*, %struct.fat_dirent** %10, align 8
  %310 = getelementptr inbounds %struct.fat_dirent, %struct.fat_dirent* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = and i32 %311, 55
  %313 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %314 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %313, i32 0, i32 1
  store i32 %312, i32* %314, align 8
  %315 = load %struct.fat_dirent*, %struct.fat_dirent** %10, align 8
  %316 = getelementptr inbounds %struct.fat_dirent, %struct.fat_dirent* %315, i32 0, i32 5
  %317 = call i32 @read32(i32* %316)
  %318 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %319 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %318, i32 0, i32 2
  store i32 %317, i32* %319, align 4
  %320 = load %struct.fat_dirent*, %struct.fat_dirent** %10, align 8
  %321 = getelementptr inbounds %struct.fat_dirent, %struct.fat_dirent* %320, i32 0, i32 4
  %322 = call i32 @read16(i32* %321)
  %323 = load %struct.fat_dirent*, %struct.fat_dirent** %10, align 8
  %324 = getelementptr inbounds %struct.fat_dirent, %struct.fat_dirent* %323, i32 0, i32 3
  %325 = call i32 @read16(i32* %324)
  %326 = shl i32 %325, 16
  %327 = add nsw i32 %322, %326
  store i32 %327, i32* %4, align 4
  br label %328

328:                                              ; preds = %308, %178, %156, %125, %116, %59, %42
  %329 = load i32, i32* %4, align 4
  ret i32 %329
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @libfat_clustertosector(%struct.libfat_filesystem*, i32) #1

declare dso_local %struct.fat_dirent* @libfat_get_sector(%struct.libfat_filesystem*, i64) #1

declare dso_local %struct.fat_dirent* @get_next_dirent(%struct.libfat_filesystem*, i64*, i64*) #1

declare dso_local i32 @fill_utf16(i8*, i32*) #1

declare dso_local i32 @read32(i32*) #1

declare dso_local i32 @read16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
