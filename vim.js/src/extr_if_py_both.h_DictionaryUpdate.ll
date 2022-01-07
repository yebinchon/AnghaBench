; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_if_py_both.h_DictionaryUpdate.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_if_py_both.h_DictionaryUpdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i64 }

@RAISE_LOCKED_DICTIONARY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"force\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"keys\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PyExc_ValueError = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [65 x i8] c"expected sequence element of size 2, but got sequence of size %d\00", align 1
@VAR_UNKNOWN = common dso_local global i32 0, align 4
@FAIL = common dso_local global i64 0, align 8
@Py_None = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_20__*, i32*, i32*)* @DictionaryUpdate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @DictionaryUpdate(%struct.TYPE_20__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_17__, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  store %struct.TYPE_19__* %21, %struct.TYPE_19__** %8, align 8
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* @RAISE_LOCKED_DICTIONARY, align 4
  store i32* null, i32** %4, align 8
  br label %174

28:                                               ; preds = %3
  %29 = load i32*, i32** %7, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %50

31:                                               ; preds = %28
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @ConvertFromPyMapping(i32* %32, %struct.TYPE_17__* %9)
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32* null, i32** %4, align 8
  br label %174

36:                                               ; preds = %31
  %37 = call i32 (...) @VimTryStart()
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dict_extend(%struct.TYPE_19__* %40, i32 %43, i32* bitcast ([6 x i8]* @.str to i32*))
  %45 = call i32 @clear_tv(%struct.TYPE_17__* %9)
  %46 = call i64 (...) @VimTryEnd()
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %36
  store i32* null, i32** %4, align 8
  br label %174

49:                                               ; preds = %36
  br label %170

50:                                               ; preds = %28
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @PyArg_ParseTuple(i32* %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32** %10)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  store i32* null, i32** %4, align 8
  br label %174

55:                                               ; preds = %50
  %56 = load i32*, i32** %10, align 8
  %57 = call i64 @PyObject_HasAttrString(i32* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %61 = load i32*, i32** %10, align 8
  %62 = call i32* @DictionaryUpdate(%struct.TYPE_20__* %60, i32* null, i32* %61)
  store i32* %62, i32** %4, align 8
  br label %174

63:                                               ; preds = %55
  %64 = load i32*, i32** %10, align 8
  %65 = call i32* @PyObject_GetIter(i32* %64)
  store i32* %65, i32** %11, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  store i32* null, i32** %4, align 8
  br label %174

68:                                               ; preds = %63
  br label %69

69:                                               ; preds = %161, %68
  %70 = load i32*, i32** %11, align 8
  %71 = call i32* @PyIter_Next(i32* %70)
  store i32* %71, i32** %12, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %162

73:                                               ; preds = %69
  %74 = load i32*, i32** %12, align 8
  %75 = call i32* @PySequence_Fast(i32* %74, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  store i32* %75, i32** %13, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %82, label %77

77:                                               ; preds = %73
  %78 = load i32*, i32** %11, align 8
  %79 = call i32 @Py_DECREF(i32* %78)
  %80 = load i32*, i32** %12, align 8
  %81 = call i32 @Py_DECREF(i32* %80)
  store i32* null, i32** %4, align 8
  br label %174

82:                                               ; preds = %73
  %83 = load i32*, i32** %12, align 8
  %84 = call i32 @Py_DECREF(i32* %83)
  %85 = load i32*, i32** %13, align 8
  %86 = call i32 @PySequence_Fast_GET_SIZE(i32* %85)
  %87 = icmp ne i32 %86, 2
  br i1 %87, label %88, label %98

88:                                               ; preds = %82
  %89 = load i32*, i32** %11, align 8
  %90 = call i32 @Py_DECREF(i32* %89)
  %91 = load i32*, i32** %13, align 8
  %92 = call i32 @Py_DECREF(i32* %91)
  %93 = load i32, i32* @PyExc_ValueError, align 4
  %94 = call i32 @N_(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0))
  %95 = load i32*, i32** %13, align 8
  %96 = call i32 @PySequence_Fast_GET_SIZE(i32* %95)
  %97 = call i32 @PyErr_FORMAT(i32 %93, i32 %94, i32 %96)
  store i32* null, i32** %4, align 8
  br label %174

98:                                               ; preds = %82
  %99 = load i32*, i32** %13, align 8
  %100 = call i32* @PySequence_Fast_GET_ITEM(i32* %99, i32 0)
  store i32* %100, i32** %14, align 8
  %101 = load i32*, i32** %14, align 8
  %102 = call i32* @StringToChars(i32* %101, i32** %16)
  store i32* %102, i32** %17, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %109, label %104

104:                                              ; preds = %98
  %105 = load i32*, i32** %11, align 8
  %106 = call i32 @Py_DECREF(i32* %105)
  %107 = load i32*, i32** %13, align 8
  %108 = call i32 @Py_DECREF(i32* %107)
  store i32* null, i32** %4, align 8
  br label %174

109:                                              ; preds = %98
  %110 = load i32*, i32** %17, align 8
  %111 = call %struct.TYPE_18__* @dictitem_alloc(i32* %110)
  store %struct.TYPE_18__* %111, %struct.TYPE_18__** %18, align 8
  %112 = load i32*, i32** %16, align 8
  %113 = call i32 @Py_XDECREF(i32* %112)
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %115 = icmp eq %struct.TYPE_18__* %114, null
  br i1 %115, label %116, label %122

116:                                              ; preds = %109
  %117 = load i32*, i32** %13, align 8
  %118 = call i32 @Py_DECREF(i32* %117)
  %119 = load i32*, i32** %11, align 8
  %120 = call i32 @Py_DECREF(i32* %119)
  %121 = call i32 (...) @PyErr_NoMemory()
  store i32* null, i32** %4, align 8
  br label %174

122:                                              ; preds = %109
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 1
  store i64 0, i64* %125, align 8
  %126 = load i32, i32* @VAR_UNKNOWN, align 4
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 0
  store i32 %126, i32* %129, align 8
  %130 = load i32*, i32** %13, align 8
  %131 = call i32* @PySequence_Fast_GET_ITEM(i32* %130, i32 1)
  store i32* %131, i32** %15, align 8
  %132 = load i32*, i32** %15, align 8
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 1
  %135 = call i32 @ConvertFromPyObject(i32* %132, %struct.TYPE_15__* %134)
  %136 = icmp eq i32 %135, -1
  br i1 %136, label %137, label %144

137:                                              ; preds = %122
  %138 = load i32*, i32** %11, align 8
  %139 = call i32 @Py_DECREF(i32* %138)
  %140 = load i32*, i32** %13, align 8
  %141 = call i32 @Py_DECREF(i32* %140)
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %143 = call i32 @dictitem_free(%struct.TYPE_18__* %142)
  store i32* null, i32** %4, align 8
  br label %174

144:                                              ; preds = %122
  %145 = load i32*, i32** %13, align 8
  %146 = call i32 @Py_DECREF(i32* %145)
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %149 = call i64 @dict_add(%struct.TYPE_19__* %147, %struct.TYPE_18__* %148)
  %150 = load i64, i64* @FAIL, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %161

152:                                              ; preds = %144
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @RAISE_KEY_ADD_FAIL(i32 %155)
  %157 = load i32*, i32** %11, align 8
  %158 = call i32 @Py_DECREF(i32* %157)
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %160 = call i32 @dictitem_free(%struct.TYPE_18__* %159)
  store i32* null, i32** %4, align 8
  br label %174

161:                                              ; preds = %144
  br label %69

162:                                              ; preds = %69
  %163 = load i32*, i32** %11, align 8
  %164 = call i32 @Py_DECREF(i32* %163)
  %165 = call i64 (...) @PyErr_Occurred()
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %162
  store i32* null, i32** %4, align 8
  br label %174

168:                                              ; preds = %162
  br label %169

169:                                              ; preds = %168
  br label %170

170:                                              ; preds = %169, %49
  %171 = load i32*, i32** @Py_None, align 8
  %172 = call i32 @Py_INCREF(i32* %171)
  %173 = load i32*, i32** @Py_None, align 8
  store i32* %173, i32** %4, align 8
  br label %174

174:                                              ; preds = %170, %167, %152, %137, %116, %104, %88, %77, %67, %59, %54, %48, %35, %26
  %175 = load i32*, i32** %4, align 8
  ret i32* %175
}

declare dso_local i32 @ConvertFromPyMapping(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @VimTryStart(...) #1

declare dso_local i32 @dict_extend(%struct.TYPE_19__*, i32, i32*) #1

declare dso_local i32 @clear_tv(%struct.TYPE_17__*) #1

declare dso_local i64 @VimTryEnd(...) #1

declare dso_local i32 @PyArg_ParseTuple(i32*, i8*, i32**) #1

declare dso_local i64 @PyObject_HasAttrString(i32*, i8*) #1

declare dso_local i32* @PyObject_GetIter(i32*) #1

declare dso_local i32* @PyIter_Next(i32*) #1

declare dso_local i32* @PySequence_Fast(i32*, i8*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i32 @PySequence_Fast_GET_SIZE(i32*) #1

declare dso_local i32 @PyErr_FORMAT(i32, i32, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32* @PySequence_Fast_GET_ITEM(i32*, i32) #1

declare dso_local i32* @StringToChars(i32*, i32**) #1

declare dso_local %struct.TYPE_18__* @dictitem_alloc(i32*) #1

declare dso_local i32 @Py_XDECREF(i32*) #1

declare dso_local i32 @PyErr_NoMemory(...) #1

declare dso_local i32 @ConvertFromPyObject(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @dictitem_free(%struct.TYPE_18__*) #1

declare dso_local i64 @dict_add(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @RAISE_KEY_ADD_FAIL(i32) #1

declare dso_local i64 @PyErr_Occurred(...) #1

declare dso_local i32 @Py_INCREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
