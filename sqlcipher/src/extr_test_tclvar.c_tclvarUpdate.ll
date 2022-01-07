; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_tclvar.c_tclvarUpdate.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_tclvar.c_tclvarUpdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i32 }

@TCL_GLOBAL_ONLY = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NULL = common dso_local global i64 0, align 8
@SQLITE_TEXT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"the 'fullname' column must be TEXT\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"prohibited TCL variable change\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32**, i32*)* @tclvarUpdate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tclvarUpdate(%struct.TYPE_5__* %0, i32 %1, i32** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32** %2, i32*** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = bitcast %struct.TYPE_5__* %17 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %10, align 8
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %34

21:                                               ; preds = %4
  %22 = load i32**, i32*** %8, align 8
  %23 = getelementptr inbounds i32*, i32** %22, i64 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i64 @sqlite3_value_text(i32* %24)
  %26 = inttoptr i64 %25 to i8*
  store i8* %26, i8** %11, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %11, align 8
  %31 = load i32, i32* @TCL_GLOBAL_ONLY, align 4
  %32 = call i32 @Tcl_UnsetVar(i32 %29, i8* %30, i32 %31)
  %33 = load i32, i32* @SQLITE_OK, align 4
  store i32 %33, i32* %5, align 4
  br label %145

34:                                               ; preds = %4
  %35 = load i32**, i32*** %8, align 8
  %36 = getelementptr inbounds i32*, i32** %35, i64 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i64 @sqlite3_value_type(i32* %37)
  %39 = load i64, i64* @SQLITE_NULL, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %83

41:                                               ; preds = %34
  %42 = load i32**, i32*** %8, align 8
  %43 = getelementptr inbounds i32*, i32** %42, i64 4
  %44 = load i32*, i32** %43, align 8
  %45 = call i64 @sqlite3_value_text(i32* %44)
  %46 = inttoptr i64 %45 to i8*
  store i8* %46, i8** %12, align 8
  %47 = load i32**, i32*** %8, align 8
  %48 = getelementptr inbounds i32*, i32** %47, i64 5
  %49 = load i32*, i32** %48, align 8
  %50 = call i64 @sqlite3_value_type(i32* %49)
  %51 = load i64, i64* @SQLITE_TEXT, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %41
  %54 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  %57 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %57, i32* %5, align 4
  br label %145

58:                                               ; preds = %41
  %59 = load i32**, i32*** %8, align 8
  %60 = getelementptr inbounds i32*, i32** %59, i64 5
  %61 = load i32*, i32** %60, align 8
  %62 = call i64 @sqlite3_value_text(i32* %61)
  %63 = inttoptr i64 %62 to i8*
  store i8* %63, i8** %13, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %74

66:                                               ; preds = %58
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i8*, i8** %13, align 8
  %71 = load i8*, i8** %12, align 8
  %72 = load i32, i32* @TCL_GLOBAL_ONLY, align 4
  %73 = call i32 @Tcl_SetVar(i32 %69, i8* %70, i8* %71, i32 %72)
  br label %81

74:                                               ; preds = %58
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i8*, i8** %13, align 8
  %79 = load i32, i32* @TCL_GLOBAL_ONLY, align 4
  %80 = call i32 @Tcl_UnsetVar(i32 %77, i8* %78, i32 %79)
  br label %81

81:                                               ; preds = %74, %66
  %82 = load i32, i32* @SQLITE_OK, align 4
  store i32 %82, i32* %5, align 4
  br label %145

83:                                               ; preds = %34
  %84 = load i32**, i32*** %8, align 8
  %85 = getelementptr inbounds i32*, i32** %84, i64 0
  %86 = load i32*, i32** %85, align 8
  %87 = call i64 @sqlite3_value_type(i32* %86)
  %88 = load i64, i64* @SQLITE_TEXT, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %140

90:                                               ; preds = %83
  %91 = load i32**, i32*** %8, align 8
  %92 = getelementptr inbounds i32*, i32** %91, i64 1
  %93 = load i32*, i32** %92, align 8
  %94 = call i64 @sqlite3_value_type(i32* %93)
  %95 = load i64, i64* @SQLITE_TEXT, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %140

97:                                               ; preds = %90
  %98 = load i32**, i32*** %8, align 8
  %99 = getelementptr inbounds i32*, i32** %98, i64 0
  %100 = load i32*, i32** %99, align 8
  %101 = call i64 @sqlite3_value_text(i32* %100)
  %102 = inttoptr i64 %101 to i8*
  store i8* %102, i8** %14, align 8
  %103 = load i32**, i32*** %8, align 8
  %104 = getelementptr inbounds i32*, i32** %103, i64 1
  %105 = load i32*, i32** %104, align 8
  %106 = call i64 @sqlite3_value_text(i32* %105)
  %107 = inttoptr i64 %106 to i8*
  store i8* %107, i8** %15, align 8
  %108 = load i32**, i32*** %8, align 8
  %109 = getelementptr inbounds i32*, i32** %108, i64 4
  %110 = load i32*, i32** %109, align 8
  %111 = call i64 @sqlite3_value_text(i32* %110)
  %112 = inttoptr i64 %111 to i8*
  store i8* %112, i8** %16, align 8
  %113 = load i8*, i8** %14, align 8
  %114 = load i8*, i8** %15, align 8
  %115 = call i64 @strcmp(i8* %113, i8* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %97
  %118 = load i8*, i8** %16, align 8
  %119 = icmp eq i8* %118, null
  br i1 %119, label %120, label %127

120:                                              ; preds = %117, %97
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i8*, i8** %14, align 8
  %125 = load i32, i32* @TCL_GLOBAL_ONLY, align 4
  %126 = call i32 @Tcl_UnsetVar(i32 %123, i8* %124, i32 %125)
  br label %127

127:                                              ; preds = %120, %117
  %128 = load i8*, i8** %16, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %130, label %138

130:                                              ; preds = %127
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i8*, i8** %15, align 8
  %135 = load i8*, i8** %16, align 8
  %136 = load i32, i32* @TCL_GLOBAL_ONLY, align 4
  %137 = call i32 @Tcl_SetVar(i32 %133, i8* %134, i8* %135, i32 %136)
  br label %138

138:                                              ; preds = %130, %127
  %139 = load i32, i32* @SQLITE_OK, align 4
  store i32 %139, i32* %5, align 4
  br label %145

140:                                              ; preds = %90, %83
  %141 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  store i8* %141, i8** %143, align 8
  %144 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %144, i32* %5, align 4
  br label %145

145:                                              ; preds = %140, %138, %81, %53, %21
  %146 = load i32, i32* %5, align 4
  ret i32 %146
}

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i32 @Tcl_UnsetVar(i32, i8*, i32) #1

declare dso_local i64 @sqlite3_value_type(i32*) #1

declare dso_local i8* @sqlite3_mprintf(i8*) #1

declare dso_local i32 @Tcl_SetVar(i32, i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
