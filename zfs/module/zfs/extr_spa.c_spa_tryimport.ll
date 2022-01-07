; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_tryimport.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_tryimport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i64, i32, i32, %struct.TYPE_17__, i32*, i32, i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i64 }

@ZPOOL_CONFIG_POOL_NAME = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_POOL_STATE = common dso_local global i32 0, align 4
@spa_namespace_lock = common dso_local global i32 0, align 4
@TRYIMPORT_NAME = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@UINT64_MAX = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"spa_tryimport: importing %s, max_txg=%lld\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"spa_tryimport: importing %s\00", align 1
@ZPOOL_CONFIG_CACHEFILE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"spa_tryimport: using cachefile '%s'\00", align 1
@SPA_CONFIG_SRC_CACHEFILE = common dso_local global i32 0, align 4
@SPA_CONFIG_SRC_SCAN = common dso_local global i32 0, align 4
@SPA_LOAD_TRYIMPORT = common dso_local global i32 0, align 4
@SPA_IMPORT_EXISTING = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_TIMESTAMP = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_LOAD_INFO = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_ERRATA = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@MAXPATHLEN = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@ZPOOL_CONFIG_BOOTFS = common dso_local global i32 0, align 4
@SCL_CONFIG = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @spa_tryimport(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_18__, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32* null, i32** %4, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* @ZPOOL_CONFIG_POOL_NAME, align 4
  %16 = call i64 @nvlist_lookup_string(i32* %14, i32 %15, i8** %5)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %210

19:                                               ; preds = %1
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* @ZPOOL_CONFIG_POOL_STATE, align 4
  %22 = call i64 @nvlist_lookup_uint64(i32* %20, i32 %21, i32* %8)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32* null, i32** %2, align 8
  br label %210

25:                                               ; preds = %19
  %26 = call i32 @mutex_enter(i32* @spa_namespace_lock)
  %27 = load i32, i32* @TRYIMPORT_NAME, align 4
  %28 = load i32*, i32** %3, align 8
  %29 = call %struct.TYPE_19__* @spa_add(i32 %27, i32* %28, i32* null)
  store %struct.TYPE_19__* %29, %struct.TYPE_19__** %7, align 8
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %31 = load i32, i32* @FREAD, align 4
  %32 = call i32 @spa_activate(%struct.TYPE_19__* %30, i32 %31)
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 8
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @zpool_get_load_policy(i32 %35, %struct.TYPE_18__* %10)
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @UINT64_MAX, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %25
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load i32, i32* @B_TRUE, align 4
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 7
  store i32 %46, i32* %48, align 4
  %49 = load i8*, i8** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = call i32 (i8*, i8*, ...) @zfs_dbgmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %49, i32 %52)
  br label %57

54:                                               ; preds = %25
  %55 = load i8*, i8** %5, align 8
  %56 = call i32 (i8*, i8*, ...) @zfs_dbgmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %55)
  br label %57

57:                                               ; preds = %54, %41
  %58 = load i32*, i32** %3, align 8
  %59 = load i32, i32* @ZPOOL_CONFIG_CACHEFILE, align 4
  %60 = call i64 @nvlist_lookup_string(i32* %58, i32 %59, i8** %6)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load i8*, i8** %6, align 8
  %64 = call i32 (i8*, i8*, ...) @zfs_dbgmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %63)
  %65 = load i32, i32* @SPA_CONFIG_SRC_CACHEFILE, align 4
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 6
  store i32 %65, i32* %67, align 8
  br label %72

68:                                               ; preds = %57
  %69 = load i32, i32* @SPA_CONFIG_SRC_SCAN, align 4
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 6
  store i32 %69, i32* %71, align 8
  br label %72

72:                                               ; preds = %68, %62
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %74 = load i32, i32* @SPA_LOAD_TRYIMPORT, align 4
  %75 = load i32, i32* @SPA_IMPORT_EXISTING, align 4
  %76 = call i32 @spa_load(%struct.TYPE_19__* %73, i32 %74, i32 %75)
  store i32 %76, i32* %9, align 4
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 5
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %201

