; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_initialize.c_vdev_initialize_thread.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_initialize.c_vdev_initialize_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32, i32, i32*, i32, i32*, i32, i32, %struct.TYPE_14__*, i32, i64, i32* }
%struct.TYPE_14__ = type { i64, %struct.TYPE_16__** }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }

@SCL_CONFIG = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@RANGE_SEG64 = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@vdev_initialize_range_add = common dso_local global i32 0, align 4
@VDEV_INITIALIZE_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @vdev_initialize_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdev_initialize_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %12, %struct.TYPE_15__** %3, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 11
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %4, align 8
  store i32 0, i32* %5, align 4
  store i64 0, i64* %6, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %17 = call i32 @vdev_is_concrete(%struct.TYPE_15__* %16)
  %18 = call i32 @ASSERT(i32 %17)
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* @SCL_CONFIG, align 4
  %21 = load i32, i32* @FTAG, align 4
  %22 = load i32, i32* @RW_READER, align 4
  %23 = call i32 @spa_config_enter(i32* %19, i32 %20, i32 %21, i32 %22)
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 10
  store i64 0, i64* %25, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %27 = call i32 @vdev_initialize_load(%struct.TYPE_15__* %26)
  %28 = call i32 @VERIFY0(i32 %27)
  %29 = call i32* (...) @vdev_initialize_block_alloc()
  store i32* %29, i32** %7, align 8
  %30 = load i32, i32* @RANGE_SEG64, align 4
  %31 = call i32* @range_tree_create(i32* null, i32 %30, i32* null, i32 0, i32 0)
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 5
  store i32* %31, i32** %33, align 8
  store i64 0, i64* %8, align 8
  br label %34

34:                                               ; preds = %128, %1
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 9
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %34
  %40 = load i64, i64* %8, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ult i64 %40, %45
  br label %47

47:                                               ; preds = %39, %34
  %48 = phi i1 [ false, %34 ], [ %46, %39 ]
  br i1 %48, label %49, label %131

49:                                               ; preds = %47
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %53, align 8
  %55 = load i64, i64* %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %54, i64 %55
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %56, align 8
  store %struct.TYPE_16__* %57, %struct.TYPE_16__** %9, align 8
  %58 = load i32, i32* @B_FALSE, align 4
  store i32 %58, i32* %10, align 4
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 8
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %6, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %49
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %68 = call i32 @vdev_initialize_calculate_progress(%struct.TYPE_15__* %67)
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 8
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %6, align 8
  br label %74

74:                                               ; preds = %66, %49
  %75 = load i32*, i32** %4, align 8
  %76 = load i32, i32* @SCL_CONFIG, align 4
  %77 = load i32, i32* @FTAG, align 4
  %78 = call i32 @spa_config_exit(i32* %75, i32 %76, i32 %77)
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %80 = call i32 @metaslab_disable(%struct.TYPE_16__* %79)
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 0
  %83 = call i32 @mutex_enter(i32* %82)
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %95, label %88

88:                                               ; preds = %74
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %88
  %94 = load i32, i32* @B_TRUE, align 4
  store i32 %94, i32* %10, align 4
  br label %95

95:                                               ; preds = %93, %88, %74
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %97 = call i32 @metaslab_load(%struct.TYPE_16__* %96)
  %98 = call i32 @VERIFY0(i32 %97)
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @vdev_initialize_range_add, align 4
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %104 = call i32 @range_tree_walk(i32 %101, i32 %102, %struct.TYPE_15__* %103)
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 0
  %107 = call i32 @mutex_exit(i32* %106)
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %109 = load i32*, i32** %7, align 8
  %110 = call i32 @vdev_initialize_ranges(%struct.TYPE_15__* %108, i32* %109)
  store i32 %110, i32* %5, align 4
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %112 = load i32, i32* @B_TRUE, align 4
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @metaslab_enable(%struct.TYPE_16__* %111, i32 %112, i32 %113)
  %115 = load i32*, i32** %4, align 8
  %116 = load i32, i32* @SCL_CONFIG, align 4
  %117 = load i32, i32* @FTAG, align 4
  %118 = load i32, i32* @RW_READER, align 4
  %119 = call i32 @spa_config_enter(i32* %115, i32 %116, i32 %117, i32 %118)
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 5
  %122 = load i32*, i32** %121, align 8
  %123 = call i32 @range_tree_vacate(i32* %122, i32* null, i32* null)
  %124 = load i32, i32* %5, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %95
  br label %131

