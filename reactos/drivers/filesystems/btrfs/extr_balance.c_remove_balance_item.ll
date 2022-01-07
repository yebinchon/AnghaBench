; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_balance.c_remove_balance_item.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_balance.c_remove_balance_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_17__ = type { i64, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }

@BALANCE_ITEM_ID = common dso_local global i32 0, align 4
@TYPE_TEMP_ITEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"find_item returned %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"delete_tree_item returned %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"do_write returned %08x\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @remove_balance_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remove_balance_item(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.TYPE_17__, align 8
  %4 = alloca %struct.TYPE_15__, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %6 = load i32, i32* @BALANCE_ITEM_ID, align 4
  %7 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 2
  store i32 %6, i32* %7, align 4
  %8 = load i32, i32* @TYPE_TEMP_ITEM, align 4
  %9 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 1
  store i32 %8, i32* %9, align 8
  %10 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 0
  store i64 0, i64* %10, align 8
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %13 = call i32 @ExAcquireResourceExclusiveLite(i32* %12, i32 1)
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @find_item(%struct.TYPE_16__* %14, i32 %17, %struct.TYPE_15__* %4, %struct.TYPE_17__* %3, i32 0, i32* null)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @NT_SUCCESS(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %60

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %4, i32 0, i32 0
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = bitcast %struct.TYPE_17__* %3 to { i64, i64 }*
  %31 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %30, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @keycmp(i32 %29, i64 %32, i64 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %58, label %37

37:                                               ; preds = %25
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %39 = call i32 @delete_tree_item(%struct.TYPE_16__* %38, %struct.TYPE_15__* %4)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @NT_SUCCESS(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %60

46:                                               ; preds = %37
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %48 = call i32 @do_write(%struct.TYPE_16__* %47, i32* null)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @NT_SUCCESS(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %46
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  br label %60

55:                                               ; preds = %46
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %57 = call i32 @free_trees(%struct.TYPE_16__* %56)
  br label %58

58:                                               ; preds = %55, %25
  %59 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %58, %52, %43, %22
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  %63 = call i32 @ExReleaseResourceLite(i32* %62)
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @ExAcquireResourceExclusiveLite(i32*, i32) #1

declare dso_local i32 @find_item(%struct.TYPE_16__*, i32, %struct.TYPE_15__*, %struct.TYPE_17__*, i32, i32*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @keycmp(i32, i64, i64) #1

declare dso_local i32 @delete_tree_item(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

declare dso_local i32 @do_write(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @free_trees(%struct.TYPE_16__*) #1

declare dso_local i32 @ExReleaseResourceLite(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
