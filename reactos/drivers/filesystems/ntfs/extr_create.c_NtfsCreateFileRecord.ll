; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_create.c_NtfsCreateFileRecord.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_create.c_NtfsCreateFileRecord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i64, i64 }
%struct.TYPE_23__ = type { i64, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"NtfsCreateFileRecord(%p, %p, %s, %s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"ERROR: Unable to allocate memory for file record!\0A\00", align 1
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@NTFS_FILE_ROOT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [32 x i8] c"New File Reference: 0x%016I64x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NtfsCreateFileRecord(%struct.TYPE_25__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_24__*, align 8
  %12 = alloca %struct.TYPE_23__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %16, i32* %10, align 4
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %27 = call i32 @DPRINT(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), %struct.TYPE_25__* %17, i32 %18, i8* %22, i8* %26)
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %29 = call %struct.TYPE_24__* @NtfsCreateEmptyFileRecord(%struct.TYPE_25__* %28)
  store %struct.TYPE_24__* %29, %struct.TYPE_24__** %11, align 8
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %31 = icmp ne %struct.TYPE_24__* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %4
  %33 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  %34 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %34, i32* %5, align 4
  br label %117

35:                                               ; preds = %4
  %36 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %37 = ptrtoint %struct.TYPE_24__* %36 to i64
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %37, %40
  %42 = inttoptr i64 %41 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %42, %struct.TYPE_23__** %12, align 8
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %45 = call i32 @AddStandardInformation(%struct.TYPE_24__* %43, %struct.TYPE_23__* %44)
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %47 = ptrtoint %struct.TYPE_23__* %46 to i64
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %47, %50
  %52 = inttoptr i64 %51 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %52, %struct.TYPE_23__** %12, align 8
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @AddFileName(%struct.TYPE_24__* %53, %struct.TYPE_23__* %54, %struct.TYPE_25__* %55, i32 %56, i32 %57, i64* %14)
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %60 = ptrtoint %struct.TYPE_23__* %59 to i64
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %60, %64
  store i64 %65, i64* %13, align 8
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %67 = ptrtoint %struct.TYPE_23__* %66 to i64
  %68 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %67, %70
  %72 = inttoptr i64 %71 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %72, %struct.TYPE_23__** %12, align 8
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %75 = call i32 @AddData(%struct.TYPE_24__* %73, %struct.TYPE_23__* %74)
  %76 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %78 = call i32 @NtfsDumpFileRecord(%struct.TYPE_25__* %76, %struct.TYPE_24__* %77)
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @AddNewMftEntry(%struct.TYPE_24__* %79, %struct.TYPE_25__* %80, i64* %15, i32 %81)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i64 @NT_SUCCESS(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %111

86:                                               ; preds = %35
  %87 = load i64, i64* %15, align 8
  %88 = load i64, i64* @NTFS_FILE_ROOT, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %86
  %91 = load i64, i64* %15, align 8
  %92 = load i64, i64* @NTFS_FILE_ROOT, align 8
  %93 = shl i64 %92, 48
  %94 = add nsw i64 %91, %93
  store i64 %94, i64* %15, align 8
  br label %102

95:                                               ; preds = %86
  %96 = load i64, i64* %15, align 8
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = shl i64 %99, 48
  %101 = add nsw i64 %96, %100
  store i64 %101, i64* %15, align 8
  br label %102

102:                                              ; preds = %95, %90
  %103 = load i64, i64* %15, align 8
  %104 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i64 %103)
  %105 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %106 = load i64, i64* %14, align 8
  %107 = load i64, i64* %15, align 8
  %108 = load i64, i64* %13, align 8
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @NtfsAddFilenameToDirectory(%struct.TYPE_25__* %105, i64 %106, i64 %107, i64 %108, i32 %109)
  store i32 %110, i32* %10, align 4
  br label %111

111:                                              ; preds = %102, %35
  %112 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %115 = call i32 @ExFreeToNPagedLookasideList(i32* %113, %struct.TYPE_24__* %114)
  %116 = load i32, i32* %10, align 4
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %111, %32
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local i32 @DPRINT(i8*, %struct.TYPE_25__*, i32, i8*, i8*) #1

declare dso_local %struct.TYPE_24__* @NtfsCreateEmptyFileRecord(%struct.TYPE_25__*) #1

declare dso_local i32 @DPRINT1(i8*, ...) #1

declare dso_local i32 @AddStandardInformation(%struct.TYPE_24__*, %struct.TYPE_23__*) #1

declare dso_local i32 @AddFileName(%struct.TYPE_24__*, %struct.TYPE_23__*, %struct.TYPE_25__*, i32, i32, i64*) #1

declare dso_local i32 @AddData(%struct.TYPE_24__*, %struct.TYPE_23__*) #1

declare dso_local i32 @NtfsDumpFileRecord(%struct.TYPE_25__*, %struct.TYPE_24__*) #1

declare dso_local i32 @AddNewMftEntry(%struct.TYPE_24__*, %struct.TYPE_25__*, i64*, i32) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32 @NtfsAddFilenameToDirectory(%struct.TYPE_25__*, i64, i64, i64, i32) #1

declare dso_local i32 @ExFreeToNPagedLookasideList(i32*, %struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
