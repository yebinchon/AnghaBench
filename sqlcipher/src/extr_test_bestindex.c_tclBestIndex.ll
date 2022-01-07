; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_bestindex.c_tclBestIndex.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_bestindex.c_tclBestIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, %struct.TYPE_6__*, i64, i8*, i32, i32, %struct.sqlite3_index_orderby*, %struct.sqlite3_index_constraint* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.sqlite3_index_orderby = type { i32, i32 }
%struct.sqlite3_index_constraint = type { i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32, i32* }
%struct.TYPE_7__ = type { i8* }

@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"xBestIndex\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"eq\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"gt\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"le\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"lt\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"ge\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"match\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"like\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"glob\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"regexp\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"ne\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"isnot\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"isnotnull\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"isnull\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"is\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"op\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"column\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"usable\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"desc\00", align 1
@TCL_EVAL_GLOBAL = common dso_local global i32 0, align 4
@TCL_OK = common dso_local global i32 0, align 4
@SQLITE_ERROR = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"cost\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"orderby\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"idxnum\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"idxstr\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"rows\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"use\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"omit\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"unexpected: %d\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"unexpected: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_9__*)* @tclBestIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tclBestIndex(i32* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sqlite3_index_constraint*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.sqlite3_index_orderby*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32**, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %28 = load i32*, i32** %3, align 8
  %29 = bitcast i32* %28 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %29, %struct.TYPE_8__** %5, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %6, align 8
  %33 = load i32, i32* @SQLITE_OK, align 4
  store i32 %33, i32* %10, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32* @Tcl_DuplicateObj(i32 %36)
  store i32* %37, i32** %8, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @Tcl_IncrRefCount(i32* %38)
  %40 = load i32*, i32** %6, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = call i32* @Tcl_NewStringObj(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 -1)
  %43 = call i32 @Tcl_ListObjAppendElement(i32* %40, i32* %41, i32* %42)
  %44 = call i32* (...) @Tcl_NewObj()
  store i32* %44, i32** %7, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @Tcl_IncrRefCount(i32* %45)
  store i32 0, i32* %9, align 4
  br label %47

47:                                               ; preds = %111, %2
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %114

53:                                               ; preds = %47
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 11
  %56 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %56, i64 %58
  store %struct.sqlite3_index_constraint* %59, %struct.sqlite3_index_constraint** %11, align 8
  %60 = call i32* (...) @Tcl_NewObj()
  store i32* %60, i32** %12, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  %61 = load i32*, i32** %12, align 8
  %62 = call i32 @Tcl_IncrRefCount(i32* %61)
  %63 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %11, align 8
  %64 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  switch i32 %65, label %80 [
    i32 141, label %66
    i32 138, label %67
    i32 133, label %68
    i32 131, label %69
    i32 140, label %70
    i32 130, label %71
    i32 132, label %72
    i32 139, label %73
    i32 128, label %74
    i32 129, label %75
    i32 136, label %76
    i32 135, label %77
    i32 134, label %78
    i32 137, label %79
  ]

66:                                               ; preds = %53
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 8
  br label %80

67:                                               ; preds = %53
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %13, align 8
  br label %80

68:                                               ; preds = %53
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %13, align 8
  br label %80

69:                                               ; preds = %53
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8** %13, align 8
  br label %80

70:                                               ; preds = %53
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8** %13, align 8
  br label %80

71:                                               ; preds = %53
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8** %13, align 8
  br label %80

72:                                               ; preds = %53
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8** %13, align 8
  br label %80

73:                                               ; preds = %53
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8** %13, align 8
  br label %80

74:                                               ; preds = %53
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8** %13, align 8
  br label %80

75:                                               ; preds = %53
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8** %13, align 8
  br label %80

76:                                               ; preds = %53
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8** %13, align 8
  br label %80

77:                                               ; preds = %53
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8** %13, align 8
  br label %80

78:                                               ; preds = %53
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8** %13, align 8
  br label %80

