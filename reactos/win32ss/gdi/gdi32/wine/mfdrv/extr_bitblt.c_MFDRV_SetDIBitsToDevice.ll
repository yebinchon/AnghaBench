; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/mfdrv/extr_bitblt.c_MFDRV_SetDIBitsToDevice.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/mfdrv/extr_bitblt.c_MFDRV_SetDIBitsToDevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32, i8**, i32 }

@META_SETDIBTODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @MFDRV_SetDIBitsToDevice(i32 %0, i8* %1, i8* %2, i32 %3, i32 %4, i8* %5, i8* %6, i8* %7, i8* %8, %struct.TYPE_14__* %9, %struct.TYPE_14__* %10, i8* %11) #0 {
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca %struct.TYPE_14__*, align 8
  %24 = alloca %struct.TYPE_14__*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_13__*, align 8
  store i32 %0, i32* %14, align 4
  store i8* %1, i8** %15, align 8
  store i8* %2, i8** %16, align 8
  store i32 %3, i32* %17, align 4
  store i32 %4, i32* %18, align 4
  store i8* %5, i8** %19, align 8
  store i8* %6, i8** %20, align 8
  store i8* %7, i8** %21, align 8
  store i8* %8, i8** %22, align 8
  store %struct.TYPE_14__* %9, %struct.TYPE_14__** %23, align 8
  store %struct.TYPE_14__* %10, %struct.TYPE_14__** %24, align 8
  store i8* %11, i8** %25, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %30 = load i8*, i8** %25, align 8
  %31 = call i32 @get_dib_info_size(%struct.TYPE_14__* %29, i8* %30)
  store i32 %31, i32* %26, align 4
  %32 = load i32, i32* %26, align 4
  %33 = sext i32 %32 to i64
  %34 = add i64 56, %33
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = add i64 %34, %39
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %27, align 4
  %42 = call i32 (...) @GetProcessHeap()
  %43 = load i32, i32* %27, align 4
  %44 = call %struct.TYPE_13__* @HeapAlloc(i32 %42, i32 0, i32 %43)
  store %struct.TYPE_13__* %44, %struct.TYPE_13__** %28, align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %46 = icmp ne %struct.TYPE_13__* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %12
  store i8* null, i8** %13, align 8
  br label %137

48:                                               ; preds = %12
  %49 = load i32, i32* %27, align 4
  %50 = sdiv i32 %49, 2
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* @META_SETDIBTODEV, align 4
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load i8*, i8** %25, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 1
  %59 = load i8**, i8*** %58, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 0
  store i8* %56, i8** %60, align 8
  %61 = load i8*, i8** %22, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  %64 = load i8**, i8*** %63, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 1
  store i8* %61, i8** %65, align 8
  %66 = load i8*, i8** %21, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  %69 = load i8**, i8*** %68, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 2
  store i8* %66, i8** %70, align 8
  %71 = load i8*, i8** %20, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 1
  %74 = load i8**, i8*** %73, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 3
  store i8* %71, i8** %75, align 8
  %76 = load i8*, i8** %19, align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 1
  %79 = load i8**, i8*** %78, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 4
  store i8* %76, i8** %80, align 8
  %81 = load i32, i32* %18, align 4
  %82 = sext i32 %81 to i64
  %83 = inttoptr i64 %82 to i8*
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 1
  %86 = load i8**, i8*** %85, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 5
  store i8* %83, i8** %87, align 8
  %88 = load i32, i32* %17, align 4
  %89 = sext i32 %88 to i64
  %90 = inttoptr i64 %89 to i8*
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 1
  %93 = load i8**, i8*** %92, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i64 6
  store i8* %90, i8** %94, align 8
  %95 = load i8*, i8** %16, align 8
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 1
  %98 = load i8**, i8*** %97, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 7
  store i8* %95, i8** %99, align 8
  %100 = load i8*, i8** %15, align 8
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 1
  %103 = load i8**, i8*** %102, align 8
  %104 = getelementptr inbounds i8*, i8** %103, i64 8
  store i8* %100, i8** %104, align 8
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 1
  %107 = load i8**, i8*** %106, align 8
  %108 = getelementptr inbounds i8*, i8** %107, i64 9
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %110 = load i32, i32* %26, align 4
  %111 = call i32 @memcpy(i8** %108, %struct.TYPE_14__* %109, i32 %110)
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 1
  %114 = load i8**, i8*** %113, align 8
  %115 = getelementptr inbounds i8*, i8** %114, i64 9
  %116 = load i32, i32* %26, align 4
  %117 = sdiv i32 %116, 2
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8*, i8** %115, i64 %118
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @memcpy(i8** %119, %struct.TYPE_14__* %120, i32 %124)
  %126 = load i32, i32* %14, align 4
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = mul nsw i32 %130, 2
  %132 = call i32 @MFDRV_WriteRecord(i32 %126, %struct.TYPE_13__* %127, i32 %131)
  %133 = call i32 (...) @GetProcessHeap()
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %135 = call i32 @HeapFree(i32 %133, i32 0, %struct.TYPE_13__* %134)
  %136 = load i8*, i8** %22, align 8
  store i8* %136, i8** %13, align 8
  br label %137

137:                                              ; preds = %48, %47
  %138 = load i8*, i8** %13, align 8
  ret i8* %138
}

declare dso_local i32 @get_dib_info_size(%struct.TYPE_14__*, i8*) #1

declare dso_local %struct.TYPE_13__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @memcpy(i8**, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @MFDRV_WriteRecord(i32, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
