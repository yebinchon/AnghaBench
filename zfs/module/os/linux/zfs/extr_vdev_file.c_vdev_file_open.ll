; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_vdev_file.c_vdev_file_open.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_vdev_file.c_vdev_file_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i8*, i32, %struct.TYPE_11__, i32, %struct.TYPE_14__*, i32, i8*, i8* }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_15__ = type { i32, i32 }

@B_TRUE = common dso_local global i8* null, align 8
@B_FALSE = common dso_local global i32 0, align 4
@VDEV_AUX_BAD_LABEL = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@FOFFMAX = common dso_local global i32 0, align 4
@rootdir = common dso_local global i32 0, align 4
@VDEV_AUX_OPEN_FAILED = common dso_local global i8* null, align 8
@AT_SIZE = common dso_local global i32 0, align 4
@kcred = common dso_local global i32 0, align 4
@SPA_MINBLOCKSHIFT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@VREG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32*, i32*, i32*)* @vdev_file_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdev_file_open(%struct.TYPE_13__* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.TYPE_15__, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i8*, i8** @B_TRUE, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 7
  store i8* %14, i8** %16, align 8
  %17 = load i8*, i8** @B_TRUE, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 6
  store i8* %17, i8** %19, align 8
  %20 = load i32, i32* @B_FALSE, align 4
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %35, label %27

27:                                               ; preds = %4
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 47
  br i1 %34, label %35, label %42

35:                                               ; preds = %27, %4
  %36 = load i8*, i8** @VDEV_AUX_BAD_LABEL, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  store i8* %36, i8** %39, align 8
  %40 = load i32, i32* @EINVAL, align 4
  %41 = call i32 @SET_ERROR(i32 %40)
  store i32 %41, i32* %5, align 4
  br label %124

42:                                               ; preds = %27
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 4
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %44, align 8
  %46 = icmp ne %struct.TYPE_14__* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @ASSERT(i32 %50)
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 4
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %53, align 8
  store %struct.TYPE_14__* %54, %struct.TYPE_14__** %10, align 8
  br label %101

55:                                               ; preds = %42
  %56 = load i32, i32* @KM_SLEEP, align 4
  %57 = call %struct.TYPE_14__* @kmem_zalloc(i32 8, i32 %56)
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 4
  store %struct.TYPE_14__* %57, %struct.TYPE_14__** %59, align 8
  store %struct.TYPE_14__* %57, %struct.TYPE_14__** %10, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %72

64:                                               ; preds = %55
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 47
  br label %72

72:                                               ; preds = %64, %55
  %73 = phi i1 [ false, %55 ], [ %71, %64 ]
  %74 = zext i1 %73 to i32
  %75 = call i32 @ASSERT(i32 %74)
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  %80 = load i32, i32* @UIO_SYSSPACE, align 4
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @spa_mode(i32 %83)
  %85 = load i32, i32* @FOFFMAX, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @rootdir, align 4
  %88 = call i32 @vn_openat(i8* %79, i32 %80, i32 %86, i32 0, %struct.TYPE_12__** %11, i32 0, i32 0, i32 %87, i32 -1)
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %13, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %72
  %92 = load i8*, i8** @VDEV_AUX_OPEN_FAILED, align 8
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  store i8* %92, i8** %95, align 8
  %96 = load i32, i32* %13, align 4
  store i32 %96, i32* %5, align 4
  br label %124

97:                                               ; preds = %72
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 0
  store %struct.TYPE_12__* %98, %struct.TYPE_12__** %100, align 8
  br label %101

101:                                              ; preds = %97, %47
  %102 = load i32, i32* @AT_SIZE, align 4
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 1
  store i32 %102, i32* %103, align 4
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %105, align 8
  %107 = load i32, i32* @kcred, align 4
  %108 = call i32 @VOP_GETATTR(%struct.TYPE_12__* %106, %struct.TYPE_15__* %12, i32 0, i32 %107, i32* null)
  store i32 %108, i32* %13, align 4
  %109 = load i32, i32* %13, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %101
  %112 = load i8*, i8** @VDEV_AUX_OPEN_FAILED, align 8
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  store i8* %112, i8** %115, align 8
  %116 = load i32, i32* %13, align 4
  store i32 %116, i32* %5, align 4
  br label %124

117:                                              ; preds = %101
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** %7, align 8
  store i32 %119, i32* %120, align 4
  %121 = load i32*, i32** %8, align 8
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* @SPA_MINBLOCKSHIFT, align 4
  %123 = load i32*, i32** %9, align 8
  store i32 %122, i32* %123, align 4
  store i32 0, i32* %5, align 4
  br label %124

124:                                              ; preds = %117, %111, %91, %35
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.TYPE_14__* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @vn_openat(i8*, i32, i32, i32, %struct.TYPE_12__**, i32, i32, i32, i32) #1

declare dso_local i32 @spa_mode(i32) #1

declare dso_local i32 @VOP_GETATTR(%struct.TYPE_12__*, %struct.TYPE_15__*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
