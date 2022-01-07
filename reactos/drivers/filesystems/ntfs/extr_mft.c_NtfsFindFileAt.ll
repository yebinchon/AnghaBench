; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_mft.c_NtfsFindFileAt.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_mft.c_NtfsFindFileAt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"NtfsFindFileAt(%p, %wZ, %lu, %p, %p, %I64x, %s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [64 x i8] c"NtfsFindFileAt: NtfsFindMftRecord() failed with status 0x%08lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"NtfsFindFileAt: Can't allocate MFT record\0A\00", align 1
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"NtfsFindFileAt: Can't read MFT record\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NtfsFindFileAt(%struct.TYPE_5__* %0, i32 %1, i32* %2, i32** %3, i32* %4, i32 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32** %3, i32*** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i64 %6, i64* %15, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load i32*, i32** %11, align 8
  %20 = load i32, i32* %19, align 4
  %21 = load i32**, i32*** %12, align 8
  %22 = load i32*, i32** %13, align 8
  %23 = load i32, i32* %14, align 4
  %24 = load i64, i64* %15, align 8
  %25 = icmp ne i64 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %28 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), %struct.TYPE_5__* %17, i32 %18, i32 %20, i32** %21, i32* %22, i32 %23, i8* %27)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32*, i32** %11, align 8
  %33 = load i32, i32* @TRUE, align 4
  %34 = load i64, i64* %15, align 8
  %35 = call i32 @NtfsFindMftRecord(%struct.TYPE_5__* %29, i32 %30, i32 %31, i32* %32, i32 %33, i64 %34, i32* %14)
  store i32 %35, i32* %16, align 4
  %36 = load i32, i32* %16, align 4
  %37 = call i32 @NT_SUCCESS(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %7
  %40 = load i32, i32* %16, align 4
  %41 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %16, align 4
  store i32 %42, i32* %8, align 4
  br label %75

43:                                               ; preds = %7
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = call i32* @ExAllocateFromNPagedLookasideList(i32* %45)
  %47 = load i32**, i32*** %12, align 8
  store i32* %46, i32** %47, align 8
  %48 = load i32**, i32*** %12, align 8
  %49 = load i32*, i32** %48, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %53 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %53, i32* %8, align 4
  br label %75

54:                                               ; preds = %43
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %56 = load i32, i32* %14, align 4
  %57 = load i32**, i32*** %12, align 8
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @ReadFileRecord(%struct.TYPE_5__* %55, i32 %56, i32* %58)
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %16, align 4
  %61 = call i32 @NT_SUCCESS(i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %54
  %64 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32**, i32*** %12, align 8
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @ExFreeToNPagedLookasideList(i32* %66, i32* %68)
  %70 = load i32, i32* %16, align 4
  store i32 %70, i32* %8, align 4
  br label %75

71:                                               ; preds = %54
  %72 = load i32, i32* %14, align 4
  %73 = load i32*, i32** %13, align 8
  store i32 %72, i32* %73, align 4
  %74 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %71, %63, %51, %39
  %76 = load i32, i32* %8, align 4
  ret i32 %76
}

declare dso_local i32 @DPRINT(i8*, ...) #1

declare dso_local i32 @NtfsFindMftRecord(%struct.TYPE_5__*, i32, i32, i32*, i32, i64, i32*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32* @ExAllocateFromNPagedLookasideList(i32*) #1

declare dso_local i32 @ReadFileRecord(%struct.TYPE_5__*, i32, i32*) #1

declare dso_local i32 @ExFreeToNPagedLookasideList(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
