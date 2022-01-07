; ModuleID = '/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_ztest_split_pool.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_ztest_split_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32*, i64, %struct.TYPE_13__** }
%struct.TYPE_15__ = type { i32, i64 }

@ztest_shared = common dso_local global %struct.TYPE_12__* null, align 8
@ztest_spa = common dso_local global %struct.TYPE_14__* null, align 8
@ztest_opts = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@ztest_vdev_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"splitp\00", align 1
@SCL_VDEV = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_VDEV_TREE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_CHILDREN = common dso_local global i32 0, align 4
@vdev_hole_ops = common dso_local global i32 0, align 4
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_TYPE = common dso_local global i32 0, align 4
@VDEV_TYPE_HOLE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_IS_HOLE = common dso_local global i32 0, align 4
@VDEV_TYPE_ROOT = common dso_local global i32 0, align 4
@ztest_name_lock = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"successful split - results:\0A\00", align 1
@spa_namespace_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ztest_split_pool(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_13__*, align 8
  %19 = alloca i32**, align 8
  %20 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ztest_shared, align 8
  store %struct.TYPE_12__* %21, %struct.TYPE_12__** %5, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** @ztest_spa, align 8
  store %struct.TYPE_14__* %22, %struct.TYPE_14__** %6, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  store %struct.TYPE_13__* %25, %struct.TYPE_13__** %7, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i32 0, i32* %17, align 4
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @ztest_opts, i32 0, i32 1), align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  br label %243

29:                                               ; preds = %2
  %30 = call i32 @mutex_enter(i32* @ztest_vdev_lock)
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %33, 3
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @ztest_opts, i32 0, i32 0), align 8
  %37 = icmp sgt i32 %36, 1
  br i1 %37, label %38, label %40

38:                                               ; preds = %35, %29
  %39 = call i32 @mutex_exit(i32* @ztest_vdev_lock)
  br label %243

