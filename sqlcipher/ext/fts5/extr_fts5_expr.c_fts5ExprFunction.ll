; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_expr.c_fts5ExprFunction.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_expr.c_fts5ExprFunction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"nearset\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"wrong number of arguments to function %s\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"fts5_expr_tcl\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"fts5_expr\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"tbl\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@SQLITE_TRANSIENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**, i32)* @fts5ExprFunction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fts5ExprFunction(i32* %0, i32 %1, i32** %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8**, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_13__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  store i32 %3, i32* %8, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = call i64 @sqlite3_user_data(i32* %22)
  %24 = inttoptr i64 %23 to i32*
  store i32* %24, i32** %9, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call i32* @sqlite3_context_db_handle(i32* %25)
  store i32* %26, i32** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %13, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %19, align 8
  store i32 1, i32* %20, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 1
  br i1 %28, label %29, label %40

29:                                               ; preds = %4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)
  %34 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  store i8* %34, i8** %12, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = call i32 @sqlite3_result_error(i32* %35, i8* %36, i32 -1)
  %38 = load i8*, i8** %12, align 8
  %39 = call i32 @sqlite3_free(i8* %38)
  br label %185

40:                                               ; preds = %4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %40
  %44 = load i32, i32* %6, align 4
  %45 = icmp sgt i32 %44, 1
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load i32**, i32*** %7, align 8
  %48 = getelementptr inbounds i32*, i32** %47, i64 1
  %49 = load i32*, i32** %48, align 8
  %50 = call i64 @sqlite3_value_text(i32* %49)
  %51 = inttoptr i64 %50 to i8*
  store i8* %51, i8** %17, align 8
  store i32 2, i32* %20, align 4
  br label %52

52:                                               ; preds = %46, %43, %40
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %20, align 4
  %55 = sub nsw i32 %53, %54
  %56 = add nsw i32 3, %55
  store i32 %56, i32* %18, align 4
  %57 = load i32, i32* %18, align 4
  %58 = sext i32 %57 to i64
  %59 = mul i64 8, %58
  %60 = trunc i64 %59 to i32
  %61 = call i64 @sqlite3_malloc64(i32 %60)
  %62 = inttoptr i64 %61 to i8**
  store i8** %62, i8*** %16, align 8
  %63 = load i8**, i8*** %16, align 8
  %64 = icmp eq i8** %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %52
  %66 = load i32*, i32** %5, align 8
  %67 = call i32 @sqlite3_result_error_nomem(i32* %66)
  br label %185

68:                                               ; preds = %52
  %69 = load i8**, i8*** %16, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 0
  store i8* null, i8** %70, align 8
  %71 = load i8**, i8*** %16, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %72, align 8
  %73 = load i8**, i8*** %16, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** %74, align 8
  store i32 3, i32* %15, align 4
  br label %75

75:                                               ; preds = %92, %68
  %76 = load i32, i32* %20, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %95

79:                                               ; preds = %75
  %80 = load i32**, i32*** %7, align 8
  %81 = load i32, i32* %20, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32*, i32** %80, i64 %82
  %84 = load i32*, i32** %83, align 8
  %85 = call i64 @sqlite3_value_text(i32* %84)
  %86 = inttoptr i64 %85 to i8*
  %87 = load i8**, i8*** %16, align 8
  %88 = load i32, i32* %15, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %15, align 4
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i8*, i8** %87, i64 %90
  store i8* %86, i8** %91, align 8
  br label %92

92:                                               ; preds = %79
  %93 = load i32, i32* %20, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %20, align 4
  br label %75

95:                                               ; preds = %75
  %96 = load i32**, i32*** %7, align 8
  %97 = getelementptr inbounds i32*, i32** %96, i64 0
  %98 = load i32*, i32** %97, align 8
  %99 = call i64 @sqlite3_value_text(i32* %98)
  %100 = inttoptr i64 %99 to i8*
  store i8* %100, i8** %11, align 8
  %101 = load i32*, i32** %9, align 8
  %102 = load i32*, i32** %10, align 8
  %103 = load i32, i32* %18, align 4
  %104 = load i8**, i8*** %16, align 8
  %105 = call i32 @sqlite3Fts5ConfigParse(i32* %101, i32* %102, i32 %103, i8** %104, %struct.TYPE_13__** %19, i8** %12)
  store i32 %105, i32* %14, align 4
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* @SQLITE_OK, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %116

109:                                              ; preds = %95
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i8*, i8** %11, align 8
  %115 = call i32 @sqlite3Fts5ExprNew(%struct.TYPE_13__* %110, i32 %113, i8* %114, %struct.TYPE_12__** %13, i8** %12)
  store i32 %115, i32* %14, align 4
  br label %116

