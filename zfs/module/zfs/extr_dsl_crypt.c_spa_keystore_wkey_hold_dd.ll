; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_crypt.c_spa_keystore_wkey_hold_dd.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_crypt.c_spa_keystore_wkey_hold_dd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@B_FALSE = common dso_local global i64 0, align 8
@RW_READER = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i8*, i32**)* @spa_keystore_wkey_hold_dd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spa_keystore_wkey_hold_dd(%struct.TYPE_6__* %0, i32* %1, i8* %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32** %3, i32*** %9, align 8
  %14 = load i64, i64* @B_FALSE, align 8
  store i64 %14, i64* %13, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = call i32 @RW_WRITE_HELD(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* @RW_READER, align 4
  %25 = call i32 @rw_enter(i32* %23, i32 %24)
  %26 = load i64, i64* @B_TRUE, align 8
  store i64 %26, i64* %13, align 8
  br label %27

27:                                               ; preds = %20, %4
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @dsl_dir_get_encryption_root_ddobj(i32* %28, i32* %12)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %52

33:                                               ; preds = %27
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %35 = load i32, i32* %12, align 4
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @spa_keystore_wkey_hold_ddobj_impl(%struct.TYPE_6__* %34, i32 %35, i8* %36, i32** %11)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %52

41:                                               ; preds = %33
  %42 = load i64, i64* %13, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = call i32 @rw_exit(i32* %47)
  br label %49

49:                                               ; preds = %44, %41
  %50 = load i32*, i32** %11, align 8
  %51 = load i32**, i32*** %9, align 8
  store i32* %50, i32** %51, align 8
  store i32 0, i32* %5, align 4
  br label %63

52:                                               ; preds = %40, %32
  %53 = load i64, i64* %13, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = call i32 @rw_exit(i32* %58)
  br label %60

60:                                               ; preds = %55, %52
  %61 = load i32**, i32*** %9, align 8
  store i32* null, i32** %61, align 8
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %60, %49
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @RW_WRITE_HELD(i32*) #1

declare dso_local i32 @rw_enter(i32*, i32) #1

declare dso_local i32 @dsl_dir_get_encryption_root_ddobj(i32*, i32*) #1

declare dso_local i32 @spa_keystore_wkey_hold_ddobj_impl(%struct.TYPE_6__*, i32, i8*, i32**) #1

declare dso_local i32 @rw_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
