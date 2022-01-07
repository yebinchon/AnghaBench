; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_tclvar.c_tclvarColumn.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_tclvar.c_tclvarColumn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SQLITE_TRANSIENT = common dso_local global i32 0, align 4
@TCL_GLOBAL_ONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%s(%s)\00", align 1
@sqlite3_free = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i32)* @tclvarColumn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tclvarColumn(%struct.TYPE_7__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = bitcast %struct.TYPE_7__* %15 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %11, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_5__*
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %12, align 8
  %23 = load i32*, i32** %12, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @Tcl_ListObjIndex(i32* %23, i32 %26, i32 %29, i32** %7)
  %31 = load i32*, i32** %12, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @Tcl_ListObjIndex(i32* %31, i32 %34, i32 %37, i32** %8)
  %39 = load i32*, i32** %7, align 8
  %40 = call i8* @Tcl_GetString(i32* %39)
  store i8* %40, i8** %9, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %3
  %44 = load i32*, i32** %8, align 8
  %45 = call i8* @Tcl_GetString(i32* %44)
  store i8* %45, i8** %10, align 8
  br label %46

46:                                               ; preds = %43, %3
  %47 = load i32, i32* %6, align 4
  switch i32 %47, label %94 [
    i32 0, label %48
    i32 1, label %53
    i32 2, label %58
    i32 3, label %77
  ]

48:                                               ; preds = %46
  %49 = load i32*, i32** %5, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %52 = call i32 @sqlite3_result_text(i32* %49, i8* %50, i32 -1, i32 %51)
  br label %94

53:                                               ; preds = %46
  %54 = load i32*, i32** %5, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %57 = call i32 @sqlite3_result_text(i32* %54, i8* %55, i32 -1, i32 %56)
  br label %94

58:                                               ; preds = %46
  %59 = load i32*, i32** %12, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i8*, i8** %10, align 8
  br label %68

67:                                               ; preds = %58
  br label %68

68:                                               ; preds = %67, %65
  %69 = phi i8* [ %66, %65 ], [ null, %67 ]
  %70 = load i32, i32* @TCL_GLOBAL_ONLY, align 4
  %71 = call i32* @Tcl_GetVar2Ex(i32* %59, i8* %60, i8* %69, i32 %70)
  store i32* %71, i32** %13, align 8
  %72 = load i32*, i32** %5, align 8
  %73 = load i32*, i32** %13, align 8
  %74 = call i8* @Tcl_GetString(i32* %73)
  %75 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %76 = call i32 @sqlite3_result_text(i32* %72, i8* %74, i32 -1, i32 %75)
  br label %94

77:                                               ; preds = %46
  %78 = load i32*, i32** %8, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %88

80:                                               ; preds = %77
  %81 = load i8*, i8** %9, align 8
  %82 = load i8*, i8** %10, align 8
  %83 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %81, i8* %82)
  store i8* %83, i8** %14, align 8
  %84 = load i32*, i32** %5, align 8
  %85 = load i8*, i8** %14, align 8
  %86 = load i32, i32* @sqlite3_free, align 4
  %87 = call i32 @sqlite3_result_text(i32* %84, i8* %85, i32 -1, i32 %86)
  br label %93

88:                                               ; preds = %77
  %89 = load i32*, i32** %5, align 8
  %90 = load i8*, i8** %9, align 8
  %91 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %92 = call i32 @sqlite3_result_text(i32* %89, i8* %90, i32 -1, i32 %91)
  br label %93

93:                                               ; preds = %88, %80
  br label %94

94:                                               ; preds = %46, %93, %68, %53, %48
  %95 = load i32, i32* @SQLITE_OK, align 4
  ret i32 %95
}

declare dso_local i32 @Tcl_ListObjIndex(i32*, i32, i32, i32**) #1

declare dso_local i8* @Tcl_GetString(i32*) #1

declare dso_local i32 @sqlite3_result_text(i32*, i8*, i32, i32) #1

declare dso_local i32* @Tcl_GetVar2Ex(i32*, i8*, i8*, i32) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
