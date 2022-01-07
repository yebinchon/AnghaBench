; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_extent-tree.c_get_extent_hash.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_extent-tree.c_get_extent_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@TYPE_EXTENT_DATA_REF = common dso_local global i64 0, align 8
@TYPE_SHARED_BLOCK_REF = common dso_local global i64 0, align 8
@TYPE_SHARED_DATA_REF = common dso_local global i64 0, align 8
@TYPE_TREE_BLOCK_REF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"unhandled extent type %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*)* @get_extent_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_extent_hash(i64 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @TYPE_EXTENT_DATA_REF, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to i32*
  %15 = call i32 @get_extent_data_ref_hash(i32* %14)
  store i32 %15, i32* %3, align 4
  br label %49

16:                                               ; preds = %2
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @TYPE_SHARED_BLOCK_REF, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %6, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %3, align 4
  br label %49

26:                                               ; preds = %16
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* @TYPE_SHARED_DATA_REF, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load i8*, i8** %5, align 8
  %32 = bitcast i8* %31 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %7, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %3, align 4
  br label %49

36:                                               ; preds = %26
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* @TYPE_TREE_BLOCK_REF, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load i8*, i8** %5, align 8
  %42 = bitcast i8* %41 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %42, %struct.TYPE_4__** %8, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %3, align 4
  br label %49

46:                                               ; preds = %36
  %47 = load i64, i64* %4, align 8
  %48 = call i32 @ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %47)
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %46, %40, %30, %20, %12
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @get_extent_data_ref_hash(i32*) #1

declare dso_local i32 @ERR(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
