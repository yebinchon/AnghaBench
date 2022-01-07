; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_tx.c_dmu_tx_hold_object_impl.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_tx.c_dmu_tx_hold_object_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@DMU_NEW_OBJECT = common dso_local global i64 0, align 8
@FTAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_4__*, i32*, i64, i32, i64, i64)* @dmu_tx_hold_object_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @dmu_tx_hold_object_impl(%struct.TYPE_4__* %0, i32* %1, i64 %2, i32 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i32* null, i32** %14, align 8
  %17 = load i64, i64* %10, align 8
  %18 = load i64, i64* @DMU_NEW_OBJECT, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %6
  %21 = load i32*, i32** %9, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load i32, i32* @FTAG, align 4
  %24 = call i32 @dnode_hold(i32* %21, i64 %22, i32 %23, i32** %14)
  store i32 %24, i32* %16, align 4
  %25 = load i32, i32* %16, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load i32, i32* %16, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  store i32* null, i32** %7, align 8
  br label %47

31:                                               ; preds = %20
  br label %32

32:                                               ; preds = %31, %6
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %34 = load i32*, i32** %14, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load i64, i64* %12, align 8
  %37 = load i64, i64* %13, align 8
  %38 = call i32* @dmu_tx_hold_dnode_impl(%struct.TYPE_4__* %33, i32* %34, i32 %35, i64 %36, i64 %37)
  store i32* %38, i32** %15, align 8
  %39 = load i32*, i32** %14, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %32
  %42 = load i32*, i32** %14, align 8
  %43 = load i32, i32* @FTAG, align 4
  %44 = call i32 @dnode_rele(i32* %42, i32 %43)
  br label %45

45:                                               ; preds = %41, %32
  %46 = load i32*, i32** %15, align 8
  store i32* %46, i32** %7, align 8
  br label %47

47:                                               ; preds = %45, %27
  %48 = load i32*, i32** %7, align 8
  ret i32* %48
}

declare dso_local i32 @dnode_hold(i32*, i64, i32, i32**) #1

declare dso_local i32* @dmu_tx_hold_dnode_impl(%struct.TYPE_4__*, i32*, i32, i64, i64) #1

declare dso_local i32 @dnode_rele(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
