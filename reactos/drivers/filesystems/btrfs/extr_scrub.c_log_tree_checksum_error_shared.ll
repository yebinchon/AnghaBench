; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_scrub.c_log_tree_checksum_error_shared.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_scrub.c_log_tree_checksum_error_shared.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i64, i64, i32 }
%struct.TYPE_12__ = type { i64, i32 }

@PagedPool = common dso_local global i32 0, align 4
@ALLOC_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@NormalPagePriority = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"read_data returned %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"tree level was 0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i64, i64, i64)* @log_tree_checksum_error_shared to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_tree_checksum_error_shared(%struct.TYPE_13__* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load i32, i32* @PagedPool, align 4
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @ALLOC_TAG, align 4
  %19 = call %struct.TYPE_11__* @ExAllocatePoolWithTag(i32 %13, i32 %17, i32 %18)
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %9, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %21 = icmp ne %struct.TYPE_11__* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %4
  %23 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %90

24:                                               ; preds = %4
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %32 = bitcast %struct.TYPE_11__* %31 to i32*
  %33 = load i32, i32* @NormalPagePriority, align 4
  %34 = call i32 @read_data(%struct.TYPE_13__* %25, i64 %26, i32 %30, i32* null, i32 1, i32* %32, i32* null, i32* null, i32* null, i32 0, i32 0, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @NT_SUCCESS(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %24
  %39 = load i32, i32* %10, align 4
  %40 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %87

41:                                               ; preds = %24
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %87

48:                                               ; preds = %41
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i64 1
  %51 = bitcast %struct.TYPE_11__* %50 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %51, %struct.TYPE_12__** %11, align 8
  store i64 0, i64* %12, align 8
  br label %52

52:                                               ; preds = %83, %48
  %53 = load i64, i64* %12, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ult i64 %53, %56
  br i1 %57, label %58, label %86

58:                                               ; preds = %52
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %60 = load i64, i64* %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %7, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %82

66:                                               ; preds = %58
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %68 = load i64, i64* %7, align 8
  %69 = load i64, i64* %8, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = sub nsw i64 %75, 1
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %78 = load i64, i64* %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 1
  %81 = call i32 @log_tree_checksum_error(%struct.TYPE_13__* %67, i64 %68, i64 %69, i32 %72, i64 %76, i32* %80)
  br label %86

82:                                               ; preds = %58
  br label %83

83:                                               ; preds = %82
  %84 = load i64, i64* %12, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %12, align 8
  br label %52

86:                                               ; preds = %66, %52
  br label %87

87:                                               ; preds = %86, %46, %38
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %89 = call i32 @ExFreePool(%struct.TYPE_11__* %88)
  br label %90

90:                                               ; preds = %87, %22
  ret void
}

declare dso_local %struct.TYPE_11__* @ExAllocatePoolWithTag(i32, i32, i32) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @read_data(%struct.TYPE_13__*, i64, i32, i32*, i32, i32*, i32*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @log_tree_checksum_error(%struct.TYPE_13__*, i64, i64, i32, i64, i32*) #1

declare dso_local i32 @ExFreePool(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
