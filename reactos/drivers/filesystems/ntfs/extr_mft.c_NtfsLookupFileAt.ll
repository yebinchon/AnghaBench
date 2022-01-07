; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_mft.c_NtfsLookupFileAt.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_mft.c_NtfsLookupFileAt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i64 }

@.str = private unnamed_addr constant [46 x i8] c"NtfsLookupFileAt(%p, %wZ, %s, %p, %p, %I64x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Current: %wZ\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"NtfsLookupFileAt: Can't allocate MFT record\0A\00", align 1
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"NtfsLookupFileAt: Can't read MFT record\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NtfsLookupFileAt(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1, i64 %2, i32** %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_12__, align 8
  %15 = alloca %struct.TYPE_12__, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32** %3, i32*** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %17, align 4
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %20 = load i64, i64* %10, align 8
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %24 = load i32**, i32*** %11, align 8
  %25 = load i32*, i32** %12, align 8
  %26 = load i32, i32* %13, align 4
  %27 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), %struct.TYPE_13__* %18, %struct.TYPE_12__* %19, i8* %23, i32** %24, i32* %25, i32 %26)
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @FsRtlDissectName(i64 %30, %struct.TYPE_12__* %14, %struct.TYPE_12__* %15)
  br label %32

32:                                               ; preds = %53, %6
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %57

36:                                               ; preds = %32
  %37 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_12__* %14)
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* @FALSE, align 4
  %41 = load i64, i64* %10, align 8
  %42 = call i32 @NtfsFindMftRecord(%struct.TYPE_13__* %38, i32 %39, %struct.TYPE_12__* %14, i32* %17, i32 %40, i64 %41, i32* %13)
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %16, align 4
  %44 = call i32 @NT_SUCCESS(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %36
  %47 = load i32, i32* %16, align 4
  store i32 %47, i32* %7, align 4
  br label %89

48:                                               ; preds = %36
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %57

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @FsRtlDissectName(i64 %55, %struct.TYPE_12__* %14, %struct.TYPE_12__* %15)
  br label %32

57:                                               ; preds = %52, %32
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = call i32* @ExAllocateFromNPagedLookasideList(i32* %59)
  %61 = load i32**, i32*** %11, align 8
  store i32* %60, i32** %61, align 8
  %62 = load i32**, i32*** %11, align 8
  %63 = load i32*, i32** %62, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %57
  %66 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %67 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %67, i32* %7, align 4
  br label %89

68:                                               ; preds = %57
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %70 = load i32, i32* %13, align 4
  %71 = load i32**, i32*** %11, align 8
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @ReadFileRecord(%struct.TYPE_13__* %69, i32 %70, i32* %72)
  store i32 %73, i32* %16, align 4
  %74 = load i32, i32* %16, align 4
  %75 = call i32 @NT_SUCCESS(i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %85, label %77

77:                                               ; preds = %68
  %78 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load i32**, i32*** %11, align 8
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @ExFreeToNPagedLookasideList(i32* %80, i32* %82)
  %84 = load i32, i32* %16, align 4
  store i32 %84, i32* %7, align 4
  br label %89

85:                                               ; preds = %68
  %86 = load i32, i32* %13, align 4
  %87 = load i32*, i32** %12, align 8
  store i32 %86, i32* %87, align 4
  %88 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %85, %77, %65, %46
  %90 = load i32, i32* %7, align 4
  ret i32 %90
}

declare dso_local i32 @DPRINT(i8*, ...) #1

declare dso_local i32 @FsRtlDissectName(i64, %struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i32 @NtfsFindMftRecord(%struct.TYPE_13__*, i32, %struct.TYPE_12__*, i32*, i32, i64, i32*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32* @ExAllocateFromNPagedLookasideList(i32*) #1

declare dso_local i32 @ReadFileRecord(%struct.TYPE_13__*, i32, i32*) #1

declare dso_local i32 @ExFreeToNPagedLookasideList(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
