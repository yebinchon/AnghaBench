; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zvol.c_zvol_set_volmode_sync.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zvol.c_zvol_set_volmode_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@FTAG = common dso_local global i32 0, align 4
@ZFS_PROP_VOLMODE = common dso_local global i32 0, align 4
@zvol_set_volmode_sync_cb = common dso_local global i32 0, align 4
@DS_FIND_CHILDREN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @zvol_set_volmode_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zvol_set_volmode_sync(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32* @dmu_tx_pool(i32* %12)
  store i32* %13, i32** %6, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @FTAG, align 4
  %19 = call i32 @dsl_dir_hold(i32* %14, i32 %17, i32 %18, %struct.TYPE_7__** %7, i32* null)
  %20 = call i32 @VERIFY0(i32 %19)
  %21 = load i32*, i32** %4, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store i32* %21, i32** %23, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @FTAG, align 4
  %29 = call i32 @dsl_dataset_hold(i32* %24, i32 %27, i32 %28, i32** %8)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %2
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* @ZFS_PROP_VOLMODE, align 4
  %35 = call i32 @zfs_prop_to_name(i32 %34)
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @dsl_prop_set_sync_impl(i32* %33, i32 %35, i32 %38, i32 4, i32 1, i32* %40, i32* %43)
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* @FTAG, align 4
  %47 = call i32 @dsl_dataset_rele(i32* %45, i32 %46)
  br label %48

48:                                               ; preds = %32, %2
  %49 = load i32*, i32** %6, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @zvol_set_volmode_sync_cb, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %55 = load i32, i32* @DS_FIND_CHILDREN, align 4
  %56 = call i32 @dmu_objset_find_dp(i32* %49, i32 %52, i32 %53, %struct.TYPE_6__* %54, i32 %55)
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %58 = load i32, i32* @FTAG, align 4
  %59 = call i32 @dsl_dir_rele(%struct.TYPE_7__* %57, i32 %58)
  ret void
}

declare dso_local i32* @dmu_tx_pool(i32*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dsl_dir_hold(i32*, i32, i32, %struct.TYPE_7__**, i32*) #1

declare dso_local i32 @dsl_dataset_hold(i32*, i32, i32, i32**) #1

declare dso_local i32 @dsl_prop_set_sync_impl(i32*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @zfs_prop_to_name(i32) #1

declare dso_local i32 @dsl_dataset_rele(i32*, i32) #1

declare dso_local i32 @dmu_objset_find_dp(i32*, i32, i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @dsl_dir_rele(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
