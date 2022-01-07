; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_datacache.c_synthesize_dib.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_datacache.c_synthesize_dib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32*, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i64 }

@E_FAIL = common dso_local global i32 0, align 4
@DIB_RGB_COLORS = common dso_local global i32 0, align 4
@GMEM_MOVEABLE = common dso_local global i32 0, align 4
@TYMED_HGLOBAL = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_13__*)* @synthesize_dib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @synthesize_dib(i32 %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %10 = call i32 @GetDC(i32 0)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @E_FAIL, align 4
  store i32 %11, i32* %8, align 4
  %12 = call i32 @memset(%struct.TYPE_14__* %6, i32 0, i32 16)
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  store i32 16, i32* %13, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @DIB_RGB_COLORS, align 4
  %17 = call i32 @GetDIBits(i32 %14, i32 %15, i32 0, i32 0, i8* null, %struct.TYPE_14__* %6, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %72

20:                                               ; preds = %2
  %21 = load i32, i32* @DIB_RGB_COLORS, align 4
  %22 = call i32 @bitmap_info_size(%struct.TYPE_14__* %6, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* @GMEM_MOVEABLE, align 4
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %25, %27
  %29 = call i32 @GlobalAlloc(i32 %23, i64 %28)
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 4
  %33 = icmp ne i32 %29, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %20
  br label %72

35:                                               ; preds = %20
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.TYPE_14__* @GlobalLock(i32 %39)
  store %struct.TYPE_14__* %40, %struct.TYPE_14__** %7, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @memset(%struct.TYPE_14__* %41, i32 0, i32 %42)
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @memcpy(%struct.TYPE_14__* %44, %struct.TYPE_14__* %6, i32 %46)
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %3, align 4
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @abs(i32 %51) #3
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %54 = bitcast %struct.TYPE_14__* %53 to i8*
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %59 = load i32, i32* @DIB_RGB_COLORS, align 4
  %60 = call i32 @GetDIBits(i32 %48, i32 %49, i32 0, i32 %52, i8* %57, %struct.TYPE_14__* %58, i32 %59)
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @GlobalUnlock(i32 %64)
  %66 = load i32, i32* @TYMED_HGLOBAL, align 4
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  store i32* null, i32** %70, align 8
  %71 = load i32, i32* @S_OK, align 4
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %35, %34, %19
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @ReleaseDC(i32 0, i32 %73)
  %75 = load i32, i32* %8, align 4
  ret i32 %75
}

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @memset(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @GetDIBits(i32, i32, i32, i32, i8*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @bitmap_info_size(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @GlobalAlloc(i32, i64) #1

declare dso_local %struct.TYPE_14__* @GlobalLock(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_14__*, %struct.TYPE_14__*, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @GlobalUnlock(i32) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
