; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_znode.c_zfs_obj_to_stats_impl.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_znode.c_zfs_obj_to_stats_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@ZPL_MODE = common dso_local global i64 0, align 8
@ZPL_GEN = common dso_local global i64 0, align 8
@ZPL_LINKS = common dso_local global i64 0, align 8
@ZPL_CTIME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_3__*)* @zfs_obj_to_stats_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_obj_to_stats_impl(i32* %0, i32* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca [4 x i32], align 16
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %10 = load i32, i32* %8, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = load i64, i64* @ZPL_MODE, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 3
  %17 = call i32 @SA_ADD_BULK_ATTR(i32* %9, i32 %10, i32 %14, i32* null, i32* %16, i32 4)
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %19 = load i32, i32* %8, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = load i64, i64* @ZPL_GEN, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = call i32 @SA_ADD_BULK_ATTR(i32* %18, i32 %19, i32 %23, i32* null, i32* %25, i32 4)
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %28 = load i32, i32* %8, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = load i64, i64* @ZPL_LINKS, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = call i32 @SA_ADD_BULK_ATTR(i32* %27, i32 %28, i32 %32, i32* null, i32* %34, i32 4)
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %37 = load i32, i32* %8, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = load i64, i64* @ZPL_CTIME, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = call i32 @SA_ADD_BULK_ATTR(i32* %36, i32 %37, i32 %41, i32* null, i32* %43, i32 4)
  %45 = load i32*, i32** %4, align 8
  %46 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @sa_bulk_lookup(i32* %45, i32* %46, i32 %47)
  ret i32 %48
}

declare dso_local i32 @SA_ADD_BULK_ATTR(i32*, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @sa_bulk_lookup(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
