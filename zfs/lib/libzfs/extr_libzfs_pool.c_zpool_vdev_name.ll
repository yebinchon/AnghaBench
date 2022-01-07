; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_zpool_vdev_name.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_zpool_vdev_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_BUF_LEN = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"ZPOOL_VDEV_NAME_PATH\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@VDEV_NAME_PATH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"ZPOOL_VDEV_NAME_GUID\00", align 1
@VDEV_NAME_GUID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"ZPOOL_VDEV_NAME_FOLLOW_LINKS\00", align 1
@VDEV_NAME_FOLLOW_LINKS = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_NOT_PRESENT = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_GUID = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@ZPOOL_CONFIG_PATH = common dso_local global i32 0, align 4
@VDEV_TYPE_DISK = common dso_local global i8* null, align 8
@ZPOOL_CONFIG_WHOLE_DISK = common dso_local global i32 0, align 4
@VDEV_TYPE_RAIDZ = common dso_local global i8* null, align 8
@ZPOOL_CONFIG_NPARITY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"%s%llu\00", align 1
@VDEV_NAME_TYPE_ID = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_ID = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"%s-%llu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @zpool_vdev_name(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %20 = load i32, i32* @PATH_BUF_LEN, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %14, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %15, align 8
  %24 = load i32, i32* @PATH_BUF_LEN, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %16, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* @ZPOOL_CONFIG_TYPE, align 4
  %29 = call i64 @nvlist_lookup_string(i32* %27, i32 %28, i8** %11)
  %30 = icmp eq i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @verify(i32 %31)
  %33 = load i32*, i32** %7, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %4
  %36 = load i8*, i8** %11, align 8
  %37 = call i64 @strcmp(i8* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i32*, i32** %6, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = call i8* @zpool_get_name(i32* %41)
  %43 = call i8* @zfs_strdup(i32* %40, i8* %42)
  store i8* %43, i8** %5, align 8
  store i32 1, i32* %17, align 4
  br label %217

44:                                               ; preds = %35, %4
  %45 = call i8* @getenv(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i8* %45, i8** %12, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %64

48:                                               ; preds = %44
  %49 = load i8*, i8** %12, align 8
  %50 = call i64 @strtoul(i8* %49, i32* null, i32 0)
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %48
  %53 = load i8*, i8** %12, align 8
  %54 = call i32 @strncasecmp(i8* %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i8*, i8** %12, align 8
  %58 = call i32 @strncasecmp(i8* %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 2)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %56, %52, %48
  %61 = load i32, i32* @VDEV_NAME_PATH, align 4
  %62 = load i32, i32* %9, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %60, %56, %44
  %65 = call i8* @getenv(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  store i8* %65, i8** %12, align 8
  %66 = load i8*, i8** %12, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %84

68:                                               ; preds = %64
  %69 = load i8*, i8** %12, align 8
  %70 = call i64 @strtoul(i8* %69, i32* null, i32 0)
  %71 = icmp sgt i64 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %68
  %73 = load i8*, i8** %12, align 8
  %74 = call i32 @strncasecmp(i8* %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load i8*, i8** %12, align 8
  %78 = call i32 @strncasecmp(i8* %77, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 2)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %76, %72, %68
  %81 = load i32, i32* @VDEV_NAME_GUID, align 4
  %82 = load i32, i32* %9, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %80, %76, %64
  %85 = call i8* @getenv(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  store i8* %85, i8** %12, align 8
  %86 = load i8*, i8** %12, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %104

88:                                               ; preds = %84
  %89 = load i8*, i8** %12, align 8
  %90 = call i64 @strtoul(i8* %89, i32* null, i32 0)
  %91 = icmp sgt i64 %90, 0
  br i1 %91, label %100, label %92

92:                                               ; preds = %88
  %93 = load i8*, i8** %12, align 8
  %94 = call i32 @strncasecmp(i8* %93, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = load i8*, i8** %12, align 8
  %98 = call i32 @strncasecmp(i8* %97, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 2)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %96, %92, %88
  %101 = load i32, i32* @VDEV_NAME_FOLLOW_LINKS, align 4
  %102 = load i32, i32* %9, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %9, align 4
  br label %104

104:                                              ; preds = %100, %96, %84
  %105 = load i32*, i32** %8, align 8
  %106 = load i32, i32* @ZPOOL_CONFIG_NOT_PRESENT, align 4
  %107 = call i64 @nvlist_lookup_uint64(i32* %105, i32 %106, i64* %13)
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %104
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* @VDEV_NAME_GUID, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %124

114:                                              ; preds = %109, %104
  %115 = load i32*, i32** %8, align 8
  %116 = load i32, i32* @ZPOOL_CONFIG_GUID, align 4
  %117 = call i64 @nvlist_lookup_uint64(i32* %115, i32 %116, i64* %13)
  %118 = trunc i64 %21 to i32
  %119 = load i64, i64* %13, align 8
  %120 = trunc i64 %119 to i32
  %121 = sext i32 %120 to i64
  %122 = inttoptr i64 %121 to i8*
  %123 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %23, i32 %118, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %122)
  store i8* %23, i8** %10, align 8
  br label %213

124:                                              ; preds = %109
  %125 = load i32*, i32** %8, align 8
  %126 = load i32, i32* @ZPOOL_CONFIG_PATH, align 4
  %127 = call i64 @nvlist_lookup_string(i32* %125, i32 %126, i8** %10)
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %176

129:                                              ; preds = %124
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* @VDEV_NAME_FOLLOW_LINKS, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %146

134:                                              ; preds = %129
  %135 = load i8*, i8** %10, align 8
  %136 = call i8* @realpath(i8* %135, i32* null)
  store i8* %136, i8** %18, align 8
  %137 = load i8*, i8** %18, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %139, label %145

139:                                              ; preds = %134
  %140 = load i8*, i8** %18, align 8
  %141 = trunc i64 %21 to i32
  %142 = call i32 @strlcpy(i8* %23, i8* %140, i32 %141)
  store i8* %23, i8** %10, align 8
  %143 = load i8*, i8** %18, align 8
  %144 = call i32 @free(i8* %143)
  br label %145

145:                                              ; preds = %139, %134
  br label %146

146:                                              ; preds = %145, %129
  %147 = load i8*, i8** %11, align 8
  %148 = load i8*, i8** @VDEV_TYPE_DISK, align 8
  %149 = call i64 @strcmp(i8* %147, i8* %148)
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %159

151:                                              ; preds = %146
  %152 = load i32, i32* %9, align 4
  %153 = load i32, i32* @VDEV_NAME_PATH, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %151
  %157 = load i8*, i8** %10, align 8
  %158 = call i8* @zfs_strip_path(i8* %157)
  store i8* %158, i8** %10, align 8
  br label %159

159:                                              ; preds = %156, %151, %146
  %160 = load i32*, i32** %8, align 8
  %161 = load i32, i32* @ZPOOL_CONFIG_WHOLE_DISK, align 4
  %162 = call i64 @nvlist_lookup_uint64(i32* %160, i32 %161, i64* %13)
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %164, label %175

164:                                              ; preds = %159
  %165 = load i64, i64* %13, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %175

167:                                              ; preds = %164
  %168 = load i32, i32* %9, align 4
  %169 = load i32, i32* @VDEV_NAME_PATH, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %175, label %172

172:                                              ; preds = %167
  %173 = load i8*, i8** %10, align 8
  %174 = call i8* @zfs_strip_partition(i8* %173)
  store i8* %174, i8** %5, align 8
  store i32 1, i32* %17, align 4
  br label %217

175:                                              ; preds = %167, %164, %159
  br label %212

176:                                              ; preds = %124
  %177 = load i8*, i8** %11, align 8
  store i8* %177, i8** %10, align 8
  %178 = load i8*, i8** %10, align 8
  %179 = load i8*, i8** @VDEV_TYPE_RAIDZ, align 8
  %180 = call i64 @strcmp(i8* %178, i8* %179)
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %182, label %194

182:                                              ; preds = %176
  %183 = load i32*, i32** %8, align 8
  %184 = load i32, i32* @ZPOOL_CONFIG_NPARITY, align 4
  %185 = call i64 @nvlist_lookup_uint64(i32* %183, i32 %184, i64* %13)
  %186 = icmp eq i64 %185, 0
  %187 = zext i1 %186 to i32
  %188 = call i32 @verify(i32 %187)
  %189 = trunc i64 %21 to i32
  %190 = load i8*, i8** %10, align 8
  %191 = load i64, i64* %13, align 8
  %192 = trunc i64 %191 to i32
  %193 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %23, i32 %189, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %190, i32 %192)
  store i8* %23, i8** %10, align 8
  br label %194

194:                                              ; preds = %182, %176
  %195 = load i32, i32* %9, align 4
  %196 = load i32, i32* @VDEV_NAME_TYPE_ID, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %211

199:                                              ; preds = %194
  %200 = load i32*, i32** %8, align 8
  %201 = load i32, i32* @ZPOOL_CONFIG_ID, align 4
  %202 = call i64 @nvlist_lookup_uint64(i32* %200, i32 %201, i64* %19)
  %203 = icmp eq i64 %202, 0
  %204 = zext i1 %203 to i32
  %205 = call i32 @verify(i32 %204)
  %206 = trunc i64 %25 to i32
  %207 = load i8*, i8** %10, align 8
  %208 = load i64, i64* %19, align 8
  %209 = trunc i64 %208 to i32
  %210 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %26, i32 %206, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* %207, i32 %209)
  store i8* %26, i8** %10, align 8
  br label %211

211:                                              ; preds = %199, %194
  br label %212

212:                                              ; preds = %211, %175
  br label %213

213:                                              ; preds = %212, %114
  %214 = load i32*, i32** %6, align 8
  %215 = load i8*, i8** %10, align 8
  %216 = call i8* @zfs_strdup(i32* %214, i8* %215)
  store i8* %216, i8** %5, align 8
  store i32 1, i32* %17, align 4
  br label %217

217:                                              ; preds = %213, %172, %39
  %218 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %218)
  %219 = load i8*, i8** %5, align 8
  ret i8* %219
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @verify(i32) #2

declare dso_local i64 @nvlist_lookup_string(i32*, i32, i8**) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i8* @zfs_strdup(i32*, i8*) #2

declare dso_local i8* @zpool_get_name(i32*) #2

declare dso_local i8* @getenv(i8*) #2

declare dso_local i64 @strtoul(i8*, i32*, i32) #2

declare dso_local i32 @strncasecmp(i8*, i8*, i32) #2

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i64*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i8* @realpath(i8*, i32*) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i8* @zfs_strip_path(i8*) #2

declare dso_local i8* @zfs_strip_partition(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
