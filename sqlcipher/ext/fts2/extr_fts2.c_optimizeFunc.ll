; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_optimizeFunc.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_optimizeFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"excess arguments to optimize()\00", align 1
@SQLITE_BLOB = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"illegal first argument to optimize\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Index already optimal\00", align 1
@SQLITE_STATIC = common dso_local global i32 0, align 4
@SEGDIR_SELECT_ALL_STMT = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i32 0, align 4
@SQLITE_DONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"Index optimized\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Error in optimize: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @optimizeFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @optimizeFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca [512 x i8], align 16
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %21 = load i32, i32* %5, align 4
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @sqlite3_result_error(i32* %24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 -1)
  br label %214

26:                                               ; preds = %3
  %27 = load i32**, i32*** %6, align 8
  %28 = getelementptr inbounds i32*, i32** %27, i64 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i64 @sqlite3_value_type(i32* %29)
  %31 = load i64, i64* @SQLITE_BLOB, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %40, label %33

33:                                               ; preds = %26
  %34 = load i32**, i32*** %6, align 8
  %35 = getelementptr inbounds i32*, i32** %34, i64 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @sqlite3_value_bytes(i32* %36)
  %38 = sext i32 %37 to i64
  %39 = icmp ne i64 %38, 8
  br i1 %39, label %40, label %43

