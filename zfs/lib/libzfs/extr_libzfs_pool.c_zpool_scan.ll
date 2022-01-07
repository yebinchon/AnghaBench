; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_zpool_scan.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_zpool_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32, i64, i64 }
%struct.TYPE_6__ = type { i32, i32, i32* }
%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@__const.zpool_scan.zc = private unnamed_addr constant %struct.TYPE_7__ { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i32 0, i64 0, i64 0 }, align 8
@ZFS_IOC_POOL_SCAN = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ECANCELED = common dso_local global i32 0, align 4
@POOL_SCAN_SCRUB = common dso_local global i64 0, align 8
@POOL_SCRUB_NORMAL = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@POOL_SCAN_NONE = common dso_local global i64 0, align 8
@POOL_SCRUB_PAUSE = common dso_local global i64 0, align 8
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"cannot pause scrubbing %s\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"cannot scrub %s\00", align 1
@POOL_SCAN_RESILVER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"cannot restart resilver on %s\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"cannot cancel scrubbing %s\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"unexpected result\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_VDEV_TREE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_SCAN_STATS = common dso_local global i32 0, align 4
@EZFS_SCRUB_PAUSED = common dso_local global i32 0, align 4
@EZFS_SCRUBBING = common dso_local global i32 0, align 4
@EZFS_RESILVERING = common dso_local global i32 0, align 4
@EZFS_NO_SCRUB = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@EZFS_NO_RESILVER_DEFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_scan(%struct.TYPE_6__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__, align 8
  %9 = alloca [1024 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = bitcast %struct.TYPE_7__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 bitcast (%struct.TYPE_7__* @__const.zpool_scan.zc to i8*), i64 32, i1 false)
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %11, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @strlcpy(i32 %20, i32 %23, i32 4)
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 3
  store i64 %25, i64* %26, align 8
  %27 = load i64, i64* %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  store i64 %27, i64* %28, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = load i32, i32* @ZFS_IOC_POOL_SCAN, align 4
  %31 = call i64 @zfs_ioctl(i32* %29, i32 %30, %struct.TYPE_7__* %8)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %191

34:                                               ; preds = %3
  %35 = load i32, i32* @errno, align 4
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @ECANCELED, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* @POOL_SCAN_SCRUB, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* @POOL_SCRUB_NORMAL, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %191

48:                                               ; preds = %43, %39, %34
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @ENOENT, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %48
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* @POOL_SCAN_NONE, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* @POOL_SCRUB_NORMAL, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %191

61:                                               ; preds = %56, %52, %48
  %62 = load i64, i64* %6, align 8
  %63 = load i64, i64* @POOL_SCAN_SCRUB, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %89

65:                                               ; preds = %61
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* @POOL_SCRUB_PAUSE, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %65
  %70 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %71 = load i32, i32* @TEXT_DOMAIN, align 4
  %72 = call i8* @dgettext(i32 %71, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @snprintf(i8* %70, i32 1024, i8* %72, i32 %74)
  br label %88

76:                                               ; preds = %65
  %77 = load i64, i64* %7, align 8
  %78 = load i64, i64* @POOL_SCRUB_NORMAL, align 8
  %79 = icmp eq i64 %77, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %83 = load i32, i32* @TEXT_DOMAIN, align 4
  %84 = call i8* @dgettext(i32 %83, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @snprintf(i8* %82, i32 1024, i8* %84, i32 %86)
  br label %88

88:                                               ; preds = %76, %69
  br label %120

89:                                               ; preds = %61
  %90 = load i64, i64* %6, align 8
  %91 = load i64, i64* @POOL_SCAN_RESILVER, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %105

93:                                               ; preds = %89
  %94 = load i64, i64* %7, align 8
  %95 = load i64, i64* @POOL_SCRUB_NORMAL, align 8
  %96 = icmp eq i64 %94, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 @assert(i32 %97)
  %99 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %100 = load i32, i32* @TEXT_DOMAIN, align 4
  %101 = call i8* @dgettext(i32 %100, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @snprintf(i8* %99, i32 1024, i8* %101, i32 %103)
  br label %119

105:                                              ; preds = %89
  %106 = load i64, i64* %6, align 8
  %107 = load i64, i64* @POOL_SCAN_NONE, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %116

109:                                              ; preds = %105
  %110 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %111 = load i32, i32* @TEXT_DOMAIN, align 4
  %112 = call i8* @dgettext(i32 %111, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @snprintf(i8* %110, i32 1024, i8* %112, i32 %114)
  br label %118

116:                                              ; preds = %105
  %117 = call i32 @assert(i32 0)
  br label %118

118:                                              ; preds = %116, %109
  br label %119

119:                                              ; preds = %118, %93
  br label %120

120:                                              ; preds = %119, %88
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* @EBUSY, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %164

124:                                              ; preds = %120
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %13, align 8
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @ZPOOL_CONFIG_VDEV_TREE, align 4
  %129 = call i64 @nvlist_lookup_nvlist(i32 %127, i32 %128, i32** %12)
  %130 = icmp eq i64 %129, 0
  %131 = zext i1 %130 to i32
  %132 = call i32 @verify(i32 %131)
  %133 = load i32*, i32** %12, align 8
  %134 = load i32, i32* @ZPOOL_CONFIG_SCAN_STATS, align 4
  %135 = bitcast %struct.TYPE_8__** %13 to i32**
  %136 = call i32 @nvlist_lookup_uint64_array(i32* %133, i32 %134, i32** %135, i32* %14)
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %138 = icmp ne %struct.TYPE_8__* %137, null
  br i1 %138, label %139, label %159

139:                                              ; preds = %124
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @POOL_SCAN_SCRUB, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %159

145:                                              ; preds = %139
  %146 = load i64, i64* %7, align 8
  %147 = load i64, i64* @POOL_SCRUB_PAUSE, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %154

149:                                              ; preds = %145
  %150 = load i32*, i32** %11, align 8
  %151 = load i32, i32* @EZFS_SCRUB_PAUSED, align 4
  %152 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %153 = call i32 @zfs_error(i32* %150, i32 %151, i8* %152)
  store i32 %153, i32* %4, align 4
  br label %191

154:                                              ; preds = %145
  %155 = load i32*, i32** %11, align 8
  %156 = load i32, i32* @EZFS_SCRUBBING, align 4
  %157 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %158 = call i32 @zfs_error(i32* %155, i32 %156, i8* %157)
  store i32 %158, i32* %4, align 4
  br label %191

159:                                              ; preds = %139, %124
  %160 = load i32*, i32** %11, align 8
  %161 = load i32, i32* @EZFS_RESILVERING, align 4
  %162 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %163 = call i32 @zfs_error(i32* %160, i32 %161, i8* %162)
  store i32 %163, i32* %4, align 4
  br label %191

164:                                              ; preds = %120
  %165 = load i32, i32* %10, align 4
  %166 = load i32, i32* @ENOENT, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %173

168:                                              ; preds = %164
  %169 = load i32*, i32** %11, align 8
  %170 = load i32, i32* @EZFS_NO_SCRUB, align 4
  %171 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %172 = call i32 @zfs_error(i32* %169, i32 %170, i8* %171)
  store i32 %172, i32* %4, align 4
  br label %191

173:                                              ; preds = %164
  %174 = load i32, i32* %10, align 4
  %175 = load i32, i32* @ENOTSUP, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %186

177:                                              ; preds = %173
  %178 = load i64, i64* %6, align 8
  %179 = load i64, i64* @POOL_SCAN_RESILVER, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %186

181:                                              ; preds = %177
  %182 = load i32*, i32** %11, align 8
  %183 = load i32, i32* @EZFS_NO_RESILVER_DEFER, align 4
  %184 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %185 = call i32 @zfs_error(i32* %182, i32 %183, i8* %184)
  store i32 %185, i32* %4, align 4
  br label %191

186:                                              ; preds = %177, %173
  %187 = load i32*, i32** %11, align 8
  %188 = load i32, i32* %10, align 4
  %189 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %190 = call i32 @zpool_standard_error(i32* %187, i32 %188, i8* %189)
  store i32 %190, i32* %4, align 4
  br label %191

191:                                              ; preds = %186, %181, %168, %159, %154, %149, %60, %47, %33
  %192 = load i32, i32* %4, align 4
  ret i32 %192
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #2

declare dso_local i64 @zfs_ioctl(i32*, i32, %struct.TYPE_7__*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i8* @dgettext(i32, i8*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @verify(i32) #2

declare dso_local i64 @nvlist_lookup_nvlist(i32, i32, i32**) #2

declare dso_local i32 @nvlist_lookup_uint64_array(i32*, i32, i32**, i32*) #2

declare dso_local i32 @zfs_error(i32*, i32, i8*) #2

declare dso_local i32 @zpool_standard_error(i32*, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
