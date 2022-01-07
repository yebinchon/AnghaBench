; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_vdev.c_make_disks.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_vdev.c_make_disks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat64 = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_TYPE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_CHILDREN = common dso_local global i32 0, align 4
@VDEV_TYPE_DISK = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_PATH = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_WHOLE_DISK = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"cannot resolve path '%s'\0A\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@UDISK_ROOT = common dso_local global i32 0, align 4
@g_zfs = common dso_local global i32 0, align 4
@DISK_LABEL_WAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"missing link: %s was partitioned but %s is missing\0A\00", align 1
@ZPOOL_CONFIG_SPARES = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_L2CACHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @make_disks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_disks(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.stat64, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %21 = load i32, i32* @MAXPATHLEN, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %11, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %12, align 8
  %25 = load i32, i32* @MAXPATHLEN, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %13, align 8
  store i32 0, i32* %16, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* @ZPOOL_CONFIG_TYPE, align 4
  %30 = call i64 @nvlist_lookup_string(i32* %28, i32 %29, i8** %9)
  %31 = icmp eq i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @verify(i32 %32)
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %36 = call i64 @nvlist_lookup_nvlist_array(i32* %34, i32 %35, i32*** %6, i64* %8)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %169

38:                                               ; preds = %2
  %39 = load i8*, i8** %9, align 8
  %40 = load i32, i32* @VDEV_TYPE_DISK, align 4
  %41 = call i64 @strcmp(i8* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %239

44:                                               ; preds = %38
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* @ZPOOL_CONFIG_PATH, align 4
  %47 = call i64 @nvlist_lookup_string(i32* %45, i32 %46, i8** %10)
  %48 = icmp ne i64 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i32 @verify(i32 %50)
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* @ZPOOL_CONFIG_WHOLE_DISK, align 4
  %54 = call i32 @nvlist_lookup_uint64(i32* %52, i32 %53, i32* %14)
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i32 @verify(i32 %57)
  %59 = load i32, i32* %14, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %76, label %61

61:                                               ; preds = %44
  %62 = load i8*, i8** %10, align 8
  %63 = call i64 @is_mpath_whole_disk(i8* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i32*, i32** %5, align 8
  %67 = call i32 @update_vdev_config_dev_strs(i32* %66)
  br label %68

68:                                               ; preds = %65, %61
  %69 = load i8*, i8** %10, align 8
  %70 = call i32 @is_spare(i32* null, i8* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %68
  %73 = load i8*, i8** %10, align 8
  %74 = call i32 @zero_label(i8* %73)
  br label %75

75:                                               ; preds = %72, %68
  store i32 0, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %239

76:                                               ; preds = %44
  %77 = load i8*, i8** %10, align 8
  %78 = call i32* @realpath(i8* %77, i8* %24)
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %87

80:                                               ; preds = %76
  %81 = load i32, i32* @errno, align 4
  store i32 %81, i32* %18, align 4
  %82 = load i32, i32* @stderr, align 4
  %83 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %84 = load i8*, i8** %10, align 8
  %85 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %82, i8* %83, i8* %84)
  %86 = load i32, i32* %18, align 4
  store i32 %86, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %239

87:                                               ; preds = %76
  %88 = load i8*, i8** %10, align 8
  %89 = load i32, i32* @MAXPATHLEN, align 4
  %90 = call i32 @strlcpy(i8* %27, i8* %88, i32 %89)
  %91 = load i32, i32* @MAXPATHLEN, align 4
  %92 = call i32 @zfs_append_partition(i8* %27, i32 %91)
  %93 = load i32, i32* @O_RDWR, align 4
  %94 = load i32, i32* @O_EXCL, align 4
  %95 = or i32 %93, %94
  %96 = call i32 @open(i8* %24, i32 %95)
  store i32 %96, i32* %17, align 4
  %97 = load i32, i32* %17, align 4
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %99, label %105

99:                                               ; preds = %87
  %100 = load i32, i32* @errno, align 4
  %101 = load i32, i32* @EBUSY, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  store i32 1, i32* %16, align 4
  br label %104

104:                                              ; preds = %103, %99
  br label %108

105:                                              ; preds = %87
  %106 = load i32, i32* %17, align 4
  %107 = call i32 @close(i32 %106)
  br label %108

108:                                              ; preds = %105, %104
  %109 = load i32, i32* %16, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %160, label %111

111:                                              ; preds = %108
  %112 = call i32 @is_spare(i32* null, i8* %27)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %160, label %114

114:                                              ; preds = %111
  %115 = call i8* @strrchr(i8* %24, i8 signext 47)
  %116 = getelementptr inbounds i8, i8* %115, i64 1
  store i8* %116, i8** %20, align 8
  %117 = load i32, i32* @UDISK_ROOT, align 4
  %118 = load i32, i32* @UDISK_ROOT, align 4
  %119 = call i32 @strlen(i32 %118)
  %120 = call i32 @strncmp(i8* %27, i32 %117, i32 %119)
  store i32 %120, i32* %18, align 4
  %121 = load i32, i32* %18, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %135

123:                                              ; preds = %114
  %124 = call i32 @lstat64(i8* %27, %struct.stat64* %15)
  store i32 %124, i32* %18, align 4
  %125 = load i32, i32* %18, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.stat64, %struct.stat64* %15, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i64 @S_ISLNK(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %127
  %133 = call i32 @unlink(i8* %27)
  br label %134

134:                                              ; preds = %132, %127, %123
  br label %135

135:                                              ; preds = %134, %114
  %136 = load i32, i32* @g_zfs, align 4
  %137 = load i32*, i32** %4, align 8
  %138 = load i8*, i8** %20, align 8
  %139 = call i32 @zpool_label_disk(i32 %136, i32* %137, i8* %138)
  %140 = icmp eq i32 %139, -1
  br i1 %140, label %141, label %142

141:                                              ; preds = %135
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %239

142:                                              ; preds = %135
  %143 = load i32, i32* @DISK_LABEL_WAIT, align 4
  %144 = call i32 @zpool_label_disk_wait(i8* %27, i32 %143)
  store i32 %144, i32* %18, align 4
  %145 = load i32, i32* %18, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %142
  %148 = load i32, i32* @stderr, align 4
  %149 = call i8* @gettext(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %150 = load i8*, i8** %20, align 8
  %151 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %148, i8* %149, i8* %150, i8* %27)
  %152 = load i32, i32* %18, align 4
  store i32 %152, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %239

153:                                              ; preds = %142
  %154 = call i32 @zero_label(i8* %27)
  store i32 %154, i32* %18, align 4
  %155 = load i32, i32* %18, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %153
  %158 = load i32, i32* %18, align 4
  store i32 %158, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %239

159:                                              ; preds = %153
  br label %160

160:                                              ; preds = %159, %111, %108
  %161 = load i32*, i32** %5, align 8
  %162 = load i32, i32* @ZPOOL_CONFIG_PATH, align 4
  %163 = call i64 @nvlist_add_string(i32* %161, i32 %162, i8* %27)
  %164 = icmp eq i64 %163, 0
  %165 = zext i1 %164 to i32
  %166 = call i32 @verify(i32 %165)
  %167 = load i32*, i32** %5, align 8
  %168 = call i32 @update_vdev_config_dev_strs(i32* %167)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %239

169:                                              ; preds = %2
  store i64 0, i64* %7, align 8
  br label %170

170:                                              ; preds = %185, %169
  %171 = load i64, i64* %7, align 8
  %172 = load i64, i64* %8, align 8
  %173 = icmp ult i64 %171, %172
  br i1 %173, label %174, label %188

174:                                              ; preds = %170
  %175 = load i32*, i32** %4, align 8
  %176 = load i32**, i32*** %6, align 8
  %177 = load i64, i64* %7, align 8
  %178 = getelementptr inbounds i32*, i32** %176, i64 %177
  %179 = load i32*, i32** %178, align 8
  %180 = call i32 @make_disks(i32* %175, i32* %179)
  store i32 %180, i32* %18, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %174
  %183 = load i32, i32* %18, align 4
  store i32 %183, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %239

184:                                              ; preds = %174
  br label %185

185:                                              ; preds = %184
  %186 = load i64, i64* %7, align 8
  %187 = add i64 %186, 1
  store i64 %187, i64* %7, align 8
  br label %170

188:                                              ; preds = %170
  %189 = load i32*, i32** %5, align 8
  %190 = load i32, i32* @ZPOOL_CONFIG_SPARES, align 4
  %191 = call i64 @nvlist_lookup_nvlist_array(i32* %189, i32 %190, i32*** %6, i64* %8)
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %193, label %213

193:                                              ; preds = %188
  store i64 0, i64* %7, align 8
  br label %194

194:                                              ; preds = %209, %193
  %195 = load i64, i64* %7, align 8
  %196 = load i64, i64* %8, align 8
  %197 = icmp ult i64 %195, %196
  br i1 %197, label %198, label %212

198:                                              ; preds = %194
  %199 = load i32*, i32** %4, align 8
  %200 = load i32**, i32*** %6, align 8
  %201 = load i64, i64* %7, align 8
  %202 = getelementptr inbounds i32*, i32** %200, i64 %201
  %203 = load i32*, i32** %202, align 8
  %204 = call i32 @make_disks(i32* %199, i32* %203)
  store i32 %204, i32* %18, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %198
  %207 = load i32, i32* %18, align 4
  store i32 %207, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %239

208:                                              ; preds = %198
  br label %209

209:                                              ; preds = %208
  %210 = load i64, i64* %7, align 8
  %211 = add i64 %210, 1
  store i64 %211, i64* %7, align 8
  br label %194

212:                                              ; preds = %194
  br label %213

213:                                              ; preds = %212, %188
  %214 = load i32*, i32** %5, align 8
  %215 = load i32, i32* @ZPOOL_CONFIG_L2CACHE, align 4
  %216 = call i64 @nvlist_lookup_nvlist_array(i32* %214, i32 %215, i32*** %6, i64* %8)
  %217 = icmp eq i64 %216, 0
  br i1 %217, label %218, label %238

218:                                              ; preds = %213
  store i64 0, i64* %7, align 8
  br label %219

219:                                              ; preds = %234, %218
  %220 = load i64, i64* %7, align 8
  %221 = load i64, i64* %8, align 8
  %222 = icmp ult i64 %220, %221
  br i1 %222, label %223, label %237

223:                                              ; preds = %219
  %224 = load i32*, i32** %4, align 8
  %225 = load i32**, i32*** %6, align 8
  %226 = load i64, i64* %7, align 8
  %227 = getelementptr inbounds i32*, i32** %225, i64 %226
  %228 = load i32*, i32** %227, align 8
  %229 = call i32 @make_disks(i32* %224, i32* %228)
  store i32 %229, i32* %18, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %223
  %232 = load i32, i32* %18, align 4
  store i32 %232, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %239

233:                                              ; preds = %223
  br label %234

234:                                              ; preds = %233
  %235 = load i64, i64* %7, align 8
  %236 = add i64 %235, 1
  store i64 %236, i64* %7, align 8
  br label %219

237:                                              ; preds = %219
  br label %238

238:                                              ; preds = %237, %213
  store i32 0, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %239

239:                                              ; preds = %238, %231, %206, %182, %160, %157, %147, %141, %80, %75, %43
  %240 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %240)
  %241 = load i32, i32* %3, align 4
  ret i32 %241
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @verify(i32) #2

declare dso_local i64 @nvlist_lookup_string(i32*, i32, i8**) #2

declare dso_local i64 @nvlist_lookup_nvlist_array(i32*, i32, i32***, i64*) #2

declare dso_local i64 @strcmp(i8*, i32) #2

declare dso_local i32 @nvlist_lookup_uint64(i32*, i32, i32*) #2

declare dso_local i64 @is_mpath_whole_disk(i8*) #2

declare dso_local i32 @update_vdev_config_dev_strs(i32*) #2

declare dso_local i32 @is_spare(i32*, i8*) #2

declare dso_local i32 @zero_label(i8*) #2

declare dso_local i32* @realpath(i8*, i8*) #2

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #2

declare dso_local i8* @gettext(i8*) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @zfs_append_partition(i8*, i32) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @strncmp(i8*, i32, i32) #2

declare dso_local i32 @strlen(i32) #2

declare dso_local i32 @lstat64(i8*, %struct.stat64*) #2

declare dso_local i64 @S_ISLNK(i32) #2

declare dso_local i32 @unlink(i8*) #2

declare dso_local i32 @zpool_label_disk(i32, i32*, i8*) #2

declare dso_local i32 @zpool_label_disk_wait(i8*, i32) #2

declare dso_local i64 @nvlist_add_string(i32*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
