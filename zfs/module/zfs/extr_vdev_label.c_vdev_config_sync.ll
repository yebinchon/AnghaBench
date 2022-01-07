; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_label.c_vdev_config_sync.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_label.c_vdev_config_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64, i32, i32, %struct.TYPE_20__, i32, %struct.TYPE_22__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_22__ = type { i64 }

@ZIO_FLAG_CONFIG_WRITER = common dso_local global i32 0, align 4
@ZIO_FLAG_CANFAIL = common dso_local global i32 0, align 4
@ZIO_FLAG_TRYHARD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [103 x i8] c"vdev_label_sync_list() returned error %d for pool '%s' when syncing out the even labels of dirty vdevs\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"vdev_uberblock_sync_list() returned error %d for pool '%s'\00", align 1
@.str.2 = private unnamed_addr constant [102 x i8] c"vdev_label_sync_list() returned error %d for pool '%s' when syncing out the odd labels of dirty vdevs\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vdev_config_sync(%struct.TYPE_21__** %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_21__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_21__** %0, %struct.TYPE_21__*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %15 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %15, i64 0
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  store %struct.TYPE_23__* %19, %struct.TYPE_23__** %8, align 8
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 5
  store %struct.TYPE_22__* %21, %struct.TYPE_22__** %9, align 8
  store i32 0, i32* %10, align 4
  %22 = load i32, i32* @ZIO_FLAG_CONFIG_WRITER, align 4
  %23 = load i32, i32* @ZIO_FLAG_CANFAIL, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @ASSERT(i32 %27)
  br label %29

29:                                               ; preds = %173, %148, %130, %3
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %29
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @ZIO_FLAG_TRYHARD, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %4, align 4
  br label %175

39:                                               ; preds = %32
  %40 = load i32, i32* @ZIO_FLAG_TRYHARD, align 4
  %41 = load i32, i32* %11, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %39, %29
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %7, align 8
  %48 = icmp sle i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @ASSERT(i32 %49)
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %7, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %76

56:                                               ; preds = %43
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = load i64, i64* %7, align 8
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @uberblock_update(%struct.TYPE_22__* %57, i32 %60, i64 %61, i32 %65)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %56
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 2
  %72 = call i64 @list_is_empty(i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  store i32 0, i32* %4, align 4
  br label %175

75:                                               ; preds = %69, %56
  br label %76

76:                                               ; preds = %75, %43
  %77 = load i64, i64* %7, align 8
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %79 = call i64 @spa_freeze_txg(%struct.TYPE_23__* %78)
  %80 = icmp sgt i64 %77, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  store i32 0, i32* %4, align 4
  br label %175

82:                                               ; preds = %76
  %83 = load i64, i64* %7, align 8
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp sle i64 %83, %86
  %88 = zext i1 %87 to i32
  %89 = call i32 @ASSERT(i32 %88)
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %91 = load i32, i32* %11, align 4
  %92 = call i32* @zio_root(%struct.TYPE_23__* %90, i32* null, i32* null, i32 %91)
  store i32* %92, i32** %13, align 8
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i32 0, i32 1
  %95 = load i64, i64* %7, align 8
  %96 = call i32 @TXG_CLEAN(i64 %95)
  %97 = call %struct.TYPE_21__* @txg_list_head(i32* %94, i32 %96)
  store %struct.TYPE_21__* %97, %struct.TYPE_21__** %14, align 8
  br label %98

98:                                               ; preds = %105, %82
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %100 = icmp ne %struct.TYPE_21__* %99, null
  br i1 %100, label %101, label %112

101:                                              ; preds = %98
  %102 = load i32*, i32** %13, align 8
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %104 = call i32 @zio_flush(i32* %102, %struct.TYPE_21__* %103)
  br label %105

105:                                              ; preds = %101
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %109 = load i64, i64* %7, align 8
  %110 = call i32 @TXG_CLEAN(i64 %109)
  %111 = call %struct.TYPE_21__* @txg_list_next(i32* %107, %struct.TYPE_21__* %108, i32 %110)
  store %struct.TYPE_21__* %111, %struct.TYPE_21__** %14, align 8
  br label %98

112:                                              ; preds = %98
  %113 = load i32*, i32** %13, align 8
  %114 = call i32 @zio_wait(i32* %113)
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %116 = load i64, i64* %7, align 8
  %117 = load i32, i32* %11, align 4
  %118 = call i32 @vdev_label_sync_list(%struct.TYPE_23__* %115, i32 0, i64 %116, i32 %117)
  store i32 %118, i32* %10, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %131

120:                                              ; preds = %112
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* @ZIO_FLAG_TRYHARD, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %120
  %126 = load i32, i32* %10, align 4
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %128 = call i32 @spa_name(%struct.TYPE_23__* %127)
  %129 = call i32 @zfs_dbgmsg(i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str, i64 0, i64 0), i32 %126, i32 %128)
  br label %130

