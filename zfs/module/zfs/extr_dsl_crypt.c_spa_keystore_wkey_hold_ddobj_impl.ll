; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_crypt.c_spa_keystore_wkey_hold_ddobj_impl.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_crypt.c_spa_keystore_wkey_hold_ddobj_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32, i8*, %struct.TYPE_11__**)* @spa_keystore_wkey_hold_ddobj_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spa_keystore_wkey_hold_ddobj_impl(%struct.TYPE_10__* %0, i32 %1, i8* %2, %struct.TYPE_11__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_11__**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_11__, align 4
  %12 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store %struct.TYPE_11__** %3, %struct.TYPE_11__*** %9, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %16 = call i32 @RW_LOCK_HELD(i32* %15)
  %17 = call i32 @ASSERT(i32 %16)
  %18 = load i32, i32* %7, align 4
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = call %struct.TYPE_11__* @avl_find(i32* %22, %struct.TYPE_11__* %11, i32* null)
  store %struct.TYPE_11__* %23, %struct.TYPE_11__** %12, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %25 = icmp ne %struct.TYPE_11__* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* @ENOENT, align 4
  %28 = call i32 @SET_ERROR(i32 %27)
  store i32 %28, i32* %10, align 4
  br label %35

29:                                               ; preds = %4
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @dsl_wrapping_key_hold(%struct.TYPE_11__* %30, i8* %31)
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %34 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  store %struct.TYPE_11__* %33, %struct.TYPE_11__** %34, align 8
  store i32 0, i32* %5, align 4
  br label %38

35:                                               ; preds = %26
  %36 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %36, align 8
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %35, %29
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @RW_LOCK_HELD(i32*) #1

declare dso_local %struct.TYPE_11__* @avl_find(i32*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @dsl_wrapping_key_hold(%struct.TYPE_11__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
