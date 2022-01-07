; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msrle32/extr_msrle32.c_GetInfo.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msrle32/extr_msrle32.c_GetInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i8*, i8*, i32, i32 }

@ICTYPE_VIDEO = common dso_local global i32 0, align 4
@FOURCC_MRLE = common dso_local global i32 0, align 4
@VIDCF_QUALITY = common dso_local global i32 0, align 4
@VIDCF_TEMPORAL = common dso_local global i32 0, align 4
@VIDCF_CRUNCH = common dso_local global i32 0, align 4
@VIDCF_FASTTEMPORALC = common dso_local global i32 0, align 4
@ICVERSION = common dso_local global i8* null, align 8
@MSRLE32_hModule = common dso_local global i32 0, align 4
@IDS_NAME = common dso_local global i32 0, align 4
@IDS_DESCRIPTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_5__*, i32)* @GetInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetInfo(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %9 = icmp ne %struct.TYPE_6__* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %13 = icmp eq %struct.TYPE_5__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 40, i32* %4, align 4
  br label %73

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ult i64 %17, 40
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %73

20:                                               ; preds = %15
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store i32 40, i32* %22, align 8
  %23 = load i32, i32* @ICTYPE_VIDEO, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 7
  store i32 %23, i32* %25, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = icmp ne %struct.TYPE_6__* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  br label %34

32:                                               ; preds = %20
  %33 = load i32, i32* @FOURCC_MRLE, align 4
  br label %34

34:                                               ; preds = %32, %28
  %35 = phi i32 [ %31, %28 ], [ %33, %32 ]
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 6
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @VIDCF_QUALITY, align 4
  %39 = load i32, i32* @VIDCF_TEMPORAL, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @VIDCF_CRUNCH, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @VIDCF_FASTTEMPORALC, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load i8*, i8** @ICVERSION, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 5
  store i8* %47, i8** %49, align 8
  %50 = load i8*, i8** @ICVERSION, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 4
  store i8* %50, i8** %52, align 8
  %53 = load i32, i32* @MSRLE32_hModule, align 4
  %54 = load i32, i32* @IDS_NAME, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ARRAY_SIZE(i32 %60)
  %62 = call i32 @LoadStringW(i32 %53, i32 %54, i32 %57, i32 %61)
  %63 = load i32, i32* @MSRLE32_hModule, align 4
  %64 = load i32, i32* @IDS_DESCRIPTION, align 4
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @ARRAY_SIZE(i32 %70)
  %72 = call i32 @LoadStringW(i32 %63, i32 %64, i32 %67, i32 %71)
  store i32 40, i32* %4, align 4
  br label %73

73:                                               ; preds = %34, %19, %14
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @LoadStringW(i32, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
