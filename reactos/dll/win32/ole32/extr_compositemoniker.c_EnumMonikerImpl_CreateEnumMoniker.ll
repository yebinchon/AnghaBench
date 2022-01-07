; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_compositemoniker.c_EnumMonikerImpl_CreateEnumMoniker.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_compositemoniker.c_EnumMonikerImpl_CreateEnumMoniker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__, i32** }

@E_INVALIDARG = common dso_local global i32 0, align 4
@STG_E_INSUFFICIENTMEMORY = common dso_local global i32 0, align 4
@VT_EnumMonikerImpl = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32, i32, i64, %struct.TYPE_5__**)* @EnumMonikerImpl_CreateEnumMoniker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @EnumMonikerImpl_CreateEnumMoniker(i32** %0, i32 %1, i32 %2, i64 %3, %struct.TYPE_5__** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_5__**, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i32, align 4
  store i32** %0, i32*** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store %struct.TYPE_5__** %4, %struct.TYPE_5__*** %11, align 8
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %18, i32* %6, align 4
  br label %123

19:                                               ; preds = %5
  %20 = call i32 (...) @GetProcessHeap()
  %21 = call i8* @HeapAlloc(i32 %20, i32 0, i32 32)
  %22 = bitcast i8* %21 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %12, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %24 = icmp eq %struct.TYPE_6__* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @STG_E_INSUFFICIENTMEMORY, align 4
  store i32 %26, i32* %6, align 4
  br label %123

27:                                               ; preds = %19
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i32* @VT_EnumMonikerImpl, i32** %30, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = call i32 (...) @GetProcessHeap()
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 8
  %43 = trunc i64 %42 to i32
  %44 = call i8* @HeapAlloc(i32 %39, i32 0, i32 %43)
  %45 = bitcast i8* %44 to i32**
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 4
  store i32** %45, i32*** %47, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 4
  %50 = load i32**, i32*** %49, align 8
  %51 = icmp eq i32** %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %27
  %53 = call i32 (...) @GetProcessHeap()
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %55 = call i32 @HeapFree(i32 %53, i32 0, %struct.TYPE_6__* %54)
  %56 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %56, i32* %6, align 4
  br label %123

57:                                               ; preds = %27
  %58 = load i64, i64* %10, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %87

60:                                               ; preds = %57
  store i32 0, i32* %13, align 4
  br label %61

61:                                               ; preds = %83, %60
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %86

65:                                               ; preds = %61
  %66 = load i32**, i32*** %7, align 8
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32*, i32** %66, i64 %68
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 4
  %73 = load i32**, i32*** %72, align 8
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32*, i32** %73, i64 %75
  store i32* %70, i32** %76, align 8
  %77 = load i32**, i32*** %7, align 8
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32*, i32** %77, i64 %79
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @IMoniker_AddRef(i32* %81)
  br label %83

83:                                               ; preds = %65
  %84 = load i32, i32* %13, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %13, align 4
  br label %61

86:                                               ; preds = %61
  br label %118

87:                                               ; preds = %57
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %13, align 4
  br label %89

89:                                               ; preds = %114, %87
  %90 = load i32, i32* %13, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %117

92:                                               ; preds = %89
  %93 = load i32**, i32*** %7, align 8
  %94 = load i32, i32* %13, align 4
  %95 = sub nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32*, i32** %93, i64 %96
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 4
  %101 = load i32**, i32*** %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* %13, align 4
  %104 = sub nsw i32 %102, %103
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32*, i32** %101, i64 %105
  store i32* %98, i32** %106, align 8
  %107 = load i32**, i32*** %7, align 8
  %108 = load i32, i32* %13, align 4
  %109 = sub nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32*, i32** %107, i64 %110
  %112 = load i32*, i32** %111, align 8
  %113 = call i32 @IMoniker_AddRef(i32* %112)
  br label %114

114:                                              ; preds = %92
  %115 = load i32, i32* %13, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %13, align 4
  br label %89

117:                                              ; preds = %89
  br label %118

118:                                              ; preds = %117, %86
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 3
  %121 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %11, align 8
  store %struct.TYPE_5__* %120, %struct.TYPE_5__** %121, align 8
  %122 = load i32, i32* @S_OK, align 4
  store i32 %122, i32* %6, align 4
  br label %123

123:                                              ; preds = %118, %52, %25, %17
  %124 = load i32, i32* %6, align 4
  ret i32 %124
}

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @IMoniker_AddRef(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
