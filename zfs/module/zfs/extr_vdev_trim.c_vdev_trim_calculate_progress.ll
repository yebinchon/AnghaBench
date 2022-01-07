; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_trim.c_vdev_trim_calculate_progress.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_trim.c_vdev_trim_calculate_progress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64, i64, i64, %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i64, i64, i32*, %struct.TYPE_18__** }
%struct.TYPE_18__ = type { i64, i64, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i64, i64 }

@SCL_CONFIG = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@RW_WRITER = common dso_local global i32 0, align 4
@vdev_raidz_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*)* @vdev_trim_calculate_progress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdev_trim_calculate_progress(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_17__, align 8
  %7 = alloca %struct.TYPE_17__, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @SCL_CONFIG, align 4
  %17 = load i32, i32* @RW_READER, align 4
  %18 = call i64 @spa_config_held(i32 %15, i32 %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %1
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @SCL_CONFIG, align 4
  %25 = load i32, i32* @RW_WRITER, align 4
  %26 = call i64 @spa_config_held(i32 %23, i32 %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %20, %1
  %29 = phi i1 [ true, %1 ], [ %27, %20 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @ASSERT(i32 %30)
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @ASSERT(i32 %36)
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 2
  store i64 0, i64* %41, align 8
  store i64 0, i64* %3, align 8
  br label %42

42:                                               ; preds = %215, %28
  %43 = load i64, i64* %3, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 4
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ult i64 %43, %48
  br i1 %49, label %50, label %218

50:                                               ; preds = %42
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 4
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 3
  %55 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %54, align 8
  %56 = load i64, i64* %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %55, i64 %56
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %57, align 8
  store %struct.TYPE_18__* %58, %struct.TYPE_18__** %4, align 8
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 2
  %61 = call i32 @mutex_enter(i32* %60)
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %66 = call i64 @metaslab_allocated_space(%struct.TYPE_18__* %65)
  %67 = sub i64 %64, %66
  store i64 %67, i64* %5, align 8
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 4
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = icmp eq i32* %72, @vdev_raidz_ops
  br i1 %73, label %74, label %82

74:                                               ; preds = %50
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 4
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %5, align 8
  %81 = udiv i64 %80, %79
  store i64 %81, i64* %5, align 8
  br label %82

82:                                               ; preds = %74, %50
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  store i64 %85, i64* %86, align 8
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = add i64 %89, %92
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 1
  store i64 %93, i64* %94, align 8
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %96 = call i32 @vdev_xlate(%struct.TYPE_15__* %95, %struct.TYPE_17__* %6, %struct.TYPE_17__* %7)
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp sle i64 %99, %101
  br i1 %102, label %103, label %112

103:                                              ; preds = %82
  %104 = load i64, i64* %5, align 8
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = add i64 %107, %104
  store i64 %108, i64* %106, align 8
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 2
  %111 = call i32 @mutex_exit(i32* %110)
  br label %215

112:                                              ; preds = %82
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp sgt i64 %115, %117
  br i1 %118, label %119, label %133

119:                                              ; preds = %112
  %120 = load i64, i64* %5, align 8
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = add i64 %123, %120
  store i64 %124, i64* %122, align 8
  %125 = load i64, i64* %5, align 8
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = add i64 %128, %125
  store i64 %129, i64* %127, align 8
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 2
  %132 = call i32 @mutex_exit(i32* %131)
  br label %215

133:                                              ; preds = %112
  br label %134

134:                                              ; preds = %133
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %136 = call i32 @metaslab_load(%struct.TYPE_18__* %135)
  %137 = call i32 @VERIFY0(i32 %136)
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 3
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %139, align 8
  store %struct.TYPE_16__* %140, %struct.TYPE_16__** %8, align 8
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 0
  store i32* %142, i32** %9, align 8
  %143 = load i32*, i32** %9, align 8
  %144 = call i32* @zfs_btree_first(i32* %143, i32* %10)
  store i32* %144, i32** %11, align 8
  br label %145

145:                                              ; preds = %208, %134
  %146 = load i32*, i32** %11, align 8
  %147 = icmp ne i32* %146, null
  br i1 %147, label %148, label %211

148:                                              ; preds = %145
  %149 = load i32*, i32** %11, align 8
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %151 = call i64 @rs_get_start(i32* %149, %struct.TYPE_16__* %150)
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  store i64 %151, i64* %152, align 8
  %153 = load i32*, i32** %11, align 8
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %155 = call i64 @rs_get_end(i32* %153, %struct.TYPE_16__* %154)
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 1
  store i64 %155, i64* %156, align 8
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %158 = call i32 @vdev_xlate(%struct.TYPE_15__* %157, %struct.TYPE_17__* %6, %struct.TYPE_17__* %7)
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = sub nsw i64 %160, %162
  store i64 %163, i64* %12, align 8
  %164 = load i64, i64* %12, align 8
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = add i64 %167, %164
  store i64 %168, i64* %166, align 8
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = icmp sge i64 %171, %173
  br i1 %174, label %175, label %181

175:                                              ; preds = %148
  %176 = load i64, i64* %12, align 8
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = add i64 %179, %176
  store i64 %180, i64* %178, align 8
  br label %207

181:                                              ; preds = %148
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 3
  %184 = load i64, i64* %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = icmp sgt i64 %184, %186
  br i1 %187, label %188, label %206

188:                                              ; preds = %181
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 3
  %191 = load i64, i64* %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = icmp sle i64 %191, %193
  br i1 %194, label %195, label %206

195:                                              ; preds = %188
  %196 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 3
  %198 = load i64, i64* %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = sub nsw i64 %198, %200
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 2
  %204 = load i64, i64* %203, align 8
  %205 = add i64 %204, %201
  store i64 %205, i64* %203, align 8
  br label %206

206:                                              ; preds = %195, %188, %181
  br label %207

207:                                              ; preds = %206, %175
  br label %208

208:                                              ; preds = %207
  %209 = load i32*, i32** %9, align 8
  %210 = call i32* @zfs_btree_next(i32* %209, i32* %10, i32* %10)
  store i32* %210, i32** %11, align 8
  br label %145

211:                                              ; preds = %145
  %212 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %212, i32 0, i32 2
  %214 = call i32 @mutex_exit(i32* %213)
  br label %215

215:                                              ; preds = %211, %119, %103
  %216 = load i64, i64* %3, align 8
  %217 = add i64 %216, 1
  store i64 %217, i64* %3, align 8
  br label %42

218:                                              ; preds = %42
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @spa_config_held(i32, i32, i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i64 @metaslab_allocated_space(%struct.TYPE_18__*) #1

declare dso_local i32 @vdev_xlate(%struct.TYPE_15__*, %struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @metaslab_load(%struct.TYPE_18__*) #1

declare dso_local i32* @zfs_btree_first(i32*, i32*) #1

declare dso_local i64 @rs_get_start(i32*, %struct.TYPE_16__*) #1

declare dso_local i64 @rs_get_end(i32*, %struct.TYPE_16__*) #1

declare dso_local i32* @zfs_btree_next(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
