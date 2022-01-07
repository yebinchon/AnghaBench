; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zap_micro.c_mze_canfit_fzap_leaf.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zap_micro.c_mze_canfit_fzap_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { i64, i64 }

@ZAP_LEAF_NUMCHUNKS_DEF = common dso_local global i32 0, align 4
@MZAP_ENT_CHUNKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i64)* @mze_canfit_fzap_leaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mze_canfit_fzap_leaf(%struct.TYPE_12__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_13__, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %5, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  store i32* %16, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %17 = load i64, i64* %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  store i64 %17, i64* %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = call %struct.TYPE_13__* @avl_find(i32* %20, %struct.TYPE_13__* %6, i32* %8)
  store %struct.TYPE_13__* %21, %struct.TYPE_13__** %7, align 8
  br label %22

22:                                               ; preds = %36, %2
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %24 = icmp ne %struct.TYPE_13__* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %4, align 8
  %30 = icmp eq i64 %28, %29
  br label %31

31:                                               ; preds = %25, %22
  %32 = phi i1 [ false, %22 ], [ %30, %25 ]
  br i1 %32, label %33, label %40

33:                                               ; preds = %31
  %34 = load i32, i32* %10, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %10, align 4
  br label %36

36:                                               ; preds = %33
  %37 = load i32*, i32** %9, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %39 = call %struct.TYPE_13__* @AVL_NEXT(i32* %37, %struct.TYPE_13__* %38)
  store %struct.TYPE_13__* %39, %struct.TYPE_13__** %7, align 8
  br label %22

40:                                               ; preds = %31
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* @ZAP_LEAF_NUMCHUNKS_DEF, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @MZAP_ENT_CHUNKS, align 4
  %46 = mul nsw i32 %44, %45
  %47 = icmp sgt i32 %43, %46
  %48 = zext i1 %47 to i32
  ret i32 %48
}

declare dso_local %struct.TYPE_13__* @avl_find(i32*, %struct.TYPE_13__*, i32*) #1

declare dso_local %struct.TYPE_13__* @AVL_NEXT(i32*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
