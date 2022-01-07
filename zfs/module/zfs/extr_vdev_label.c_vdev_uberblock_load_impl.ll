; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_label.c_vdev_uberblock_load_impl.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_label.c_vdev_uberblock_load_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__*, %struct.TYPE_10__** }
%struct.TYPE_9__ = type { i64 }
%struct.ubl_cbdata = type { i32 }

@VDEV_LABELS = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@vdev_uberblock_load_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_10__*, i32, %struct.ubl_cbdata*)* @vdev_uberblock_load_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdev_uberblock_load_impl(i32* %0, %struct.TYPE_10__* %1, i32 %2, %struct.ubl_cbdata* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubl_cbdata*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ubl_cbdata* %3, %struct.ubl_cbdata** %8, align 8
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %29, %4
  %13 = load i32, i32* %9, align 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %12
  %19 = load i32*, i32** %5, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %21, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %22, i64 %24
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.ubl_cbdata*, %struct.ubl_cbdata** %8, align 8
  call void @vdev_uberblock_load_impl(i32* %19, %struct.TYPE_10__* %26, i32 %27, %struct.ubl_cbdata* %28)
  br label %29

29:                                               ; preds = %18
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %9, align 4
  br label %12

32:                                               ; preds = %12
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %79

39:                                               ; preds = %32
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %41 = call i64 @vdev_readable(%struct.TYPE_10__* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %79

43:                                               ; preds = %39
  store i32 0, i32* %10, align 4
  br label %44

44:                                               ; preds = %75, %43
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @VDEV_LABELS, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %78

48:                                               ; preds = %44
  store i32 0, i32* %11, align 4
  br label %49

49:                                               ; preds = %71, %48
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %52 = call i32 @VDEV_UBERBLOCK_COUNT(%struct.TYPE_10__* %51)
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %54, label %74

54:                                               ; preds = %49
  %55 = load i32*, i32** %5, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %59 = call i32 @VDEV_UBERBLOCK_SIZE(%struct.TYPE_10__* %58)
  %60 = load i32, i32* @B_TRUE, align 4
  %61 = call i32 @abd_alloc_linear(i32 %59, i32 %60)
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @VDEV_UBERBLOCK_OFFSET(%struct.TYPE_10__* %62, i32 %63)
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %66 = call i32 @VDEV_UBERBLOCK_SIZE(%struct.TYPE_10__* %65)
  %67 = load i32, i32* @vdev_uberblock_load_done, align 4
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @vdev_label_read(i32* %55, %struct.TYPE_10__* %56, i32 %57, i32 %61, i32 %64, i32 %66, i32 %67, i32* %68, i32 %69)
  br label %71

71:                                               ; preds = %54
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %11, align 4
  br label %49

74:                                               ; preds = %49
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  br label %44

78:                                               ; preds = %44
  br label %79

79:                                               ; preds = %78, %39, %32
  ret void
}

declare dso_local i64 @vdev_readable(%struct.TYPE_10__*) #1

declare dso_local i32 @VDEV_UBERBLOCK_COUNT(%struct.TYPE_10__*) #1

declare dso_local i32 @vdev_label_read(i32*, %struct.TYPE_10__*, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @abd_alloc_linear(i32, i32) #1

declare dso_local i32 @VDEV_UBERBLOCK_SIZE(%struct.TYPE_10__*) #1

declare dso_local i32 @VDEV_UBERBLOCK_OFFSET(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
