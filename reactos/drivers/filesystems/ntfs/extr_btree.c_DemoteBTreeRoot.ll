; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_btree.c_DemoteBTreeRoot.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_btree.c_DemoteBTreeRoot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i8*, %struct.TYPE_10__*, %struct.TYPE_10__* }

@.str = private unnamed_addr constant [38 x i8] c"Collapsing Index Root into sub-node.\0A\00", align 1
@NonPagedPool = common dso_local global i32 0, align 4
@TAG_NTFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"ERROR: Couldn't allocate memory for new sub-node.\0A\00", align 1
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [52 x i8] c"ERROR: Couldn't allocate memory for new root node.\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"ERROR: Couldn't allocate memory for new index root.\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DemoteBTreeRoot(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %7 = call i32 @DPRINT(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %9 = call i32 @DumpBTree(%struct.TYPE_11__* %8)
  %10 = load i32, i32* @NonPagedPool, align 4
  %11 = load i32, i32* @TAG_NTFS, align 4
  %12 = call %struct.TYPE_10__* @ExAllocatePoolWithTag(i32 %10, i32 4, i32 %11)
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** %4, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = icmp ne %struct.TYPE_10__* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = call i32 @DPRINT1(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %17, i32* %2, align 4
  br label %86

18:                                               ; preds = %1
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %20 = call i32 @RtlZeroMemory(%struct.TYPE_10__* %19, i32 4)
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 2
  store %struct.TYPE_10__* %32, %struct.TYPE_10__** %34, align 8
  %35 = load i8*, i8** @TRUE, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** @TRUE, align 8
  %39 = call %struct.TYPE_10__* @CreateDummyKey(i8* %38)
  store %struct.TYPE_10__* %39, %struct.TYPE_10__** %6, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %41 = icmp ne %struct.TYPE_10__* %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %18
  %43 = call i32 @DPRINT1(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %45 = load i32, i32* @TAG_NTFS, align 4
  %46 = call i32 @ExFreePoolWithTag(%struct.TYPE_10__* %44, i32 %45)
  %47 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %47, i32* %2, align 4
  br label %86

48:                                               ; preds = %18
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 3
  store %struct.TYPE_10__* %49, %struct.TYPE_10__** %51, align 8
  %52 = load i32, i32* @NonPagedPool, align 4
  %53 = load i32, i32* @TAG_NTFS, align 4
  %54 = call %struct.TYPE_10__* @ExAllocatePoolWithTag(i32 %52, i32 4, i32 %53)
  store %struct.TYPE_10__* %54, %struct.TYPE_10__** %5, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %56 = icmp ne %struct.TYPE_10__* %55, null
  br i1 %56, label %66, label %57

57:                                               ; preds = %48
  %58 = call i32 @DPRINT1(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %60 = load i32, i32* @TAG_NTFS, align 4
  %61 = call i32 @ExFreePoolWithTag(%struct.TYPE_10__* %59, i32 %60)
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %63 = load i32, i32* @TAG_NTFS, align 4
  %64 = call i32 @ExFreePoolWithTag(%struct.TYPE_10__* %62, i32 %63)
  %65 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %65, i32* %2, align 4
  br label %86

66:                                               ; preds = %48
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %68 = call i32 @RtlZeroMemory(%struct.TYPE_10__* %67, i32 4)
  %69 = load i8*, i8** @TRUE, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 2
  store %struct.TYPE_10__* %72, %struct.TYPE_10__** %74, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  store i32 1, i32* %76, align 8
  %77 = load i8*, i8** @TRUE, align 8
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  store i8* %77, i8** %79, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  store %struct.TYPE_10__* %80, %struct.TYPE_10__** %82, align 8
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %84 = call i32 @DumpBTree(%struct.TYPE_11__* %83)
  %85 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %66, %57, %42, %15
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @DPRINT(i8*) #1

declare dso_local i32 @DumpBTree(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_10__* @ExAllocatePoolWithTag(i32, i32, i32) #1

declare dso_local i32 @DPRINT1(i8*) #1

declare dso_local i32 @RtlZeroMemory(%struct.TYPE_10__*, i32) #1

declare dso_local %struct.TYPE_10__* @CreateDummyKey(i8*) #1

declare dso_local i32 @ExFreePoolWithTag(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
