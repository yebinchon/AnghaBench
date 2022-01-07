; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_finfo.c_NtfsGetStandardInformation.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_finfo.c_NtfsGetStandardInformation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"NtfsGetStandardInformation(%p, %p, %p, %p)\0A\00", align 1
@STATUS_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32, %struct.TYPE_12__*, i32*)* @NtfsGetStandardInformation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NtfsGetStandardInformation(%struct.TYPE_11__* %0, i32 %1, %struct.TYPE_12__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load i32, i32* %7, align 4
  %11 = call i32 @UNREFERENCED_PARAMETER(i32 %10)
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = call i32 @DPRINT(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), %struct.TYPE_11__* %12, i32 %13, %struct.TYPE_12__* %14, i32* %15)
  %17 = load i32*, i32** %9, align 8
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp ult i64 %19, 4
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @STATUS_BUFFER_TOO_SMALL, align 4
  store i32 %22, i32* %5, align 4
  br label %64

23:                                               ; preds = %4
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %25 = icmp ne %struct.TYPE_12__* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @ASSERT(i32 %26)
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %29 = icmp ne %struct.TYPE_11__* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @ASSERT(i32 %30)
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %33 = call i32 @RtlZeroMemory(%struct.TYPE_12__* %32, i32 4)
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 4
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @FALSE, align 4
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %55 = call i32 @NtfsFCBIsDirectory(%struct.TYPE_11__* %54)
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load i32*, i32** %9, align 8
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = sub i64 %60, 4
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %58, align 4
  %63 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %23, %21
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @UNREFERENCED_PARAMETER(i32) #1

declare dso_local i32 @DPRINT(i8*, %struct.TYPE_11__*, i32, %struct.TYPE_12__*, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @RtlZeroMemory(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @NtfsFCBIsDirectory(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