79:                                               ; preds = %53
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8** %13, align 8
  br label %80

80:                                               ; preds = %53, %79, %78, %77, %76, %75, %74, %73, %72, %71, %70, %69, %68, %67, %66
  %81 = load i32*, i32** %12, align 8
  %82 = call i32* @Tcl_NewStringObj(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i32 -1)
  %83 = call i32 @Tcl_ListObjAppendElement(i32* null, i32* %81, i32* %82)
  %84 = load i32*, i32** %12, align 8
  %85 = load i8*, i8** %13, align 8
  %86 = call i32* @Tcl_NewStringObj(i8* %85, i32 -1)
  %87 = call i32 @Tcl_ListObjAppendElement(i32* null, i32* %84, i32* %86)
  %88 = load i32*, i32** %12, align 8
  %89 = call i32* @Tcl_NewStringObj(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i32 -1)
  %90 = call i32 @Tcl_ListObjAppendElement(i32* null, i32* %88, i32* %89)
  %91 = load i32*, i32** %12, align 8
  %92 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %11, align 8
  %93 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i32* @Tcl_NewIntObj(i32 %94)
  %96 = call i32 @Tcl_ListObjAppendElement(i32* null, i32* %91, i32* %95)
  %97 = load i32*, i32** %12, align 8
  %98 = call i32* @Tcl_NewStringObj(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i32 -1)
  %99 = call i32 @Tcl_ListObjAppendElement(i32* null, i32* %97, i32* %98)
  %100 = load i32*, i32** %12, align 8
  %101 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %11, align 8
  %102 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32* @Tcl_NewIntObj(i32 %103)
  %105 = call i32 @Tcl_ListObjAppendElement(i32* null, i32* %100, i32* %104)
  %106 = load i32*, i32** %7, align 8
  %107 = load i32*, i32** %12, align 8
  %108 = call i32 @Tcl_ListObjAppendElement(i32* null, i32* %106, i32* %107)
  %109 = load i32*, i32** %12, align 8
  %110 = call i32 @Tcl_DecrRefCount(i32* %109)
  br label %111

111:                                              ; preds = %80
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %9, align 4
  br label %47

114:                                              ; preds = %47
  %115 = load i32*, i32** %8, align 8
  %116 = load i32*, i32** %7, align 8
  %117 = call i32 @Tcl_ListObjAppendElement(i32* null, i32* %115, i32* %116)
  %118 = load i32*, i32** %7, align 8
  %119 = call i32 @Tcl_DecrRefCount(i32* %118)
  %120 = call i32* (...) @Tcl_NewObj()
  store i32* %120, i32** %7, align 8
  %121 = load i32*, i32** %7, align 8
  %122 = call i32 @Tcl_IncrRefCount(i32* %121)
  store i32 0, i32* %9, align 4
  br label %123

123:                                              ; preds = %162, %114
  %124 = load i32, i32* %9, align 4
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp slt i32 %124, %127
  br i1 %128, label %129, label %165

