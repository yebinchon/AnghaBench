; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa_log_spacemap.c_spa_ld_log_sm_data.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa_log_spacemap.c_spa_ld_log_sm_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_21__, i32, i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32, i32, i32, i32*, i32, %struct.TYPE_20__*, i32, i64, i32, i32, i64 }
%struct.TYPE_20__ = type { i32, i32* }
%struct.spa_ld_log_sm_arg = type { i32, %struct.TYPE_22__* }

@UINT64_MAX = common dso_local global i32 0, align 4
@SPA_MINBLOCKSHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"spa_ld_log_sm_data(): failed at space_map_open(obj=%llu) [error %d]\00", align 1
@spa_ld_log_sm_cb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"spa_ld_log_sm_data(): failed at space_map_iterate(obj=%llu) [error %d]\00", align 1
@.str.2 = private unnamed_addr constant [77 x i8] c"read %llu log space maps (%llu total blocks - blksz = %llu bytes) in %lld ms\00", align 1
@zfs_log_sm_blksz = common dso_local global i64 0, align 8
@METASLAB_ACTIVE_MASK = common dso_local global i32 0, align 4
@metaslab_debug_load = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*)* @spa_ld_log_sm_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spa_ld_log_sm_data(%struct.TYPE_22__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.spa_ld_log_sm_arg, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  store i32 0, i32* %4, align 4
  %12 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %13 = call i32 @spa_writeable(%struct.TYPE_22__* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %227

16:                                               ; preds = %1
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ASSERT0(i32 %20)
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ASSERT0(i32 %25)
  %27 = call i32 (...) @gethrtime()
  store i32 %27, i32* %5, align 4
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 2
  %30 = call %struct.TYPE_23__* @avl_first(i32* %29)
  store %struct.TYPE_23__* %30, %struct.TYPE_23__** %6, align 8
  br label %31

31:                                               ; preds = %107, %16
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %33 = icmp ne %struct.TYPE_23__* %32, null
  br i1 %33, label %34, label %112

34:                                               ; preds = %31
  store i32* null, i32** %7, align 8
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %36 = call i32 @spa_meta_objset(%struct.TYPE_22__* %35)
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %37, i32 0, i32 10
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* @UINT64_MAX, align 4
  %41 = load i32, i32* @SPA_MINBLOCKSHIFT, align 4
  %42 = call i32 @space_map_open(i32** %7, i32 %36, i64 %39, i32 0, i32 %40, i32 %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %34
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 10
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @spa_load_failed(%struct.TYPE_22__* %46, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51)
  br label %129

53:                                               ; preds = %34
  %54 = getelementptr inbounds %struct.spa_ld_log_sm_arg, %struct.spa_ld_log_sm_arg* %8, i32 0, i32 0
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 9
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %54, align 8
  %58 = getelementptr inbounds %struct.spa_ld_log_sm_arg, %struct.spa_ld_log_sm_arg* %8, i32 0, i32 1
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  store %struct.TYPE_22__* %59, %struct.TYPE_22__** %58, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = call i32 @space_map_length(i32* %61)
  %63 = load i32, i32* @spa_ld_log_sm_cb, align 4
  %64 = call i32 @space_map_iterate(i32* %60, i32 %62, i32 %63, %struct.spa_ld_log_sm_arg* %8)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %53
  %68 = load i32*, i32** %7, align 8
  %69 = call i32 @space_map_close(i32* %68)
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 10
  %73 = load i64, i64* %72, align 8
  %74 = trunc i64 %73 to i32
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @spa_load_failed(%struct.TYPE_22__* %70, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 %74, i32 %75)
  br label %129

77:                                               ; preds = %53
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @ASSERT0(i32 %80)
  %82 = load i32*, i32** %7, align 8
  %83 = call i32 @space_map_nblocks(i32* %82)
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, %88
  store i32 %93, i32* %91, align 4
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 9
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %98, i32 0, i32 8
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @summary_add_data(%struct.TYPE_22__* %94, i32 %97, i32 %100, i32 %103)
  %105 = load i32*, i32** %7, align 8
  %106 = call i32 @space_map_close(i32* %105)
  br label %107

107:                                              ; preds = %77
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %111 = call %struct.TYPE_23__* @AVL_NEXT(i32* %109, %struct.TYPE_23__* %110)
  store %struct.TYPE_23__* %111, %struct.TYPE_23__** %6, align 8
  br label %31

112:                                              ; preds = %31
  %113 = call i32 (...) @gethrtime()
  store i32 %113, i32* %9, align 4
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 2
  %117 = call i64 @avl_numnodes(i32* %116)
  %118 = trunc i64 %117 to i32
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %120 = call i64 @spa_log_sm_nblocks(%struct.TYPE_22__* %119)
  %121 = trunc i64 %120 to i32
  %122 = load i64, i64* @zfs_log_sm_blksz, align 8
  %123 = trunc i64 %122 to i32
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* %5, align 4
  %126 = sub nsw i32 %124, %125
  %127 = sdiv i32 %126, 1000000
  %128 = call i32 @spa_load_note(%struct.TYPE_22__* %114, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.2, i64 0, i64 0), i32 %118, i32 %121, i32 %123, i32 %127)
  br label %129

129:                                              ; preds = %112, %67, %45
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 1
  %132 = call %struct.TYPE_23__* @avl_first(i32* %131)
  store %struct.TYPE_23__* %132, %struct.TYPE_23__** %10, align 8
  br label %133

133:                                              ; preds = %220, %129
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %135 = icmp ne %struct.TYPE_23__* %134, null
  br i1 %135, label %136, label %225

136:                                              ; preds = %133
  %137 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %137, i32 0, i32 2
  %139 = call i32 @mutex_enter(i32* %138)
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i32 0, i32 3
  %142 = load i32*, i32** %141, align 8
  %143 = call i64 @space_map_allocated(i32* %142)
  %144 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %144, i32 0, i32 6
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @range_tree_space(i32 %146)
  %148 = sext i32 %147 to i64
  %149 = add nsw i64 %143, %148
  %150 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @range_tree_space(i32 %152)
  %154 = sext i32 %153 to i64
  %155 = sub nsw i64 %149, %154
  %156 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %156, i32 0, i32 7
  store i64 %155, i64* %157, align 8
  %158 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %158, i32 0, i32 5
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  store i32* %162, i32** %11, align 8
  %163 = load i32*, i32** %11, align 8
  %164 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %164, i32 0, i32 5
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %169, i32 0, i32 6
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @range_tree_space(i32 %171)
  %173 = call i32 @metaslab_space_update(i32* %163, i32 %168, i32 %172, i32 0, i32 0)
  %174 = load i32*, i32** %11, align 8
  %175 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %176 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %175, i32 0, i32 5
  %177 = load %struct.TYPE_20__*, %struct.TYPE_20__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %181 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @range_tree_space(i32 %182)
  %184 = sub nsw i32 0, %183
  %185 = call i32 @metaslab_space_update(i32* %174, i32 %179, i32 %184, i32 0, i32 0)
  %186 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @METASLAB_ACTIVE_MASK, align 4
  %190 = and i32 %188, %189
  %191 = call i32 @ASSERT0(i32 %190)
  %192 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %193 = call i32 @metaslab_recalculate_weight_and_sort(%struct.TYPE_23__* %192)
  %194 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %195 = call i64 @metaslab_unflushed_changes_memused(%struct.TYPE_23__* %194)
  %196 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = sext i32 %199 to i64
  %201 = add nsw i64 %200, %195
  %202 = trunc i64 %201 to i32
  store i32 %202, i32* %198, align 4
  %203 = load i64, i64* @metaslab_debug_load, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %216

205:                                              ; preds = %136
  %206 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %207 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %206, i32 0, i32 3
  %208 = load i32*, i32** %207, align 8
  %209 = icmp ne i32* %208, null
  br i1 %209, label %210, label %216

210:                                              ; preds = %205
  %211 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %212 = call i32 @metaslab_load(%struct.TYPE_23__* %211)
  %213 = call i32 @VERIFY0(i32 %212)
  %214 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %215 = call i32 @metaslab_set_selected_txg(%struct.TYPE_23__* %214, i32 0)
  br label %216

216:                                              ; preds = %210, %205, %136
  %217 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %218 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %217, i32 0, i32 2
  %219 = call i32 @mutex_exit(i32* %218)
  br label %220

220:                                              ; preds = %216
  %221 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %221, i32 0, i32 1
  %223 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %224 = call %struct.TYPE_23__* @AVL_NEXT(i32* %222, %struct.TYPE_23__* %223)
  store %struct.TYPE_23__* %224, %struct.TYPE_23__** %10, align 8
  br label %133

225:                                              ; preds = %133
  %226 = load i32, i32* %4, align 4
  store i32 %226, i32* %2, align 4
  br label %227

227:                                              ; preds = %225, %15
  %228 = load i32, i32* %2, align 4
  ret i32 %228
}

declare dso_local i32 @spa_writeable(%struct.TYPE_22__*) #1

declare dso_local i32 @ASSERT0(i32) #1

declare dso_local i32 @gethrtime(...) #1

declare dso_local %struct.TYPE_23__* @avl_first(i32*) #1

declare dso_local i32 @space_map_open(i32**, i32, i64, i32, i32, i32) #1

declare dso_local i32 @spa_meta_objset(%struct.TYPE_22__*) #1

declare dso_local i32 @spa_load_failed(%struct.TYPE_22__*, i8*, i32, i32) #1

declare dso_local i32 @space_map_iterate(i32*, i32, i32, %struct.spa_ld_log_sm_arg*) #1

declare dso_local i32 @space_map_length(i32*) #1

declare dso_local i32 @space_map_close(i32*) #1

declare dso_local i32 @space_map_nblocks(i32*) #1

declare dso_local i32 @summary_add_data(%struct.TYPE_22__*, i32, i32, i32) #1

declare dso_local %struct.TYPE_23__* @AVL_NEXT(i32*, %struct.TYPE_23__*) #1

declare dso_local i32 @spa_load_note(%struct.TYPE_22__*, i8*, i32, i32, i32, i32) #1

declare dso_local i64 @avl_numnodes(i32*) #1

declare dso_local i64 @spa_log_sm_nblocks(%struct.TYPE_22__*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i64 @space_map_allocated(i32*) #1

declare dso_local i32 @range_tree_space(i32) #1

declare dso_local i32 @metaslab_space_update(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @metaslab_recalculate_weight_and_sort(%struct.TYPE_23__*) #1

declare dso_local i64 @metaslab_unflushed_changes_memused(%struct.TYPE_23__*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @metaslab_load(%struct.TYPE_23__*) #1

declare dso_local i32 @metaslab_set_selected_txg(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