127:                                              ; preds = %95
  br label %128

128:                                              ; preds = %127
  %129 = load i64, i64* %8, align 8
  %130 = add i64 %129, 1
  store i64 %130, i64* %8, align 8
  br label %34

131:                                              ; preds = %126, %47
  %132 = load i32*, i32** %4, align 8
  %133 = load i32, i32* @SCL_CONFIG, align 4
  %134 = load i32, i32* @FTAG, align 4
  %135 = call i32 @spa_config_exit(i32* %132, i32 %133, i32 %134)
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 6
  %138 = call i32 @mutex_enter(i32* %137)
  br label %139

139:                                              ; preds = %144, %131
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp sgt i64 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %139
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 7
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 6
  %149 = call i32 @cv_wait(i32* %146, i32* %148)
  br label %139

150:                                              ; preds = %139
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 6
  %153 = call i32 @mutex_exit(i32* %152)
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 5
  %156 = load i32*, i32** %155, align 8
  %157 = call i32 @range_tree_destroy(i32* %156)
  %158 = load i32*, i32** %7, align 8
  %159 = call i32 @vdev_initialize_block_free(i32* %158)
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 5
  store i32* null, i32** %161, align 8
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 1
  %164 = call i32 @mutex_enter(i32* %163)
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 8
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %177, label %169

169:                                              ; preds = %150
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %171 = call i64 @vdev_writeable(%struct.TYPE_15__* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %169
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %175 = load i32, i32* @VDEV_INITIALIZE_COMPLETE, align 4
  %176 = call i32 @vdev_initialize_change_state(%struct.TYPE_15__* %174, i32 %175)
  br label %177

177:                                              ; preds = %173, %169, %150
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 3
  %180 = load i32*, i32** %179, align 8
  %181 = icmp ne i32* %180, null
  br i1 %181, label %187, label %182

182:                                              ; preds = %177
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp eq i64 %185, 0
  br label %187

187:                                              ; preds = %182, %177
  %188 = phi i1 [ true, %177 ], [ %186, %182 ]
  %189 = zext i1 %188 to i32
  %190 = call i32 @ASSERT(i32 %189)
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 1
  %193 = call i32 @mutex_exit(i32* %192)
  %194 = load i32*, i32** %4, align 8
  %195 = call i32 @spa_get_dsl(i32* %194)
  %196 = call i32 @txg_wait_synced(i32 %195, i32 0)
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 1
  %199 = call i32 @mutex_enter(i32* %198)
  %200 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %200, i32 0, i32 3
  store i32* null, i32** %201, align 8
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 2
  %204 = call i32 @cv_broadcast(i32* %203)
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 1
  %207 = call i32 @mutex_exit(i32* %206)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @vdev_is_concrete(%struct.TYPE_15__*) #1

declare dso_local i32 @spa_config_enter(i32*, i32, i32, i32) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @vdev_initialize_load(%struct.TYPE_15__*) #1

declare dso_local i32* @vdev_initialize_block_alloc(...) #1

declare dso_local i32* @range_tree_create(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @vdev_initialize_calculate_progress(%struct.TYPE_15__*) #1

declare dso_local i32 @spa_config_exit(i32*, i32, i32) #1

declare dso_local i32 @metaslab_disable(%struct.TYPE_16__*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @metaslab_load(%struct.TYPE_16__*) #1

declare dso_local i32 @range_tree_walk(i32, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @vdev_initialize_ranges(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @metaslab_enable(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @range_tree_vacate(i32*, i32*, i32*) #1

declare dso_local i32 @cv_wait(i32*, i32*) #1

declare dso_local i32 @range_tree_destroy(i32*) #1

declare dso_local i32 @vdev_initialize_block_free(i32*) #1

declare dso_local i64 @vdev_writeable(%struct.TYPE_15__*) #1

declare dso_local i32 @vdev_initialize_change_state(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @txg_wait_synced(i32, i32) #1

declare dso_local i32 @spa_get_dsl(i32*) #1

declare dso_local i32 @cv_broadcast(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
