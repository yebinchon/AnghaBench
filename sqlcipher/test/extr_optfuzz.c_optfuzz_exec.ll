; ModuleID = '/home/carl/AnghaBench/sqlcipher/test/extr_optfuzz.c_optfuzz_exec.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/test/extr_optfuzz.c_optfuzz_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"BEGIN\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"CREATE TABLE IF NOT EXISTS staging(x TEXT)\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"CREATE TABLE IF NOT EXISTS \22%w\22(x TEXT)\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"INSERT INTO staging(x) VALUES(?1)\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Error with [%s]\0A%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"DELETE FROM staging;\00", align 1
@SQLITE_ROW = common dso_local global i64 0, align 8
@SQLITE_NULL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@SQLITE_TEXT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"'%q'\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"Excessively long output line: %d bytes\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@SQLITE_TRANSIENT = common dso_local global i32 0, align 4
@SQLITE_DONE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [41 x i8] c"INSERT INTO \22%w\22(x) VALUES('### %q ###')\00", align 1
@.str.12 = private unnamed_addr constant [93 x i8] c"INSERT INTO \22%w\22(x) SELECT group_concat(x,char(10))  FROM (SELECT x FROM staging ORDER BY x)\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"COMMIT\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*, i8*, i32*, i32*, i32)* @optfuzz_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @optfuzz_exec(i32* %0, i8* %1, i32* %2, i8* %3, i32* %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca [4000 x i8], align 16
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32* %2, i32** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %25 = load i32, i32* @SQLITE_OK, align 4
  store i32 %25, i32* %15, align 4
  store i32* null, i32** %17, align 8
  store i32* null, i32** %18, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = call i32 (i32*, i8*, ...) @run_sql(i32* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %28 = load i32*, i32** %10, align 8
  %29 = call i32 (i32*, i8*, ...) @run_sql(i32* %28, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32*, i32** %10, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = call i32 (i32*, i8*, ...) @run_sql(i32* %30, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %31)
  %33 = load i32*, i32** %10, align 8
  %34 = call i32* @prepare_sql(i32* %33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  store i32* %34, i32** %18, align 8
  %35 = load i32*, i32** %12, align 8
  store i32 0, i32* %35, align 4
  %36 = load i32*, i32** %13, align 8
  store i32 0, i32* %36, align 4
  br label %37

37:                                               ; preds = %195, %78, %7
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* @SQLITE_OK, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  %42 = load i8*, i8** %9, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i8*, i8** %9, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 0
  br label %50

50:                                               ; preds = %44, %41, %37
  %51 = phi i1 [ false, %41 ], [ false, %37 ], [ %49, %44 ]
  br i1 %51, label %52, label %208

52:                                               ; preds = %50
  store i8* null, i8** %16, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = call i32 @sqlite3_prepare_v2(i32* %53, i8* %54, i32 -1, i32** %17, i8** %16)
  store i32 %55, i32* %15, align 4
  %56 = load i8*, i8** %16, align 8
  store i8* %56, i8** %9, align 8
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* @SQLITE_OK, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %63, label %60

60:                                               ; preds = %52
  %61 = load i32*, i32** %17, align 8
  %62 = icmp eq i32* %61, null
  br label %63

63:                                               ; preds = %60, %52
  %64 = phi i1 [ true, %52 ], [ %62, %60 ]
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* @SQLITE_OK, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %63
  %71 = load i8*, i8** %9, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = call i8* @sqlite3_errmsg(i32* %72)
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %71, i8* %73)
  br label %208

75:                                               ; preds = %63
  %76 = load i32*, i32** %17, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  br label %37

79:                                               ; preds = %75
  %80 = load i32*, i32** %12, align 8
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 4
  %83 = load i32*, i32** %17, align 8
  %84 = call i32 @sqlite3_column_count(i32* %83)
  store i32 %84, i32* %20, align 4
  %85 = load i32*, i32** %10, align 8
  %86 = call i32 (i32*, i8*, ...) @run_sql(i32* %85, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %87

87:                                               ; preds = %176, %79
  %88 = load i32*, i32** %17, align 8
  %89 = call i64 @sqlite3_step(i32* %88)
  %90 = load i64, i64* @SQLITE_ROW, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %195

92:                                               ; preds = %87
  store i32 0, i32* %23, align 4
  store i32 0, i32* %22, align 4
  br label %93

93:                                               ; preds = %159, %92
  %94 = load i32, i32* %22, align 4
  %95 = load i32, i32* %20, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = load i32, i32* %23, align 4
  %99 = sext i32 %98 to i64
  %100 = icmp ult i64 %99, 3950
  br label %101

101:                                              ; preds = %97, %93
  %102 = phi i1 [ false, %93 ], [ %100, %97 ]
  br i1 %102, label %103, label %162

103:                                              ; preds = %101
  %104 = load i32*, i32** %17, align 8
  %105 = load i32, i32* %22, align 4
  %106 = call i32 @sqlite3_column_type(i32* %104, i32 %105)
  store i32 %106, i32* %24, align 4
  %107 = load i32, i32* %24, align 4
  %108 = load i32, i32* @SQLITE_NULL, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %103
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %19, align 8
  br label %116

111:                                              ; preds = %103
  %112 = load i32*, i32** %17, align 8
  %113 = load i32, i32* %22, align 4
  %114 = call i64 @sqlite3_column_text(i32* %112, i32 %113)
  %115 = inttoptr i64 %114 to i8*
  store i8* %115, i8** %19, align 8
  br label %116

116:                                              ; preds = %111, %110
  %117 = load i32, i32* %22, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %116
  %120 = load i32, i32* %23, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %23, align 4
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds [4000 x i8], [4000 x i8]* %21, i64 0, i64 %122
  store i8 44, i8* %123, align 1
  br label %124

124:                                              ; preds = %119, %116
  %125 = load i32, i32* %24, align 4
  %126 = load i32, i32* @SQLITE_TEXT, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %139

128:                                              ; preds = %124
  %129 = load i32, i32* %23, align 4
  %130 = sext i32 %129 to i64
  %131 = sub i64 4000, %130
  %132 = trunc i64 %131 to i32
  %133 = getelementptr inbounds [4000 x i8], [4000 x i8]* %21, i64 0, i64 0
  %134 = load i32, i32* %23, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %133, i64 %135
  %137 = load i8*, i8** %19, align 8
  %138 = call i32 @sqlite3_snprintf(i32 %132, i8* %136, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %137)
  br label %150

139:                                              ; preds = %124
  %140 = load i32, i32* %23, align 4
  %141 = sext i32 %140 to i64
  %142 = sub i64 4000, %141
  %143 = trunc i64 %142 to i32
  %144 = getelementptr inbounds [4000 x i8], [4000 x i8]* %21, i64 0, i64 0
  %145 = load i32, i32* %23, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %144, i64 %146
  %148 = load i8*, i8** %19, align 8
  %149 = call i32 @sqlite3_snprintf(i32 %143, i8* %147, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %148)
  br label %150

150:                                              ; preds = %139, %128
  %151 = getelementptr inbounds [4000 x i8], [4000 x i8]* %21, i64 0, i64 0
  %152 = load i32, i32* %23, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %151, i64 %153
  %155 = call i64 @strlen(i8* %154)
  %156 = trunc i64 %155 to i32
  %157 = load i32, i32* %23, align 4
  %158 = add nsw i32 %157, %156
  store i32 %158, i32* %23, align 4
  br label %159

159:                                              ; preds = %150
  %160 = load i32, i32* %22, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %22, align 4
  br label %93

162:                                              ; preds = %101
  %163 = load i32, i32* %23, align 4
  %164 = sext i32 %163 to i64
  %165 = icmp uge i64 %164, 3900
  br i1 %165, label %166, label %170

166:                                              ; preds = %162
  %167 = load i32, i32* %23, align 4
  %168 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i32 %167)
  %169 = call i32 @exit(i32 1) #3
  unreachable

170:                                              ; preds = %162
  %171 = load i32, i32* %14, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %170
  %174 = getelementptr inbounds [4000 x i8], [4000 x i8]* %21, i64 0, i64 0
  %175 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* %174)
  br label %176

176:                                              ; preds = %173, %170
  %177 = load i32*, i32** %13, align 8
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %177, align 4
  %180 = load i32*, i32** %18, align 8
  %181 = getelementptr inbounds [4000 x i8], [4000 x i8]* %21, i64 0, i64 0
  %182 = load i32, i32* %23, align 4
  %183 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %184 = call i32 @sqlite3_bind_text(i32* %180, i32 1, i8* %181, i32 %182, i32 %183)
  %185 = load i32*, i32** %18, align 8
  %186 = call i64 @sqlite3_step(i32* %185)
  %187 = trunc i64 %186 to i32
  store i32 %187, i32* %15, align 4
  %188 = load i32, i32* %15, align 4
  %189 = load i32, i32* @SQLITE_DONE, align 4
  %190 = icmp eq i32 %188, %189
  %191 = zext i1 %190 to i32
  %192 = call i32 @assert(i32 %191)
  %193 = load i32*, i32** %18, align 8
  %194 = call i32 @sqlite3_reset(i32* %193)
  store i32 %194, i32* %15, align 4
  br label %87

195:                                              ; preds = %87
  %196 = load i32*, i32** %10, align 8
  %197 = load i8*, i8** %11, align 8
  %198 = load i32*, i32** %17, align 8
  %199 = call i32 @sqlite3_sql(i32* %198)
  %200 = call i32 (i32*, i8*, ...) @run_sql(i32* %196, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0), i8* %197, i32 %199)
  %201 = load i32*, i32** %10, align 8
  %202 = load i8*, i8** %11, align 8
  %203 = call i32 (i32*, i8*, ...) @run_sql(i32* %201, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.12, i64 0, i64 0), i8* %202)
  %204 = load i32*, i32** %10, align 8
  %205 = call i32 (i32*, i8*, ...) @run_sql(i32* %204, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  %206 = load i32*, i32** %17, align 8
  %207 = call i32 @sqlite3_finalize(i32* %206)
  store i32* null, i32** %17, align 8
  br label %37

208:                                              ; preds = %70, %50
  %209 = load i32*, i32** %17, align 8
  %210 = call i32 @sqlite3_finalize(i32* %209)
  %211 = load i32*, i32** %18, align 8
  %212 = call i32 @sqlite3_finalize(i32* %211)
  %213 = load i32, i32* %15, align 4
  ret i32 %213
}

declare dso_local i32 @run_sql(i32*, i8*, ...) #1

declare dso_local i32* @prepare_sql(i32*, i8*) #1

declare dso_local i32 @sqlite3_prepare_v2(i32*, i8*, i32, i32**, i8**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @sqlite3_errmsg(i32*) #1

declare dso_local i32 @sqlite3_column_count(i32*) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i32 @sqlite3_column_type(i32*, i32) #1

declare dso_local i64 @sqlite3_column_text(i32*, i32) #1

declare dso_local i32 @sqlite3_snprintf(i32, i8*, i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @sqlite3_bind_text(i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @sqlite3_reset(i32*) #1

declare dso_local i32 @sqlite3_sql(i32*) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
