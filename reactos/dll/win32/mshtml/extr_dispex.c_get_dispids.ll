; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_dispex.c_get_dispids.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_dispex.c_get_dispids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@id_cmp = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_dispids(i32 %0, i32* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32** %2, i32*** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @get_typeinfo(i32 %15, i32** %11)
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* %14, align 4
  %18 = call i64 @FAILED(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %14, align 4
  store i32 %21, i32* %4, align 4
  br label %97

22:                                               ; preds = %3
  %23 = load i32*, i32** %11, align 8
  %24 = call i32 @ITypeInfo_GetTypeAttr(i32* %23, %struct.TYPE_7__** %12)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = call i64 @FAILED(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i32*, i32** %11, align 8
  %30 = call i32 @ITypeInfo_Release(i32* %29)
  %31 = load i32, i32* %14, align 4
  store i32 %31, i32* %4, align 4
  br label %97

32:                                               ; preds = %22
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %9, align 4
  %36 = load i32*, i32** %11, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %38 = call i32 @ITypeInfo_ReleaseTypeAttr(i32* %36, %struct.TYPE_7__* %37)
  %39 = load i32, i32* %9, align 4
  %40 = zext i32 %39 to i64
  %41 = mul i64 %40, 4
  %42 = trunc i64 %41 to i32
  %43 = call i32* @heap_alloc(i32 %42)
  store i32* %43, i32** %13, align 8
  %44 = load i32*, i32** %13, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %32
  %47 = load i32*, i32** %11, align 8
  %48 = call i32 @ITypeInfo_Release(i32* %47)
  %49 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %49, i32* %4, align 4
  br label %97

50:                                               ; preds = %32
  store i32 0, i32* %8, align 4
  br label %51

51:                                               ; preds = %74, %50
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %77

55:                                               ; preds = %51
  %56 = load i32*, i32** %11, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @ITypeInfo_GetFuncDesc(i32* %56, i32 %57, %struct.TYPE_8__** %10)
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = call i64 @FAILED(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %77

63:                                               ; preds = %55
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %13, align 8
  %68 = load i32, i32* %8, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %66, i32* %70, align 4
  %71 = load i32*, i32** %11, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %73 = call i32 @ITypeInfo_ReleaseFuncDesc(i32* %71, %struct.TYPE_8__* %72)
  br label %74

74:                                               ; preds = %63
  %75 = load i32, i32* %8, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %8, align 4
  br label %51

77:                                               ; preds = %62, %51
  %78 = load i32*, i32** %11, align 8
  %79 = call i32 @ITypeInfo_Release(i32* %78)
  %80 = load i32, i32* %14, align 4
  %81 = call i64 @FAILED(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load i32*, i32** %13, align 8
  %85 = call i32 @heap_free(i32* %84)
  %86 = load i32, i32* %14, align 4
  store i32 %86, i32* %4, align 4
  br label %97

87:                                               ; preds = %77
  %88 = load i32*, i32** %13, align 8
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @id_cmp, align 4
  %91 = call i32 @qsort(i32* %88, i32 %89, i32 4, i32 %90)
  %92 = load i32, i32* %9, align 4
  %93 = load i32*, i32** %6, align 8
  store i32 %92, i32* %93, align 4
  %94 = load i32*, i32** %13, align 8
  %95 = load i32**, i32*** %7, align 8
  store i32* %94, i32** %95, align 8
  %96 = load i32, i32* @S_OK, align 4
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %87, %83, %46, %28, %20
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @get_typeinfo(i32, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @ITypeInfo_GetTypeAttr(i32*, %struct.TYPE_7__**) #1

declare dso_local i32 @ITypeInfo_Release(i32*) #1

declare dso_local i32 @ITypeInfo_ReleaseTypeAttr(i32*, %struct.TYPE_7__*) #1

declare dso_local i32* @heap_alloc(i32) #1

declare dso_local i32 @ITypeInfo_GetFuncDesc(i32*, i32, %struct.TYPE_8__**) #1

declare dso_local i32 @ITypeInfo_ReleaseFuncDesc(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @heap_free(i32*) #1

declare dso_local i32 @qsort(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
