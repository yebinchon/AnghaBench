; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_label.c_vdev_label_read_config.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_label.c_vdev_label_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }
%struct.TYPE_9__ = type { i32 }

@ZIO_FLAG_CONFIG_WRITER = common dso_local global i32 0, align 4
@ZIO_FLAG_CANFAIL = common dso_local global i32 0, align 4
@ZIO_FLAG_SPECULATIVE = common dso_local global i32 0, align 4
@SCL_STATE_ALL = common dso_local global i64 0, align 8
@RW_WRITER = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@VDEV_LABELS = common dso_local global i32 0, align 4
@vdev_label_t = common dso_local global i32 0, align 4
@vl_vdev_phys = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_POOL_TXG = common dso_local global i32 0, align 4
@ZIO_FLAG_TRYHARD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"label discarded as txg is too large (%llu > %llu)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @vdev_label_read_config(%struct.TYPE_8__* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i64 %1, i64* %5, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %20 = load i32, i32* @ZIO_FLAG_CONFIG_WRITER, align 4
  %21 = load i32, i32* @ZIO_FLAG_CANFAIL, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @ZIO_FLAG_SPECULATIVE, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %14, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = load i64, i64* @SCL_STATE_ALL, align 8
  %27 = load i32, i32* @RW_WRITER, align 4
  %28 = call i64 @spa_config_held(i32* %25, i64 %26, i32 %27)
  %29 = load i64, i64* @SCL_STATE_ALL, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @ASSERT(i32 %31)
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = call i32 @vdev_readable(%struct.TYPE_8__* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %138

37:                                               ; preds = %2
  %38 = load i32, i32* @B_TRUE, align 4
  %39 = call i32* @abd_alloc_linear(i32 4, i32 %38)
  store i32* %39, i32** %9, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = call %struct.TYPE_9__* @abd_to_buf(i32* %40)
  store %struct.TYPE_9__* %41, %struct.TYPE_9__** %8, align 8
  br label %42

42:                                               ; preds = %117, %37
  store i32 0, i32* %15, align 4
  br label %43

43:                                               ; preds = %106, %42
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* @VDEV_LABELS, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %109

47:                                               ; preds = %43
  store i32* null, i32** %16, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %14, align 4
  %50 = call i32* @zio_root(i32* %48, i32* null, i32* null, i32 %49)
  store i32* %50, i32** %10, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %53 = load i32, i32* %15, align 4
  %54 = load i32*, i32** %9, align 8
  %55 = load i32, i32* @vdev_label_t, align 4
  %56 = load i32, i32* @vl_vdev_phys, align 4
  %57 = call i32 @offsetof(i32 %55, i32 %56)
  %58 = load i32, i32* %14, align 4
  %59 = call i32 @vdev_label_read(i32* %51, %struct.TYPE_8__* %52, i32 %53, i32* %54, i32 %57, i32 4, i32* null, i32* null, i32 %58)
  %60 = load i32*, i32** %10, align 8
  %61 = call i64 @zio_wait(i32* %60)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %99

63:                                               ; preds = %47
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @nvlist_unpack(i32 %66, i32 4, i32** %16, i32 0)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %99

69:                                               ; preds = %63
  %70 = load i32*, i32** %16, align 8
  %71 = load i32, i32* @ZPOOL_CONFIG_POOL_TXG, align 4
  %72 = call i32 @nvlist_lookup_uint64(i32* %70, i32 %71, i64* %12)
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %13, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %69
  %76 = load i64, i64* %12, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %75, %69
  %79 = load i32*, i32** %7, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %83, label %81

81:                                               ; preds = %78
  %82 = load i32*, i32** %16, align 8
  store i32* %82, i32** %7, align 8
  br label %109

83:                                               ; preds = %78, %75
  %84 = load i64, i64* %12, align 8
  %85 = load i64, i64* %5, align 8
  %86 = icmp sle i64 %84, %85
  br i1 %86, label %87, label %97

87:                                               ; preds = %83
  %88 = load i64, i64* %12, align 8
  %89 = load i64, i64* %11, align 8
  %90 = icmp sgt i64 %88, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %87
  %92 = load i64, i64* %12, align 8
  store i64 %92, i64* %11, align 8
  %93 = load i32*, i32** %7, align 8
  %94 = call i32 @nvlist_free(i32* %93)
  %95 = load i32*, i32** %16, align 8
  %96 = call i32* @fnvlist_dup(i32* %95)
  store i32* %96, i32** %7, align 8
  br label %97

97:                                               ; preds = %91, %87, %83
  br label %98

98:                                               ; preds = %97
  br label %99

99:                                               ; preds = %98, %63, %47
  %100 = load i32*, i32** %16, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load i32*, i32** %16, align 8
  %104 = call i32 @nvlist_free(i32* %103)
  store i32* null, i32** %16, align 8
  br label %105

105:                                              ; preds = %102, %99
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %15, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %15, align 4
  br label %43

109:                                              ; preds = %81, %43
  %110 = load i32*, i32** %7, align 8
  %111 = icmp eq i32* %110, null
  br i1 %111, label %112, label %121

112:                                              ; preds = %109
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* @ZIO_FLAG_TRYHARD, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %112
  %118 = load i32, i32* @ZIO_FLAG_TRYHARD, align 4
  %119 = load i32, i32* %14, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %14, align 4
  br label %42

121:                                              ; preds = %112, %109
  %122 = load i32*, i32** %7, align 8
  %123 = icmp eq i32* %122, null
  br i1 %123, label %124, label %134

124:                                              ; preds = %121
  %125 = load i64, i64* %12, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %124
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %129 = load i64, i64* %12, align 8
  %130 = trunc i64 %129 to i32
  %131 = load i64, i64* %5, align 8
  %132 = trunc i64 %131 to i32
  %133 = call i32 @vdev_dbgmsg(%struct.TYPE_8__* %128, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %130, i32 %132)
  br label %134

134:                                              ; preds = %127, %124, %121
  %135 = load i32*, i32** %9, align 8
  %136 = call i32 @abd_free(i32* %135)
  %137 = load i32*, i32** %7, align 8
  store i32* %137, i32** %3, align 8
  br label %138

138:                                              ; preds = %134, %36
  %139 = load i32*, i32** %3, align 8
  ret i32* %139
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @spa_config_held(i32*, i64, i32) #1

declare dso_local i32 @vdev_readable(%struct.TYPE_8__*) #1

declare dso_local i32* @abd_alloc_linear(i32, i32) #1

declare dso_local %struct.TYPE_9__* @abd_to_buf(i32*) #1

declare dso_local i32* @zio_root(i32*, i32*, i32*, i32) #1

declare dso_local i32 @vdev_label_read(i32*, %struct.TYPE_8__*, i32, i32*, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @offsetof(i32, i32) #1

declare dso_local i64 @zio_wait(i32*) #1

declare dso_local i64 @nvlist_unpack(i32, i32, i32**, i32) #1

declare dso_local i32 @nvlist_lookup_uint64(i32*, i32, i64*) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i32* @fnvlist_dup(i32*) #1

declare dso_local i32 @vdev_dbgmsg(%struct.TYPE_8__*, i8*, i32, i32) #1

declare dso_local i32 @abd_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
