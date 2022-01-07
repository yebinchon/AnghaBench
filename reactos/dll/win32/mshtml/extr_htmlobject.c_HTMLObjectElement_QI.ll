; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlobject.c_HTMLObjectElement_QI.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlobject.c_HTMLObjectElement_QI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"(%p)->(%s %p)\0A\00", align 1
@IID_IUnknown = common dso_local global i32 0, align 4
@IID_IDispatch = common dso_local global i32 0, align 4
@IID_IHTMLObjectElement = common dso_local global i32 0, align 4
@IID_IHTMLObjectElement2 = common dso_local global i32 0, align 4
@IID_HTMLPluginContainer = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@E_NOINTERFACE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"returning plugin iface %p wrapped to %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32, i8**)* @HTMLObjectElement_QI to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @HTMLObjectElement_QI(i32* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call %struct.TYPE_10__* @impl_from_HTMLDOMNode(i32* %12)
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %8, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @debugstr_mshtml_guid(i32 %15)
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i32*
  %19 = load i8**, i8*** %7, align 8
  %20 = call i32 (i8*, %struct.TYPE_10__*, i32*, ...) @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.TYPE_10__* %14, i32* %18, i8** %19)
  %21 = load i32, i32* %6, align 4
  %22 = call i64 @IsEqualGUID(i32* @IID_IUnknown, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = bitcast i32* %26 to i8*
  %28 = load i8**, i8*** %7, align 8
  store i8* %27, i8** %28, align 8
  br label %136

29:                                               ; preds = %3
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @IsEqualGUID(i32* @IID_IDispatch, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = bitcast i32* %35 to i8*
  %37 = load i8**, i8*** %7, align 8
  store i8* %36, i8** %37, align 8
  br label %135

38:                                               ; preds = %29
  %39 = load i32, i32* %6, align 4
  %40 = call i64 @IsEqualGUID(i32* @IID_IHTMLObjectElement, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = bitcast i32* %44 to i8*
  %46 = load i8**, i8*** %7, align 8
  store i8* %45, i8** %46, align 8
  br label %134

47:                                               ; preds = %38
  %48 = load i32, i32* %6, align 4
  %49 = call i64 @IsEqualGUID(i32* @IID_IHTMLObjectElement2, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 2
  %54 = bitcast i32* %53 to i8*
  %55 = load i8**, i8*** %7, align 8
  store i8* %54, i8** %55, align 8
  br label %133

56:                                               ; preds = %47
  %57 = load i32, i32* %6, align 4
  %58 = call i64 @IsEqualGUID(i32* @IID_HTMLPluginContainer, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %56
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = bitcast %struct.TYPE_9__* %62 to i8*
  %64 = load i8**, i8*** %7, align 8
  store i8* %63, i8** %64, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = call i32 @node_addref(i32* %68)
  %70 = load i64, i64* @S_OK, align 8
  store i64 %70, i64* %4, align 8
  br label %142

71:                                               ; preds = %56
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32, i32* %6, align 4
  %77 = load i8**, i8*** %7, align 8
  %78 = call i64 @HTMLElement_QI(i32* %75, i32 %76, i8** %77)
  store i64 %78, i64* %9, align 8
  %79 = load i64, i64* %9, align 8
  %80 = load i64, i64* @E_NOINTERFACE, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %131

82:                                               ; preds = %71
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = icmp ne %struct.TYPE_8__* %86, null
  br i1 %87, label %88, label %131

88:                                               ; preds = %82
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %131

96:                                               ; preds = %88
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = bitcast i32** %10 to i8**
  %105 = call i64 @IUnknown_QueryInterface(i64 %102, i32 %103, i8** %104)
  store i64 %105, i64* %9, align 8
  %106 = load i64, i64* %9, align 8
  %107 = load i64, i64* @S_OK, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %130

109:                                              ; preds = %96
  %110 = load i32*, i32** %10, align 8
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = call i64 @wrap_iface(i32* %110, i32* %112, i32** %11)
  store i64 %113, i64* %9, align 8
  %114 = load i32*, i32** %10, align 8
  %115 = call i32 @IUnknown_Release(i32* %114)
  %116 = load i64, i64* %9, align 8
  %117 = call i64 @FAILED(i64 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %109
  %120 = load i64, i64* %9, align 8
  store i64 %120, i64* %4, align 8
  br label %142

121:                                              ; preds = %109
  %122 = load i32*, i32** %10, align 8
  %123 = bitcast i32* %122 to %struct.TYPE_10__*
  %124 = load i32*, i32** %11, align 8
  %125 = call i32 (i8*, %struct.TYPE_10__*, i32*, ...) @TRACE(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_10__* %123, i32* %124)
  %126 = load i32*, i32** %11, align 8
  %127 = bitcast i32* %126 to i8*
  %128 = load i8**, i8*** %7, align 8
  store i8* %127, i8** %128, align 8
  %129 = load i64, i64* @S_OK, align 8
  store i64 %129, i64* %4, align 8
  br label %142

130:                                              ; preds = %96
  br label %131

131:                                              ; preds = %130, %88, %82, %71
  %132 = load i64, i64* %9, align 8
  store i64 %132, i64* %4, align 8
  br label %142

133:                                              ; preds = %51
  br label %134

134:                                              ; preds = %133, %42
  br label %135

135:                                              ; preds = %134, %33
  br label %136

136:                                              ; preds = %135, %24
  %137 = load i8**, i8*** %7, align 8
  %138 = load i8*, i8** %137, align 8
  %139 = bitcast i8* %138 to i32*
  %140 = call i32 @IUnknown_AddRef(i32* %139)
  %141 = load i64, i64* @S_OK, align 8
  store i64 %141, i64* %4, align 8
  br label %142

142:                                              ; preds = %136, %131, %121, %119, %60
  %143 = load i64, i64* %4, align 8
  ret i64 %143
}

declare dso_local %struct.TYPE_10__* @impl_from_HTMLDOMNode(i32*) #1

declare dso_local i32 @TRACE(i8*, %struct.TYPE_10__*, i32*, ...) #1

declare dso_local i32 @debugstr_mshtml_guid(i32) #1

declare dso_local i64 @IsEqualGUID(i32*, i32) #1

declare dso_local i32 @node_addref(i32*) #1

declare dso_local i64 @HTMLElement_QI(i32*, i32, i8**) #1

declare dso_local i64 @IUnknown_QueryInterface(i64, i32, i8**) #1

declare dso_local i64 @wrap_iface(i32*, i32*, i32**) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @IUnknown_AddRef(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
