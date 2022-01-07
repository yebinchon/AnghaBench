; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_tclvar.c_tclvarFilter.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_tclvar.c_tclvarFilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32*, i64, i64, i32* }
%struct.TYPE_6__ = type { i32* }

@.str = private unnamed_addr constant [18 x i8] c"tclvar_filter_cmd\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TCL_EVAL_GLOBAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, i8*, i32, i32**)* @tclvarFilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tclvarFilter(%struct.TYPE_8__* %0, i32 %1, i8* %2, i32 %3, i32** %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32** %4, i32*** %10, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %21 = bitcast %struct.TYPE_8__* %20 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %11, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.TYPE_6__*
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %12, align 8
  %28 = call i32* @Tcl_NewStringObj(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 -1)
  store i32* %28, i32** %13, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %15, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %16, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %17, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %18, align 8
  store i32 0, i32* %19, align 4
  br label %29

29:                                               ; preds = %86, %5
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* %19, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = icmp ne i8 %34, 0
  br i1 %35, label %36, label %89

36:                                               ; preds = %29
  %37 = load i8*, i8** %8, align 8
  %38 = load i32, i32* %19, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  switch i32 %42, label %83 [
    i32 132, label %43
    i32 131, label %51
    i32 130, label %59
    i32 128, label %67
    i32 129, label %75
  ]

43:                                               ; preds = %36
  %44 = load i32**, i32*** %10, align 8
  %45 = load i32, i32* %19, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32*, i32** %44, i64 %46
  %48 = load i32*, i32** %47, align 8
  %49 = call i64 @sqlite3_value_text(i32* %48)
  %50 = inttoptr i64 %49 to i8*
  store i8* %50, i8** %14, align 8
  br label %85

51:                                               ; preds = %36
  %52 = load i32**, i32*** %10, align 8
  %53 = load i32, i32* %19, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %52, i64 %54
  %56 = load i32*, i32** %55, align 8
  %57 = call i64 @sqlite3_value_text(i32* %56)
  %58 = inttoptr i64 %57 to i8*
  store i8* %58, i8** %15, align 8
  br label %85

59:                                               ; preds = %36
  %60 = load i32**, i32*** %10, align 8
  %61 = load i32, i32* %19, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32*, i32** %60, i64 %62
  %64 = load i32*, i32** %63, align 8
  %65 = call i64 @sqlite3_value_text(i32* %64)
  %66 = inttoptr i64 %65 to i8*
  store i8* %66, i8** %16, align 8
  br label %85

67:                                               ; preds = %36
  %68 = load i32**, i32*** %10, align 8
  %69 = load i32, i32* %19, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32*, i32** %68, i64 %70
  %72 = load i32*, i32** %71, align 8
  %73 = call i64 @sqlite3_value_text(i32* %72)
  %74 = inttoptr i64 %73 to i8*
  store i8* %74, i8** %17, align 8
  br label %85

75:                                               ; preds = %36
  %76 = load i32**, i32*** %10, align 8
  %77 = load i32, i32* %19, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32*, i32** %76, i64 %78
  %80 = load i32*, i32** %79, align 8
  %81 = call i64 @sqlite3_value_text(i32* %80)
  %82 = inttoptr i64 %81 to i8*
  store i8* %82, i8** %18, align 8
  br label %85

83:                                               ; preds = %36
  %84 = call i32 @assert(i32 0)
  br label %85

85:                                               ; preds = %83, %75, %67, %59, %51, %43
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %19, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %19, align 4
  br label %29

89:                                               ; preds = %29
  %90 = load i32*, i32** %13, align 8
  %91 = call i32 @Tcl_IncrRefCount(i32* %90)
  %92 = load i32*, i32** %13, align 8
  %93 = load i8*, i8** %14, align 8
  %94 = call i32* @Tcl_NewStringObj(i8* %93, i32 -1)
  %95 = call i32 @Tcl_ListObjAppendElement(i32 0, i32* %92, i32* %94)
  %96 = load i32*, i32** %13, align 8
  %97 = load i8*, i8** %15, align 8
  %98 = call i32* @Tcl_NewStringObj(i8* %97, i32 -1)
  %99 = call i32 @Tcl_ListObjAppendElement(i32 0, i32* %96, i32* %98)
  %100 = load i32*, i32** %13, align 8
  %101 = load i8*, i8** %16, align 8
  %102 = call i32* @Tcl_NewStringObj(i8* %101, i32 -1)
  %103 = call i32 @Tcl_ListObjAppendElement(i32 0, i32* %100, i32* %102)
  %104 = load i32*, i32** %13, align 8
  %105 = load i8*, i8** %17, align 8
  %106 = call i32* @Tcl_NewStringObj(i8* %105, i32 -1)
  %107 = call i32 @Tcl_ListObjAppendElement(i32 0, i32* %104, i32* %106)
  %108 = load i32*, i32** %13, align 8
  %109 = load i8*, i8** %18, align 8
  %110 = call i32* @Tcl_NewStringObj(i8* %109, i32 -1)
  %111 = call i32 @Tcl_ListObjAppendElement(i32 0, i32* %108, i32* %110)
  %112 = load i32*, i32** %12, align 8
  %113 = load i32*, i32** %13, align 8
  %114 = load i32, i32* @TCL_EVAL_GLOBAL, align 4
  %115 = call i32 @Tcl_EvalObjEx(i32* %112, i32* %113, i32 %114)
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %120, label %125

120:                                              ; preds = %89
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = call i32 @Tcl_DecrRefCount(i32* %123)
  br label %125

125:                                              ; preds = %120, %89
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 3
  %128 = load i32*, i32** %127, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %130, label %137

130:                                              ; preds = %125
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 3
  %133 = load i32*, i32** %132, align 8
  %134 = call i32 @Tcl_DecrRefCount(i32* %133)
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 3
  store i32* null, i32** %136, align 8
  br label %137

137:                                              ; preds = %130, %125
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 2
  store i64 0, i64* %139, align 8
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 1
  store i64 0, i64* %141, align 8
  %142 = load i32*, i32** %12, align 8
  %143 = call i32* @Tcl_GetObjResult(i32* %142)
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  store i32* %143, i32** %145, align 8
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = call i32 @Tcl_IncrRefCount(i32* %148)
  %150 = load i32*, i32** %13, align 8
  %151 = call i32 @Tcl_DecrRefCount(i32* %150)
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %153 = call i32 @tclvarNext(%struct.TYPE_8__* %152)
  ret i32 %153
}

declare dso_local i32* @Tcl_NewStringObj(i8*, i32) #1

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @Tcl_IncrRefCount(i32*) #1

declare dso_local i32 @Tcl_ListObjAppendElement(i32, i32*, i32*) #1

declare dso_local i32 @Tcl_EvalObjEx(i32*, i32*, i32) #1

declare dso_local i32 @Tcl_DecrRefCount(i32*) #1

declare dso_local i32* @Tcl_GetObjResult(i32*) #1

declare dso_local i32 @tclvarNext(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