130:                                              ; preds = %125, %120
  br label %29

131:                                              ; preds = %112
  %132 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %5, align 8
  %133 = load i32, i32* %6, align 4
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %135 = load i32, i32* %11, align 4
  %136 = call i32 @vdev_uberblock_sync_list(%struct.TYPE_21__** %132, i32 %133, %struct.TYPE_22__* %134, i32 %135)
  store i32 %136, i32* %10, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %149

138:                                              ; preds = %131
  %139 = load i32, i32* %11, align 4
  %140 = load i32, i32* @ZIO_FLAG_TRYHARD, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %138
  %144 = load i32, i32* %10, align 4
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %146 = call i32 @spa_name(%struct.TYPE_23__* %145)
  %147 = call i32 @zfs_dbgmsg(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %144, i32 %146)
  br label %148

148:                                              ; preds = %143, %138
  br label %29

149:                                              ; preds = %131
  %150 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %151 = call i64 @spa_multihost(%struct.TYPE_23__* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %149
  %154 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %155 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %156 = call i32 @mmp_update_uberblock(%struct.TYPE_23__* %154, %struct.TYPE_22__* %155)
  br label %157

157:                                              ; preds = %153, %149
  %158 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %159 = load i64, i64* %7, align 8
  %160 = load i32, i32* %11, align 4
  %161 = call i32 @vdev_label_sync_list(%struct.TYPE_23__* %158, i32 1, i64 %159, i32 %160)
  store i32 %161, i32* %10, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %174

163:                                              ; preds = %157
  %164 = load i32, i32* %11, align 4
  %165 = load i32, i32* @ZIO_FLAG_TRYHARD, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %163
  %169 = load i32, i32* %10, align 4
  %170 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %171 = call i32 @spa_name(%struct.TYPE_23__* %170)
  %172 = call i32 @zfs_dbgmsg(i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.2, i64 0, i64 0), i32 %169, i32 %171)
  br label %173

173:                                              ; preds = %168, %163
  br label %29

174:                                              ; preds = %157
  store i32 0, i32* %4, align 4
  br label %175

175:                                              ; preds = %174, %81, %74, %37
  %176 = load i32, i32* %4, align 4
  ret i32 %176
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @uberblock_update(%struct.TYPE_22__*, i32, i64, i32) #1

declare dso_local i64 @list_is_empty(i32*) #1

declare dso_local i64 @spa_freeze_txg(%struct.TYPE_23__*) #1

declare dso_local i32* @zio_root(%struct.TYPE_23__*, i32*, i32*, i32) #1

declare dso_local %struct.TYPE_21__* @txg_list_head(i32*, i32) #1

declare dso_local i32 @TXG_CLEAN(i64) #1

declare dso_local i32 @zio_flush(i32*, %struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_21__* @txg_list_next(i32*, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @zio_wait(i32*) #1

declare dso_local i32 @vdev_label_sync_list(%struct.TYPE_23__*, i32, i64, i32) #1

declare dso_local i32 @zfs_dbgmsg(i8*, i32, i32) #1

declare dso_local i32 @spa_name(%struct.TYPE_23__*) #1

declare dso_local i32 @vdev_uberblock_sync_list(%struct.TYPE_21__**, i32, %struct.TYPE_22__*, i32) #1

declare dso_local i64 @spa_multihost(%struct.TYPE_23__*) #1

declare dso_local i32 @mmp_update_uberblock(%struct.TYPE_23__*, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
