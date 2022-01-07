; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlwindow.c_update_window_doc.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlwindow.c_update_window_doc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_11__*, %struct.TYPE_12__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_13__, i32 }
%struct.TYPE_17__ = type { i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_11__*, %struct.TYPE_15__* }
%struct.TYPE_13__ = type { %struct.TYPE_16__* }

@.str = private unnamed_addr constant [19 x i8] c"NULL outer window\0A\00", align 1
@E_UNEXPECTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"GetDocument failed: %08x\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@IID_nsIDOMHTMLDocument = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Could not get nsIDOMHTMLDocument iface: %08x\0A\00", align 1
@EDITMODE = common dso_local global i64 0, align 8
@update_window_doc.onW = internal constant [3 x i8] c"on\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"SetDesignMode failed: %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"not current pending window\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @update_window_doc(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  store %struct.TYPE_15__* %14, %struct.TYPE_15__** %4, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %18 = icmp ne %struct.TYPE_11__* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %23 = icmp ne %struct.TYPE_15__* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @E_UNEXPECTED, align 4
  store i32 %26, i32* %2, align 4
  br label %172

27:                                               ; preds = %1
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @nsIDOMWindow_GetDocument(i32 %30, i32** %6)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i64 @NS_FAILED(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %27
  %36 = load i32*, i32** %6, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %35, %27
  %39 = load i32, i32* %7, align 4
  %40 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @E_FAIL, align 4
  store i32 %41, i32* %2, align 4
  br label %172

42:                                               ; preds = %35
  %43 = load i32*, i32** %6, align 8
  %44 = bitcast i32** %5 to i8**
  %45 = call i32 @nsIDOMDocument_QueryInterface(i32* %43, i32* @IID_nsIDOMHTMLDocument, i8** %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @nsIDOMDocument_Release(i32* %46)
  %48 = load i32, i32* %7, align 4
  %49 = call i64 @NS_FAILED(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %42
  %52 = load i32, i32* %7, align 4
  %53 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @E_FAIL, align 4
  store i32 %54, i32* %2, align 4
  br label %172

55:                                               ; preds = %42
  %56 = load i32*, i32** %5, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %58, align 8
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  %63 = call i32 @create_doc_from_nsdoc(i32* %56, %struct.TYPE_17__* %59, %struct.TYPE_16__* %60, %struct.TYPE_11__** %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @nsIDOMHTMLDocument_Release(i32* %64)
  %66 = load i32, i32* %8, align 4
  %67 = call i64 @FAILED(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %55
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %2, align 4
  br label %172

71:                                               ; preds = %55
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @EDITMODE, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %95

79:                                               ; preds = %71
  %80 = call i32 @nsAString_InitDepend(i32* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @update_window_doc.onW, i64 0, i64 0))
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @nsIDOMHTMLDocument_SetDesignMode(i32 %85, i32* %9)
  store i32 %86, i32* %10, align 4
  %87 = call i32 @nsAString_Finish(i32* %9)
  %88 = load i32, i32* %10, align 4
  %89 = call i64 @NS_FAILED(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %79
  %92 = load i32, i32* %10, align 4
  %93 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %91, %79
  br label %95

95:                                               ; preds = %94, %71
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %98, align 8
  %100 = icmp ne %struct.TYPE_16__* %96, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %103 = load i32, i32* @S_OK, align 4
  store i32 %103, i32* %2, align 4
  br label %172

104:                                              ; preds = %95
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %107, align 8
  %109 = icmp ne %struct.TYPE_16__* %108, null
  br i1 %109, label %110, label %116

110:                                              ; preds = %104
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %113, align 8
  %115 = call i32 @detach_inner_window(%struct.TYPE_16__* %114)
  br label %116

116:                                              ; preds = %110, %104
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 0
  store %struct.TYPE_16__* %117, %struct.TYPE_16__** %120, align 8
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 1
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %122, align 8
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %127, align 8
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %130 = icmp eq %struct.TYPE_15__* %128, %129
  br i1 %130, label %139, label %131

131:                                              ; preds = %116
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %136, align 8
  %138 = icmp ne %struct.TYPE_15__* %137, null
  br i1 %138, label %170, label %139

139:                                              ; preds = %131, %116
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %144, align 8
  %146 = icmp ne %struct.TYPE_11__* %145, null
  br i1 %146, label %147, label %156

147:                                              ; preds = %139
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 0
  %155 = call i32 @htmldoc_release(i32* %154)
  br label %156

156:                                              ; preds = %147, %139
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %158, align 8
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 0
  store %struct.TYPE_11__* %159, %struct.TYPE_11__** %164, align 8
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 0
  %169 = call i32 @htmldoc_addref(i32* %168)
  br label %170

170:                                              ; preds = %156, %131
  %171 = load i32, i32* %8, align 4
  store i32 %171, i32* %2, align 4
  br label %172

172:                                              ; preds = %170, %101, %69, %51, %38, %24
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @nsIDOMWindow_GetDocument(i32, i32**) #1

declare dso_local i64 @NS_FAILED(i32) #1

declare dso_local i32 @nsIDOMDocument_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @nsIDOMDocument_Release(i32*) #1

declare dso_local i32 @create_doc_from_nsdoc(i32*, %struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_11__**) #1

declare dso_local i32 @nsIDOMHTMLDocument_Release(i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @nsAString_InitDepend(i32*, i8*) #1

declare dso_local i32 @nsIDOMHTMLDocument_SetDesignMode(i32, i32*) #1

declare dso_local i32 @nsAString_Finish(i32*) #1

declare dso_local i32 @detach_inner_window(%struct.TYPE_16__*) #1

declare dso_local i32 @htmldoc_release(i32*) #1

declare dso_local i32 @htmldoc_addref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