129:                                              ; preds = %123
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 10
  %132 = load %struct.sqlite3_index_orderby*, %struct.sqlite3_index_orderby** %131, align 8
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.sqlite3_index_orderby, %struct.sqlite3_index_orderby* %132, i64 %134
  store %struct.sqlite3_index_orderby* %135, %struct.sqlite3_index_orderby** %14, align 8
  %136 = call i32* (...) @Tcl_NewObj()
  store i32* %136, i32** %15, align 8
  %137 = load i32*, i32** %15, align 8
  %138 = call i32 @Tcl_IncrRefCount(i32* %137)
  %139 = load i32*, i32** %15, align 8
  %140 = call i32* @Tcl_NewStringObj(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i32 -1)
  %141 = call i32 @Tcl_ListObjAppendElement(i32* null, i32* %139, i32* %140)
  %142 = load i32*, i32** %15, align 8
  %143 = load %struct.sqlite3_index_orderby*, %struct.sqlite3_index_orderby** %14, align 8
  %144 = getelementptr inbounds %struct.sqlite3_index_orderby, %struct.sqlite3_index_orderby* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32* @Tcl_NewIntObj(i32 %145)
  %147 = call i32 @Tcl_ListObjAppendElement(i32* null, i32* %142, i32* %146)
  %148 = load i32*, i32** %15, align 8
  %149 = call i32* @Tcl_NewStringObj(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i32 -1)
  %150 = call i32 @Tcl_ListObjAppendElement(i32* null, i32* %148, i32* %149)
  %151 = load i32*, i32** %15, align 8
  %152 = load %struct.sqlite3_index_orderby*, %struct.sqlite3_index_orderby** %14, align 8
  %153 = getelementptr inbounds %struct.sqlite3_index_orderby, %struct.sqlite3_index_orderby* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32* @Tcl_NewIntObj(i32 %154)
  %156 = call i32 @Tcl_ListObjAppendElement(i32* null, i32* %151, i32* %155)
  %157 = load i32*, i32** %7, align 8
  %158 = load i32*, i32** %15, align 8
  %159 = call i32 @Tcl_ListObjAppendElement(i32* null, i32* %157, i32* %158)
  %160 = load i32*, i32** %15, align 8
  %161 = call i32 @Tcl_DecrRefCount(i32* %160)
  br label %162

162:                                              ; preds = %129
  %163 = load i32, i32* %9, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %9, align 4
  br label %123

165:                                              ; preds = %123
  %166 = load i32*, i32** %8, align 8
  %167 = load i32*, i32** %7, align 8
  %168 = call i32 @Tcl_ListObjAppendElement(i32* null, i32* %166, i32* %167)
  %169 = load i32*, i32** %7, align 8
  %170 = call i32 @Tcl_DecrRefCount(i32* %169)
  %171 = load i32*, i32** %8, align 8
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 9
  %174 = load i32, i32* %173, align 4
  %175 = call i32* @Tcl_NewWideIntObj(i32 %174)
  %176 = call i32 @Tcl_ListObjAppendElement(i32* null, i32* %171, i32* %175)
  %177 = load i32*, i32** %6, align 8
  %178 = load i32*, i32** %8, align 8
  %179 = load i32, i32* @TCL_EVAL_GLOBAL, align 4
  %180 = call i32 @Tcl_EvalObjEx(i32* %177, i32* %178, i32 %179)
  store i32 %180, i32* %10, align 4
  %181 = load i32*, i32** %8, align 8
  %182 = call i32 @Tcl_DecrRefCount(i32* %181)
  %183 = load i32, i32* %10, align 4
  %184 = load i32, i32* @TCL_OK, align 4
  %185 = icmp ne i32 %183, %184
  br i1 %185, label %186, label %195

186:                                              ; preds = %165
  %187 = load i32*, i32** %6, align 8
  %188 = call i8* @Tcl_GetStringResult(i32* %187)
  store i8* %188, i8** %16, align 8
  %189 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %189, i32* %10, align 4
  %190 = load i8*, i8** %16, align 8
  %191 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i8* %190)
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 0
  store i8* %191, i8** %194, align 8
  br label %394

195:                                              ; preds = %165
  %196 = load i32*, i32** %6, align 8
  %197 = call i32* @Tcl_GetObjResult(i32* %196)
  store i32* %197, i32** %17, align 8
  store i32** null, i32*** %18, align 8
  %198 = load i32*, i32** %6, align 8
  %199 = load i32*, i32** %17, align 8
  %200 = call i32 @Tcl_ListObjGetElements(i32* %198, i32* %199, i32* %19, i32*** %18)
  store i32 %200, i32* %10, align 4
  %201 = load i32, i32* %10, align 4
  %202 = load i32, i32* @TCL_OK, align 4
  %203 = icmp ne i32 %201, %202
  br i1 %203, label %204, label %213

