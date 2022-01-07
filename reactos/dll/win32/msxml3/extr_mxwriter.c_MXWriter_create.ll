; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msxml3/extr_mxwriter.c_MXWriter_create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msxml3/extr_mxwriter.c_MXWriter_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_16__, i32, i8*, i8*, i32, i32, i32*, i8*, i8*, i64, i8*, i32*, i8*, i8**, i32, %struct.TYPE_15__, %struct.TYPE_26__, %struct.TYPE_25__, %struct.TYPE_24__, %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__ }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_26__ = type { i32* }
%struct.TYPE_25__ = type { i32* }
%struct.TYPE_24__ = type { i32* }
%struct.TYPE_23__ = type { i32* }
%struct.TYPE_22__ = type { i32* }
%struct.TYPE_21__ = type { i32* }
%struct.TYPE_20__ = type { i32* }
%struct.TYPE_19__ = type { i32* }
%struct.TYPE_18__ = type { i32* }

@MXWriter_create.version10W = internal constant [4 x i8] c"1.0\00", align 1
@.str = private unnamed_addr constant [6 x i8] c"(%p)\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i64 0, align 8
@MXWriterVtbl = common dso_local global i32 0, align 4
@SAXContentHandlerVtbl = common dso_local global i32 0, align 4
@SAXLexicalHandlerVtbl = common dso_local global i32 0, align 4
@SAXDeclHandlerVtbl = common dso_local global i32 0, align 4
@SAXDTDHandlerVtbl = common dso_local global i32 0, align 4
@SAXErrorHandlerVtbl = common dso_local global i32 0, align 4
@VBSAXDeclHandlerVtbl = common dso_local global i32 0, align 4
@VBSAXLexicalHandlerVtbl = common dso_local global i32 0, align 4
@VBSAXContentHandlerVtbl = common dso_local global i32 0, align 4
@VBSAXDTDHandlerVtbl = common dso_local global i32 0, align 4
@VBSAXErrorHandlerVtbl = common dso_local global i32 0, align 4
@VARIANT_TRUE = common dso_local global i8* null, align 8
@MXWriter_BOM = common dso_local global i64 0, align 8
@VARIANT_FALSE = common dso_local global i8* null, align 8
@MXWriter_DisableEscaping = common dso_local global i64 0, align 8
@MXWriter_Indent = common dso_local global i64 0, align 8
@MXWriter_OmitXmlDecl = common dso_local global i64 0, align 8
@MXWriter_Standalone = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@utf16W = common dso_local global i8* null, align 8
@XmlEncoding_UTF16 = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@mxwriter_dispex = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"returning iface %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @MXWriter_create(i32 %0, i8** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i8**, i8*** %5, align 8
  %9 = bitcast i8** %8 to i8*
  %10 = call i32 @TRACE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %9)
  %11 = call %struct.TYPE_17__* @heap_alloc(i32 200)
  store %struct.TYPE_17__* %11, %struct.TYPE_17__** %6, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %13 = icmp ne %struct.TYPE_17__* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %15, i64* %3, align 8
  br label %149

