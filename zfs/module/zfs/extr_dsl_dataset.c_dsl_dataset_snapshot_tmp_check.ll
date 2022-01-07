; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_dataset.c_dsl_dataset_snapshot_tmp_check.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_dataset.c_dsl_dataset_snapshot_tmp_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@FTAG = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@SPA_VERSION_USERREFS = common dso_local global i64 0, align 8
@ENOTSUP = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @dsl_dataset_snapshot_tmp_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsl_dataset_snapshot_tmp_check(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %6, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call %struct.TYPE_5__* @dmu_tx_pool(i32* %12)
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %7, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @FTAG, align 4
  %19 = call i32 @dsl_dataset_hold(%struct.TYPE_5__* %14, i32 %17, i32 %18, i32** %8)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %3, align 4
  br label %70

24:                                               ; preds = %2
  %25 = load i32*, i32** %8, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* @B_FALSE, align 4
  %31 = call i32 @dsl_dataset_snapshot_check_impl(i32* %25, i32 %28, i32* %29, i32 %30, i32 0, i32* null)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %24
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* @FTAG, align 4
  %37 = call i32 @dsl_dataset_rele(i32* %35, i32 %36)
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %3, align 4
  br label %70

39:                                               ; preds = %24
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @spa_version(i32 %42)
  %44 = load i64, i64* @SPA_VERSION_USERREFS, align 8
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %39
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* @FTAG, align 4
  %49 = call i32 @dsl_dataset_rele(i32* %47, i32 %48)
  %50 = load i32, i32* @ENOTSUP, align 4
  %51 = call i32 @SET_ERROR(i32 %50)
  store i32 %51, i32* %3, align 4
  br label %70

52:                                               ; preds = %39
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @B_TRUE, align 4
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @dsl_dataset_user_hold_check_one(i32* null, i32 %55, i32 %56, i32* %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %52
  %62 = load i32*, i32** %8, align 8
  %63 = load i32, i32* @FTAG, align 4
  %64 = call i32 @dsl_dataset_rele(i32* %62, i32 %63)
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %3, align 4
  br label %70

66:                                               ; preds = %52
  %67 = load i32*, i32** %8, align 8
  %68 = load i32, i32* @FTAG, align 4
  %69 = call i32 @dsl_dataset_rele(i32* %67, i32 %68)
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %66, %61, %46, %34, %22
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.TYPE_5__* @dmu_tx_pool(i32*) #1

declare dso_local i32 @dsl_dataset_hold(%struct.TYPE_5__*, i32, i32, i32**) #1

declare dso_local i32 @dsl_dataset_snapshot_check_impl(i32*, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @dsl_dataset_rele(i32*, i32) #1

declare dso_local i64 @spa_version(i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @dsl_dataset_user_hold_check_one(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
