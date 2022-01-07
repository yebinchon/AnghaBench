; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_query.c_get_properties.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_query.c_get_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@VT_BSTR = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i64 0, align 8
@WBEM_FLAG_NONSYSTEM_ONLY = common dso_local global i32 0, align 4
@WBEM_FLAG_SYSTEM_ONLY = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_properties(%struct.view* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.view*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.view* %0, %struct.view** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  %14 = load %struct.view*, %struct.view** %5, align 8
  %15 = call i64 @count_selected_properties(%struct.view* %14)
  store i64 %15, i64* %11, align 8
  %16 = load i32, i32* @VT_BSTR, align 4
  %17 = load i64, i64* %11, align 8
  %18 = call i32* @SafeArrayCreateVector(i32 %16, i32 0, i64 %17)
  store i32* %18, i32** %8, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %3
  %21 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %21, i64* %4, align 8
  br label %119

22:                                               ; preds = %3
  store i64 0, i64* %10, align 8
  store i32 0, i32* %12, align 4
  br label %23

23:                                               ; preds = %112, %22
  %24 = load i64, i64* %10, align 8
  %25 = load %struct.view*, %struct.view** %5, align 8
  %26 = getelementptr inbounds %struct.view, %struct.view* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ult i64 %24, %29
  br i1 %30, label %31, label %115

31:                                               ; preds = %23
  %32 = load %struct.view*, %struct.view** %5, align 8
  %33 = getelementptr inbounds %struct.view, %struct.view* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load i64, i64* %10, align 8
  %36 = call i64 @is_method(%struct.TYPE_4__* %34, i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %112

39:                                               ; preds = %31
  %40 = load %struct.view*, %struct.view** %5, align 8
  %41 = load %struct.view*, %struct.view** %5, align 8
  %42 = getelementptr inbounds %struct.view, %struct.view* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = load i64, i64* %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @is_selected_prop(%struct.view* %40, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %39
  br label %112

53:                                               ; preds = %39
  %54 = load %struct.view*, %struct.view** %5, align 8
  %55 = getelementptr inbounds %struct.view, %struct.view* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = load i64, i64* %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @is_system_prop(i32 %62)
  store i64 %63, i64* %13, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @WBEM_FLAG_NONSYSTEM_ONLY, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %53
  %69 = load i64, i64* %13, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  br label %112

72:                                               ; preds = %68, %53
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @WBEM_FLAG_SYSTEM_ONLY, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load i64, i64* %13, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %77
  br label %112

81:                                               ; preds = %77, %72
  br label %82

82:                                               ; preds = %81
  %83 = load %struct.view*, %struct.view** %5, align 8
  %84 = getelementptr inbounds %struct.view, %struct.view* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = load i64, i64* %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @SysAllocString(i32 %91)
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %82
  %96 = load i32*, i32** %8, align 8
  %97 = load i32, i32* %9, align 4
  %98 = call i64 @SafeArrayPutElement(i32* %96, i32* %12, i32 %97)
  %99 = load i64, i64* @S_OK, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %95, %82
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @SysFreeString(i32 %102)
  %104 = load i32*, i32** %8, align 8
  %105 = call i32 @SafeArrayDestroy(i32* %104)
  %106 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %106, i64* %4, align 8
  br label %119

107:                                              ; preds = %95
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @SysFreeString(i32 %108)
  %110 = load i32, i32* %12, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %12, align 4
  br label %112

112:                                              ; preds = %107, %80, %71, %52, %38
  %113 = load i64, i64* %10, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %10, align 8
  br label %23

115:                                              ; preds = %23
  %116 = load i32*, i32** %8, align 8
  %117 = load i32**, i32*** %7, align 8
  store i32* %116, i32** %117, align 8
  %118 = load i64, i64* @S_OK, align 8
  store i64 %118, i64* %4, align 8
  br label %119

119:                                              ; preds = %115, %101, %20
  %120 = load i64, i64* %4, align 8
  ret i64 %120
}

declare dso_local i64 @count_selected_properties(%struct.view*) #1

declare dso_local i32* @SafeArrayCreateVector(i32, i32, i64) #1

declare dso_local i64 @is_method(%struct.TYPE_4__*, i64) #1

declare dso_local i32 @is_selected_prop(%struct.view*, i32) #1

declare dso_local i64 @is_system_prop(i32) #1

declare dso_local i32 @SysAllocString(i32) #1

declare dso_local i64 @SafeArrayPutElement(i32*, i32*, i32) #1

declare dso_local i32 @SysFreeString(i32) #1

declare dso_local i32 @SafeArrayDestroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