16:                                               ; preds = %2
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  store i32* @MXWriterVtbl, i32** %19, align 8
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 25
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 0
  store i32* @SAXContentHandlerVtbl, i32** %22, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 24
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  store i32* @SAXLexicalHandlerVtbl, i32** %25, align 8
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 23
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 0
  store i32* @SAXDeclHandlerVtbl, i32** %28, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 22
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 0
  store i32* @SAXDTDHandlerVtbl, i32** %31, align 8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 21
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 0
  store i32* @SAXErrorHandlerVtbl, i32** %34, align 8
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 20
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i32 0, i32 0
  store i32* @VBSAXDeclHandlerVtbl, i32** %37, align 8
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 19
  %40 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %39, i32 0, i32 0
  store i32* @VBSAXLexicalHandlerVtbl, i32** %40, align 8
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 18
  %43 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %42, i32 0, i32 0
  store i32* @VBSAXContentHandlerVtbl, i32** %43, align 8
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 17
  %46 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %45, i32 0, i32 0
  store i32* @VBSAXDTDHandlerVtbl, i32** %46, align 8
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 16
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  store i32* @VBSAXErrorHandlerVtbl, i32** %49, align 8
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 15
  store i32 %52, i32* %54, align 8
  %55 = load i8*, i8** @VARIANT_TRUE, align 8
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 14
  %58 = load i8**, i8*** %57, align 8
  %59 = load i64, i64* @MXWriter_BOM, align 8
  %60 = getelementptr inbounds i8*, i8** %58, i64 %59
  store i8* %55, i8** %60, align 8
  %61 = load i8*, i8** @VARIANT_FALSE, align 8
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 14
  %64 = load i8**, i8*** %63, align 8
  %65 = load i64, i64* @MXWriter_DisableEscaping, align 8
  %66 = getelementptr inbounds i8*, i8** %64, i64 %65
  store i8* %61, i8** %66, align 8
  %67 = load i8*, i8** @VARIANT_FALSE, align 8
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 14
  %70 = load i8**, i8*** %69, align 8
  %71 = load i64, i64* @MXWriter_Indent, align 8
  %72 = getelementptr inbounds i8*, i8** %70, i64 %71
  store i8* %67, i8** %72, align 8
  %73 = load i8*, i8** @VARIANT_FALSE, align 8
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 14
  %76 = load i8**, i8*** %75, align 8
  %77 = load i64, i64* @MXWriter_OmitXmlDecl, align 8
  %78 = getelementptr inbounds i8*, i8** %76, i64 %77
  store i8* %73, i8** %78, align 8
  %79 = load i8*, i8** @VARIANT_FALSE, align 8
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 14
  %82 = load i8**, i8*** %81, align 8
  %83 = load i64, i64* @MXWriter_Standalone, align 8
  %84 = getelementptr inbounds i8*, i8** %82, i64 %83
  store i8* %79, i8** %84, align 8
  %85 = load i8*, i8** @FALSE, align 8
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 13
  store i8* %85, i8** %87, align 8
  %88 = load i8*, i8** @utf16W, align 8
  %89 = call i8* @SysAllocString(i8* %88)
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 4
  store i8* %89, i8** %91, align 8
  %92 = call i8* @SysAllocString(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @MXWriter_create.version10W, i64 0, i64 0))
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 3
  store i8* %92, i8** %94, align 8
  %95 = load i32, i32* @XmlEncoding_UTF16, align 4
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 6
  store i32 %95, i32* %97, align 4
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 12
  store i32* null, i32** %99, align 8
  %100 = load i8*, i8** @FALSE, align 8
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 11
  store i8* %100, i8** %102, align 8
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 10
  store i64 0, i64* %104, align 8
  %105 = load i8*, i8** @FALSE, align 8
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 9
  store i8* %105, i8** %107, align 8
  %108 = load i8*, i8** @FALSE, align 8
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 8
  store i8* %108, i8** %110, align 8
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 7
  store i32* null, i32** %112, align 8
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 5
  %118 = call i64 @init_output_buffer(i32 %115, i32* %117)
  store i64 %118, i64* %7, align 8
  %119 = load i64, i64* %7, align 8
  %120 = load i64, i64* @S_OK, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %134

122:                                              ; preds = %16
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 4
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @SysFreeString(i8* %125)
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 3
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 @SysFreeString(i8* %129)
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %132 = call i32 @heap_free(%struct.TYPE_17__* %131)
  %133 = load i64, i64* %7, align 8
  store i64 %133, i64* %3, align 8
  br label %149

134:                                              ; preds = %16
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 2
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 1
  %139 = bitcast %struct.TYPE_16__* %138 to i32*
  %140 = call i32 @init_dispex(i32* %136, i32* %139, i32* @mxwriter_dispex)
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 1
  %143 = bitcast %struct.TYPE_16__* %142 to i8*
  %144 = load i8**, i8*** %5, align 8
  store i8* %143, i8** %144, align 8
  %145 = load i8**, i8*** %5, align 8
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %146)
  %148 = load i64, i64* @S_OK, align 8
  store i64 %148, i64* %3, align 8
  br label %149

149:                                              ; preds = %134, %122, %14
  %150 = load i64, i64* %3, align 8
  ret i64 %150
}

declare dso_local i32 @TRACE(i8*, i8*) #1

declare dso_local %struct.TYPE_17__* @heap_alloc(i32) #1

declare dso_local i8* @SysAllocString(i8*) #1

declare dso_local i64 @init_output_buffer(i32, i32*) #1

declare dso_local i32 @SysFreeString(i8*) #1

declare dso_local i32 @heap_free(%struct.TYPE_17__*) #1

declare dso_local i32 @init_dispex(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
