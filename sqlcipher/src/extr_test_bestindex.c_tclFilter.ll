; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_bestindex.c_tclFilter.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_bestindex.c_tclFilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32, i32, i32* }
%struct.TYPE_7__ = type { i8* }

@.str = private unnamed_addr constant [8 x i8] c"xFilter\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TCL_EVAL_GLOBAL = common dso_local global i32 0, align 4
@TCL_OK = common dso_local global i32 0, align 4
@SQLITE_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"sql\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"unexpected: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32, i8*, i32, i32**)* @tclFilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tclFilter(%struct.TYPE_10__* %0, i32 %1, i8* %2, i32 %3, i32** %4) #0 {
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32**, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32** %4, i32*** %10, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %30 = bitcast %struct.TYPE_10__* %29 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %30, %struct.TYPE_9__** %11, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %34, %struct.TYPE_8__** %12, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %13, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32* @Tcl_DuplicateObj(i32 %40)
  store i32* %41, i32** %14, align 8
  %42 = load i32*, i32** %14, align 8
  %43 = call i32 @Tcl_IncrRefCount(i32* %42)
  %44 = load i32*, i32** %13, align 8
  %45 = load i32*, i32** %14, align 8
  %46 = call i32* @Tcl_NewStringObj(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 -1)
  %47 = call i32 @Tcl_ListObjAppendElement(i32* %44, i32* %45, i32* %46)
  %48 = load i32*, i32** %13, align 8
  %49 = load i32*, i32** %14, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32* @Tcl_NewIntObj(i32 %50)
  %52 = call i32 @Tcl_ListObjAppendElement(i32* %48, i32* %49, i32* %51)
  %53 = load i8*, i8** %8, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %5
  %56 = load i32*, i32** %13, align 8
  %57 = load i32*, i32** %14, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = call i32* @Tcl_NewStringObj(i8* %58, i32 -1)
  %60 = call i32 @Tcl_ListObjAppendElement(i32* %56, i32* %57, i32* %59)
  br label %66

61:                                               ; preds = %5
  %62 = load i32*, i32** %13, align 8
  %63 = load i32*, i32** %14, align 8
  %64 = call i32* @Tcl_NewStringObj(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  %65 = call i32 @Tcl_ListObjAppendElement(i32* %62, i32* %63, i32* %64)
  br label %66

66:                                               ; preds = %61, %55
  %67 = call i32* (...) @Tcl_NewObj()
  store i32* %67, i32** %15, align 8
  %68 = load i32*, i32** %15, align 8
  %69 = call i32 @Tcl_IncrRefCount(i32* %68)
  store i32 0, i32* %16, align 4
  br label %70

70:                                               ; preds = %94, %66
  %71 = load i32, i32* %16, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %97

74:                                               ; preds = %70
  %75 = load i32**, i32*** %10, align 8
  %76 = load i32, i32* %16, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32*, i32** %75, i64 %77
  %79 = load i32*, i32** %78, align 8
  %80 = call i64 @sqlite3_value_text(i32* %79)
  %81 = inttoptr i64 %80 to i8*
  store i8* %81, i8** %18, align 8
  %82 = load i8*, i8** %18, align 8
  %83 = icmp eq i8* %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %74
  %85 = call i32* (...) @Tcl_NewObj()
  store i32* %85, i32** %19, align 8
  br label %89

86:                                               ; preds = %74
  %87 = load i8*, i8** %18, align 8
  %88 = call i32* @Tcl_NewStringObj(i8* %87, i32 -1)
  store i32* %88, i32** %19, align 8
  br label %89

89:                                               ; preds = %86, %84
  %90 = load i32*, i32** %13, align 8
  %91 = load i32*, i32** %15, align 8
  %92 = load i32*, i32** %19, align 8
  %93 = call i32 @Tcl_ListObjAppendElement(i32* %90, i32* %91, i32* %92)
  br label %94

94:                                               ; preds = %89
  %95 = load i32, i32* %16, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %16, align 4
  br label %70

97:                                               ; preds = %70
  %98 = load i32*, i32** %13, align 8
  %99 = load i32*, i32** %14, align 8
  %100 = load i32*, i32** %15, align 8
  %101 = call i32 @Tcl_ListObjAppendElement(i32* %98, i32* %99, i32* %100)
  %102 = load i32*, i32** %15, align 8
  %103 = call i32 @Tcl_DecrRefCount(i32* %102)
  %104 = load i32*, i32** %13, align 8
  %105 = load i32*, i32** %14, align 8
  %106 = load i32, i32* @TCL_EVAL_GLOBAL, align 4
  %107 = call i32 @Tcl_EvalObjEx(i32* %104, i32* %105, i32 %106)
  store i32 %107, i32* %17, align 4
  %108 = load i32, i32* %17, align 4
  %109 = load i32, i32* @TCL_OK, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %120

111:                                              ; preds = %97
  %112 = load i32*, i32** %13, align 8
  %113 = call i8* @Tcl_GetStringResult(i32* %112)
  store i8* %113, i8** %20, align 8
  %114 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %114, i32* %17, align 4
  %115 = load i8*, i8** %20, align 8
  %116 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %115)
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  store i8* %116, i8** %119, align 8
  br label %202