204:                                              ; preds = %195
  %205 = load i32*, i32** %6, align 8
  %206 = call i8* @Tcl_GetStringResult(i32* %205)
  store i8* %206, i8** %20, align 8
  %207 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %207, i32* %10, align 4
  %208 = load i8*, i8** %20, align 8
  %209 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i8* %208)
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 0
  store i8* %209, i8** %212, align 8
  br label %393

213:                                              ; preds = %195
  store i32 1, i32* %21, align 4
  store i32 0, i32* %9, align 4
  br label %214

214:                                              ; preds = %389, %213
  %215 = load i32, i32* %10, align 4
  %216 = load i32, i32* @SQLITE_OK, align 4
  %217 = icmp eq i32 %215, %216
  br i1 %217, label %218, label %222

218:                                              ; preds = %214
  %219 = load i32, i32* %9, align 4
  %220 = load i32, i32* %19, align 4
  %221 = icmp slt i32 %219, %220
  br label %222

222:                                              ; preds = %218, %214
  %223 = phi i1 [ false, %214 ], [ %221, %218 ]
  br i1 %223, label %224, label %392

224:                                              ; preds = %222
  %225 = load i32**, i32*** %18, align 8
  %226 = load i32, i32* %9, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32*, i32** %225, i64 %227
  %229 = load i32*, i32** %228, align 8
  %230 = call i8* @Tcl_GetString(i32* %229)
  store i8* %230, i8** %22, align 8
  %231 = load i32**, i32*** %18, align 8
  %232 = load i32, i32* %9, align 4
  %233 = add nsw i32 %232, 1
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32*, i32** %231, i64 %234
  %236 = load i32*, i32** %235, align 8
  store i32* %236, i32** %23, align 8
  %237 = load i8*, i8** %22, align 8
  %238 = call i64 @sqlite3_stricmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i8* %237)
  %239 = icmp eq i64 %238, 0
  br i1 %239, label %240, label %246

240:                                              ; preds = %224
  %241 = load i32*, i32** %6, align 8
  %242 = load i32*, i32** %23, align 8
  %243 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %243, i32 0, i32 8
  %245 = call i32 @Tcl_GetDoubleFromObj(i32* %241, i32* %242, i32* %244)
  store i32 %245, i32* %10, align 4
  br label %370

246:                                              ; preds = %224
  %247 = load i8*, i8** %22, align 8
  %248 = call i64 @sqlite3_stricmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), i8* %247)
  %249 = icmp eq i64 %248, 0
  br i1 %249, label %250, label %256

250:                                              ; preds = %246
  %251 = load i32*, i32** %6, align 8
  %252 = load i32*, i32** %23, align 8
  %253 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %253, i32 0, i32 2
  %255 = call i32 @Tcl_GetIntFromObj(i32* %251, i32* %252, i32* %254)
  store i32 %255, i32* %10, align 4
  br label %369

256:                                              ; preds = %246
  %257 = load i8*, i8** %22, align 8
  %258 = call i64 @sqlite3_stricmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), i8* %257)
  %259 = icmp eq i64 %258, 0
  br i1 %259, label %260, label %266

260:                                              ; preds = %256
  %261 = load i32*, i32** %6, align 8
  %262 = load i32*, i32** %23, align 8
  %263 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %263, i32 0, i32 3
  %265 = call i32 @Tcl_GetIntFromObj(i32* %261, i32* %262, i32* %264)
  store i32 %265, i32* %10, align 4
  br label %368

266:                                              ; preds = %256
  %267 = load i8*, i8** %22, align 8
  %268 = call i64 @sqlite3_stricmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), i8* %267)
  %269 = icmp eq i64 %268, 0
  br i1 %269, label %270, label %282

