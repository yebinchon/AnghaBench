; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_btree.c_CreateBTreeKeyFromFilename.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_btree.c_CreateBTreeKeyFromFilename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@INDEX_ENTRY_ATTRIBUTE = common dso_local global i32 0, align 4
@FileName = common dso_local global i32 0, align 4
@NonPagedPool = common dso_local global i32 0, align 4
@TAG_NTFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"ERROR: Failed to allocate memory for Index Entry!\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"ERROR: Failed to allocate memory for new key!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @CreateBTreeKeyFromFilename(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @GetFileNameAttributeLength(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @INDEX_ENTRY_ATTRIBUTE, align 4
  %14 = load i32, i32* @FileName, align 4
  %15 = call i32 @FIELD_OFFSET(i32 %13, i32 %14)
  %16 = add nsw i32 %12, %15
  %17 = call i32 @ALIGN_UP_BY(i32 %16, i32 8)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* @NonPagedPool, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @TAG_NTFS, align 4
  %21 = call i8* @ExAllocatePoolWithTag(i32 %18, i32 %19, i32 %20)
  %22 = bitcast i8* %21 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %9, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %24 = icmp ne %struct.TYPE_10__* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %2
  %26 = call i32 @DPRINT1(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  br label %65

27:                                               ; preds = %2
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @RtlZeroMemory(%struct.TYPE_10__* %28, i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  store i32 %31, i32* %35, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 2
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @RtlCopyMemory(i32* %43, i32 %44, i32 %45)
  %47 = load i32, i32* @NonPagedPool, align 4
  %48 = load i32, i32* @TAG_NTFS, align 4
  %49 = call i8* @ExAllocatePoolWithTag(i32 %47, i32 4, i32 %48)
  %50 = bitcast i8* %49 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %50, %struct.TYPE_11__** %6, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %52 = icmp ne %struct.TYPE_11__* %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %27
  %54 = call i32 @DPRINT1(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %56 = load i32, i32* @TAG_NTFS, align 4
  %57 = call i32 @ExFreePoolWithTag(%struct.TYPE_10__* %55, i32 %56)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  br label %65

58:                                               ; preds = %27
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  store %struct.TYPE_10__* %59, %struct.TYPE_10__** %61, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  store i32* null, i32** %63, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* %64, %struct.TYPE_11__** %3, align 8
  br label %65

65:                                               ; preds = %58, %53, %25
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  ret %struct.TYPE_11__* %66
}

declare dso_local i32 @GetFileNameAttributeLength(i32) #1

declare dso_local i32 @ALIGN_UP_BY(i32, i32) #1

declare dso_local i32 @FIELD_OFFSET(i32, i32) #1

declare dso_local i8* @ExAllocatePoolWithTag(i32, i32, i32) #1

declare dso_local i32 @DPRINT1(i8*) #1

declare dso_local i32 @RtlZeroMemory(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @RtlCopyMemory(i32*, i32, i32) #1

declare dso_local i32 @ExFreePoolWithTag(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
