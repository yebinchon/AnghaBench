; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmldoc.c_dispid_from_elem_name.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmldoc.c_dispid_from_elem_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32**, i32 }

@DISP_E_UNKNOWNNAME = common dso_local global i32 0, align 4
@E_FAIL = common dso_local global i32 0, align 4
@MSHTML_DISPID_CUSTOM_MIN = common dso_local global i64 0, align 8
@S_OK = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i64*)* @dispid_from_elem_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dispid_from_elem_name(%struct.TYPE_3__* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32**, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @DISP_E_UNKNOWNNAME, align 4
  store i32 %19, i32* %4, align 4
  br label %157

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @nsAString_InitDepend(i32* %9, i32 %21)
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @nsIDOMHTMLDocument_GetElementsByName(i32 %25, i32* %9, i32** %8)
  store i32 %26, i32* %12, align 4
  %27 = call i32 @nsAString_Finish(i32* %9)
  %28 = load i32, i32* %12, align 4
  %29 = call i64 @NS_FAILED(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = load i32, i32* @E_FAIL, align 4
  store i32 %32, i32* %4, align 4
  br label %157

33:                                               ; preds = %20
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @nsIDOMNodeList_GetLength(i32* %34, i32* %10)
  store i32 %35, i32* %12, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @nsIDOMNodeList_Release(i32* %36)
  %38 = load i32, i32* %12, align 4
  %39 = call i64 @NS_FAILED(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* @E_FAIL, align 4
  store i32 %42, i32* %4, align 4
  br label %157

43:                                               ; preds = %33
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* @DISP_E_UNKNOWNNAME, align 4
  store i32 %47, i32* %4, align 4
  br label %157

48:                                               ; preds = %43
  store i32 0, i32* %11, align 4
  br label %49

49:                                               ; preds = %74, %48
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ult i32 %50, %53
  br i1 %54, label %55, label %77

55:                                               ; preds = %49
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  %59 = load i32**, i32*** %58, align 8
  %60 = load i32, i32* %11, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32*, i32** %59, i64 %61
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @strcmpW(i32 %56, i32* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %55
  %67 = load i64, i64* @MSHTML_DISPID_CUSTOM_MIN, align 8
  %68 = load i32, i32* %11, align 4
  %69 = zext i32 %68 to i64
  %70 = add nsw i64 %67, %69
  %71 = load i64*, i64** %7, align 8
  store i64 %70, i64* %71, align 8
  %72 = load i32, i32* @S_OK, align 4
  store i32 %72, i32* %4, align 4
  br label %157

73:                                               ; preds = %55
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %11, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %11, align 4
  br label %49

77:                                               ; preds = %49
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %80, %83
  br i1 %84, label %85, label %124

85:                                               ; preds = %77
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %111

90:                                               ; preds = %85
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 2
  %93 = load i32**, i32*** %92, align 8
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = mul i32 %96, 2
  %98 = zext i32 %97 to i64
  %99 = mul i64 %98, 8
  %100 = trunc i64 %99 to i32
  %101 = call i32** @heap_realloc(i32** %93, i32 %100)
  store i32** %101, i32*** %13, align 8
  %102 = load i32**, i32*** %13, align 8
  %103 = icmp ne i32** %102, null
  br i1 %103, label %106, label %104

104:                                              ; preds = %90
  %105 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %105, i32* %4, align 4
  br label %157

106:                                              ; preds = %90
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = mul i32 %109, 2
  store i32 %110, i32* %108, align 4
  br label %120

111:                                              ; preds = %85
  %112 = call i32** @heap_alloc(i32 128)
  store i32** %112, i32*** %13, align 8
  %113 = load i32**, i32*** %13, align 8
  %114 = icmp ne i32** %113, null
  br i1 %114, label %117, label %115

115:                                              ; preds = %111
  %116 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %116, i32* %4, align 4
  br label %157

117:                                              ; preds = %111
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 1
  store i32 16, i32* %119, align 4
  br label %120

120:                                              ; preds = %117, %106
  %121 = load i32**, i32*** %13, align 8
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 2
  store i32** %121, i32*** %123, align 8
  br label %124

124:                                              ; preds = %120, %77
  %125 = load i32, i32* %6, align 4
  %126 = call i32* @heap_strdupW(i32 %125)
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 2
  %129 = load i32**, i32*** %128, align 8
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds i32*, i32** %129, i64 %133
  store i32* %126, i32** %134, align 8
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 2
  %137 = load i32**, i32*** %136, align 8
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds i32*, i32** %137, i64 %141
  %143 = load i32*, i32** %142, align 8
  %144 = icmp ne i32* %143, null
  br i1 %144, label %147, label %145

145:                                              ; preds = %124
  %146 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %146, i32* %4, align 4
  br label %157

147:                                              ; preds = %124
  %148 = load i64, i64* @MSHTML_DISPID_CUSTOM_MIN, align 8
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = add i32 %151, 1
  store i32 %152, i32* %150, align 8
  %153 = zext i32 %151 to i64
  %154 = add nsw i64 %148, %153
  %155 = load i64*, i64** %7, align 8
  store i64 %154, i64* %155, align 8
  %156 = load i32, i32* @S_OK, align 4
  store i32 %156, i32* %4, align 4
  br label %157

157:                                              ; preds = %147, %145, %115, %104, %66, %46, %41, %31, %18
  %158 = load i32, i32* %4, align 4
  ret i32 %158
}

declare dso_local i32 @nsAString_InitDepend(i32*, i32) #1

declare dso_local i32 @nsIDOMHTMLDocument_GetElementsByName(i32, i32*, i32**) #1

declare dso_local i32 @nsAString_Finish(i32*) #1

declare dso_local i64 @NS_FAILED(i32) #1

declare dso_local i32 @nsIDOMNodeList_GetLength(i32*, i32*) #1

declare dso_local i32 @nsIDOMNodeList_Release(i32*) #1

declare dso_local i32 @strcmpW(i32, i32*) #1

declare dso_local i32** @heap_realloc(i32**, i32) #1

declare dso_local i32** @heap_alloc(i32) #1

declare dso_local i32* @heap_strdupW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
