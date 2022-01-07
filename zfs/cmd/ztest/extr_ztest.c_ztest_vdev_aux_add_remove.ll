; ModuleID = '/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_ztest_vdev_aux_add_remove.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_ztest_vdev_aux_add_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_16__, %struct.TYPE_16__, i32* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_13__** }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i64 }

@ztest_shared = common dso_local global %struct.TYPE_14__* null, align 8
@ztest_spa = common dso_local global %struct.TYPE_15__* null, align 8
@ztest_opts = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@MAXPATHLEN = common dso_local global i32 0, align 4
@UMEM_NOFAIL = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_SPARES = common dso_local global i8* null, align 8
@ZPOOL_CONFIG_L2CACHE = common dso_local global i8* null, align 8
@ztest_vdev_lock = common dso_local global i32 0, align 4
@SCL_VDEV = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@ztest_aux_template = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"spa_vdev_add(%p) = %d\00", align 1
@B_FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"spa_vdev_remove(%llu) = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ztest_vdev_aux_add_remove(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** @ztest_shared, align 8
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %5, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** @ztest_spa, align 8
  store %struct.TYPE_15__* %16, %struct.TYPE_15__** %6, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %7, align 8
  store i64 0, i64* %11, align 8
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ztest_opts, i32 0, i32 3), align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %169

23:                                               ; preds = %2
  %24 = load i32, i32* @MAXPATHLEN, align 4
  %25 = load i32, i32* @UMEM_NOFAIL, align 4
  %26 = call i8* @umem_alloc(i32 %24, i32 %25)
  store i8* %26, i8** %10, align 8
  %27 = call i64 @ztest_random(i32 2)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 1
  store %struct.TYPE_16__* %31, %struct.TYPE_16__** %8, align 8
  %32 = load i8*, i8** @ZPOOL_CONFIG_SPARES, align 8
  store i8* %32, i8** %9, align 8
  br label %37

33:                                               ; preds = %23
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  store %struct.TYPE_16__* %35, %struct.TYPE_16__** %8, align 8
  %36 = load i8*, i8** @ZPOOL_CONFIG_L2CACHE, align 8
  store i8* %36, i8** %9, align 8
  br label %37

37:                                               ; preds = %33, %29
  %38 = call i32 @mutex_enter(i32* @ztest_vdev_lock)
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %40 = load i32, i32* @SCL_VDEV, align 4
  %41 = load i32, i32* @FTAG, align 4
  %42 = load i32, i32* @RW_READER, align 4
  %43 = call i32 @spa_config_enter(%struct.TYPE_15__* %39, i32 %40, i32 %41, i32 %42)
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %37
  %49 = call i64 @ztest_random(i32 4)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %48
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %53, align 8
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @ztest_random(i32 %57)
  %59 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %54, i64 %58
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %11, align 8
  br label %119

63:                                               ; preds = %48, %37
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  store i64 0, i64* %65, align 8
  br label %66

66:                                               ; preds = %113, %63
  %67 = load i8*, i8** %10, align 8
  %68 = load i32, i32* @MAXPATHLEN, align 4
  %69 = load i8*, i8** @ztest_aux_template, align 8
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ztest_opts, i32 0, i32 2), align 8
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ztest_opts, i32 0, i32 1), align 4
  %72 = load i8*, i8** %9, align 8
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @snprintf(i8* %67, i32 %68, i8* %69, i32 %70, i32 %71, i8* %72, i64 %75)
  store i32 0, i32* %13, align 4
  br label %77

77:                                               ; preds = %98, %66
  %78 = load i32, i32* %13, align 4
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %101

83:                                               ; preds = %77
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %85, align 8
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %86, i64 %88
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i8*, i8** %10, align 8
  %94 = call i64 @strcmp(i32 %92, i8* %93)
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %83
  br label %101

97:                                               ; preds = %83
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %13, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %13, align 4
  br label %77

101:                                              ; preds = %96, %77
  %102 = load i32, i32* %13, align 4
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp eq i32 %102, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %101
  %108 = load i32*, i32** %7, align 8
  %109 = load i8*, i8** %10, align 8
  %110 = call i32* @vdev_lookup_by_path(i32* %108, i8* %109)
  %111 = icmp eq i32* %110, null
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  br label %118

