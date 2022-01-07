; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_mos_leak_log_spacemaps.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_mos_leak_log_spacemaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@DMU_POOL_DIRECTORY_OBJECT = common dso_local global i32 0, align 4
@DMU_POOL_LOG_SPACEMAP_ZAP = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @mos_leak_log_spacemaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mos_leak_log_spacemaps(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %7 = call i32 @spa_meta_objset(%struct.TYPE_8__* %6)
  %8 = load i32, i32* @DMU_POOL_DIRECTORY_OBJECT, align 4
  %9 = load i32, i32* @DMU_POOL_LOG_SPACEMAP_ZAP, align 4
  %10 = call i32 @zap_lookup(i32 %7, i32 %8, i32 %9, i32 4, i32 1, i32* %3)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @ENOENT, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %36

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @ASSERT0(i32 %16)
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @mos_obj_refd(i32 %18)
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = call %struct.TYPE_9__* @avl_first(i32* %21)
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %5, align 8
  br label %23

23:                                               ; preds = %31, %15
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %25 = icmp ne %struct.TYPE_9__* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @mos_obj_refd(i32 %29)
  br label %31

31:                                               ; preds = %26
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %35 = call %struct.TYPE_9__* @AVL_NEXT(i32* %33, %struct.TYPE_9__* %34)
  store %struct.TYPE_9__* %35, %struct.TYPE_9__** %5, align 8
  br label %23

36:                                               ; preds = %14, %23
  ret void
}

declare dso_local i32 @zap_lookup(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @spa_meta_objset(%struct.TYPE_8__*) #1

declare dso_local i32 @ASSERT0(i32) #1

declare dso_local i32 @mos_obj_refd(i32) #1

declare dso_local %struct.TYPE_9__* @avl_first(i32*) #1

declare dso_local %struct.TYPE_9__* @AVL_NEXT(i32*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