270:                                              ; preds = %266
  %271 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %271, i32 0, i32 7
  %273 = load i8*, i8** %272, align 8
  %274 = call i32 @sqlite3_free(i8* %273)
  %275 = load i32*, i32** %23, align 8
  %276 = call i8* @Tcl_GetString(i32* %275)
  %277 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i8* %276)
  %278 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %279 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %278, i32 0, i32 7
  store i8* %277, i8** %279, align 8
  %280 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %280, i32 0, i32 4
  store i32 1, i32* %281, align 8
  br label %367

282:                                              ; preds = %266
  %283 = load i8*, i8** %22, align 8
  %284 = call i64 @sqlite3_stricmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i8* %283)
  %285 = icmp eq i64 %284, 0
  br i1 %285, label %286, label %293

286:                                              ; preds = %282
  store i64 0, i64* %24, align 8
  %287 = load i32*, i32** %6, align 8
  %288 = load i32*, i32** %23, align 8
  %289 = call i32 @Tcl_GetWideIntFromObj(i32* %287, i32* %288, i64* %24)
  store i32 %289, i32* %10, align 4
  %290 = load i64, i64* %24, align 8
  %291 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %292 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %291, i32 0, i32 6
  store i64 %290, i64* %292, align 8
  br label %366

293:                                              ; preds = %282
  %294 = load i8*, i8** %22, align 8
  %295 = call i64 @sqlite3_stricmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i8* %294)
  %296 = icmp eq i64 %295, 0
  br i1 %296, label %301, label %297

297:                                              ; preds = %293
  %298 = load i8*, i8** %22, align 8
  %299 = call i64 @sqlite3_stricmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i8* %298)
  %300 = icmp eq i64 %299, 0
  br i1 %300, label %301, label %358

301:                                              ; preds = %297, %293
  %302 = load i32*, i32** %6, align 8
  %303 = load i32*, i32** %23, align 8
  %304 = call i32 @Tcl_GetIntFromObj(i32* %302, i32* %303, i32* %25)
  store i32 %304, i32* %10, align 4
  %305 = load i32, i32* %10, align 4
  %306 = load i32, i32* @SQLITE_OK, align 4
  %307 = icmp eq i32 %305, %306
  br i1 %307, label %308, label %357

308:                                              ; preds = %301
  %309 = load i32, i32* %25, align 4
  %310 = icmp slt i32 %309, 0
  br i1 %310, label %317, label %311

311:                                              ; preds = %308
  %312 = load i32, i32* %25, align 4
  %313 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %314 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = icmp sge i32 %312, %315
  br i1 %316, label %317, label %324

317:                                              ; preds = %311, %308
  %318 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %318, i32* %10, align 4
  %319 = load i32, i32* %25, align 4
  %320 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i64 0, i64 0), i32 %319)
  %321 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %322 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %322, i32 0, i32 0
  store i8* %320, i8** %323, align 8
  br label %356

324:                                              ; preds = %311
  %325 = load i8*, i8** %22, align 8
  %326 = getelementptr inbounds i8, i8* %325, i64 0
  %327 = load i8, i8* %326, align 1
  %328 = sext i8 %327 to i32
  %329 = icmp eq i32 %328, 111
  br i1 %329, label %336, label %330

330:                                              ; preds = %324
  %331 = load i8*, i8** %22, align 8
  %332 = getelementptr inbounds i8, i8* %331, i64 0
  %333 = load i8, i8* %332, align 1
  %334 = sext i8 %333 to i32
  %335 = icmp eq i32 %334, 79
  br label %336

336:                                              ; preds = %330, %324
  %337 = phi i1 [ true, %324 ], [ %335, %330 ]
  %338 = zext i1 %337 to i32
  store i32 %338, i32* %26, align 4
  %339 = load i32, i32* %21, align 4
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %21, align 4
  %341 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %342 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %341, i32 0, i32 5
  %343 = load %struct.TYPE_6__*, %struct.TYPE_6__** %342, align 8
  %344 = load i32, i32* %25, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %343, i64 %345
  %347 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %346, i32 0, i32 1
  store i32 %339, i32* %347, align 4
  %348 = load i32, i32* %26, align 4
  %349 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %350 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %349, i32 0, i32 5
  %351 = load %struct.TYPE_6__*, %struct.TYPE_6__** %350, align 8
  %352 = load i32, i32* %25, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %351, i64 %353
  %355 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %354, i32 0, i32 0
  store i32 %348, i32* %355, align 4
  br label %356

