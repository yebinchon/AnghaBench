; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_datacache.c_save_emf.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_datacache.c_save_emf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_20__, %struct.TYPE_18__ }
%struct.TYPE_20__ = type { i64, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32, i32 }
%struct.TYPE_22__ = type { i32, i32 }

@S_OK = common dso_local global i64 0, align 8
@MM_ANISOTROPIC = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i64 0, align 8
@TYMED_NULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_23__*, i32, i32*)* @save_emf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @save_emf(%struct.TYPE_23__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca %struct.TYPE_21__, align 4
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %14 = load i64, i64* @S_OK, align 8
  store i64 %14, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %96, label %17

17:                                               ; preds = %3
  %18 = call i32 @GetDC(i32 0)
  store i32 %18, i32* %13, align 4
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %20 = call i32 @init_stream_header(%struct.TYPE_23__* %19, %struct.TYPE_21__* %11)
  %21 = load i32*, i32** %7, align 8
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @write_clipformat(i32* %21, i32 %25)
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i64 @FAILED(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %17
  %31 = load i32, i32* %13, align 4
  %32 = call i32 @ReleaseDC(i32 0, i32 %31)
  %33 = load i64, i64* %8, align 8
  store i64 %33, i64* %4, align 8
  br label %153

34:                                               ; preds = %17
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @MM_ANISOTROPIC, align 4
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @GetWinMetaFileBits(i32 %39, i32 0, %struct.TYPE_21__* null, i32 %40, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 0
  store i32 %43, i32* %44, align 4
  %45 = call i32 (...) @GetProcessHeap()
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.TYPE_21__* @HeapAlloc(i32 %45, i32 0, i32 %47)
  store %struct.TYPE_21__* %48, %struct.TYPE_21__** %10, align 8
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %50 = icmp ne %struct.TYPE_21__* %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %34
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @ReleaseDC(i32 0, i32 %52)
  %54 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %54, i64* %4, align 8
  br label %153

55:                                               ; preds = %34
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %64 = load i32, i32* @MM_ANISOTROPIC, align 4
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @GetWinMetaFileBits(i32 %60, i32 %62, %struct.TYPE_21__* %63, i32 %64, i32 %65)
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @ReleaseDC(i32 0, i32 %67)
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %70 = bitcast %struct.TYPE_21__* %69 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %70, %struct.TYPE_22__** %12, align 8
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 2
  store i32 %73, i32* %74, align 4
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 1
  store i32 %77, i32* %78, align 4
  %79 = load i32*, i32** %7, align 8
  %80 = call i64 @IStream_Write(i32* %79, %struct.TYPE_21__* %11, i32 12, i32* null)
  store i64 %80, i64* %8, align 8
  %81 = load i64, i64* %8, align 8
  %82 = load i64, i64* @S_OK, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %55
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load i32*, i32** %7, align 8
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %90 = load i32, i32* %9, align 4
  %91 = call i64 @IStream_Write(i32* %88, %struct.TYPE_21__* %89, i32 %90, i32* null)
  store i64 %91, i64* %8, align 8
  br label %92

92:                                               ; preds = %87, %84, %55
  %93 = call i32 (...) @GetProcessHeap()
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %95 = call i32 @HeapFree(i32 %93, i32 0, %struct.TYPE_21__* %94)
  br label %151

96:                                               ; preds = %3
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @TYMED_NULL, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %150

103:                                              ; preds = %96
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @GetEnhMetaFileBits(i32 %108, i32 0, %struct.TYPE_21__* null)
  store i32 %109, i32* %9, align 4
  %110 = call i32 (...) @GetProcessHeap()
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = add i64 8, %112
  %114 = trunc i64 %113 to i32
  %115 = call %struct.TYPE_21__* @HeapAlloc(i32 %110, i32 0, i32 %114)
  store %struct.TYPE_21__* %115, %struct.TYPE_21__** %10, align 8
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %117 = icmp ne %struct.TYPE_21__* %116, null
  br i1 %117, label %120, label %118

118:                                              ; preds = %103
  %119 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %119, i64* %4, align 8
  br label %153

120:                                              ; preds = %103
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %122 = bitcast %struct.TYPE_21__* %121 to i32*
  store i32 4, i32* %122, align 4
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %9, align 4
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i64 4
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i64 4
  %132 = call i32 @GetEnhMetaFileBits(i32 %127, i32 %128, %struct.TYPE_21__* %131)
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i64 4
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i64 4
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i64 4
  %138 = call i32 @memcpy(%struct.TYPE_21__* %134, %struct.TYPE_21__* %137, i32 4)
  %139 = load i32, i32* %9, align 4
  %140 = sext i32 %139 to i64
  %141 = add i64 %140, 8
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %9, align 4
  %143 = load i32*, i32** %7, align 8
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %145 = load i32, i32* %9, align 4
  %146 = call i64 @IStream_Write(i32* %143, %struct.TYPE_21__* %144, i32 %145, i32* null)
  store i64 %146, i64* %8, align 8
  %147 = call i32 (...) @GetProcessHeap()
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %149 = call i32 @HeapFree(i32 %147, i32 0, %struct.TYPE_21__* %148)
  br label %150

150:                                              ; preds = %120, %96
  br label %151

151:                                              ; preds = %150, %92
  %152 = load i64, i64* %8, align 8
  store i64 %152, i64* %4, align 8
  br label %153

153:                                              ; preds = %151, %118, %51, %30
  %154 = load i64, i64* %4, align 8
  ret i64 %154
}

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @init_stream_header(%struct.TYPE_23__*, %struct.TYPE_21__*) #1

declare dso_local i64 @write_clipformat(i32*, i32) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

declare dso_local i32 @GetWinMetaFileBits(i32, i32, %struct.TYPE_21__*, i32, i32) #1

declare dso_local %struct.TYPE_21__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @IStream_Write(i32*, %struct.TYPE_21__*, i32, i32*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_21__*) #1

declare dso_local i32 @GetEnhMetaFileBits(i32, i32, %struct.TYPE_21__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_21__*, %struct.TYPE_21__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
