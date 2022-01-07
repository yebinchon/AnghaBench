; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlform.c_HTMLFormElement_get_dispid.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlform.c_HTMLFormElement_get_dispid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@DISP_E_UNKNOWNNAME = common dso_local global i32 0, align 4
@HTMLFormElement_get_dispid.nameW = internal constant [5 x i8] c"name\00", align 1
@.str = private unnamed_addr constant [18 x i8] c"(%p)->(%s %x %p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"GetElements failed: 0x%08x\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"GetLength failed: 0x%08x\0A\00", align 1
@MSHTML_CUSTOM_DISPID_CNT = common dso_local global i64 0, align 8
@MSHTML_DISPID_CUSTOM_MIN = common dso_local global i64 0, align 8
@S_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Item failed: 0x%08x\0A\00", align 1
@IID_nsIDOMHTMLElement = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"Failed to get nsIDOMHTMLNode interface: 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"GetId failed: 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i64*)* @HTMLFormElement_get_dispid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HTMLFormElement_get_dispid(i32* %0, i8* %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = call %struct.TYPE_4__* @impl_from_HTMLDOMNode(i32* %22)
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %10, align 8
  %24 = load i32, i32* @DISP_E_UNKNOWNNAME, align 4
  store i32 %24, i32* %17, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @wine_dbgstr_w(i8* %26)
  %28 = load i32, i32* %8, align 4
  %29 = load i64*, i64** %9, align 8
  %30 = call i32 @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.TYPE_4__* %25, i32 %27, i32 %28, i64* %29)
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @nsIDOMHTMLFormElement_GetElements(i32 %33, i32** %11)
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %16, align 4
  %36 = call i64 @NS_FAILED(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %4
  %39 = load i32, i32* %16, align 4
  %40 = call i32 @FIXME(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @E_FAIL, align 4
  store i32 %41, i32* %5, align 4
  br label %174

42:                                               ; preds = %4
  %43 = load i32*, i32** %11, align 8
  %44 = call i32 @nsIDOMHTMLCollection_GetLength(i32* %43, i64* %14)
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* %16, align 4
  %46 = call i64 @NS_FAILED(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load i32, i32* %16, align 4
  %50 = call i32 @FIXME(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = load i32*, i32** %11, align 8
  %52 = call i32 @nsIDOMHTMLCollection_Release(i32* %51)
  %53 = load i32, i32* @E_FAIL, align 4
  store i32 %53, i32* %5, align 4
  br label %174

54:                                               ; preds = %42
  %55 = load i64, i64* %14, align 8
  %56 = load i64, i64* @MSHTML_CUSTOM_DISPID_CNT, align 8
  %57 = icmp sgt i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i64, i64* @MSHTML_CUSTOM_DISPID_CNT, align 8
  store i64 %59, i64* %14, align 8
  br label %60

60:                                               ; preds = %58, %54
  %61 = load i8*, i8** %7, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp sle i32 48, %63
  br i1 %64, label %65, label %87

65:                                               ; preds = %60
  %66 = load i8*, i8** %7, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp sle i32 %68, 57
  br i1 %69, label %70, label %87

70:                                               ; preds = %65
  %71 = load i8*, i8** %7, align 8
  %72 = call i64 @strtoulW(i8* %71, i32** %18, i32 10)
  store i64 %72, i64* %15, align 8
  %73 = load i32*, i32** %18, align 8
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %86, label %76

76:                                               ; preds = %70
  %77 = load i64, i64* %15, align 8
  %78 = load i64, i64* %14, align 8
  %79 = icmp slt i64 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = load i64, i64* @MSHTML_DISPID_CUSTOM_MIN, align 8
  %82 = load i64, i64* %15, align 8
  %83 = add nsw i64 %81, %82
  %84 = load i64*, i64** %9, align 8
  store i64 %83, i64* %84, align 8
  %85 = load i32, i32* @S_OK, align 4
  store i32 %85, i32* %5, align 4
  br label %174

86:                                               ; preds = %76, %70
  br label %87

87:                                               ; preds = %86, %65, %60
  %88 = call i32 @nsAString_Init(i32* %12, i32* null)
  store i64 0, i64* %15, align 8
  br label %89

89:                                               ; preds = %166, %87
  %90 = load i64, i64* %15, align 8
  %91 = load i64, i64* %14, align 8
  %92 = icmp slt i64 %90, %91
  br i1 %92, label %93, label %169

93:                                               ; preds = %89
  %94 = load i32*, i32** %11, align 8
  %95 = load i64, i64* %15, align 8
  %96 = call i32 @nsIDOMHTMLCollection_Item(i32* %94, i64 %95, i32** %19)
  store i32 %96, i32* %16, align 4
  %97 = load i32, i32* %16, align 4
  %98 = call i64 @NS_FAILED(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %93
  %101 = load i32, i32* %16, align 4
  %102 = call i32 @FIXME(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* @E_FAIL, align 4
  store i32 %103, i32* %17, align 4
  br label %169

104:                                              ; preds = %93
  %105 = load i32*, i32** %19, align 8
  %106 = bitcast i32** %20 to i8**
  %107 = call i32 @nsIDOMNode_QueryInterface(i32* %105, i32* @IID_nsIDOMHTMLElement, i8** %106)
  store i32 %107, i32* %16, align 4
  %108 = load i32*, i32** %19, align 8
  %109 = call i32 @nsIDOMNode_Release(i32* %108)
  %110 = load i32, i32* %16, align 4
  %111 = call i64 @NS_FAILED(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %104
  %114 = load i32, i32* %16, align 4
  %115 = call i32 @FIXME(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* @E_FAIL, align 4
  store i32 %116, i32* %17, align 4
  br label %169

117:                                              ; preds = %104
  %118 = load i32*, i32** %20, align 8
  %119 = call i32 @nsIDOMHTMLElement_GetId(i32* %118, i32* %12)
  store i32 %119, i32* %16, align 4
  %120 = load i32, i32* %16, align 4
  %121 = call i64 @NS_FAILED(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %117
  %124 = load i32, i32* %16, align 4
  %125 = call i32 @FIXME(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %124)
  %126 = load i32*, i32** %20, align 8
  %127 = call i32 @nsIDOMHTMLElement_Release(i32* %126)
  %128 = load i32, i32* @E_FAIL, align 4
  store i32 %128, i32* %17, align 4
  br label %169

129:                                              ; preds = %117
  %130 = call i32 @nsAString_GetData(i32* %12, i8** %21)
  %131 = load i8*, i8** %21, align 8
  %132 = load i8*, i8** %7, align 8
  %133 = call i32 @strcmpiW(i8* %131, i8* %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %143, label %135

135:                                              ; preds = %129
  %136 = load i32*, i32** %20, align 8
  %137 = call i32 @nsIDOMHTMLElement_Release(i32* %136)
  %138 = load i64, i64* @MSHTML_DISPID_CUSTOM_MIN, align 8
  %139 = load i64, i64* %15, align 8
  %140 = add nsw i64 %138, %139
  %141 = load i64*, i64** %9, align 8
  store i64 %140, i64* %141, align 8
  %142 = load i32, i32* @S_OK, align 4
  store i32 %142, i32* %17, align 4
  br label %169

143:                                              ; preds = %129
  %144 = load i32*, i32** %20, align 8
  %145 = call i32 @get_elem_attr_value(i32* %144, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @HTMLFormElement_get_dispid.nameW, i64 0, i64 0), i32* %13, i8** %21)
  store i32 %145, i32* %16, align 4
  %146 = load i32*, i32** %20, align 8
  %147 = call i32 @nsIDOMHTMLElement_Release(i32* %146)
  %148 = load i32, i32* %16, align 4
  %149 = call i64 @NS_SUCCEEDED(i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %165

151:                                              ; preds = %143
  %152 = load i8*, i8** %21, align 8
  %153 = load i8*, i8** %7, align 8
  %154 = call i32 @strcmpiW(i8* %152, i8* %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %163, label %156

156:                                              ; preds = %151
  %157 = call i32 @nsAString_Finish(i32* %13)
  %158 = load i64, i64* @MSHTML_DISPID_CUSTOM_MIN, align 8
  %159 = load i64, i64* %15, align 8
  %160 = add nsw i64 %158, %159
  %161 = load i64*, i64** %9, align 8
  store i64 %160, i64* %161, align 8
  %162 = load i32, i32* @S_OK, align 4
  store i32 %162, i32* %17, align 4
  br label %169

163:                                              ; preds = %151
  %164 = call i32 @nsAString_Finish(i32* %13)
  br label %165

165:                                              ; preds = %163, %143
  br label %166

166:                                              ; preds = %165
  %167 = load i64, i64* %15, align 8
  %168 = add nsw i64 %167, 1
  store i64 %168, i64* %15, align 8
  br label %89

169:                                              ; preds = %156, %135, %123, %113, %100, %89
  %170 = call i32 @nsAString_Finish(i32* %12)
  %171 = load i32*, i32** %11, align 8
  %172 = call i32 @nsIDOMHTMLCollection_Release(i32* %171)
  %173 = load i32, i32* %17, align 4
  store i32 %173, i32* %5, align 4
  br label %174

174:                                              ; preds = %169, %80, %48, %38
  %175 = load i32, i32* %5, align 4
  ret i32 %175
}

declare dso_local %struct.TYPE_4__* @impl_from_HTMLDOMNode(i32*) #1

declare dso_local i32 @TRACE(i8*, %struct.TYPE_4__*, i32, i32, i64*) #1

declare dso_local i32 @wine_dbgstr_w(i8*) #1

declare dso_local i32 @nsIDOMHTMLFormElement_GetElements(i32, i32**) #1

declare dso_local i64 @NS_FAILED(i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @nsIDOMHTMLCollection_GetLength(i32*, i64*) #1

declare dso_local i32 @nsIDOMHTMLCollection_Release(i32*) #1

declare dso_local i64 @strtoulW(i8*, i32**, i32) #1

declare dso_local i32 @nsAString_Init(i32*, i32*) #1

declare dso_local i32 @nsIDOMHTMLCollection_Item(i32*, i64, i32**) #1

declare dso_local i32 @nsIDOMNode_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @nsIDOMNode_Release(i32*) #1

declare dso_local i32 @nsIDOMHTMLElement_GetId(i32*, i32*) #1

declare dso_local i32 @nsIDOMHTMLElement_Release(i32*) #1

declare dso_local i32 @nsAString_GetData(i32*, i8**) #1

declare dso_local i32 @strcmpiW(i8*, i8*) #1

declare dso_local i32 @get_elem_attr_value(i32*, i8*, i32*, i8**) #1

declare dso_local i64 @NS_SUCCEEDED(i32) #1

declare dso_local i32 @nsAString_Finish(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
