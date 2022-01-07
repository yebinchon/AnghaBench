; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_create.c_NtfsOpenFileById.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_create.c_NtfsOpenFileById.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"NtfsOpenFileById(%p, %p, %I64x, %p)\0A\00", align 1
@NTFS_FILE_FIRST_USER_FILE = common dso_local global i32 0, align 4
@STATUS_OBJECT_NAME_NOT_FOUND = common dso_local global i32 0, align 4
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@FRH_IN_USE = common dso_local global i32 0, align 4
@STATUS_OBJECT_PATH_NOT_FOUND = common dso_local global i32 0, align 4
@MftIdToName = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32, i32, i32**)* @NtfsOpenFileById to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NtfsOpenFileById(%struct.TYPE_14__* %0, i32 %1, i32 %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32** %3, i32*** %9, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32**, i32*** %9, align 8
  %18 = call i32 @DPRINT(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), %struct.TYPE_14__* %14, i32 %15, i32 %16, i32** %17)
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @NTFS_FILE_FIRST_USER_FILE, align 4
  %21 = icmp slt i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @ASSERT(i32 %22)
  %24 = load i32, i32* %8, align 4
  %25 = icmp sgt i32 %24, 11
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* @STATUS_OBJECT_NAME_NOT_FOUND, align 4
  store i32 %27, i32* %5, align 4
  br label %110

28:                                               ; preds = %4
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = call %struct.TYPE_13__* @ExAllocateFromNPagedLookasideList(i32* %30)
  store %struct.TYPE_13__* %31, %struct.TYPE_13__** %12, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %33 = icmp eq %struct.TYPE_13__* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %35, i32* %5, align 4
  br label %110

36:                                               ; preds = %28
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %40 = call i32 @ReadFileRecord(%struct.TYPE_14__* %37, i32 %38, %struct.TYPE_13__* %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @NT_SUCCESS(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %36
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %48 = call i32 @ExFreeToNPagedLookasideList(i32* %46, %struct.TYPE_13__* %47)
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %5, align 4
  br label %110

50:                                               ; preds = %36
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @FRH_IN_USE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %50
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %61 = call i32 @ExFreeToNPagedLookasideList(i32* %59, %struct.TYPE_13__* %60)
  %62 = load i32, i32* @STATUS_OBJECT_PATH_NOT_FOUND, align 4
  store i32 %62, i32* %5, align 4
  br label %110

63:                                               ; preds = %50
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %65 = load i32*, i32** @MftIdToName, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32* @NtfsGrabFCBFromTable(%struct.TYPE_14__* %64, i32 %69)
  store i32* %70, i32** %11, align 8
  %71 = load i32*, i32** %11, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %94

73:                                               ; preds = %63
  %74 = load i32*, i32** @MftIdToName, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @RtlInitUnicodeString(i32* %13, i32 %78)
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @NtfsMakeFCBFromDirEntry(%struct.TYPE_14__* %80, i32* null, i32* %13, i32* null, %struct.TYPE_13__* %81, i32 %82, i32** %11)
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @NT_SUCCESS(i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %73
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %91 = call i32 @ExFreeToNPagedLookasideList(i32* %89, %struct.TYPE_13__* %90)
  %92 = load i32, i32* %10, align 4
  store i32 %92, i32* %5, align 4
  br label %110

93:                                               ; preds = %73
  br label %94

94:                                               ; preds = %93, %63
  %95 = load i32*, i32** %11, align 8
  %96 = icmp ne i32* %95, null
  %97 = zext i1 %96 to i32
  %98 = call i32 @ASSERT(i32 %97)
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %102 = call i32 @ExFreeToNPagedLookasideList(i32* %100, %struct.TYPE_13__* %101)
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %104 = load i32*, i32** %11, align 8
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @NtfsAttachFCBToFileObject(%struct.TYPE_14__* %103, i32* %104, i32 %105)
  store i32 %106, i32* %10, align 4
  %107 = load i32*, i32** %11, align 8
  %108 = load i32**, i32*** %9, align 8
  store i32* %107, i32** %108, align 8
  %109 = load i32, i32* %10, align 4
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %94, %87, %57, %44, %34, %26
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local i32 @DPRINT(i8*, %struct.TYPE_14__*, i32, i32, i32**) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.TYPE_13__* @ExAllocateFromNPagedLookasideList(i32*) #1

declare dso_local i32 @ReadFileRecord(%struct.TYPE_14__*, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @ExFreeToNPagedLookasideList(i32*, %struct.TYPE_13__*) #1

declare dso_local i32* @NtfsGrabFCBFromTable(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @RtlInitUnicodeString(i32*, i32) #1

declare dso_local i32 @NtfsMakeFCBFromDirEntry(%struct.TYPE_14__*, i32*, i32*, i32*, %struct.TYPE_13__*, i32, i32**) #1

declare dso_local i32 @NtfsAttachFCBToFileObject(%struct.TYPE_14__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
