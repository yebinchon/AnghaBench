; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev.c_vdev_metaslab_init.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev.c_vdev_metaslab_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i64, i32*, i32, i32**, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32* }

@SCL_ALLOC = common dso_local global i32 0, align 4
@RW_WRITER = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@DMU_READ_PREFETCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"unable to read the metaslab array [error=%d]\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"metaslab_init failed [error=%d]\00", align 1
@FTAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vdev_metaslab_init(%struct.TYPE_11__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i64 %1, i64* %5, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %6, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %7, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %9, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = ashr i64 %26, %29
  store i64 %30, i64* %10, align 8
  %31 = load i64, i64* %9, align 8
  %32 = icmp ne i64 %31, 0
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %13, align 4
  %34 = load i64, i64* %5, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %2
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %38 = load i32, i32* @SCL_ALLOC, align 4
  %39 = load i32, i32* @RW_WRITER, align 4
  %40 = call i64 @spa_config_held(%struct.TYPE_12__* %37, i32 %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br label %42

42:                                               ; preds = %36, %2
  %43 = phi i1 [ true, %2 ], [ %41, %36 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @ASSERT(i32 %44)
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %189

51:                                               ; preds = %42
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i32 @ASSERT(i32 %57)
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* %10, align 8
  %61 = icmp sle i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @ASSERT(i32 %62)
  %64 = load i64, i64* %10, align 8
  %65 = mul i64 %64, 8
  %66 = load i32, i32* @KM_SLEEP, align 4
  %67 = call i32** @vmem_zalloc(i64 %65, i32 %66)
  store i32** %67, i32*** %11, align 8
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %51
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 5
  %73 = load i32**, i32*** %72, align 8
  %74 = load i32**, i32*** %11, align 8
  %75 = load i64, i64* %9, align 8
  %76 = mul i64 %75, 8
  %77 = call i32 @bcopy(i32** %73, i32** %74, i64 %76)
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 5
  %80 = load i32**, i32*** %79, align 8
  %81 = load i64, i64* %9, align 8
  %82 = mul i64 %81, 8
  %83 = call i32 @vmem_free(i32** %80, i64 %82)
  br label %84

84:                                               ; preds = %70, %51
  %85 = load i32**, i32*** %11, align 8
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 5
  store i32** %85, i32*** %87, align 8
  %88 = load i64, i64* %10, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  %91 = load i64, i64* %9, align 8
  store i64 %91, i64* %8, align 8
  br label %92

92:                                               ; preds = %153, %84
  %93 = load i64, i64* %8, align 8
  %94 = load i64, i64* %10, align 8
  %95 = icmp slt i64 %93, %94
  br i1 %95, label %96, label %156

96:                                               ; preds = %92
  store i64 0, i64* %14, align 8
  %97 = load i64, i64* %5, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %121

99:                                               ; preds = %96
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %121

104:                                              ; preds = %99
  %105 = load i32*, i32** %7, align 8
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 6
  %108 = load i32, i32* %107, align 8
  %109 = load i64, i64* %8, align 8
  %110 = mul i64 %109, 8
  %111 = load i32, i32* @DMU_READ_PREFETCH, align 4
  %112 = call i32 @dmu_read(i32* %105, i32 %108, i64 %110, i32 8, i64* %14, i32 %111)
  store i32 %112, i32* %12, align 4
  %113 = load i32, i32* %12, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %104
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %117 = load i32, i32* %12, align 4
  %118 = call i32 @vdev_dbgmsg(%struct.TYPE_11__* %116, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* %12, align 4
  store i32 %119, i32* %3, align 4
  br label %189

120:                                              ; preds = %104
  br label %121

121:                                              ; preds = %120, %99, %96
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 3
  %124 = load i32*, i32** %123, align 8
  %125 = icmp eq i32* %124, null
  br i1 %125, label %126, label %132

126:                                              ; preds = %121
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %128 = call i32 @vdev_is_concrete(%struct.TYPE_11__* %127)
  %129 = call i32 @ASSERT0(i32 %128)
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %131 = call i32 @vdev_metaslab_group_create(%struct.TYPE_11__* %130)
  br label %132

132:                                              ; preds = %126, %121
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 3
  %135 = load i32*, i32** %134, align 8
  %136 = load i64, i64* %8, align 8
  %137 = load i64, i64* %14, align 8
  %138 = load i64, i64* %5, align 8
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 5
  %141 = load i32**, i32*** %140, align 8
  %142 = load i64, i64* %8, align 8
  %143 = getelementptr inbounds i32*, i32** %141, i64 %142
  %144 = call i32 @metaslab_init(i32* %135, i64 %136, i64 %137, i64 %138, i32** %143)
  store i32 %144, i32* %12, align 4
  %145 = load i32, i32* %12, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %132
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %149 = load i32, i32* %12, align 4
  %150 = call i32 @vdev_dbgmsg(%struct.TYPE_11__* %148, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %149)
  %151 = load i32, i32* %12, align 4
  store i32 %151, i32* %3, align 4
  br label %189

152:                                              ; preds = %132
  br label %153

153:                                              ; preds = %152
  %154 = load i64, i64* %8, align 8
  %155 = add nsw i64 %154, 1
  store i64 %155, i64* %8, align 8
  br label %92

156:                                              ; preds = %92
  %157 = load i64, i64* %5, align 8
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %156
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %161 = load i32, i32* @SCL_ALLOC, align 4
  %162 = load i32, i32* @FTAG, align 4
  %163 = load i32, i32* @RW_WRITER, align 4
  %164 = call i32 @spa_config_enter(%struct.TYPE_12__* %160, i32 %161, i32 %162, i32 %163)
  br label %165

165:                                              ; preds = %159, %156
  %166 = load i32, i32* %13, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %178, label %168

168:                                              ; preds = %165
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 8
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %178, label %173

173:                                              ; preds = %168
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 3
  %176 = load i32*, i32** %175, align 8
  %177 = call i32 @metaslab_group_activate(i32* %176)
  br label %178

178:                                              ; preds = %173, %168, %165
  %179 = load i64, i64* %5, align 8
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %178
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %183 = load i32, i32* @SCL_ALLOC, align 4
  %184 = load i32, i32* @FTAG, align 4
  %185 = call i32 @spa_config_exit(%struct.TYPE_12__* %182, i32 %183, i32 %184)
  br label %186

186:                                              ; preds = %181, %178
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %188 = call i32 @spa_log_sm_set_blocklimit(%struct.TYPE_12__* %187)
  store i32 0, i32* %3, align 4
  br label %189

189:                                              ; preds = %186, %147, %115, %50
  %190 = load i32, i32* %3, align 4
  ret i32 %190
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @spa_config_held(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32** @vmem_zalloc(i64, i32) #1

declare dso_local i32 @bcopy(i32**, i32**, i64) #1

declare dso_local i32 @vmem_free(i32**, i64) #1

declare dso_local i32 @dmu_read(i32*, i32, i64, i32, i64*, i32) #1

declare dso_local i32 @vdev_dbgmsg(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @ASSERT0(i32) #1

declare dso_local i32 @vdev_is_concrete(%struct.TYPE_11__*) #1

declare dso_local i32 @vdev_metaslab_group_create(%struct.TYPE_11__*) #1

declare dso_local i32 @metaslab_init(i32*, i64, i64, i64, i32**) #1

declare dso_local i32 @spa_config_enter(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i32 @metaslab_group_activate(i32*) #1

declare dso_local i32 @spa_config_exit(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @spa_log_sm_set_blocklimit(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
