; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zap.c_zap_put_leaf_maybe_grow_ptrtbl.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zap.c_zap_put_leaf_maybe_grow_ptrtbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32* }
%struct.TYPE_13__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i64 }

@ZAP_LEAF_LOW_WATER = common dso_local global i64 0, align 8
@RW_WRITER = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, i32*, i8*, i32*)* @zap_put_leaf_maybe_grow_ptrtbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zap_put_leaf_maybe_grow_ptrtbl(%struct.TYPE_17__* %0, i32* %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  store %struct.TYPE_16__* %17, %struct.TYPE_16__** %9, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %19 = call %struct.TYPE_13__* @zap_f_phys(%struct.TYPE_16__* %18)
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %10, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = call %struct.TYPE_18__* @zap_leaf_phys(i32* %23)
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %10, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %4
  %31 = load i32*, i32** %6, align 8
  %32 = call %struct.TYPE_18__* @zap_leaf_phys(i32* %31)
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @ZAP_LEAF_LOW_WATER, align 8
  %37 = icmp slt i64 %35, %36
  br label %38

38:                                               ; preds = %30, %4
  %39 = phi i1 [ false, %4 ], [ %37, %30 ]
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %11, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @zap_put_leaf(i32* %41)
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %38
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %47 = call %struct.TYPE_13__* @zap_f_phys(%struct.TYPE_16__* %46)
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %97

52:                                               ; preds = %45, %38
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = call i64 @zap_tryupgradedir(%struct.TYPE_16__* %53, i32* %54)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %84

57:                                               ; preds = %52
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  store i32* %60, i32** %12, align 8
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %13, align 4
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = call i32 @zap_unlockdir(%struct.TYPE_16__* %64, i8* %65)
  %67 = load i32*, i32** %12, align 8
  %68 = load i32, i32* %13, align 4
  %69 = load i32*, i32** %8, align 8
  %70 = load i32, i32* @RW_WRITER, align 4
  %71 = load i32, i32* @FALSE, align 4
  %72 = load i32, i32* @FALSE, align 4
  %73 = load i8*, i8** %7, align 8
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = call i32 @zap_lockdir(i32* %67, i32 %68, i32* %69, i32 %70, i32 %71, i32 %72, i8* %73, %struct.TYPE_16__** %75)
  store i32 %76, i32* %14, align 4
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %78, align 8
  store %struct.TYPE_16__* %79, %struct.TYPE_16__** %9, align 8
  %80 = load i32, i32* %14, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %57
  br label %97

83:                                               ; preds = %57
  br label %84

84:                                               ; preds = %83, %52
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %86 = call %struct.TYPE_13__* @zap_f_phys(%struct.TYPE_16__* %85)
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %10, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %84
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %94 = load i32*, i32** %8, align 8
  %95 = call i32 @zap_grow_ptrtbl(%struct.TYPE_16__* %93, i32* %94)
  br label %96

96:                                               ; preds = %92, %84
  br label %97

97:                                               ; preds = %82, %96, %45
  ret void
}

declare dso_local %struct.TYPE_13__* @zap_f_phys(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_18__* @zap_leaf_phys(i32*) #1

declare dso_local i32 @zap_put_leaf(i32*) #1

declare dso_local i64 @zap_tryupgradedir(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @zap_unlockdir(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @zap_lockdir(i32*, i32, i32*, i32, i32, i32, i8*, %struct.TYPE_16__**) #1

declare dso_local i32 @zap_grow_ptrtbl(%struct.TYPE_16__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