40:                                               ; preds = %35
  %41 = call i32 @spa_destroy(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %43 = load i32, i32* @SCL_VDEV, align 4
  %44 = load i32, i32* @FTAG, align 4
  %45 = load i32, i32* @RW_READER, align 4
  %46 = call i32 @spa_config_enter(%struct.TYPE_14__* %42, i32 %43, i32 %44, i32 %45)
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = call i32 @mutex_enter(i32* %48)
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @ZPOOL_CONFIG_VDEV_TREE, align 4
  %54 = call i64 @nvlist_lookup_nvlist(i32 %52, i32 %53, i32** %8)
  %55 = icmp eq i64 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call i32 @VERIFY(i32 %56)
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = call i32 @mutex_exit(i32* %59)
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %63 = call i64 @nvlist_lookup_nvlist_array(i32* %61, i32 %62, i32*** %9, i64* %14)
  %64 = icmp eq i64 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i32 @VERIFY(i32 %65)
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = mul i64 %70, 8
  %72 = trunc i64 %71 to i32
  %73 = call i32** @malloc(i32 %72)
  store i32** %73, i32*** %12, align 8
  store i64 0, i64* %13, align 8
  br label %74

74:                                               ; preds = %150, %40
  %75 = load i64, i64* %13, align 8
  %76 = load i64, i64* %14, align 8
  %77 = icmp ult i64 %75, %76
  br i1 %77, label %78, label %153

78:                                               ; preds = %74
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 3
  %81 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %80, align 8
  %82 = load i64, i64* %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %81, i64 %82
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %83, align 8
  store %struct.TYPE_13__* %84, %struct.TYPE_13__** %18, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %78
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = icmp eq i32* %92, @vdev_hole_ops
  br i1 %93, label %94, label %129

94:                                               ; preds = %89, %78
  %95 = load i32**, i32*** %12, align 8
  %96 = load i64, i64* %15, align 8
  %97 = getelementptr inbounds i32*, i32** %95, i64 %96
  %98 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %99 = call i64 @nvlist_alloc(i32** %97, i32 %98, i32 0)
  %100 = icmp eq i64 %99, 0
  %101 = zext i1 %100 to i32
  %102 = call i32 @VERIFY(i32 %101)
  %103 = load i32**, i32*** %12, align 8
  %104 = load i64, i64* %15, align 8
  %105 = getelementptr inbounds i32*, i32** %103, i64 %104
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* @ZPOOL_CONFIG_TYPE, align 4
  %108 = load i32, i32* @VDEV_TYPE_HOLE, align 4
  %109 = call i64 @nvlist_add_string(i32* %106, i32 %107, i32 %108)
  %110 = icmp eq i64 %109, 0
  %111 = zext i1 %110 to i32
  %112 = call i32 @VERIFY(i32 %111)
  %113 = load i32**, i32*** %12, align 8
  %114 = load i64, i64* %15, align 8
  %115 = getelementptr inbounds i32*, i32** %113, i64 %114
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* @ZPOOL_CONFIG_IS_HOLE, align 4
  %118 = call i64 @nvlist_add_uint64(i32* %116, i32 %117, i32 1)
  %119 = icmp eq i64 %118, 0
  %120 = zext i1 %119 to i32
  %121 = call i32 @VERIFY(i32 %120)
  %122 = load i64, i64* %16, align 8
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %94
  %125 = load i64, i64* %15, align 8
  store i64 %125, i64* %16, align 8
  br label %126

126:                                              ; preds = %124, %94
  %127 = load i64, i64* %15, align 8
  %128 = add i64 %127, 1
  store i64 %128, i64* %15, align 8
  br label %150

129:                                              ; preds = %89
  store i64 0, i64* %16, align 8
  %130 = load i32**, i32*** %9, align 8
  %131 = load i64, i64* %13, align 8
  %132 = getelementptr inbounds i32*, i32** %130, i64 %131
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %135 = call i64 @nvlist_lookup_nvlist_array(i32* %133, i32 %134, i32*** %19, i64* %20)
  %136 = icmp eq i64 %135, 0
  %137 = zext i1 %136 to i32
  %138 = call i32 @VERIFY(i32 %137)
  %139 = load i32**, i32*** %19, align 8
  %140 = getelementptr inbounds i32*, i32** %139, i64 0
  %141 = load i32*, i32** %140, align 8
  %142 = load i32**, i32*** %12, align 8
  %143 = load i64, i64* %15, align 8
  %144 = add i64 %143, 1
  store i64 %144, i64* %15, align 8
  %145 = getelementptr inbounds i32*, i32** %142, i64 %143
  %146 = call i64 @nvlist_dup(i32* %141, i32** %145, i32 0)
  %147 = icmp eq i64 %146, 0
  %148 = zext i1 %147 to i32
  %149 = call i32 @VERIFY(i32 %148)
  br label %150

150:                                              ; preds = %129, %126
  %151 = load i64, i64* %13, align 8
  %152 = add i64 %151, 1
  store i64 %152, i64* %13, align 8
  br label %74

153:                                              ; preds = %74
  %154 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %155 = call i64 @nvlist_alloc(i32** %11, i32 %154, i32 0)
  %156 = icmp eq i64 %155, 0
  %157 = zext i1 %156 to i32
  %158 = call i32 @VERIFY(i32 %157)
  %159 = load i32*, i32** %11, align 8
  %160 = load i32, i32* @ZPOOL_CONFIG_TYPE, align 4
  %161 = load i32, i32* @VDEV_TYPE_ROOT, align 4
  %162 = call i64 @nvlist_add_string(i32* %159, i32 %160, i32 %161)
  %163 = icmp eq i64 %162, 0
  %164 = zext i1 %163 to i32
  %165 = call i32 @VERIFY(i32 %164)
  %166 = load i32*, i32** %11, align 8
  %167 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %168 = load i32**, i32*** %12, align 8
  %169 = load i64, i64* %16, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %153
  %172 = load i64, i64* %16, align 8
  br label %175

173:                                              ; preds = %153
  %174 = load i64, i64* %15, align 8
  br label %175

175:                                              ; preds = %173, %171
  %176 = phi i64 [ %172, %171 ], [ %174, %173 ]
  %177 = call i64 @nvlist_add_nvlist_array(i32* %166, i32 %167, i32** %168, i64 %176)
  %178 = icmp eq i64 %177, 0
  %179 = zext i1 %178 to i32
  %180 = call i32 @VERIFY(i32 %179)
  %181 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %182 = call i64 @nvlist_alloc(i32** %10, i32 %181, i32 0)
  %183 = icmp eq i64 %182, 0
  %184 = zext i1 %183 to i32
  %185 = call i32 @VERIFY(i32 %184)
  %186 = load i32*, i32** %10, align 8
  %187 = load i32, i32* @ZPOOL_CONFIG_VDEV_TREE, align 4
  %188 = load i32*, i32** %11, align 8
  %189 = call i64 @nvlist_add_nvlist(i32* %186, i32 %187, i32* %188)
  %190 = icmp eq i64 %189, 0
  %191 = zext i1 %190 to i32
  %192 = call i32 @VERIFY(i32 %191)
  store i64 0, i64* %13, align 8
  br label %193

193:                                              ; preds = %203, %175
  %194 = load i64, i64* %13, align 8
  %195 = load i64, i64* %15, align 8
  %196 = icmp ult i64 %194, %195
  br i1 %196, label %197, label %206

197:                                              ; preds = %193
  %198 = load i32**, i32*** %12, align 8
  %199 = load i64, i64* %13, align 8
  %200 = getelementptr inbounds i32*, i32** %198, i64 %199
  %201 = load i32*, i32** %200, align 8
  %202 = call i32 @nvlist_free(i32* %201)
  br label %203

203:                                              ; preds = %197
  %204 = load i64, i64* %13, align 8
  %205 = add i64 %204, 1
  store i64 %205, i64* %13, align 8
  br label %193

206:                                              ; preds = %193
  %207 = load i32**, i32*** %12, align 8
  %208 = call i32 @free(i32** %207)
  %209 = load i32*, i32** %11, align 8
  %210 = call i32 @nvlist_free(i32* %209)
  %211 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %212 = load i32, i32* @SCL_VDEV, align 4
  %213 = load i32, i32* @FTAG, align 4
  %214 = call i32 @spa_config_exit(%struct.TYPE_14__* %211, i32 %212, i32 %213)
  %215 = call i32 @pthread_rwlock_wrlock(i32* @ztest_name_lock)
  %216 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %217 = load i32*, i32** %10, align 8
  %218 = load i32, i32* @B_FALSE, align 4
  %219 = call i32 @spa_vdev_split_mirror(%struct.TYPE_14__* %216, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %217, i32* null, i32 %218)
  store i32 %219, i32* %17, align 4
  %220 = call i32 @pthread_rwlock_unlock(i32* @ztest_name_lock)
  %221 = load i32*, i32** %10, align 8
  %222 = call i32 @nvlist_free(i32* %221)
  %223 = load i32, i32* %17, align 4
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %241

225:                                              ; preds = %206
  %226 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %227 = call i32 @mutex_enter(i32* @spa_namespace_lock)
  %228 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %229 = call i32 @show_pool_stats(%struct.TYPE_14__* %228)
  %230 = call %struct.TYPE_14__* @spa_lookup(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %231 = call i32 @show_pool_stats(%struct.TYPE_14__* %230)
  %232 = call i32 @mutex_exit(i32* @spa_namespace_lock)
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %234, align 4
  %237 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = add nsw i32 %239, -1
  store i32 %240, i32* %238, align 4
  br label %241

241:                                              ; preds = %225, %206
  %242 = call i32 @mutex_exit(i32* @ztest_vdev_lock)
  br label %243

243:                                              ; preds = %241, %38, %28
  ret void
}

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @spa_destroy(i8*) #1

declare dso_local i32 @spa_config_enter(%struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @nvlist_lookup_nvlist(i32, i32, i32**) #1

declare dso_local i64 @nvlist_lookup_nvlist_array(i32*, i32, i32***, i64*) #1

declare dso_local i32** @malloc(i32) #1

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #1

declare dso_local i64 @nvlist_add_string(i32*, i32, i32) #1

declare dso_local i64 @nvlist_add_uint64(i32*, i32, i32) #1

declare dso_local i64 @nvlist_dup(i32*, i32**, i32) #1

declare dso_local i64 @nvlist_add_nvlist_array(i32*, i32, i32**, i64) #1

declare dso_local i64 @nvlist_add_nvlist(i32*, i32, i32*) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i32 @free(i32**) #1

declare dso_local i32 @spa_config_exit(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @pthread_rwlock_wrlock(i32*) #1

declare dso_local i32 @spa_vdev_split_mirror(%struct.TYPE_14__*, i8*, i32*, i32*, i32) #1

declare dso_local i32 @pthread_rwlock_unlock(i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @show_pool_stats(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @spa_lookup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
