; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_finfo.c_NtfsGetNameInformation.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_finfo.c_NtfsGetNameInformation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"NtfsGetNameInformation(%p, %p, %p, %p, %p)\0A\00", align 1
@FILE_NAME_INFORMATION = common dso_local global i32 0, align 4
@FileName = common dso_local global i32* null, align 8
@STATUS_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@STATUS_BUFFER_OVERFLOW = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_7__*, i32, %struct.TYPE_8__*, i64*)* @NtfsGetNameInformation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NtfsGetNameInformation(i32 %0, %struct.TYPE_7__* %1, i32 %2, %struct.TYPE_8__* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %10, align 8
  store i64* %4, i64** %11, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @UNREFERENCED_PARAMETER(i32 %13)
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @UNREFERENCED_PARAMETER(i32 %15)
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %21 = load i64*, i64** %11, align 8
  %22 = call i32 @DPRINT(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %17, %struct.TYPE_7__* %18, i32 %19, %struct.TYPE_8__* %20, i64* %21)
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %24 = icmp ne %struct.TYPE_8__* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @ASSERT(i32 %25)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %28 = icmp ne %struct.TYPE_7__* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i32 @ASSERT(i32 %29)
  %31 = load i64*, i64** %11, align 8
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* @FILE_NAME_INFORMATION, align 4
  %34 = load i32*, i32** @FileName, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @FIELD_OFFSET(i32 %33, i32 %36)
  %38 = icmp slt i64 %32, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %5
  %40 = load i32, i32* @STATUS_BUFFER_TOO_SMALL, align 4
  store i32 %40, i32* %6, align 4
  br label %111

41:                                               ; preds = %5
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @wcslen(i32 %44)
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 4
  %48 = trunc i64 %47 to i32
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i64*, i64** %11, align 8
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* @FILE_NAME_INFORMATION, align 4
  %57 = load i32*, i32** @FileName, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @FIELD_OFFSET(i32 %56, i32 %59)
  %61 = sub nsw i64 %55, %60
  %62 = call i64 @min(i32 %53, i64 %61)
  store i64 %62, i64* %12, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i64, i64* %12, align 8
  %70 = call i32 @RtlCopyMemory(i32 %65, i32 %68, i64 %69)
  %71 = load i64*, i64** %11, align 8
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = load i32, i32* @FILE_NAME_INFORMATION, align 4
  %78 = load i32*, i32** @FileName, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @FIELD_OFFSET(i32 %77, i32 %80)
  %82 = add nsw i64 %76, %81
  %83 = icmp slt i64 %72, %82
  br i1 %83, label %84, label %96

84:                                               ; preds = %41
  %85 = load i32, i32* @FILE_NAME_INFORMATION, align 4
  %86 = load i32*, i32** @FileName, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @FIELD_OFFSET(i32 %85, i32 %88)
  %90 = load i64, i64* %12, align 8
  %91 = add nsw i64 %89, %90
  %92 = load i64*, i64** %11, align 8
  %93 = load i64, i64* %92, align 8
  %94 = sub nsw i64 %93, %91
  store i64 %94, i64* %92, align 8
  %95 = load i32, i32* @STATUS_BUFFER_OVERFLOW, align 4
  store i32 %95, i32* %6, align 4
  br label %111

96:                                               ; preds = %41
  %97 = load i32, i32* @FILE_NAME_INFORMATION, align 4
  %98 = load i32*, i32** @FileName, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @FIELD_OFFSET(i32 %97, i32 %100)
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %101, %105
  %107 = load i64*, i64** %11, align 8
  %108 = load i64, i64* %107, align 8
  %109 = sub nsw i64 %108, %106
  store i64 %109, i64* %107, align 8
  %110 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %110, i32* %6, align 4
  br label %111

111:                                              ; preds = %96, %84, %39
  %112 = load i32, i32* %6, align 4
  ret i32 %112
}

declare dso_local i32 @UNREFERENCED_PARAMETER(i32) #1

declare dso_local i32 @DPRINT(i8*, i32, %struct.TYPE_7__*, i32, %struct.TYPE_8__*, i64*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @FIELD_OFFSET(i32, i32) #1

declare dso_local i32 @wcslen(i32) #1

declare dso_local i64 @min(i32, i64) #1

declare dso_local i32 @RtlCopyMemory(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
