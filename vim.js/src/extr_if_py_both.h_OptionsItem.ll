; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_if_py_both.h_OptionsItem.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_if_py_both.h_OptionsItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64 (i32)* }

@NUL = common dso_local global i64 0, align 8
@RAISE_NO_EMPTY_KEYS = common dso_local global i32 0, align 4
@PyExc_KeyError = common dso_local global i32 0, align 4
@SOPT_UNSET = common dso_local global i32 0, align 4
@Py_None = common dso_local global i32* null, align 8
@SOPT_BOOL = common dso_local global i32 0, align 4
@Py_True = common dso_local global i32* null, align 8
@Py_False = common dso_local global i32* null, align 8
@SOPT_NUM = common dso_local global i32 0, align 4
@SOPT_STRING = common dso_local global i32 0, align 4
@PyExc_RuntimeError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"unable to get option value\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"internal error: unknown option type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*, i32*)* @OptionsItem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @OptionsItem(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  %15 = load i64 (i32)*, i64 (i32)** %14, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i64 %15(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %109

22:                                               ; preds = %2
  %23 = load i32*, i32** %5, align 8
  %24 = call i64* @StringToChars(i32* %23, i32** %10)
  store i64* %24, i64** %6, align 8
  %25 = icmp ne i64* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  store i32* null, i32** %3, align 8
  br label %109

27:                                               ; preds = %22
  %28 = load i64*, i64** %6, align 8
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @NUL, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* @RAISE_NO_EMPTY_KEYS, align 4
  %34 = load i32*, i32** %10, align 8
  %35 = call i32 @Py_XDECREF(i32* %34)
  store i32* null, i32** %3, align 8
  br label %109

36:                                               ; preds = %27
  %37 = load i64*, i64** %6, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @get_option_value_strict(i64* %37, i64* %8, i64** %9, i32 %40, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32*, i32** %10, align 8
  %46 = call i32 @Py_XDECREF(i32* %45)
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %36
  %50 = load i32, i32* @PyExc_KeyError, align 4
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @PyErr_SetObject(i32 %50, i32* %51)
  store i32* null, i32** %3, align 8
  br label %109

53:                                               ; preds = %36
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @SOPT_UNSET, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i32*, i32** @Py_None, align 8
  %60 = call i32 @Py_INCREF(i32* %59)
  %61 = load i32*, i32** @Py_None, align 8
  store i32* %61, i32** %3, align 8
  br label %109

62:                                               ; preds = %53
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @SOPT_BOOL, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %62
  %68 = load i64, i64* %8, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i32*, i32** @Py_True, align 8
  br label %74

72:                                               ; preds = %67
  %73 = load i32*, i32** @Py_False, align 8
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi i32* [ %71, %70 ], [ %73, %72 ]
  store i32* %75, i32** %11, align 8
  %76 = load i32*, i32** %11, align 8
  %77 = call i32 @Py_INCREF(i32* %76)
  %78 = load i32*, i32** %11, align 8
  store i32* %78, i32** %3, align 8
  br label %109

79:                                               ; preds = %62
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @SOPT_NUM, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load i64, i64* %8, align 8
  %86 = call i32* @PyInt_FromLong(i64 %85)
  store i32* %86, i32** %3, align 8
  br label %109

87:                                               ; preds = %79
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @SOPT_STRING, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %106

92:                                               ; preds = %87
  %93 = load i64*, i64** %9, align 8
  %94 = icmp ne i64* %93, null
  br i1 %94, label %95, label %102

95:                                               ; preds = %92
  %96 = load i64*, i64** %9, align 8
  %97 = bitcast i64* %96 to i8*
  %98 = call i32* @PyBytes_FromString(i8* %97)
  store i32* %98, i32** %12, align 8
  %99 = load i64*, i64** %9, align 8
  %100 = call i32 @vim_free(i64* %99)
  %101 = load i32*, i32** %12, align 8
  store i32* %101, i32** %3, align 8
  br label %109

102:                                              ; preds = %92
  %103 = load i32, i32* @PyExc_RuntimeError, align 4
  %104 = call i32 @N_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %105 = call i32 @PyErr_SET_STRING(i32 %103, i32 %104)
  store i32* null, i32** %3, align 8
  br label %109

106:                                              ; preds = %87
  %107 = call i32 @N_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %108 = call i32 @PyErr_SET_VIM(i32 %107)
  store i32* null, i32** %3, align 8
  br label %109

109:                                              ; preds = %106, %102, %95, %84, %74, %58, %49, %32, %26, %21
  %110 = load i32*, i32** %3, align 8
  ret i32* %110
}

declare dso_local i64* @StringToChars(i32*, i32**) #1

declare dso_local i32 @Py_XDECREF(i32*) #1

declare dso_local i32 @get_option_value_strict(i64*, i64*, i64**, i32, i32) #1

declare dso_local i32 @PyErr_SetObject(i32, i32*) #1

declare dso_local i32 @Py_INCREF(i32*) #1

declare dso_local i32* @PyInt_FromLong(i64) #1

declare dso_local i32* @PyBytes_FromString(i8*) #1

declare dso_local i32 @vim_free(i64*) #1

declare dso_local i32 @PyErr_SET_STRING(i32, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @PyErr_SET_VIM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
