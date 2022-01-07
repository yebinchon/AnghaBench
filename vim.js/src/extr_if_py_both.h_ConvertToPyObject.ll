; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_if_py_both.h_ConvertToPyObject.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_if_py_both.h_ConvertToPyObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [38 x i8] c"internal error: NULL reference passed\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@Py_None = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"internal error: invalid value type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_5__*)* @ConvertToPyObject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ConvertToPyObject(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %5 = icmp eq %struct.TYPE_5__* %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = call i32 @N_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @PyErr_SET_VIM(i32 %7)
  store i32* null, i32** %2, align 8
  br label %69

9:                                                ; preds = %1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %66 [
    i32 129, label %13
    i32 130, label %29
    i32 131, label %35
    i32 134, label %41
    i32 132, label %47
    i32 128, label %62
  ]

13:                                               ; preds = %9
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %26

20:                                               ; preds = %13
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = bitcast i32* %24 to i8*
  br label %26

26:                                               ; preds = %20, %19
  %27 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %19 ], [ %25, %20 ]
  %28 = call i32* @PyBytes_FromString(i8* %27)
  store i32* %28, i32** %2, align 8
  br label %69

29:                                               ; preds = %9
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = call i32* @PyLong_FromLong(i64 %33)
  store i32* %34, i32** %2, align 8
  br label %69

35:                                               ; preds = %9
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32* @NEW_LIST(i32 %39)
  store i32* %40, i32** %2, align 8
  br label %69

41:                                               ; preds = %9
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32* @NEW_DICTIONARY(i32 %45)
  store i32* %46, i32** %2, align 8
  br label %69

47:                                               ; preds = %9
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %59

54:                                               ; preds = %47
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  br label %59

59:                                               ; preds = %54, %53
  %60 = phi i32* [ bitcast ([1 x i8]* @.str.1 to i32*), %53 ], [ %58, %54 ]
  %61 = call i32* @NEW_FUNCTION(i32* %60)
  store i32* %61, i32** %2, align 8
  br label %69

62:                                               ; preds = %9
  %63 = load i32*, i32** @Py_None, align 8
  %64 = call i32 @Py_INCREF(i32* %63)
  %65 = load i32*, i32** @Py_None, align 8
  store i32* %65, i32** %2, align 8
  br label %69

66:                                               ; preds = %9
  %67 = call i32 @N_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %68 = call i32 @PyErr_SET_VIM(i32 %67)
  store i32* null, i32** %2, align 8
  br label %69

69:                                               ; preds = %66, %62, %59, %41, %35, %29, %26, %6
  %70 = load i32*, i32** %2, align 8
  ret i32* %70
}

declare dso_local i32 @PyErr_SET_VIM(i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32* @PyBytes_FromString(i8*) #1

declare dso_local i32* @PyLong_FromLong(i64) #1

declare dso_local i32* @NEW_LIST(i32) #1

declare dso_local i32* @NEW_DICTIONARY(i32) #1

declare dso_local i32* @NEW_FUNCTION(i32*) #1

declare dso_local i32 @Py_INCREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