81:                                               ; preds = %72
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %83 = load i32, i32* @B_TRUE, align 4
  %84 = call i32* @spa_config_generate(%struct.TYPE_19__* %82, i32* null, i64 -1, i32 %83)
  store i32* %84, i32** %4, align 8
  %85 = load i32*, i32** %4, align 8
  %86 = load i32, i32* @ZPOOL_CONFIG_POOL_NAME, align 4
  %87 = load i8*, i8** %5, align 8
  %88 = call i64 @nvlist_add_string(i32* %85, i32 %86, i8* %87)
  %89 = icmp eq i64 %88, 0
  %90 = zext i1 %89 to i32
  %91 = call i32 @VERIFY(i32 %90)
  %92 = load i32*, i32** %4, align 8
  %93 = load i32, i32* @ZPOOL_CONFIG_POOL_STATE, align 4
  %94 = load i32, i32* %8, align 4
  %95 = call i64 @nvlist_add_uint64(i32* %92, i32 %93, i32 %94)
  %96 = icmp eq i64 %95, 0
  %97 = zext i1 %96 to i32
  %98 = call i32 @VERIFY(i32 %97)
  %99 = load i32*, i32** %4, align 8
  %100 = load i32, i32* @ZPOOL_CONFIG_TIMESTAMP, align 4
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i64 @nvlist_add_uint64(i32* %99, i32 %100, i32 %104)
  %106 = icmp eq i64 %105, 0
  %107 = zext i1 %106 to i32
  %108 = call i32 @VERIFY(i32 %107)
  %109 = load i32*, i32** %4, align 8
  %110 = load i32, i32* @ZPOOL_CONFIG_LOAD_INFO, align 4
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = call i64 @nvlist_add_nvlist(i32* %109, i32 %110, i32 %113)
  %115 = icmp eq i64 %114, 0
  %116 = zext i1 %115 to i32
  %117 = call i32 @VERIFY(i32 %116)
  %118 = load i32*, i32** %4, align 8
  %119 = load i32, i32* @ZPOOL_CONFIG_ERRATA, align 4
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = call i64 @nvlist_add_uint64(i32* %118, i32 %119, i32 %122)
  %124 = icmp eq i64 %123, 0
  %125 = zext i1 %124 to i32
  %126 = call i32 @VERIFY(i32 %125)
  %127 = load i32, i32* %9, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %81
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* @EEXIST, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %185

133:                                              ; preds = %129, %81
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %185

138:                                              ; preds = %133
  %139 = load i32, i32* @MAXPATHLEN, align 4
  %140 = load i32, i32* @KM_SLEEP, align 4
  %141 = call i8* @kmem_alloc(i32 %139, i32 %140)
  store i8* %141, i8** %11, align 8
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %143 = call i32 @spa_name(%struct.TYPE_19__* %142)
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i8*, i8** %11, align 8
  %148 = call i64 @dsl_dsobj_to_dsname(i32 %143, i64 %146, i8* %147)
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %181

150:                                              ; preds = %138
  %151 = load i32, i32* @MAXPATHLEN, align 4
  %152 = load i32, i32* @KM_SLEEP, align 4
  %153 = call i8* @kmem_alloc(i32 %151, i32 %152)
  store i8* %153, i8** %13, align 8
  %154 = load i8*, i8** %11, align 8
  %155 = call i8* @strchr(i8* %154, i8 signext 47)
  store i8* %155, i8** %12, align 8
  %156 = load i8*, i8** %12, align 8
  %157 = icmp eq i8* %156, null
  br i1 %157, label %158, label %163

158:                                              ; preds = %150
  %159 = load i8*, i8** %13, align 8
  %160 = load i8*, i8** %11, align 8
  %161 = load i32, i32* @MAXPATHLEN, align 4
  %162 = call i32 @strlcpy(i8* %159, i8* %160, i32 %161)
  br label %170

163:                                              ; preds = %150
  %164 = load i8*, i8** %13, align 8
  %165 = load i32, i32* @MAXPATHLEN, align 4
  %166 = load i8*, i8** %5, align 8
  %167 = load i8*, i8** %12, align 8
  %168 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %168, i8** %12, align 8
  %169 = call i32 @snprintf(i8* %164, i32 %165, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %166, i8* %168)
  br label %170