113:                                              ; preds = %107, %101
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %116, 1
  store i64 %117, i64* %115, align 8
  br label %66

118:                                              ; preds = %112
  br label %119

119:                                              ; preds = %118, %51
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %121 = load i32, i32* @SCL_VDEV, align 4
  %122 = load i32, i32* @FTAG, align 4
  %123 = call i32 @spa_config_exit(%struct.TYPE_15__* %120, i32 %121, i32 %122)
  %124 = load i64, i64* %11, align 8
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %145

126:                                              ; preds = %119
  %127 = load i8*, i8** %9, align 8
  %128 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ztest_opts, i32 0, i32 0), align 8
  %129 = mul nsw i32 %128, 5
  %130 = sdiv i32 %129, 4
  %131 = call i32* @make_vdev_root(i32* null, i8* %127, i32* null, i32 %130, i32 0, i32* null, i32 0, i32 0, i32 1)
  store i32* %131, i32** %14, align 8
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %133 = load i32*, i32** %14, align 8
  %134 = call i32 @spa_vdev_add(%struct.TYPE_15__* %132, i32* %133)
  store i32 %134, i32* %12, align 4
  %135 = load i32, i32* %12, align 4
  switch i32 %135, label %137 [
    i32 0, label %136
  ]

136:                                              ; preds = %126
  br label %142

137:                                              ; preds = %126
  %138 = load i32*, i32** %14, align 8
  %139 = ptrtoint i32* %138 to i64
  %140 = load i32, i32* %12, align 4
  %141 = call i32 @fatal(i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %139, i32 %140)
  br label %142

142:                                              ; preds = %137, %136
  %143 = load i32*, i32** %14, align 8
  %144 = call i32 @nvlist_free(i32* %143)
  br label %164

145:                                              ; preds = %119
  %146 = call i64 @ztest_random(i32 2)
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %145
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %150 = load i64, i64* %11, align 8
  %151 = call i32 @vdev_online(%struct.TYPE_15__* %149, i64 %150, i32 0, i32* null)
  br label %152

152:                                              ; preds = %148, %145
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %154 = load i64, i64* %11, align 8
  %155 = load i32, i32* @B_FALSE, align 4
  %156 = call i32 @spa_vdev_remove(%struct.TYPE_15__* %153, i64 %154, i32 %155)
  store i32 %156, i32* %12, align 4
  %157 = load i32, i32* %12, align 4
  switch i32 %157, label %159 [
    i32 0, label %158
    i32 130, label %158
    i32 129, label %158
    i32 128, label %158
  ]

158:                                              ; preds = %152, %152, %152, %152
  br label %163

159:                                              ; preds = %152
  %160 = load i64, i64* %11, align 8
  %161 = load i32, i32* %12, align 4
  %162 = call i32 @fatal(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %160, i32 %161)
  br label %163

163:                                              ; preds = %159, %158
  br label %164

164:                                              ; preds = %163, %142
  %165 = call i32 @mutex_exit(i32* @ztest_vdev_lock)
  %166 = load i8*, i8** %10, align 8
  %167 = load i32, i32* @MAXPATHLEN, align 4
  %168 = call i32 @umem_free(i8* %166, i32 %167)
  br label %169

169:                                              ; preds = %164, %22
  ret void
}

declare dso_local i8* @umem_alloc(i32, i32) #1

declare dso_local i64 @ztest_random(i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @spa_config_enter(%struct.TYPE_15__*, i32, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i8*, i64) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32* @vdev_lookup_by_path(i32*, i8*) #1

declare dso_local i32 @spa_config_exit(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32* @make_vdev_root(i32*, i8*, i32*, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @spa_vdev_add(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @fatal(i32, i8*, i64, i32) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i32 @vdev_online(%struct.TYPE_15__*, i64, i32, i32*) #1

declare dso_local i32 @spa_vdev_remove(%struct.TYPE_15__*, i64, i32) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @umem_free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