356:                                              ; preds = %336, %317
  br label %357

357:                                              ; preds = %356, %301
  br label %365

358:                                              ; preds = %297
  %359 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %359, i32* %10, align 4
  %360 = load i8*, i8** %22, align 8
  %361 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i64 0, i64 0), i8* %360)
  %362 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %363 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %362, i32 0, i32 0
  %364 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %363, i32 0, i32 0
  store i8* %361, i8** %364, align 8
  br label %365

365:                                              ; preds = %358, %357
  br label %366

366:                                              ; preds = %365, %286
  br label %367

367:                                              ; preds = %366, %270
  br label %368

368:                                              ; preds = %367, %260
  br label %369

369:                                              ; preds = %368, %250
  br label %370

370:                                              ; preds = %369, %240
  %371 = load i32, i32* %10, align 4
  %372 = load i32, i32* @SQLITE_OK, align 4
  %373 = icmp ne i32 %371, %372
  br i1 %373, label %374, label %388

374:                                              ; preds = %370
  %375 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %376 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %375, i32 0, i32 0
  %377 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %376, i32 0, i32 0
  %378 = load i8*, i8** %377, align 8
  %379 = icmp eq i8* %378, null
  br i1 %379, label %380, label %388

380:                                              ; preds = %374
  %381 = load i32*, i32** %6, align 8
  %382 = call i8* @Tcl_GetStringResult(i32* %381)
  store i8* %382, i8** %27, align 8
  %383 = load i8*, i8** %27, align 8
  %384 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i8* %383)
  %385 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %386 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %385, i32 0, i32 0
  %387 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %386, i32 0, i32 0
  store i8* %384, i8** %387, align 8
  br label %388

388:                                              ; preds = %380, %374, %370
  br label %389

389:                                              ; preds = %388
  %390 = load i32, i32* %9, align 4
  %391 = add nsw i32 %390, 2
  store i32 %391, i32* %9, align 4
  br label %214

392:                                              ; preds = %222
  br label %393

393:                                              ; preds = %392, %204
  br label %394

394:                                              ; preds = %393, %186
  %395 = load i32, i32* %10, align 4
  ret i32 %395
}

declare dso_local i32* @Tcl_DuplicateObj(i32) #1

declare dso_local i32 @Tcl_IncrRefCount(i32*) #1

declare dso_local i32 @Tcl_ListObjAppendElement(i32*, i32*, i32*) #1

declare dso_local i32* @Tcl_NewStringObj(i8*, i32) #1

declare dso_local i32* @Tcl_NewObj(...) #1

declare dso_local i32* @Tcl_NewIntObj(i32) #1

declare dso_local i32 @Tcl_DecrRefCount(i32*) #1

declare dso_local i32* @Tcl_NewWideIntObj(i32) #1

declare dso_local i32 @Tcl_EvalObjEx(i32*, i32*, i32) #1

declare dso_local i8* @Tcl_GetStringResult(i32*) #1

declare dso_local i8* @sqlite3_mprintf(i8*, ...) #1

declare dso_local i32* @Tcl_GetObjResult(i32*) #1

declare dso_local i32 @Tcl_ListObjGetElements(i32*, i32*, i32*, i32***) #1

declare dso_local i8* @Tcl_GetString(i32*) #1

declare dso_local i64 @sqlite3_stricmp(i8*, i8*) #1

declare dso_local i32 @Tcl_GetDoubleFromObj(i32*, i32*, i32*) #1

declare dso_local i32 @Tcl_GetIntFromObj(i32*, i32*, i32*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @Tcl_GetWideIntFromObj(i32*, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
