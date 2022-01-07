; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_vdev_to_nvlist_iter.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_vdev_to_nvlist_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZPOOL_CONFIG_GUID = common dso_local global i8* null, align 8
@ZPOOL_CONFIG_PATH = common dso_local global i8* null, align 8
@ZPOOL_CONFIG_WHOLE_DISK = common dso_local global i8* null, align 8
@ZPOOL_CONFIG_TYPE = common dso_local global i8* null, align 8
@ZPOOL_CONFIG_ID = common dso_local global i8* null, align 8
@errno = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_CHILDREN = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_IS_LOG = common dso_local global i8* null, align 8
@B_TRUE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_SPARES = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_L2CACHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i32*, i32*)* @vdev_to_nvlist_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @vdev_to_nvlist_iter(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = call i32* @nvlist_next_nvpair(i32* %30, i32* null)
  store i32* %31, i32** %18, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %5
  %35 = load i32*, i32** %18, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %34, %5
  store i32* null, i32** %6, align 8
  br label %265

38:                                               ; preds = %34
  %39 = load i32*, i32** %18, align 8
  %40 = call i8* @nvpair_name(i32* %39)
  store i8* %40, i8** %17, align 8
  %41 = load i32*, i32** %18, align 8
  %42 = call i32 @nvpair_type(i32* %41)
  switch i32 %42, label %161 [
    i32 128, label %43
    i32 129, label %67
  ]

43:                                               ; preds = %38
  %44 = load i8*, i8** %17, align 8
  %45 = load i8*, i8** @ZPOOL_CONFIG_GUID, align 8
  %46 = call i32 @strcmp(i8* %44, i8* %45)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %66

48:                                               ; preds = %43
  %49 = load i32*, i32** %18, align 8
  %50 = call i32 @nvpair_value_uint64(i32* %49, i64* %19)
  %51 = icmp eq i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @verify(i32 %52)
  %54 = load i32*, i32** %7, align 8
  %55 = load i8*, i8** @ZPOOL_CONFIG_GUID, align 8
  %56 = call i64 @nvlist_lookup_uint64(i32* %54, i8* %55, i64* %20)
  %57 = icmp eq i64 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i32 @verify(i32 %58)
  %60 = load i64, i64* %20, align 8
  %61 = load i64, i64* %19, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %48
  %64 = load i32*, i32** %7, align 8
  store i32* %64, i32** %6, align 8
  br label %265

65:                                               ; preds = %48
  br label %66

66:                                               ; preds = %65, %43
  br label %162

67:                                               ; preds = %38
  %68 = load i32*, i32** %18, align 8
  %69 = call i32 @nvpair_value_string(i32* %68, i8** %21)
  %70 = icmp eq i32 %69, 0
  %71 = zext i1 %70 to i32
  %72 = call i32 @verify(i32 %71)
  %73 = load i32*, i32** %7, align 8
  %74 = load i8*, i8** %17, align 8
  %75 = call i32 @nvlist_lookup_string(i32* %73, i8* %74, i8** %22)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %67
  br label %162

78:                                               ; preds = %67
  %79 = load i8*, i8** %17, align 8
  %80 = load i8*, i8** @ZPOOL_CONFIG_PATH, align 8
  %81 = call i32 @strcmp(i8* %79, i8* %80)
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %78
  store i64 0, i64* %23, align 8
  %84 = load i32*, i32** %7, align 8
  %85 = load i8*, i8** @ZPOOL_CONFIG_WHOLE_DISK, align 8
  %86 = call i64 @nvlist_lookup_uint64(i32* %84, i8* %85, i64* %23)
  %87 = load i8*, i8** %21, align 8
  %88 = load i8*, i8** %22, align 8
  %89 = load i64, i64* %23, align 8
  %90 = call i32 @zfs_strcmp_pathname(i8* %87, i8* %88, i64 %89)
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %83
  %93 = load i32*, i32** %7, align 8
  store i32* %93, i32** %6, align 8
  br label %265

94:                                               ; preds = %83
  br label %153

95:                                               ; preds = %78
  %96 = load i8*, i8** %17, align 8
  %97 = load i8*, i8** @ZPOOL_CONFIG_TYPE, align 8
  %98 = call i32 @strcmp(i8* %96, i8* %97)
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %152

100:                                              ; preds = %95
  %101 = load i8*, i8** %22, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %152

103:                                              ; preds = %100
  %104 = load i8*, i8** %21, align 8
  %105 = call i8* @strdup(i8* %104)
  store i8* %105, i8** %24, align 8
  %106 = icmp eq i8* %105, null
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  store i32* null, i32** %6, align 8
  br label %265

108:                                              ; preds = %103
  %109 = load i8*, i8** %24, align 8
  %110 = call i8* @strrchr(i8* %109, i8 signext 45)
  store i8* %110, i8** %27, align 8
  %111 = icmp eq i8* %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load i8*, i8** %24, align 8
  %114 = call i32 @free(i8* %113)
  br label %162

115:                                              ; preds = %108
  %116 = load i8*, i8** %27, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 1
  store i8* %117, i8** %25, align 8
  %118 = load i8*, i8** %27, align 8
  store i8 0, i8* %118, align 1
  %119 = load i8*, i8** %22, align 8
  %120 = load i8*, i8** %24, align 8
  %121 = load i8*, i8** %22, align 8
  %122 = call i32 @strlen(i8* %121)
  %123 = call i32 @strncmp(i8* %119, i8* %120, i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %115
  %126 = load i8*, i8** %24, align 8
  %127 = call i32 @free(i8* %126)
  br label %162

128:                                              ; preds = %115
  %129 = load i8*, i8** %24, align 8
  %130 = call i32 @zpool_vdev_is_interior(i8* %129)
  %131 = call i32 @verify(i32 %130)
  %132 = load i32*, i32** %7, align 8
  %133 = load i8*, i8** @ZPOOL_CONFIG_ID, align 8
  %134 = call i64 @nvlist_lookup_uint64(i32* %132, i8* %133, i64* %28)
  %135 = icmp eq i64 %134, 0
  %136 = zext i1 %135 to i32
  %137 = call i32 @verify(i32 %136)
  store i32 0, i32* @errno, align 4
  %138 = load i8*, i8** %25, align 8
  %139 = call i64 @strtoull(i8* %138, i8** %26, i32 10)
  store i64 %139, i64* %29, align 8
  %140 = load i8*, i8** %24, align 8
  %141 = call i32 @free(i8* %140)
  %142 = load i32, i32* @errno, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %128
  store i32* null, i32** %6, align 8
  br label %265

145:                                              ; preds = %128
  %146 = load i64, i64* %29, align 8
  %147 = load i64, i64* %28, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %145
  %150 = load i32*, i32** %7, align 8
  store i32* %150, i32** %6, align 8
  br label %265

151:                                              ; preds = %145
  br label %152

152:                                              ; preds = %151, %100, %95
  br label %153

153:                                              ; preds = %152, %94
  %154 = load i8*, i8** %21, align 8
  %155 = load i8*, i8** %22, align 8
  %156 = call i32 @strcmp(i8* %154, i8* %155)
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %153
  %159 = load i32*, i32** %7, align 8
  store i32* %159, i32** %6, align 8
  br label %265

160:                                              ; preds = %153
  br label %162

161:                                              ; preds = %38
  br label %162

162:                                              ; preds = %161, %160, %125, %112, %77, %66
  %163 = load i32*, i32** %7, align 8
  %164 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %165 = call i64 @nvlist_lookup_nvlist_array(i32* %163, i32 %164, i32*** %14, i64* %13)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %162
  store i32* null, i32** %6, align 8
  br label %265

168:                                              ; preds = %162
  store i64 0, i64* %12, align 8
  br label %169

169:                                              ; preds = %203, %168
  %170 = load i64, i64* %12, align 8
  %171 = load i64, i64* %13, align 8
  %172 = icmp ult i64 %170, %171
  br i1 %172, label %173, label %206

173:                                              ; preds = %169
  %174 = load i32**, i32*** %14, align 8
  %175 = load i64, i64* %12, align 8
  %176 = getelementptr inbounds i32*, i32** %174, i64 %175
  %177 = load i32*, i32** %176, align 8
  %178 = load i32*, i32** %8, align 8
  %179 = load i32*, i32** %9, align 8
  %180 = load i32*, i32** %10, align 8
  %181 = call i32* @vdev_to_nvlist_iter(i32* %177, i32* %178, i32* %179, i32* %180, i32* null)
  store i32* %181, i32** %15, align 8
  %182 = icmp ne i32* %181, null
  br i1 %182, label %183, label %202

183:                                              ; preds = %173
  %184 = load i32*, i32** %11, align 8
  %185 = icmp ne i32* %184, null
  br i1 %185, label %186, label %200

186:                                              ; preds = %183
  %187 = load i32**, i32*** %14, align 8
  %188 = load i64, i64* %12, align 8
  %189 = getelementptr inbounds i32*, i32** %187, i64 %188
  %190 = load i32*, i32** %189, align 8
  %191 = load i8*, i8** @ZPOOL_CONFIG_IS_LOG, align 8
  %192 = call i64 @nvlist_lookup_uint64(i32* %190, i8* %191, i64* %16)
  %193 = icmp eq i64 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %186
  %195 = load i64, i64* %16, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %194
  %198 = load i32, i32* @B_TRUE, align 4
  %199 = load i32*, i32** %11, align 8
  store i32 %198, i32* %199, align 4
  br label %200

200:                                              ; preds = %197, %194, %186, %183
  %201 = load i32*, i32** %15, align 8
  store i32* %201, i32** %6, align 8
  br label %265

202:                                              ; preds = %173
  br label %203

203:                                              ; preds = %202
  %204 = load i64, i64* %12, align 8
  %205 = add i64 %204, 1
  store i64 %205, i64* %12, align 8
  br label %169

206:                                              ; preds = %169
  %207 = load i32*, i32** %7, align 8
  %208 = load i32, i32* @ZPOOL_CONFIG_SPARES, align 4
  %209 = call i64 @nvlist_lookup_nvlist_array(i32* %207, i32 %208, i32*** %14, i64* %13)
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %211, label %235

211:                                              ; preds = %206
  store i64 0, i64* %12, align 8
  br label %212

212:                                              ; preds = %231, %211
  %213 = load i64, i64* %12, align 8
  %214 = load i64, i64* %13, align 8
  %215 = icmp ult i64 %213, %214
  br i1 %215, label %216, label %234

216:                                              ; preds = %212
  %217 = load i32**, i32*** %14, align 8
  %218 = load i64, i64* %12, align 8
  %219 = getelementptr inbounds i32*, i32** %217, i64 %218
  %220 = load i32*, i32** %219, align 8
  %221 = load i32*, i32** %8, align 8
  %222 = load i32*, i32** %9, align 8
  %223 = load i32*, i32** %10, align 8
  %224 = call i32* @vdev_to_nvlist_iter(i32* %220, i32* %221, i32* %222, i32* %223, i32* null)
  store i32* %224, i32** %15, align 8
  %225 = icmp ne i32* %224, null
  br i1 %225, label %226, label %230

226:                                              ; preds = %216
  %227 = load i32, i32* @B_TRUE, align 4
  %228 = load i32*, i32** %9, align 8
  store i32 %227, i32* %228, align 4
  %229 = load i32*, i32** %15, align 8
  store i32* %229, i32** %6, align 8
  br label %265

230:                                              ; preds = %216
  br label %231

231:                                              ; preds = %230
  %232 = load i64, i64* %12, align 8
  %233 = add i64 %232, 1
  store i64 %233, i64* %12, align 8
  br label %212

234:                                              ; preds = %212
  br label %235

235:                                              ; preds = %234, %206
  %236 = load i32*, i32** %7, align 8
  %237 = load i32, i32* @ZPOOL_CONFIG_L2CACHE, align 4
  %238 = call i64 @nvlist_lookup_nvlist_array(i32* %236, i32 %237, i32*** %14, i64* %13)
  %239 = icmp eq i64 %238, 0
  br i1 %239, label %240, label %264

240:                                              ; preds = %235
  store i64 0, i64* %12, align 8
  br label %241

241:                                              ; preds = %260, %240
  %242 = load i64, i64* %12, align 8
  %243 = load i64, i64* %13, align 8
  %244 = icmp ult i64 %242, %243
  br i1 %244, label %245, label %263

245:                                              ; preds = %241
  %246 = load i32**, i32*** %14, align 8
  %247 = load i64, i64* %12, align 8
  %248 = getelementptr inbounds i32*, i32** %246, i64 %247
  %249 = load i32*, i32** %248, align 8
  %250 = load i32*, i32** %8, align 8
  %251 = load i32*, i32** %9, align 8
  %252 = load i32*, i32** %10, align 8
  %253 = call i32* @vdev_to_nvlist_iter(i32* %249, i32* %250, i32* %251, i32* %252, i32* null)
  store i32* %253, i32** %15, align 8
  %254 = icmp ne i32* %253, null
  br i1 %254, label %255, label %259

255:                                              ; preds = %245
  %256 = load i32, i32* @B_TRUE, align 4
  %257 = load i32*, i32** %10, align 8
  store i32 %256, i32* %257, align 4
  %258 = load i32*, i32** %15, align 8
  store i32* %258, i32** %6, align 8
  br label %265

259:                                              ; preds = %245
  br label %260

260:                                              ; preds = %259
  %261 = load i64, i64* %12, align 8
  %262 = add i64 %261, 1
  store i64 %262, i64* %12, align 8
  br label %241

263:                                              ; preds = %241
  br label %264

264:                                              ; preds = %263, %235
  store i32* null, i32** %6, align 8
  br label %265

265:                                              ; preds = %264, %255, %226, %200, %167, %158, %149, %144, %107, %92, %63, %37
  %266 = load i32*, i32** %6, align 8
  ret i32* %266
}

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i8* @nvpair_name(i32*) #1

declare dso_local i32 @nvpair_type(i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @verify(i32) #1

declare dso_local i32 @nvpair_value_uint64(i32*, i64*) #1

declare dso_local i64 @nvlist_lookup_uint64(i32*, i8*, i64*) #1

declare dso_local i32 @nvpair_value_string(i32*, i8**) #1

declare dso_local i32 @nvlist_lookup_string(i32*, i8*, i8**) #1

declare dso_local i32 @zfs_strcmp_pathname(i8*, i8*, i64) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @zpool_vdev_is_interior(i8*) #1

declare dso_local i64 @strtoull(i8*, i8**, i32) #1

declare dso_local i64 @nvlist_lookup_nvlist_array(i32*, i32, i32***, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
