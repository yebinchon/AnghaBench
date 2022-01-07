; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_pngformat.c_LoadChrmMetadata.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_pngformat.c_LoadChrmMetadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_16__, %struct.TYPE_16__, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_19__* }

@LoadChrmMetadata.names = internal constant [8 x <{ %struct.TYPE_18__, [11 x %struct.TYPE_18__] }>] [<{ %struct.TYPE_18__, [11 x %struct.TYPE_18__] }> <{ %struct.TYPE_18__ { i8 87, i8 104, i8 105, i8 116, i8 101, i8 80, i8 111, i8 105, i8 110, i8 116, i8 88, i32 0 }, [11 x %struct.TYPE_18__] zeroinitializer }>, <{ %struct.TYPE_18__, [11 x %struct.TYPE_18__] }> <{ %struct.TYPE_18__ { i8 87, i8 104, i8 105, i8 116, i8 101, i8 80, i8 111, i8 105, i8 110, i8 116, i8 89, i32 0 }, [11 x %struct.TYPE_18__] zeroinitializer }>, <{ %struct.TYPE_18__, [11 x %struct.TYPE_18__] }> <{ %struct.TYPE_18__ { i8 82, i8 101, i8 100, i8 88, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, [11 x %struct.TYPE_18__] zeroinitializer }>, <{ %struct.TYPE_18__, [11 x %struct.TYPE_18__] }> <{ %struct.TYPE_18__ { i8 82, i8 101, i8 100, i8 89, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, [11 x %struct.TYPE_18__] zeroinitializer }>, <{ %struct.TYPE_18__, [11 x %struct.TYPE_18__] }> <{ %struct.TYPE_18__ { i8 71, i8 114, i8 101, i8 101, i8 110, i8 88, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, [11 x %struct.TYPE_18__] zeroinitializer }>, <{ %struct.TYPE_18__, [11 x %struct.TYPE_18__] }> <{ %struct.TYPE_18__ { i8 71, i8 114, i8 101, i8 101, i8 110, i8 89, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, [11 x %struct.TYPE_18__] zeroinitializer }>, <{ %struct.TYPE_18__, [11 x %struct.TYPE_18__] }> <{ %struct.TYPE_18__ { i8 66, i8 108, i8 117, i8 101, i8 88, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, [11 x %struct.TYPE_18__] zeroinitializer }>, <{ %struct.TYPE_18__, [11 x %struct.TYPE_18__] }> <{ %struct.TYPE_18__ { i8 66, i8 108, i8 117, i8 101, i8 89, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, [11 x %struct.TYPE_18__] zeroinitializer }>], align 16
@E_FAIL = common dso_local global i32 0, align 4
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@VT_LPWSTR = common dso_local global i32 0, align 4
@VT_UI4 = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, %struct.TYPE_19__**, i32*)* @LoadChrmMetadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LoadChrmMetadata(i32* %0, i32* %1, i32 %2, %struct.TYPE_19__** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_19__**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [4 x %struct.TYPE_19__], align 16
  %14 = alloca %struct.TYPE_19__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca [8 x %struct.TYPE_19__*], align 16
  %17 = alloca %struct.TYPE_19__*, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_19__** %3, %struct.TYPE_19__*** %10, align 8
  store i32* %4, i32** %11, align 8
  %19 = bitcast [8 x %struct.TYPE_19__*]* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %19, i8 0, i64 64, i1 false)
  %20 = load i32*, i32** %7, align 8
  %21 = getelementptr inbounds [4 x %struct.TYPE_19__], [4 x %struct.TYPE_19__]* %13, i64 0, i64 0
  %22 = call i32 @read_png_chunk(i32* %20, %struct.TYPE_19__* %21, %struct.TYPE_19__** %14, i32* %15)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = call i64 @FAILED(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %5
  %27 = load i32, i32* %12, align 4
  store i32 %27, i32* %6, align 4
  br label %177

28:                                               ; preds = %5
  %29 = load i32, i32* %15, align 4
  %30 = icmp slt i32 %29, 32
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = call i32 (...) @GetProcessHeap()
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %34 = call i32 @HeapFree(i32 %32, i32 0, %struct.TYPE_19__* %33)
  %35 = load i32, i32* @E_FAIL, align 4
  store i32 %35, i32* %6, align 4
  br label %177

36:                                               ; preds = %28
  %37 = call i32 (...) @GetProcessHeap()
  %38 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %39 = call %struct.TYPE_19__* @HeapAlloc(i32 %37, i32 %38, i32 576)
  store %struct.TYPE_19__* %39, %struct.TYPE_19__** %17, align 8
  store i32 0, i32* %18, align 4
  br label %40

40:                                               ; preds = %65, %36
  %41 = load i32, i32* %18, align 4
  %42 = icmp slt i32 %41, 8
  br i1 %42, label %43, label %68

43:                                               ; preds = %40
  %44 = call i32 (...) @GetProcessHeap()
  %45 = load i32, i32* %18, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [8 x [12 x %struct.TYPE_18__]], [8 x [12 x %struct.TYPE_18__]]* bitcast ([8 x <{ %struct.TYPE_18__, [11 x %struct.TYPE_18__] }>]* @LoadChrmMetadata.names to [8 x [12 x %struct.TYPE_18__]]*), i64 0, i64 %46
  %48 = getelementptr inbounds [12 x %struct.TYPE_18__], [12 x %struct.TYPE_18__]* %47, i64 0, i64 0
  %49 = call i32 @lstrlenW(%struct.TYPE_18__* %48)
  %50 = add nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = mul i64 16, %51
  %53 = trunc i64 %52 to i32
  %54 = call %struct.TYPE_19__* @HeapAlloc(i32 %44, i32 0, i32 %53)
  %55 = load i32, i32* %18, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [8 x %struct.TYPE_19__*], [8 x %struct.TYPE_19__*]* %16, i64 0, i64 %56
  store %struct.TYPE_19__* %54, %struct.TYPE_19__** %57, align 8
  %58 = load i32, i32* %18, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [8 x %struct.TYPE_19__*], [8 x %struct.TYPE_19__*]* %16, i64 0, i64 %59
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %60, align 8
  %62 = icmp ne %struct.TYPE_19__* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %43
  br label %68

64:                                               ; preds = %43
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %18, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %18, align 4
  br label %40

68:                                               ; preds = %63, %40
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %70 = icmp ne %struct.TYPE_19__* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32, i32* %18, align 4
  %73 = icmp slt i32 %72, 8
  br i1 %73, label %74, label %96

74:                                               ; preds = %71, %68
  %75 = call i32 (...) @GetProcessHeap()
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %77 = call i32 @HeapFree(i32 %75, i32 0, %struct.TYPE_19__* %76)
  store i32 0, i32* %18, align 4
  br label %78

78:                                               ; preds = %88, %74
  %79 = load i32, i32* %18, align 4
  %80 = icmp slt i32 %79, 8
  br i1 %80, label %81, label %91

81:                                               ; preds = %78
  %82 = call i32 (...) @GetProcessHeap()
  %83 = load i32, i32* %18, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [8 x %struct.TYPE_19__*], [8 x %struct.TYPE_19__*]* %16, i64 0, i64 %84
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %85, align 8
  %87 = call i32 @HeapFree(i32 %82, i32 0, %struct.TYPE_19__* %86)
  br label %88

88:                                               ; preds = %81
  %89 = load i32, i32* %18, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %18, align 4
  br label %78

91:                                               ; preds = %78
  %92 = call i32 (...) @GetProcessHeap()
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %94 = call i32 @HeapFree(i32 %92, i32 0, %struct.TYPE_19__* %93)
  %95 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %95, i32* %6, align 4
  br label %177

96:                                               ; preds = %71
  store i32 0, i32* %18, align 4
  br label %97

97:                                               ; preds = %166, %96
  %98 = load i32, i32* %18, align 4
  %99 = icmp slt i32 %98, 8
  br i1 %99, label %100, label %169

100:                                              ; preds = %97
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %102 = load i32, i32* %18, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 2
  %106 = call i32 @PropVariantInit(%struct.TYPE_16__* %105)
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %108 = load i32, i32* %18, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 1
  %112 = call i32 @PropVariantInit(%struct.TYPE_16__* %111)
  %113 = load i32, i32* @VT_LPWSTR, align 4
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %115 = load i32, i32* %18, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 1
  store i32 %113, i32* %119, align 8
  %120 = load i32, i32* %18, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [8 x %struct.TYPE_19__*], [8 x %struct.TYPE_19__*]* %16, i64 0, i64 %121
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %122, align 8
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %125 = load i32, i32* %18, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 1
  store %struct.TYPE_19__* %123, %struct.TYPE_19__** %130, align 8
  %131 = load i32, i32* %18, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [8 x %struct.TYPE_19__*], [8 x %struct.TYPE_19__*]* %16, i64 0, i64 %132
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %133, align 8
  %135 = load i32, i32* %18, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [8 x [12 x %struct.TYPE_18__]], [8 x [12 x %struct.TYPE_18__]]* bitcast ([8 x <{ %struct.TYPE_18__, [11 x %struct.TYPE_18__] }>]* @LoadChrmMetadata.names to [8 x [12 x %struct.TYPE_18__]]*), i64 0, i64 %136
  %138 = getelementptr inbounds [12 x %struct.TYPE_18__], [12 x %struct.TYPE_18__]* %137, i64 0, i64 0
  %139 = call i32 @lstrcpyW(%struct.TYPE_19__* %134, %struct.TYPE_18__* %138)
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %141 = load i32, i32* %18, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 0
  %145 = call i32 @PropVariantInit(%struct.TYPE_16__* %144)
  %146 = load i32, i32* @VT_UI4, align 4
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %148 = load i32, i32* %18, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 1
  store i32 %146, i32* %152, align 8
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %154 = load i32, i32* %18, align 4
  %155 = mul nsw i32 %154, 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i64 %156
  %158 = call i32 @read_ulong_be(%struct.TYPE_19__* %157)
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %160 = load i32, i32* %18, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 0
  store i32 %158, i32* %165, align 8
  br label %166

166:                                              ; preds = %100
  %167 = load i32, i32* %18, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %18, align 4
  br label %97

169:                                              ; preds = %97
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %171 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %10, align 8
  store %struct.TYPE_19__* %170, %struct.TYPE_19__** %171, align 8
  %172 = load i32*, i32** %11, align 8
  store i32 8, i32* %172, align 4
  %173 = call i32 (...) @GetProcessHeap()
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %175 = call i32 @HeapFree(i32 %173, i32 0, %struct.TYPE_19__* %174)
  %176 = load i32, i32* @S_OK, align 4
  store i32 %176, i32* %6, align 4
  br label %177

177:                                              ; preds = %169, %91, %31, %26
  %178 = load i32, i32* %6, align 4
  ret i32 %178
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @read_png_chunk(i32*, %struct.TYPE_19__*, %struct.TYPE_19__**, i32*) #2

declare dso_local i64 @FAILED(i32) #2

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_19__*) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local %struct.TYPE_19__* @HeapAlloc(i32, i32, i32) #2

declare dso_local i32 @lstrlenW(%struct.TYPE_18__*) #2

declare dso_local i32 @PropVariantInit(%struct.TYPE_16__*) #2

declare dso_local i32 @lstrcpyW(%struct.TYPE_19__*, %struct.TYPE_18__*) #2

declare dso_local i32 @read_ulong_be(%struct.TYPE_19__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
