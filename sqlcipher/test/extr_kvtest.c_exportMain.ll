; ModuleID = '/home/carl/AnghaBench/sqlcipher/test/extr_kvtest.c_exportMain.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/test/extr_kvtest.c_exportMain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"export\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Usage: kvtest export DATABASE DIRECTORY [OPTIONS]\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"-tree\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s/00\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"unknown argument: \22%s\22\0A\00", align 1
@PATH_DIR = common dso_local global i32 0, align 4
@PATH_TREE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"object \22%s\22 is not a directory\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"cannot open database \22%s\22: %s\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"SELECT k, v FROM kv ORDER BY k\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"prepare_v2 failed: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"%s/00/00/00.extra---------------------\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"malloc failed\0A\00", align 1
@SQLITE_ROW = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [5 x i8] c"%06d\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"%02d\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"%02d/%02d\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"%02d/%02d/%02d\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"\0D%s   \00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [33 x i8] c"Wrote only %d of %d bytes to %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @exportMain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exportMain(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %21 = load i8**, i8*** %4, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @strcmp(i8* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %25 = icmp eq i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i32, i32* %3, align 4
  %29 = icmp sge i32 %28, 3
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i32, i32* %3, align 4
  %33 = icmp slt i32 %32, 4
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = call i32 (i8*, ...) @fatalError(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %2
  %37 = load i8**, i8*** %4, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 2
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %5, align 8
  %40 = load i8**, i8*** %4, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 3
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %6, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 @kvtest_mkdir(i8* %43)
  store i32 4, i32* %15, align 4
  br label %45

45:                                               ; preds = %87, %36
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* %3, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %90

49:                                               ; preds = %45
  %50 = load i8**, i8*** %4, align 8
  %51 = load i32, i32* %15, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %16, align 8
  %55 = load i8*, i8** %16, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 45
  br i1 %59, label %60, label %69

60:                                               ; preds = %49
  %61 = load i8*, i8** %16, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 45
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load i8*, i8** %16, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %16, align 8
  br label %69

69:                                               ; preds = %66, %60, %49
  %70 = load i8*, i8** %16, align 8
  %71 = call i64 @strcmp(i8* %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %69
  %74 = load i8*, i8** %6, align 8
  %75 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %74)
  store i8* %75, i8** %12, align 8
  %76 = load i8*, i8** %12, align 8
  %77 = call i32 @kvtest_mkdir(i8* %76)
  %78 = load i8*, i8** %12, align 8
  %79 = call i32 @sqlite3_free(i8* %78)
  br label %87

80:                                               ; preds = %69
  %81 = load i8**, i8*** %4, align 8
  %82 = load i32, i32* %15, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %81, i64 %83
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 (i8*, ...) @fatalError(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* %85)
  br label %87

87:                                               ; preds = %80, %73
  %88 = load i32, i32* %15, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %15, align 4
  br label %45

90:                                               ; preds = %45
  %91 = load i8*, i8** %6, align 8
  %92 = call i32 @pathType(i8* %91)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* @PATH_DIR, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %90
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* @PATH_TREE, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  %101 = load i8*, i8** %6, align 8
  %102 = call i32 (i8*, ...) @fatalError(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* %101)
  br label %103

103:                                              ; preds = %100, %96, %90
  %104 = load i8*, i8** %5, align 8
  %105 = call i32 @sqlite3_open(i8* %104, i32** %7)
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* %9, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = load i8*, i8** %5, align 8
  %110 = load i32*, i32** %7, align 8
  %111 = call i32 @sqlite3_errmsg(i32* %110)
  %112 = call i32 (i8*, ...) @fatalError(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i8* %109, i32 %111)
  br label %113

113:                                              ; preds = %108, %103
  %114 = load i32*, i32** %7, align 8
  %115 = call i32 @sqlite3_prepare_v2(i32* %114, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 -1, i32** %8, i32 0)
  store i32 %115, i32* %9, align 4
  %116 = load i32, i32* %9, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %113
  %119 = load i32*, i32** %7, align 8
  %120 = call i32 @sqlite3_errmsg(i32* %119)
  %121 = call i32 (i8*, ...) @fatalError(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %120)
  br label %122

122:                                              ; preds = %118, %113
  %123 = load i8*, i8** %6, align 8
  %124 = call i64 @strlen(i8* %123)
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %11, align 4
  %126 = load i8*, i8** %6, align 8
  %127 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i8* %126)
  store i8* %127, i8** %12, align 8
  %128 = load i8*, i8** %12, align 8
  %129 = icmp eq i8* %128, null
  br i1 %129, label %130, label %132

130:                                              ; preds = %122
  %131 = call i32 (i8*, ...) @fatalError(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  br label %132

132:                                              ; preds = %130, %122
  %133 = load i8*, i8** %12, align 8
  %134 = load i32, i32* %11, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %133, i64 %135
  %137 = getelementptr inbounds i8, i8* %136, i64 1
  store i8* %137, i8** %13, align 8
  br label %138

138:                                              ; preds = %204, %132
  %139 = load i32*, i32** %8, align 8
  %140 = call i64 @sqlite3_step(i32* %139)
  %141 = load i64, i64* @SQLITE_ROW, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %205

143:                                              ; preds = %138
  %144 = load i32*, i32** %8, align 8
  %145 = call i32 @sqlite3_column_int(i32* %144, i32 0)
  store i32 %145, i32* %17, align 4
  %146 = load i32*, i32** %8, align 8
  %147 = call i64 @sqlite3_column_bytes(i32* %146, i32 1)
  store i64 %147, i64* %18, align 8
  %148 = load i32*, i32** %8, align 8
  %149 = call i8* @sqlite3_column_blob(i32* %148, i32 1)
  store i8* %149, i8** %19, align 8
  %150 = load i32, i32* %10, align 4
  %151 = load i32, i32* @PATH_DIR, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %143
  %154 = load i8*, i8** %13, align 8
  %155 = load i32, i32* %17, align 4
  %156 = call i32 (i32, i8*, i8*, i32, ...) @sqlite3_snprintf(i32 20, i8* %154, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %155)
  br label %182

157:                                              ; preds = %143
  %158 = load i8*, i8** %13, align 8
  %159 = load i32, i32* %17, align 4
  %160 = sdiv i32 %159, 10000
  %161 = call i32 (i32, i8*, i8*, i32, ...) @sqlite3_snprintf(i32 20, i8* %158, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32 %160)
  %162 = load i8*, i8** %12, align 8
  %163 = call i32 @kvtest_mkdir(i8* %162)
  %164 = load i8*, i8** %13, align 8
  %165 = load i32, i32* %17, align 4
  %166 = sdiv i32 %165, 10000
  %167 = load i32, i32* %17, align 4
  %168 = sdiv i32 %167, 100
  %169 = srem i32 %168, 100
  %170 = call i32 (i32, i8*, i8*, i32, ...) @sqlite3_snprintf(i32 20, i8* %164, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %166, i32 %169)
  %171 = load i8*, i8** %12, align 8
  %172 = call i32 @kvtest_mkdir(i8* %171)
  %173 = load i8*, i8** %13, align 8
  %174 = load i32, i32* %17, align 4
  %175 = sdiv i32 %174, 10000
  %176 = load i32, i32* %17, align 4
  %177 = sdiv i32 %176, 100
  %178 = srem i32 %177, 100
  %179 = load i32, i32* %17, align 4
  %180 = srem i32 %179, 100
  %181 = call i32 (i32, i8*, i8*, i32, ...) @sqlite3_snprintf(i32 20, i8* %173, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i32 %175, i32 %178, i32 %180)
  br label %182

182:                                              ; preds = %157, %153
  %183 = load i8*, i8** %12, align 8
  %184 = call i32* @fopen(i8* %183, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  store i32* %184, i32** %20, align 8
  %185 = load i8*, i8** %19, align 8
  %186 = load i64, i64* %18, align 8
  %187 = load i32*, i32** %20, align 8
  %188 = call i64 @fwrite(i8* %185, i32 1, i64 %186, i32* %187)
  store i64 %188, i64* %14, align 8
  %189 = load i32*, i32** %20, align 8
  %190 = call i32 @fclose(i32* %189)
  %191 = load i8*, i8** %13, align 8
  %192 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i8* %191)
  %193 = load i32, i32* @stdout, align 4
  %194 = call i32 @fflush(i32 %193)
  %195 = load i64, i64* %14, align 8
  %196 = load i64, i64* %18, align 8
  %197 = icmp ne i64 %195, %196
  br i1 %197, label %198, label %204

198:                                              ; preds = %182
  %199 = load i64, i64* %14, align 8
  %200 = trunc i64 %199 to i32
  %201 = load i64, i64* %18, align 8
  %202 = load i8*, i8** %12, align 8
  %203 = call i32 (i8*, ...) @fatalError(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0), i32 %200, i64 %201, i8* %202)
  br label %204

204:                                              ; preds = %198, %182
  br label %138

205:                                              ; preds = %138
  %206 = load i32*, i32** %8, align 8
  %207 = call i32 @sqlite3_finalize(i32* %206)
  %208 = load i32*, i32** %7, align 8
  %209 = call i32 @sqlite3_close(i32* %208)
  %210 = load i8*, i8** %12, align 8
  %211 = call i32 @sqlite3_free(i8* %210)
  %212 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fatalError(i8*, ...) #1

declare dso_local i32 @kvtest_mkdir(i8*) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i8*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @pathType(i8*) #1

declare dso_local i32 @sqlite3_open(i8*, i32**) #1

declare dso_local i32 @sqlite3_errmsg(i32*) #1

declare dso_local i32 @sqlite3_prepare_v2(i32*, i8*, i32, i32**, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i32 @sqlite3_column_int(i32*, i32) #1

declare dso_local i64 @sqlite3_column_bytes(i32*, i32) #1

declare dso_local i8* @sqlite3_column_blob(i32*, i32) #1

declare dso_local i32 @sqlite3_snprintf(i32, i8*, i8*, i32, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @fwrite(i8*, i32, i64, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i32 @sqlite3_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