170:                                              ; preds = %163, %158
  %171 = load i32*, i32** %4, align 8
  %172 = load i32, i32* @ZPOOL_CONFIG_BOOTFS, align 4
  %173 = load i8*, i8** %13, align 8
  %174 = call i64 @nvlist_add_string(i32* %171, i32 %172, i8* %173)
  %175 = icmp eq i64 %174, 0
  %176 = zext i1 %175 to i32
  %177 = call i32 @VERIFY(i32 %176)
  %178 = load i8*, i8** %13, align 8
  %179 = load i32, i32* @MAXPATHLEN, align 4
  %180 = call i32 @kmem_free(i8* %178, i32 %179)
  br label %181

181:                                              ; preds = %170, %138
  %182 = load i8*, i8** %11, align 8
  %183 = load i32, i32* @MAXPATHLEN, align 4
  %184 = call i32 @kmem_free(i8* %182, i32 %183)
  br label %185

185:                                              ; preds = %181, %133, %129
  %186 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %187 = load i32, i32* @SCL_CONFIG, align 4
  %188 = load i32, i32* @FTAG, align 4
  %189 = load i32, i32* @RW_READER, align 4
  %190 = call i32 @spa_config_enter(%struct.TYPE_19__* %186, i32 %187, i32 %188, i32 %189)
  %191 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %192 = load i32*, i32** %4, align 8
  %193 = call i32 @spa_add_spares(%struct.TYPE_19__* %191, i32* %192)
  %194 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %195 = load i32*, i32** %4, align 8
  %196 = call i32 @spa_add_l2cache(%struct.TYPE_19__* %194, i32* %195)
  %197 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %198 = load i32, i32* @SCL_CONFIG, align 4
  %199 = load i32, i32* @FTAG, align 4
  %200 = call i32 @spa_config_exit(%struct.TYPE_19__* %197, i32 %198, i32 %199)
  br label %201

201:                                              ; preds = %185, %72
  %202 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %203 = call i32 @spa_unload(%struct.TYPE_19__* %202)
  %204 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %205 = call i32 @spa_deactivate(%struct.TYPE_19__* %204)
  %206 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %207 = call i32 @spa_remove(%struct.TYPE_19__* %206)
  %208 = call i32 @mutex_exit(i32* @spa_namespace_lock)
  %209 = load i32*, i32** %4, align 8
  store i32* %209, i32** %2, align 8
  br label %210

210:                                              ; preds = %201, %24, %18
  %211 = load i32*, i32** %2, align 8
  ret i32* %211
}

declare dso_local i64 @nvlist_lookup_string(i32*, i32, i8**) #1

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i32*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local %struct.TYPE_19__* @spa_add(i32, i32*, i32*) #1

declare dso_local i32 @spa_activate(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @zpool_get_load_policy(i32, %struct.TYPE_18__*) #1

declare dso_local i32 @zfs_dbgmsg(i8*, i8*, ...) #1

declare dso_local i32 @spa_load(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32* @spa_config_generate(%struct.TYPE_19__*, i32*, i64, i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @nvlist_add_string(i32*, i32, i8*) #1

declare dso_local i64 @nvlist_add_uint64(i32*, i32, i32) #1

declare dso_local i64 @nvlist_add_nvlist(i32*, i32, i32) #1

declare dso_local i8* @kmem_alloc(i32, i32) #1

declare dso_local i64 @dsl_dsobj_to_dsname(i32, i64, i8*) #1

declare dso_local i32 @spa_name(%struct.TYPE_19__*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @kmem_free(i8*, i32) #1

declare dso_local i32 @spa_config_enter(%struct.TYPE_19__*, i32, i32, i32) #1

declare dso_local i32 @spa_add_spares(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @spa_add_l2cache(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @spa_config_exit(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @spa_unload(%struct.TYPE_19__*) #1

declare dso_local i32 @spa_deactivate(%struct.TYPE_19__*) #1

declare dso_local i32 @spa_remove(%struct.TYPE_19__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
