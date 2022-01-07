; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_btree.c_CreateEmptyBTree.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_btree.c_CreateEmptyBTree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_7__*, i32, i64 }

@NonPagedPool = common dso_local global i32 0, align 4
@TAG_NTFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"CreateEmptyBTree(%p) called\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Couldn't allocate enough memory for B-Tree!\0A\00", align 1
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"ERROR: Failed to create dummy key!\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CreateEmptyBTree(%struct.TYPE_7__** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__**, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %3, align 8
  %7 = load i32, i32* @NonPagedPool, align 4
  %8 = load i32, i32* @TAG_NTFS, align 4
  %9 = call %struct.TYPE_7__* @ExAllocatePoolWithTag(i32 %7, i32 4, i32 %8)
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %4, align 8
  %10 = load i32, i32* @NonPagedPool, align 4
  %11 = load i32, i32* @TAG_NTFS, align 4
  %12 = call %struct.TYPE_7__* @ExAllocatePoolWithTag(i32 %10, i32 4, i32 %11)
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %5, align 8
  %13 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  %14 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.TYPE_7__** %13)
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = icmp ne %struct.TYPE_7__* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %19 = icmp ne %struct.TYPE_7__* %18, null
  br i1 %19, label %37, label %20

20:                                               ; preds = %17, %1
  %21 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = icmp ne %struct.TYPE_7__* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = load i32, i32* @TAG_NTFS, align 4
  %27 = call i32 @ExFreePoolWithTag(%struct.TYPE_7__* %25, i32 %26)
  br label %28

28:                                               ; preds = %24, %20
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %30 = icmp ne %struct.TYPE_7__* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = load i32, i32* @TAG_NTFS, align 4
  %34 = call i32 @ExFreePoolWithTag(%struct.TYPE_7__* %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %28
  %36 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %36, i32* %2, align 4
  br label %70

37:                                               ; preds = %17
  %38 = load i32, i32* @FALSE, align 4
  %39 = call i64 @CreateDummyKey(i32 %38)
  store i64 %39, i64* %6, align 8
  %40 = load i64, i64* %6, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %37
  %43 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %45 = load i32, i32* @TAG_NTFS, align 4
  %46 = call i32 @ExFreePoolWithTag(%struct.TYPE_7__* %44, i32 %45)
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = load i32, i32* @TAG_NTFS, align 4
  %49 = call i32 @ExFreePoolWithTag(%struct.TYPE_7__* %47, i32 %48)
  %50 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %50, i32* %2, align 4
  br label %70

51:                                               ; preds = %37
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %53 = call i32 @RtlZeroMemory(%struct.TYPE_7__* %52, i32 4)
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %55 = call i32 @RtlZeroMemory(%struct.TYPE_7__* %54, i32 4)
  %56 = load i64, i64* %6, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 3
  store i64 %56, i64* %58, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  %61 = load i32, i32* @TRUE, align 4
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  store %struct.TYPE_7__* %64, %struct.TYPE_7__** %66, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %68 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  store %struct.TYPE_7__* %67, %struct.TYPE_7__** %68, align 8
  %69 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %51, %42, %35
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.TYPE_7__* @ExAllocatePoolWithTag(i32, i32, i32) #1

declare dso_local i32 @DPRINT1(i8*, ...) #1

declare dso_local i32 @ExFreePoolWithTag(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @CreateDummyKey(i32) #1

declare dso_local i32 @RtlZeroMemory(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
