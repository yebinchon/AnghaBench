; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_label.c_vdev_label_sync.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_label.c_vdev_label_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__*, %struct.TYPE_10__** }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i8* }

@B_FALSE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@NV_ENCODE_XDR = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@VDEV_LABELS = common dso_local global i32 0, align 4
@vdev_label_t = common dso_local global i32 0, align 4
@vl_vdev_phys = common dso_local global i32 0, align 4
@vdev_label_sync_done = common dso_local global i32 0, align 4
@ZIO_FLAG_DONT_PROPAGATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_10__*, i32, i32, i32)* @vdev_label_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdev_label_sync(i32* %0, i32* %1, %struct.TYPE_10__* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %18, align 4
  br label %19

19:                                               ; preds = %38, %6
  %20 = load i32, i32* %18, align 4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %41

25:                                               ; preds = %19
  %26 = load i32*, i32** %7, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %29, align 8
  %31 = load i32, i32* %18, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %30, i64 %32
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %12, align 4
  call void @vdev_label_sync(i32* %26, i32* %27, %struct.TYPE_10__* %34, i32 %35, i32 %36, i32 %37)
  br label %38

38:                                               ; preds = %25
  %39 = load i32, i32* %18, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %18, align 4
  br label %19

41:                                               ; preds = %19
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %41
  br label %104

49:                                               ; preds = %41
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %51 = call i32 @vdev_writeable(%struct.TYPE_10__* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  br label %104

54:                                               ; preds = %49
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @B_FALSE, align 4
  %61 = call i32* @spa_config_generate(i32 %57, %struct.TYPE_10__* %58, i32 %59, i32 %60)
  store i32* %61, i32** %13, align 8
  %62 = load i32, i32* @B_TRUE, align 4
  %63 = call i32* @abd_alloc_linear(i32 8, i32 %62)
  store i32* %63, i32** %15, align 8
  %64 = load i32*, i32** %15, align 8
  %65 = call i32 @abd_zero(i32* %64, i32 8)
  %66 = load i32*, i32** %15, align 8
  %67 = call %struct.TYPE_11__* @abd_to_buf(i32* %66)
  store %struct.TYPE_11__* %67, %struct.TYPE_11__** %14, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  store i8* %70, i8** %16, align 8
  store i64 8, i64* %17, align 8
  %71 = load i32*, i32** %13, align 8
  %72 = load i32, i32* @NV_ENCODE_XDR, align 4
  %73 = load i32, i32* @KM_SLEEP, align 4
  %74 = call i32 @nvlist_pack(i32* %71, i8** %16, i64* %17, i32 %72, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %99, label %76

76:                                               ; preds = %54
  br label %77

77:                                               ; preds = %95, %76
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @VDEV_LABELS, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %98

81:                                               ; preds = %77
  %82 = load i32*, i32** %7, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %84 = load i32, i32* %10, align 4
  %85 = load i32*, i32** %15, align 8
  %86 = load i32, i32* @vdev_label_t, align 4
  %87 = load i32, i32* @vl_vdev_phys, align 4
  %88 = call i32 @offsetof(i32 %86, i32 %87)
  %89 = load i32, i32* @vdev_label_sync_done, align 4
  %90 = load i32*, i32** %8, align 8
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* @ZIO_FLAG_DONT_PROPAGATE, align 4
  %93 = or i32 %91, %92
  %94 = call i32 @vdev_label_write(i32* %82, %struct.TYPE_10__* %83, i32 %84, i32* %85, i32 %88, i32 8, i32 %89, i32* %90, i32 %93)
  br label %95

95:                                               ; preds = %81
  %96 = load i32, i32* %10, align 4
  %97 = add nsw i32 %96, 2
  store i32 %97, i32* %10, align 4
  br label %77

98:                                               ; preds = %77
  br label %99

99:                                               ; preds = %98, %54
  %100 = load i32*, i32** %15, align 8
  %101 = call i32 @abd_free(i32* %100)
  %102 = load i32*, i32** %13, align 8
  %103 = call i32 @nvlist_free(i32* %102)
  br label %104

104:                                              ; preds = %99, %53, %48
  ret void
}

declare dso_local i32 @vdev_writeable(%struct.TYPE_10__*) #1

declare dso_local i32* @spa_config_generate(i32, %struct.TYPE_10__*, i32, i32) #1

declare dso_local i32* @abd_alloc_linear(i32, i32) #1

declare dso_local i32 @abd_zero(i32*, i32) #1

declare dso_local %struct.TYPE_11__* @abd_to_buf(i32*) #1

declare dso_local i32 @nvlist_pack(i32*, i8**, i64*, i32, i32) #1

declare dso_local i32 @vdev_label_write(i32*, %struct.TYPE_10__*, i32, i32*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @offsetof(i32, i32) #1

declare dso_local i32 @abd_free(i32*) #1

declare dso_local i32 @nvlist_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
