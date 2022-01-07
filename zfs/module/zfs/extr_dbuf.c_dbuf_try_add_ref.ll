; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dbuf.c_dbuf_try_add_ref.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dbuf.c_dbuf_try_add_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32 }

@B_FALSE = common dso_local global i32 0, align 4
@DMU_BONUS_BLKID = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dbuf_try_add_ref(i32* %0, i32* %1, i64 %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = bitcast i32* %14 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %11, align 8
  %16 = load i32, i32* @B_FALSE, align 4
  store i32 %16, i32* %13, align 4
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* @DMU_BONUS_BLKID, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %5
  %21 = load i32*, i32** %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = call %struct.TYPE_5__* @dbuf_find_bonus(i32* %21, i64 %22)
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %12, align 8
  br label %29

24:                                               ; preds = %5
  %25 = load i32*, i32** %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* %9, align 8
  %28 = call %struct.TYPE_5__* @dbuf_find(i32* %25, i64 %26, i32 0, i64 %27)
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %12, align 8
  br label %29

29:                                               ; preds = %24, %20
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %31 = icmp ne %struct.TYPE_5__* %30, null
  br i1 %31, label %32, label %53

32:                                               ; preds = %29
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %35 = icmp eq %struct.TYPE_5__* %33, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %32
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %38 = call i64 @dbuf_refcount(%struct.TYPE_5__* %37)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %38, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  %46 = load i8*, i8** %10, align 8
  %47 = call i32 @zfs_refcount_add(i32* %45, i8* %46)
  %48 = load i32, i32* @B_TRUE, align 4
  store i32 %48, i32* %13, align 4
  br label %49

49:                                               ; preds = %43, %36, %32
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = call i32 @mutex_exit(i32* %51)
  br label %53

53:                                               ; preds = %49, %29
  %54 = load i32, i32* %13, align 4
  ret i32 %54
}

declare dso_local %struct.TYPE_5__* @dbuf_find_bonus(i32*, i64) #1

declare dso_local %struct.TYPE_5__* @dbuf_find(i32*, i64, i32, i64) #1

declare dso_local i64 @dbuf_refcount(%struct.TYPE_5__*) #1

declare dso_local i32 @zfs_refcount_add(i32*, i8*) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
