; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_sha1.c_sha1QueryFunc.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_sha1.c_sha1QueryFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"error SQL statement [%s]: %s\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"non-query: [%s]\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"S%d:\00", align 1
@SQLITE_ROW = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"T%d:\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"B%d:\00", align 1
@SQLITE_TRANSIENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @sha1QueryFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sha1QueryFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca [44 x i8], align 16
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [9 x i8], align 1
  %22 = alloca double, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca [9 x i8], align 1
  %26 = alloca double, align 8
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = call i32* @sqlite3_context_db_handle(i32* %31)
  store i32* %32, i32** %7, align 8
  %33 = load i32**, i32*** %6, align 8
  %34 = getelementptr inbounds i32*, i32** %33, i64 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i64 @sqlite3_value_text(i32* %35)
  %37 = inttoptr i64 %36 to i8*
  store i8* %37, i8** %8, align 8
  store i32* null, i32** %9, align 8
  %38 = load i32, i32* %5, align 4
  %39 = icmp eq i32 %38, 1
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load i8*, i8** %8, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %3
  br label %202

45:                                               ; preds = %3
  %46 = call i32 @hash_init(i32* %15)
  br label %47

47:                                               ; preds = %192, %45
  %48 = load i8*, i8** %8, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = icmp ne i8 %50, 0
  br i1 %51, label %52, label %195

52:                                               ; preds = %47
  %53 = load i32*, i32** %7, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 @sqlite3_prepare_v2(i32* %53, i8* %54, i32 -1, i32** %9, i8** %8)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %52
  %59 = load i8*, i8** %8, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = call i32 @sqlite3_errmsg(i32* %60)
  %62 = call i8* (i8*, i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %59, i32 %61)
  store i8* %62, i8** %17, align 8
  %63 = load i32*, i32** %9, align 8
  %64 = call i32 @sqlite3_finalize(i32* %63)
  %65 = load i32*, i32** %4, align 8
  %66 = load i8*, i8** %17, align 8
  %67 = call i32 @sqlite3_result_error(i32* %65, i8* %66, i32 -1)
  %68 = load i8*, i8** %17, align 8
  %69 = call i32 @sqlite3_free(i8* %68)
  br label %202