116:                                              ; preds = %109, %95
  %117 = load i32, i32* %14, align 4
  %118 = load i32, i32* @SQLITE_OK, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %159

120:                                              ; preds = %116
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %120
  %128 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  store i8* %128, i8** %21, align 8
  br label %146

129:                                              ; preds = %120
  %130 = load i32, i32* %8, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %129
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %134 = load i8*, i8** %17, align 8
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %136, align 8
  %138 = call i8* @fts5ExprPrintTcl(%struct.TYPE_13__* %133, i8* %134, %struct.TYPE_14__* %137)
  store i8* %138, i8** %21, align 8
  br label %145

139:                                              ; preds = %129
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %142, align 8
  %144 = call i8* @fts5ExprPrint(%struct.TYPE_13__* %140, %struct.TYPE_14__* %143)
  store i8* %144, i8** %21, align 8
  br label %145

145:                                              ; preds = %139, %132
  br label %146

146:                                              ; preds = %145, %127
  %147 = load i8*, i8** %21, align 8
  %148 = icmp eq i8* %147, null
  br i1 %148, label %149, label %151

149:                                              ; preds = %146
  %150 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %150, i32* %14, align 4
  br label %158

151:                                              ; preds = %146
  %152 = load i32*, i32** %5, align 8
  %153 = load i8*, i8** %21, align 8
  %154 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %155 = call i32 @sqlite3_result_text(i32* %152, i8* %153, i32 -1, i32 %154)
  %156 = load i8*, i8** %21, align 8
  %157 = call i32 @sqlite3_free(i8* %156)
  br label %158

158:                                              ; preds = %151, %149
  br label %159

159:                                              ; preds = %158, %116
  %160 = load i32, i32* %14, align 4
  %161 = load i32, i32* @SQLITE_OK, align 4
  %162 = icmp ne i32 %160, %161
  br i1 %162, label %163, label %177

163:                                              ; preds = %159
  %164 = load i8*, i8** %12, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %166, label %172

166:                                              ; preds = %163
  %167 = load i32*, i32** %5, align 8
  %168 = load i8*, i8** %12, align 8
  %169 = call i32 @sqlite3_result_error(i32* %167, i8* %168, i32 -1)
  %170 = load i8*, i8** %12, align 8
  %171 = call i32 @sqlite3_free(i8* %170)
  br label %176

172:                                              ; preds = %163
  %173 = load i32*, i32** %5, align 8
  %174 = load i32, i32* %14, align 4
  %175 = call i32 @sqlite3_result_error_code(i32* %173, i32 %174)
  br label %176

176:                                              ; preds = %172, %166
  br label %177

177:                                              ; preds = %176, %159
  %178 = load i8**, i8*** %16, align 8
  %179 = bitcast i8** %178 to i8*
  %180 = call i32 @sqlite3_free(i8* %179)
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %182 = call i32 @sqlite3Fts5ConfigFree(%struct.TYPE_13__* %181)
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %184 = call i32 @sqlite3Fts5ExprFree(%struct.TYPE_12__* %183)
  br label %185

185:                                              ; preds = %177, %65, %29
  ret void
}

declare dso_local i64 @sqlite3_user_data(i32*) #1

declare dso_local i32* @sqlite3_context_db_handle(i32*) #1

declare dso_local i8* @sqlite3_mprintf(i8*, ...) #1

declare dso_local i32 @sqlite3_result_error(i32*, i8*, i32) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i64 @sqlite3_malloc64(i32) #1

declare dso_local i32 @sqlite3_result_error_nomem(i32*) #1

declare dso_local i32 @sqlite3Fts5ConfigParse(i32*, i32*, i32, i8**, %struct.TYPE_13__**, i8**) #1

declare dso_local i32 @sqlite3Fts5ExprNew(%struct.TYPE_13__*, i32, i8*, %struct.TYPE_12__**, i8**) #1

declare dso_local i8* @fts5ExprPrintTcl(%struct.TYPE_13__*, i8*, %struct.TYPE_14__*) #1

declare dso_local i8* @fts5ExprPrint(%struct.TYPE_13__*, %struct.TYPE_14__*) #1

declare dso_local i32 @sqlite3_result_text(i32*, i8*, i32, i32) #1

declare dso_local i32 @sqlite3_result_error_code(i32*, i32) #1

declare dso_local i32 @sqlite3Fts5ConfigFree(%struct.TYPE_13__*) #1

declare dso_local i32 @sqlite3Fts5ExprFree(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
