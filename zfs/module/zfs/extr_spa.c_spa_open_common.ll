; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_open_common.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_open_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i32, i64, i64, i32, i32*, i32 }
%struct.TYPE_16__ = type { i32, i32 }

@SPA_LOAD_OPEN = common dso_local global i64 0, align 8
@B_FALSE = common dso_local global i32 0, align 4
@spa_namespace_lock = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@POOL_STATE_UNINITIALIZED = common dso_local global i64 0, align 8
@ZPOOL_DO_REWIND = common dso_local global i32 0, align 4
@SPA_LOAD_RECOVER = common dso_local global i64 0, align 8
@spa_mode_global = common dso_local global i32 0, align 4
@SPA_CONFIG_SRC_CACHEFILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"spa_open_common: opening %s\00", align 1
@EBADF = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_LOAD_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_17__**, i8*, i32*, i32**)* @spa_open_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spa_open_common(i8* %0, %struct.TYPE_17__** %1, i8* %2, i32* %3, i32** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_17__**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_16__, align 4
  store i8* %0, i8** %7, align 8
  store %struct.TYPE_17__** %1, %struct.TYPE_17__*** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32** %4, i32*** %11, align 8
  %18 = load i64, i64* @SPA_LOAD_OPEN, align 8
  store i64 %18, i64* %13, align 8
  %19 = load i32, i32* @B_FALSE, align 4
  store i32 %19, i32* %15, align 4
  %20 = load i32, i32* @B_FALSE, align 4
  store i32 %20, i32* %16, align 4
  %21 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %8, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %21, align 8
  %22 = call i64 @MUTEX_NOT_HELD(i32* @spa_namespace_lock)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = call i32 @mutex_enter(i32* @spa_namespace_lock)
  %26 = load i32, i32* @B_TRUE, align 4
  store i32 %26, i32* %15, align 4
  br label %27

27:                                               ; preds = %24, %5
  %28 = load i8*, i8** %7, align 8
  %29 = call %struct.TYPE_17__* @spa_lookup(i8* %28)
  store %struct.TYPE_17__* %29, %struct.TYPE_17__** %12, align 8
  %30 = icmp eq %struct.TYPE_17__* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load i32, i32* %15, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call i32 @mutex_exit(i32* @spa_namespace_lock)
  br label %36

36:                                               ; preds = %34, %31
  %37 = load i32, i32* @ENOENT, align 4
  %38 = call i32 @SET_ERROR(i32 %37)
  store i32 %38, i32* %6, align 4
  br label %207

39:                                               ; preds = %27
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @POOL_STATE_UNINITIALIZED, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %158

45:                                               ; preds = %39
  %46 = load i32, i32* @B_TRUE, align 4
  store i32 %46, i32* %16, align 4
  %47 = load i32*, i32** %10, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32*, i32** %10, align 8
  br label %55

51:                                               ; preds = %45
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 5
  %54 = load i32*, i32** %53, align 8
  br label %55

55:                                               ; preds = %51, %49
  %56 = phi i32* [ %50, %49 ], [ %54, %51 ]
  %57 = call i32 @zpool_get_load_policy(i32* %56, %struct.TYPE_16__* %17)
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @ZPOOL_DO_REWIND, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = load i64, i64* @SPA_LOAD_RECOVER, align 8
  store i64 %64, i64* %13, align 8
  br label %65

65:                                               ; preds = %63, %55
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %67 = load i32, i32* @spa_mode_global, align 4
  %68 = call i32 @spa_activate(%struct.TYPE_17__* %66, i32 %67)
  %69 = load i64, i64* %13, align 8
  %70 = load i64, i64* @SPA_LOAD_RECOVER, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %65
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 2
  store i64 0, i64* %74, align 8
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 3
  store i64 0, i64* %76, align 8
  br label %77

77:                                               ; preds = %72, %65
  %78 = load i32, i32* @SPA_CONFIG_SRC_CACHEFILE, align 4
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 6
  store i32 %78, i32* %80, align 8
  %81 = load i8*, i8** %7, align 8
  %82 = call i32 @zfs_dbgmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %81)
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %84 = load i64, i64* %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @spa_load_best(%struct.TYPE_17__* %83, i64 %84, i32 %86, i32 %88)
  store i32 %89, i32* %14, align 4
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* @EBADF, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %111

93:                                               ; preds = %77
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %95 = call i32 @spa_unload(%struct.TYPE_17__* %94)
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %97 = call i32 @spa_deactivate(%struct.TYPE_17__* %96)
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %99 = load i32, i32* @B_TRUE, align 4
  %100 = load i32, i32* @B_TRUE, align 4
  %101 = call i32 @spa_write_cachefile(%struct.TYPE_17__* %98, i32 %99, i32 %100)
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %103 = call i32 @spa_remove(%struct.TYPE_17__* %102)
  %104 = load i32, i32* %15, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %93
  %107 = call i32 @mutex_exit(i32* @spa_namespace_lock)
  br label %108

108:                                              ; preds = %106, %93
  %109 = load i32, i32* @ENOENT, align 4
  %110 = call i32 @SET_ERROR(i32 %109)
  store i32 %110, i32* %6, align 4
  br label %207

111:                                              ; preds = %77
  %112 = load i32, i32* %14, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %157

