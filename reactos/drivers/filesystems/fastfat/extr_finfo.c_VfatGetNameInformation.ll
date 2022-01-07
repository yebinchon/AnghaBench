; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_finfo.c_VfatGetNameInformation.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_finfo.c_VfatGetNameInformation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_8__ = type { i64, i32 }

@FILE_NAME_INFORMATION = common dso_local global i32 0, align 4
@FileName = common dso_local global i32* null, align 8
@STATUS_BUFFER_OVERFLOW = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_7__*, i32, %struct.TYPE_8__*, i64*)* @VfatGetNameInformation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @VfatGetNameInformation(i32 %0, %struct.TYPE_7__* %1, i32 %2, %struct.TYPE_8__* %3, i64* %4) #0 {
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
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %18 = icmp ne %struct.TYPE_8__* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @ASSERT(i32 %19)
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %22 = icmp ne %struct.TYPE_7__* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @ASSERT(i32 %23)
  %25 = load i64*, i64** %11, align 8
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* @FILE_NAME_INFORMATION, align 4
  %28 = load i32*, i32** @FileName, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @FIELD_OFFSET(i32 %27, i32 %30)
  %32 = icmp slt i64 %26, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %5
  %34 = load i32, i32* @STATUS_BUFFER_OVERFLOW, align 4
  store i32 %34, i32* %6, align 4
  br label %104

35:                                               ; preds = %5
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64*, i64** %11, align 8
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* @FILE_NAME_INFORMATION, align 4
  %49 = load i32*, i32** @FileName, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @FIELD_OFFSET(i32 %48, i32 %51)
  %53 = sub nsw i64 %47, %52
  %54 = call i64 @min(i64 %45, i64 %53)
  store i64 %54, i64* %12, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i64, i64* %12, align 8
  %63 = call i32 @RtlCopyMemory(i32 %57, i32 %61, i64 %62)
  %64 = load i64*, i64** %11, align 8
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* @FILE_NAME_INFORMATION, align 4
  %71 = load i32*, i32** @FileName, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @FIELD_OFFSET(i32 %70, i32 %73)
  %75 = add nsw i64 %69, %74
  %76 = icmp slt i64 %65, %75
  br i1 %76, label %77, label %89

77:                                               ; preds = %35
  %78 = load i32, i32* @FILE_NAME_INFORMATION, align 4
  %79 = load i32*, i32** @FileName, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @FIELD_OFFSET(i32 %78, i32 %81)
  %83 = load i64, i64* %12, align 8
  %84 = add nsw i64 %82, %83
  %85 = load i64*, i64** %11, align 8
  %86 = load i64, i64* %85, align 8
  %87 = sub nsw i64 %86, %84
  store i64 %87, i64* %85, align 8
  %88 = load i32, i32* @STATUS_BUFFER_OVERFLOW, align 4
  store i32 %88, i32* %6, align 4
  br label %104

89:                                               ; preds = %35
  %90 = load i32, i32* @FILE_NAME_INFORMATION, align 4
  %91 = load i32*, i32** @FileName, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @FIELD_OFFSET(i32 %90, i32 %93)
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %94, %98
  %100 = load i64*, i64** %11, align 8
  %101 = load i64, i64* %100, align 8
  %102 = sub nsw i64 %101, %99
  store i64 %102, i64* %100, align 8
  %103 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %103, i32* %6, align 4
  br label %104

104:                                              ; preds = %89, %77, %33
  %105 = load i32, i32* %6, align 4
  ret i32 %105
}

declare dso_local i32 @UNREFERENCED_PARAMETER(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @FIELD_OFFSET(i32, i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @RtlCopyMemory(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
