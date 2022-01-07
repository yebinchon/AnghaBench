; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_attrib.c_ConvertLargeMCBToDataRuns.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_attrib.c_ConvertLargeMCBToDataRuns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"\09[Vbn, Lbn, Count]\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"\09[%I64d, %I64d,%I64d]\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"Determining how many bytes needed to represent %I64x\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"%d bytes needed.\0A\00", align 1
@STATUS_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"FIXME: Ran out of room in buffer for data runs!\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"New Size of DataRuns: %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ConvertLargeMCBToDataRuns(i32 %0, i64* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %20 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %20, i32* %9, align 4
  store i64 0, i64* %10, align 8
  store i64 0, i64* %12, align 8
  %21 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %16, align 8
  br label %22

22:                                               ; preds = %87, %4
  %23 = load i32, i32* %5, align 4
  %24 = load i64, i64* %16, align 8
  %25 = call i64 @FsRtlGetNextLargeMcbEntry(i32 %23, i64 %24, i64* %13, i64* %14, i64* %15)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %90

27:                                               ; preds = %22
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  store i64 0, i64* %19, align 8
  %28 = load i64, i64* %13, align 8
  %29 = load i64, i64* %14, align 8
  %30 = load i64, i64* %15, align 8
  %31 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %28, i64 %29, i64 %30)
  %32 = load i64, i64* %14, align 8
  %33 = load i64, i64* %12, align 8
  %34 = sub nsw i64 %32, %33
  store i64 %34, i64* %11, align 8
  %35 = load i64, i64* %14, align 8
  store i64 %35, i64* %12, align 8
  %36 = load i64, i64* %11, align 8
  %37 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i64 %36)
  %38 = load i64, i64* %11, align 8
  %39 = load i32, i32* @TRUE, align 4
  %40 = call i64 @GetPackedByteCount(i64 %38, i32 %39)
  store i64 %40, i64* %17, align 8
  %41 = load i64, i64* %17, align 8
  %42 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i64 %41)
  %43 = load i64, i64* %15, align 8
  %44 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i64 %43)
  %45 = load i64, i64* %15, align 8
  %46 = load i32, i32* @TRUE, align 4
  %47 = call i64 @GetPackedByteCount(i64 %45, i32 %46)
  store i64 %47, i64* %18, align 8
  %48 = load i64, i64* %18, align 8
  %49 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i64 %48)
  %50 = load i64, i64* %10, align 8
  %51 = add nsw i64 %50, 2
  %52 = load i64, i64* %18, align 8
  %53 = add nsw i64 %51, %52
  %54 = load i64, i64* %17, align 8
  %55 = add nsw i64 %53, %54
  %56 = load i64, i64* %7, align 8
  %57 = icmp sgt i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %27
  %59 = load i32, i32* @STATUS_BUFFER_TOO_SMALL, align 4
  store i32 %59, i32* %9, align 4
  %60 = call i32 @DPRINT1(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  br label %90

61:                                               ; preds = %27
  %62 = load i64, i64* %17, align 8
  %63 = shl i64 %62, 4
  %64 = load i64, i64* %18, align 8
  %65 = add nsw i64 %63, %64
  store i64 %65, i64* %19, align 8
  %66 = load i64, i64* %19, align 8
  %67 = load i64*, i64** %6, align 8
  %68 = load i64, i64* %10, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %10, align 8
  %70 = getelementptr inbounds i64, i64* %67, i64 %68
  store i64 %66, i64* %70, align 8
  %71 = load i64*, i64** %6, align 8
  %72 = load i64, i64* %10, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  %74 = load i64, i64* %18, align 8
  %75 = call i32 @RtlCopyMemory(i64* %73, i64* %15, i64 %74)
  %76 = load i64, i64* %18, align 8
  %77 = load i64, i64* %10, align 8
  %78 = add nsw i64 %77, %76
  store i64 %78, i64* %10, align 8
  %79 = load i64*, i64** %6, align 8
  %80 = load i64, i64* %10, align 8
  %81 = getelementptr inbounds i64, i64* %79, i64 %80
  %82 = load i64, i64* %17, align 8
  %83 = call i32 @RtlCopyMemory(i64* %81, i64* %11, i64 %82)
  %84 = load i64, i64* %17, align 8
  %85 = load i64, i64* %10, align 8
  %86 = add nsw i64 %85, %84
  store i64 %86, i64* %10, align 8
  br label %87

87:                                               ; preds = %61
  %88 = load i64, i64* %16, align 8
  %89 = add nsw i64 %88, 1
  store i64 %89, i64* %16, align 8
  br label %22

90:                                               ; preds = %58, %22
  %91 = load i64*, i64** %6, align 8
  %92 = load i64, i64* %10, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %10, align 8
  %94 = getelementptr inbounds i64, i64* %91, i64 %92
  store i64 0, i64* %94, align 8
  %95 = load i64, i64* %10, align 8
  %96 = load i64*, i64** %8, align 8
  store i64 %95, i64* %96, align 8
  %97 = load i64*, i64** %8, align 8
  %98 = load i64, i64* %97, align 8
  %99 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i64 %98)
  %100 = load i32, i32* %9, align 4
  ret i32 %100
}

declare dso_local i32 @DPRINT(i8*, ...) #1

declare dso_local i64 @FsRtlGetNextLargeMcbEntry(i32, i64, i64*, i64*, i64*) #1

declare dso_local i64 @GetPackedByteCount(i64, i32) #1

declare dso_local i32 @DPRINT1(i8*) #1

declare dso_local i32 @RtlCopyMemory(i64*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