114:                                              ; preds = %111
  %115 = load i32**, i32*** %11, align 8
  %116 = icmp ne i32** %115, null
  br i1 %116, label %117, label %142

117:                                              ; preds = %114
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 5
  %120 = load i32*, i32** %119, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %142

122:                                              ; preds = %117
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 5
  %125 = load i32*, i32** %124, align 8
  %126 = load i32**, i32*** %11, align 8
  %127 = load i32, i32* @KM_SLEEP, align 4
  %128 = call i64 @nvlist_dup(i32* %125, i32** %126, i32 %127)
  %129 = icmp eq i64 %128, 0
  %130 = zext i1 %129 to i32
  %131 = call i32 @VERIFY(i32 %130)
  %132 = load i32**, i32*** %11, align 8
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* @ZPOOL_CONFIG_LOAD_INFO, align 4
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 8
  %138 = call i64 @nvlist_add_nvlist(i32* %133, i32 %134, i32 %137)
  %139 = icmp eq i64 %138, 0
  %140 = zext i1 %139 to i32
  %141 = call i32 @VERIFY(i32 %140)
  br label %142

142:                                              ; preds = %122, %117, %114
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %144 = call i32 @spa_unload(%struct.TYPE_17__* %143)
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %146 = call i32 @spa_deactivate(%struct.TYPE_17__* %145)
  %147 = load i32, i32* %14, align 4
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 8
  %150 = load i32, i32* %15, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %142
  %153 = call i32 @mutex_exit(i32* @spa_namespace_lock)
  br label %154

154:                                              ; preds = %152, %142
  %155 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %8, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %155, align 8
  %156 = load i32, i32* %14, align 4
  store i32 %156, i32* %6, align 4
  br label %207

157:                                              ; preds = %111
  br label %158

158:                                              ; preds = %157, %39
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %160 = load i8*, i8** %9, align 8
  %161 = call i32 @spa_open_ref(%struct.TYPE_17__* %159, i8* %160)
  %162 = load i32**, i32*** %11, align 8
  %163 = icmp ne i32** %162, null
  br i1 %163, label %164, label %169

164:                                              ; preds = %158
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %166 = load i32, i32* @B_TRUE, align 4
  %167 = call i32* @spa_config_generate(%struct.TYPE_17__* %165, i32* null, i64 -1, i32 %166)
  %168 = load i32**, i32*** %11, align 8
  store i32* %167, i32** %168, align 8
  br label %169

169:                                              ; preds = %164, %158
  %170 = load i64, i64* %13, align 8
  %171 = load i64, i64* @SPA_LOAD_RECOVER, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %184

173:                                              ; preds = %169
  %174 = load i32**, i32*** %11, align 8
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* @ZPOOL_CONFIG_LOAD_INFO, align 4
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 8
  %180 = call i64 @nvlist_add_nvlist(i32* %175, i32 %176, i32 %179)
  %181 = icmp eq i64 %180, 0
  %182 = zext i1 %181 to i32
  %183 = call i32 @VERIFY(i32 %182)
  br label %184

184:                                              ; preds = %173, %169
  %185 = load i32, i32* %15, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %195

187:                                              ; preds = %184
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 1
  store i32 0, i32* %189, align 8
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 3
  store i64 0, i64* %191, align 8
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %193 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %192, i32 0, i32 2
  store i64 0, i64* %193, align 8
  %194 = call i32 @mutex_exit(i32* @spa_namespace_lock)
  br label %195

195:                                              ; preds = %187, %184
  %196 = load i32, i32* %16, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %204

198:                                              ; preds = %195
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %200 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %201 = call i32 @spa_name(%struct.TYPE_17__* %200)
  %202 = load i32, i32* @B_TRUE, align 4
  %203 = call i32 @zvol_create_minors(%struct.TYPE_17__* %199, i32 %201, i32 %202)
  br label %204

204:                                              ; preds = %198, %195
  %205 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %206 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %8, align 8
  store %struct.TYPE_17__* %205, %struct.TYPE_17__** %206, align 8
  store i32 0, i32* %6, align 4
  br label %207

207:                                              ; preds = %204, %154, %108, %36
  %208 = load i32, i32* %6, align 4
  ret i32 %208
}

declare dso_local i64 @MUTEX_NOT_HELD(i32*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local %struct.TYPE_17__* @spa_lookup(i8*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @zpool_get_load_policy(i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @spa_activate(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @zfs_dbgmsg(i8*, i8*) #1

declare dso_local i32 @spa_load_best(%struct.TYPE_17__*, i64, i32, i32) #1

declare dso_local i32 @spa_unload(%struct.TYPE_17__*) #1

declare dso_local i32 @spa_deactivate(%struct.TYPE_17__*) #1

declare dso_local i32 @spa_write_cachefile(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @spa_remove(%struct.TYPE_17__*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @nvlist_dup(i32*, i32**, i32) #1

declare dso_local i64 @nvlist_add_nvlist(i32*, i32, i32) #1

declare dso_local i32 @spa_open_ref(%struct.TYPE_17__*, i8*) #1

declare dso_local i32* @spa_config_generate(%struct.TYPE_17__*, i32*, i64, i32) #1

declare dso_local i32 @zvol_create_minors(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @spa_name(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