120:                                              ; preds = %97
  %121 = load i32*, i32** %13, align 8
  %122 = call i32* @Tcl_GetObjResult(i32* %121)
  store i32* %122, i32** %21, align 8
  store i32** null, i32*** %22, align 8
  %123 = load i32*, i32** %13, align 8
  %124 = load i32*, i32** %21, align 8
  %125 = call i32 @Tcl_ListObjGetElements(i32* %123, i32* %124, i32* %23, i32*** %22)
  store i32 %125, i32* %17, align 4
  %126 = load i32, i32* %17, align 4
  %127 = load i32, i32* @TCL_OK, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %129, label %138

129:                                              ; preds = %120
  %130 = load i32*, i32** %13, align 8
  %131 = call i8* @Tcl_GetStringResult(i32* %130)
  store i8* %131, i8** %24, align 8
  %132 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %132, i32* %17, align 4
  %133 = load i8*, i8** %24, align 8
  %134 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %133)
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  store i8* %134, i8** %137, align 8
  br label %201

138:                                              ; preds = %120
  store i32 0, i32* %16, align 4
  br label %139

139:                                              ; preds = %197, %138
  %140 = load i32, i32* %17, align 4
  %141 = load i32, i32* @SQLITE_OK, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %139
  %144 = load i32, i32* %16, align 4
  %145 = load i32, i32* %23, align 4
  %146 = icmp slt i32 %144, %145
  br label %147

147:                                              ; preds = %143, %139
  %148 = phi i1 [ false, %139 ], [ %146, %143 ]
  br i1 %148, label %149, label %200

149:                                              ; preds = %147
  %150 = load i32**, i32*** %22, align 8
  %151 = load i32, i32* %16, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32*, i32** %150, i64 %152
  %154 = load i32*, i32** %153, align 8
  %155 = call i8* @Tcl_GetString(i32* %154)
  store i8* %155, i8** %25, align 8
  %156 = load i32**, i32*** %22, align 8
  %157 = load i32, i32* %16, align 4
  %158 = add nsw i32 %157, 1
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32*, i32** %156, i64 %159
  %161 = load i32*, i32** %160, align 8
  store i32* %161, i32** %26, align 8
  %162 = load i8*, i8** %25, align 8
  %163 = call i64 @sqlite3_stricmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %162)
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %165, label %189

165:                                              ; preds = %149
  %166 = load i32*, i32** %26, align 8
  %167 = call i8* @Tcl_GetString(i32* %166)
  store i8* %167, i8** %27, align 8
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = load i8*, i8** %27, align 8
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 0
  %174 = call i32 @sqlite3_prepare_v2(i32 %170, i8* %171, i32 -1, i32* %173, i32 0)
  store i32 %174, i32* %17, align 4
  %175 = load i32, i32* %17, align 4
  %176 = load i32, i32* @SQLITE_OK, align 4
  %177 = icmp ne i32 %175, %176
  br i1 %177, label %178, label %188

178:                                              ; preds = %165
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = call i8* @sqlite3_errmsg(i32 %181)
  store i8* %182, i8** %28, align 8
  %183 = load i8*, i8** %28, align 8
  %184 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %183)
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 0
  store i8* %184, i8** %187, align 8
  br label %188

188:                                              ; preds = %178, %165
  br label %196

189:                                              ; preds = %149
  %190 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %190, i32* %17, align 4
  %191 = load i8*, i8** %25, align 8
  %192 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %191)
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 0
  store i8* %192, i8** %195, align 8
  br label %196

196:                                              ; preds = %189, %188
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %16, align 4
  %199 = add nsw i32 %198, 2
  store i32 %199, i32* %16, align 4
  br label %139

200:                                              ; preds = %147
  br label %201

201:                                              ; preds = %200, %129
  br label %202

202:                                              ; preds = %201, %111
  %203 = load i32, i32* %17, align 4
  %204 = load i32, i32* @SQLITE_OK, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %206, label %209

206:                                              ; preds = %202
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %208 = call i32 @tclNext(%struct.TYPE_10__* %207)
  store i32 %208, i32* %17, align 4
  br label %209

209:                                              ; preds = %206, %202
  %210 = load i32, i32* %17, align 4
  ret i32 %210
}

declare dso_local i32* @Tcl_DuplicateObj(i32) #1

declare dso_local i32 @Tcl_IncrRefCount(i32*) #1

declare dso_local i32 @Tcl_ListObjAppendElement(i32*, i32*, i32*) #1

declare dso_local i32* @Tcl_NewStringObj(i8*, i32) #1

declare dso_local i32* @Tcl_NewIntObj(i32) #1

declare dso_local i32* @Tcl_NewObj(...) #1

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i32 @Tcl_DecrRefCount(i32*) #1

declare dso_local i32 @Tcl_EvalObjEx(i32*, i32*, i32) #1

declare dso_local i8* @Tcl_GetStringResult(i32*) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i8*) #1

declare dso_local i32* @Tcl_GetObjResult(i32*) #1

declare dso_local i32 @Tcl_ListObjGetElements(i32*, i32*, i32*, i32***) #1

declare dso_local i8* @Tcl_GetString(i32*) #1

declare dso_local i64 @sqlite3_stricmp(i8*, i8*) #1

declare dso_local i32 @sqlite3_prepare_v2(i32, i8*, i32, i32*, i32) #1

declare dso_local i8* @sqlite3_errmsg(i32) #1

declare dso_local i32 @tclNext(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