70:                                               ; preds = %52
  %71 = load i32*, i32** %9, align 8
  %72 = call i32 @sqlite3_stmt_readonly(i32* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %85, label %74

74:                                               ; preds = %70
  %75 = load i32*, i32** %9, align 8
  %76 = call i8* @sqlite3_sql(i32* %75)
  %77 = call i8* (i8*, i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %76)
  store i8* %77, i8** %18, align 8
  %78 = load i32*, i32** %9, align 8
  %79 = call i32 @sqlite3_finalize(i32* %78)
  %80 = load i32*, i32** %4, align 8
  %81 = load i8*, i8** %18, align 8
  %82 = call i32 @sqlite3_result_error(i32* %80, i8* %81, i32 -1)
  %83 = load i8*, i8** %18, align 8
  %84 = call i32 @sqlite3_free(i8* %83)
  br label %202

85:                                               ; preds = %70
  %86 = load i32*, i32** %9, align 8
  %87 = call i32 @sqlite3_column_count(i32* %86)
  store i32 %87, i32* %10, align 4
  %88 = load i32*, i32** %9, align 8
  %89 = call i8* @sqlite3_sql(i32* %88)
  store i8* %89, i8** %14, align 8
  %90 = load i8*, i8** %14, align 8
  %91 = call i64 @strlen(i8* %90)
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %13, align 4
  %94 = call i32 @hash_step_vformat(i32* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %93)
  %95 = load i8*, i8** %14, align 8
  %96 = load i32, i32* %13, align 4
  %97 = call i32 @hash_step(i32* %15, i8* %95, i32 %96)
  br label %98

98:                                               ; preds = %191, %85
  %99 = load i64, i64* @SQLITE_ROW, align 8
  %100 = load i32*, i32** %9, align 8
  %101 = call i64 @sqlite3_step(i32* %100)
  %102 = icmp eq i64 %99, %101
  br i1 %102, label %103, label %192

103:                                              ; preds = %98
  %104 = call i32 @hash_step(i32* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 1)
  store i32 0, i32* %11, align 4
  br label %105

105:                                              ; preds = %188, %103
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* %10, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %191

109:                                              ; preds = %105
  %110 = load i32*, i32** %9, align 8
  %111 = load i32, i32* %11, align 4
  %112 = call i32 @sqlite3_column_type(i32* %110, i32 %111)
  switch i32 %112, label %187 [
    i32 129, label %113
    i32 130, label %115
    i32 131, label %139
    i32 128, label %163
    i32 132, label %175
  ]

113:                                              ; preds = %109
  %114 = call i32 @hash_step(i32* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 1)
  br label %187

115:                                              ; preds = %109
  %116 = load i32*, i32** %9, align 8
  %117 = load i32, i32* %11, align 4
  %118 = call double @sqlite3_column_int64(i32* %116, i32 %117)
  store double %118, double* %22, align 8
  %119 = call i32 @memcpy(i32* %19, double* %22, i32 8)
  store i32 8, i32* %20, align 4
  br label %120

120:                                              ; preds = %132, %115
  %121 = load i32, i32* %20, align 4
  %122 = icmp sge i32 %121, 1
  br i1 %122, label %123, label %135

123:                                              ; preds = %120
  %124 = load i32, i32* %19, align 4
  %125 = and i32 %124, 255
  %126 = trunc i32 %125 to i8
  %127 = load i32, i32* %20, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [9 x i8], [9 x i8]* %21, i64 0, i64 %128
  store i8 %126, i8* %129, align 1
  %130 = load i32, i32* %19, align 4
  %131 = ashr i32 %130, 8
  store i32 %131, i32* %19, align 4
  br label %132

132:                                              ; preds = %123
  %133 = load i32, i32* %20, align 4
  %134 = add nsw i32 %133, -1
  store i32 %134, i32* %20, align 4
  br label %120

135:                                              ; preds = %120
  %136 = getelementptr inbounds [9 x i8], [9 x i8]* %21, i64 0, i64 0
  store i8 73, i8* %136, align 1
  %137 = getelementptr inbounds [9 x i8], [9 x i8]* %21, i64 0, i64 0
  %138 = call i32 @hash_step(i32* %15, i8* %137, i32 9)
  br label %187

139:                                              ; preds = %109
  %140 = load i32*, i32** %9, align 8
  %141 = load i32, i32* %11, align 4
  %142 = call double @sqlite3_column_double(i32* %140, i32 %141)
  store double %142, double* %26, align 8
  %143 = call i32 @memcpy(i32* %23, double* %26, i32 8)
  store i32 8, i32* %24, align 4
  br label %144

144:                                              ; preds = %156, %139
  %145 = load i32, i32* %24, align 4
  %146 = icmp sge i32 %145, 1
  br i1 %146, label %147, label %159

147:                                              ; preds = %144
  %148 = load i32, i32* %23, align 4
  %149 = and i32 %148, 255
  %150 = trunc i32 %149 to i8
  %151 = load i32, i32* %24, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [9 x i8], [9 x i8]* %25, i64 0, i64 %152
  store i8 %150, i8* %153, align 1
  %154 = load i32, i32* %23, align 4
  %155 = ashr i32 %154, 8
  store i32 %155, i32* %23, align 4
  br label %156

156:                                              ; preds = %147
  %157 = load i32, i32* %24, align 4
  %158 = add nsw i32 %157, -1
  store i32 %158, i32* %24, align 4
  br label %144

159:                                              ; preds = %144
  %160 = getelementptr inbounds [9 x i8], [9 x i8]* %25, i64 0, i64 0
  store i8 70, i8* %160, align 1
  %161 = getelementptr inbounds [9 x i8], [9 x i8]* %25, i64 0, i64 0
  %162 = call i32 @hash_step(i32* %15, i8* %161, i32 9)
  br label %187

163:                                              ; preds = %109
  %164 = load i32*, i32** %9, align 8
  %165 = load i32, i32* %11, align 4
  %166 = call i32 @sqlite3_column_bytes(i32* %164, i32 %165)
  store i32 %166, i32* %27, align 4
  %167 = load i32*, i32** %9, align 8
  %168 = load i32, i32* %11, align 4
  %169 = call i8* @sqlite3_column_text(i32* %167, i32 %168)
  store i8* %169, i8** %28, align 8
  %170 = load i32, i32* %27, align 4
  %171 = call i32 @hash_step_vformat(i32* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %170)
  %172 = load i8*, i8** %28, align 8
  %173 = load i32, i32* %27, align 4
  %174 = call i32 @hash_step(i32* %15, i8* %172, i32 %173)
  br label %187

175:                                              ; preds = %109
  %176 = load i32*, i32** %9, align 8
  %177 = load i32, i32* %11, align 4
  %178 = call i32 @sqlite3_column_bytes(i32* %176, i32 %177)
  store i32 %178, i32* %29, align 4
  %179 = load i32*, i32** %9, align 8
  %180 = load i32, i32* %11, align 4
  %181 = call i8* @sqlite3_column_blob(i32* %179, i32 %180)
  store i8* %181, i8** %30, align 8
  %182 = load i32, i32* %29, align 4
  %183 = call i32 @hash_step_vformat(i32* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %182)
  %184 = load i8*, i8** %30, align 8
  %185 = load i32, i32* %29, align 4
  %186 = call i32 @hash_step(i32* %15, i8* %184, i32 %185)
  br label %187

187:                                              ; preds = %109, %175, %163, %159, %135, %113
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %11, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %11, align 4
  br label %105

191:                                              ; preds = %105
  br label %98

192:                                              ; preds = %98
  %193 = load i32*, i32** %9, align 8
  %194 = call i32 @sqlite3_finalize(i32* %193)
  br label %47

195:                                              ; preds = %47
  %196 = getelementptr inbounds [44 x i8], [44 x i8]* %16, i64 0, i64 0
  %197 = call i32 @hash_finish(i32* %15, i8* %196)
  %198 = load i32*, i32** %4, align 8
  %199 = getelementptr inbounds [44 x i8], [44 x i8]* %16, i64 0, i64 0
  %200 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %201 = call i32 @sqlite3_result_text(i32* %198, i8* %199, i32 40, i32 %200)
  br label %202

202:                                              ; preds = %195, %74, %58, %44
  ret void
}

declare dso_local i32* @sqlite3_context_db_handle(i32*) #1

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @hash_init(i32*) #1

declare dso_local i32 @sqlite3_prepare_v2(i32*, i8*, i32, i32**, i8**) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i8*, ...) #1

declare dso_local i32 @sqlite3_errmsg(i32*) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i32 @sqlite3_result_error(i32*, i8*, i32) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @sqlite3_stmt_readonly(i32*) #1

declare dso_local i8* @sqlite3_sql(i32*) #1

declare dso_local i32 @sqlite3_column_count(i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @hash_step_vformat(i32*, i8*, i32) #1

declare dso_local i32 @hash_step(i32*, i8*, i32) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i32 @sqlite3_column_type(i32*, i32) #1

declare dso_local double @sqlite3_column_int64(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, double*, i32) #1

declare dso_local double @sqlite3_column_double(i32*, i32) #1

declare dso_local i32 @sqlite3_column_bytes(i32*, i32) #1

declare dso_local i8* @sqlite3_column_text(i32*, i32) #1

declare dso_local i8* @sqlite3_column_blob(i32*, i32) #1

declare dso_local i32 @hash_finish(i32*, i8*) #1

declare dso_local i32 @sqlite3_result_text(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