40:                                               ; preds = %33, %26
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @sqlite3_result_error(i32* %41, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  br label %213

43:                                               ; preds = %33
  %44 = load i32**, i32*** %6, align 8
  %45 = getelementptr inbounds i32*, i32** %44, i64 0
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @sqlite3_value_blob(i32* %46)
  %48 = call i32 @memcpy(i32** %7, i32 %47, i32 8)
  %49 = load i32*, i32** %7, align 8
  %50 = call i32* @cursor_vtab(i32* %49)
  store i32* %50, i32** %8, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @flushPendingTerms(i32* %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @SQLITE_OK, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %43
  br label %204

57:                                               ; preds = %43
  %58 = load i32*, i32** %8, align 8
  %59 = call i32 @segdir_count(i32* %58, i32* %13, i32* %11)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @SQLITE_OK, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %204

64:                                               ; preds = %57
  %65 = load i32, i32* %13, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %13, align 4
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %74

70:                                               ; preds = %67, %64
  %71 = load i32*, i32** %4, align 8
  %72 = load i32, i32* @SQLITE_STATIC, align 4
  %73 = call i32 @sqlite3_result_text(i32* %71, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 -1, i32 %72)
  br label %214

74:                                               ; preds = %67
  %75 = load i32*, i32** %8, align 8
  %76 = load i32, i32* @SEGDIR_SELECT_ALL_STMT, align 4
  %77 = call i32 @sql_get_statement(i32* %75, i32 %76, i32** %15)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @SQLITE_OK, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  br label %204

82:                                               ; preds = %74
  %83 = load i32, i32* %13, align 4
  %84 = sext i32 %83 to i64
  %85 = mul i64 %84, 8
  %86 = trunc i64 %85 to i32
  %87 = call %struct.TYPE_5__* @sqlite3_malloc(i32 %86)
  store %struct.TYPE_5__* %87, %struct.TYPE_5__** %12, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %89 = icmp eq %struct.TYPE_5__* %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  br label %204

91:                                               ; preds = %82
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @leafWriterInit(i32 %92, i32 0, i32* %14)
  store i32 0, i32* %9, align 4
  br label %94

94:                                               ; preds = %128, %91
  %95 = load i32*, i32** %15, align 8
  %96 = call i32 @sqlite3_step(i32* %95)
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* @SQLITE_ROW, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %137

99:                                               ; preds = %94
  %100 = load i32*, i32** %15, align 8
  %101 = call i32 @sqlite3_column_int64(i32* %100, i32 0)
  store i32 %101, i32* %16, align 4
  %102 = load i32*, i32** %15, align 8
  %103 = call i32 @sqlite3_column_int64(i32* %102, i32 1)
  store i32 %103, i32* %17, align 4
  %104 = load i32*, i32** %15, align 8
  %105 = call i8* @sqlite3_column_blob(i32* %104, i32 2)
  store i8* %105, i8** %18, align 8
  %106 = load i32*, i32** %15, align 8
  %107 = call i32 @sqlite3_column_bytes(i32* %106, i32 2)
  store i32 %107, i32* %19, align 4
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %13, align 4
  %110 = icmp slt i32 %108, %109
  %111 = zext i1 %110 to i32
  %112 = call i32 @assert(i32 %111)
  %113 = load i32*, i32** %8, align 8
  %114 = load i32, i32* %16, align 4
  %115 = load i32, i32* %17, align 4
  %116 = load i8*, i8** %18, align 8
  %117 = load i32, i32* %19, align 4
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 1
  %123 = call i32 @leavesReaderInit(i32* %113, i32 -1, i32 %114, i32 %115, i8* %116, i32 %117, i32* %122)
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* @SQLITE_OK, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %99
  br label %137

128:                                              ; preds = %99
  %129 = load i32, i32* %9, align 4
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %131 = load i32, i32* %9, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  store i32 %129, i32* %134, align 4
  %135 = load i32, i32* %9, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %9, align 4
  br label %94

137:                                              ; preds = %127, %94
  %138 = load i32, i32* %10, align 4
  %139 = load i32, i32* @SQLITE_DONE, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %151

141:                                              ; preds = %137
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* %13, align 4
  %144 = icmp eq i32 %142, %143
  %145 = zext i1 %144 to i32
  %146 = call i32 @assert(i32 %145)
  %147 = load i32*, i32** %8, align 8
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %149 = load i32, i32* %13, align 4
  %150 = call i32 @optimizeInternal(i32* %147, %struct.TYPE_5__* %148, i32 %149, i32* %14)
  store i32 %150, i32* %10, align 4
  br label %151

151:                                              ; preds = %141, %137
  br label %152

152:                                              ; preds = %156, %151
  %153 = load i32, i32* %9, align 4
  %154 = add nsw i32 %153, -1
  store i32 %154, i32* %9, align 4
  %155 = icmp sgt i32 %153, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %152
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %158 = load i32, i32* %9, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 1
  %162 = call i32 @leavesReaderDestroy(i32* %161)
  br label %152

163:                                              ; preds = %152
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %165 = call i32 @sqlite3_free(%struct.TYPE_5__* %164)
  %166 = load i32, i32* %10, align 4
  %167 = load i32, i32* @SQLITE_OK, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %194

169:                                              ; preds = %163
  store i32 0, i32* %9, align 4
  br label %170

170:                                              ; preds = %183, %169
  %171 = load i32, i32* %9, align 4
  %172 = load i32, i32* %11, align 4
  %173 = icmp sle i32 %171, %172
  br i1 %173, label %174, label %186

174:                                              ; preds = %170
  %175 = load i32*, i32** %8, align 8
  %176 = load i32, i32* %9, align 4
  %177 = call i32 @segdir_delete(i32* %175, i32 %176)
  store i32 %177, i32* %10, align 4
  %178 = load i32, i32* %10, align 4
  %179 = load i32, i32* @SQLITE_OK, align 4
  %180 = icmp ne i32 %178, %179
  br i1 %180, label %181, label %182

181:                                              ; preds = %174
  br label %186

182:                                              ; preds = %174
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %9, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %9, align 4
  br label %170

186:                                              ; preds = %181, %170
  %187 = load i32, i32* %10, align 4
  %188 = load i32, i32* @SQLITE_OK, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %190, label %193

190:                                              ; preds = %186
  %191 = load i32*, i32** %8, align 8
  %192 = call i32 @leafWriterFinalize(i32* %191, i32* %14)
  store i32 %192, i32* %10, align 4
  br label %193

193:                                              ; preds = %190, %186
  br label %194

194:                                              ; preds = %193, %163
  %195 = call i32 @leafWriterDestroy(i32* %14)
  %196 = load i32, i32* %10, align 4
  %197 = load i32, i32* @SQLITE_OK, align 4
  %198 = icmp ne i32 %196, %197
  br i1 %198, label %199, label %200

199:                                              ; preds = %194
  br label %204

200:                                              ; preds = %194
  %201 = load i32*, i32** %4, align 8
  %202 = load i32, i32* @SQLITE_STATIC, align 4
  %203 = call i32 @sqlite3_result_text(i32* %201, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 -1, i32 %202)
  br label %214

204:                                              ; preds = %199, %90, %81, %63, %56
  %205 = getelementptr inbounds [512 x i8], [512 x i8]* %20, i64 0, i64 0
  %206 = load i32*, i32** %4, align 8
  %207 = call i32 @sqlite3_context_db_handle(i32* %206)
  %208 = call i32 @sqlite3_errmsg(i32 %207)
  %209 = call i32 @sqlite3_snprintf(i32 512, i8* %205, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %208)
  %210 = load i32*, i32** %4, align 8
  %211 = getelementptr inbounds [512 x i8], [512 x i8]* %20, i64 0, i64 0
  %212 = call i32 @sqlite3_result_error(i32* %210, i8* %211, i32 -1)
  br label %213

213:                                              ; preds = %204, %40
  br label %214

214:                                              ; preds = %70, %200, %213, %23
  ret void
}

declare dso_local i32 @sqlite3_result_error(i32*, i8*, i32) #1

declare dso_local i64 @sqlite3_value_type(i32*) #1

declare dso_local i32 @sqlite3_value_bytes(i32*) #1

declare dso_local i32 @memcpy(i32**, i32, i32) #1

declare dso_local i32 @sqlite3_value_blob(i32*) #1

declare dso_local i32* @cursor_vtab(i32*) #1

declare dso_local i32 @flushPendingTerms(i32*) #1

declare dso_local i32 @segdir_count(i32*, i32*, i32*) #1

declare dso_local i32 @sqlite3_result_text(i32*, i8*, i32, i32) #1

declare dso_local i32 @sql_get_statement(i32*, i32, i32**) #1

declare dso_local %struct.TYPE_5__* @sqlite3_malloc(i32) #1

declare dso_local i32 @leafWriterInit(i32, i32, i32*) #1

declare dso_local i32 @sqlite3_step(i32*) #1

declare dso_local i32 @sqlite3_column_int64(i32*, i32) #1

declare dso_local i8* @sqlite3_column_blob(i32*, i32) #1

declare dso_local i32 @sqlite3_column_bytes(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @leavesReaderInit(i32*, i32, i32, i32, i8*, i32, i32*) #1

declare dso_local i32 @optimizeInternal(i32*, %struct.TYPE_5__*, i32, i32*) #1

declare dso_local i32 @leavesReaderDestroy(i32*) #1

declare dso_local i32 @sqlite3_free(%struct.TYPE_5__*) #1

declare dso_local i32 @segdir_delete(i32*, i32) #1

declare dso_local i32 @leafWriterFinalize(i32*, i32*) #1

declare dso_local i32 @leafWriterDestroy(i32*) #1

declare dso_local i32 @sqlite3_snprintf(i32, i8*, i8*, i32) #1

declare dso_local i32 @sqlite3_errmsg(i32) #1

declare dso_local i32 @sqlite3_context_db_handle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
