; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_main.c_do_speed_test2.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_main.c_do_speed_test2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Option = type { i8*, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.Option.0 = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"-repeat\00", align 1
@ST_REPEAT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"-write\00", align 1
@ST_WRITE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"-pause\00", align 1
@ST_PAUSE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"-fetch\00", align 1
@ST_FETCH = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"-scan\00", align 1
@ST_SCAN = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"-nscan\00", align 1
@ST_NSCAN = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"-keysize\00", align 1
@ST_KEYSIZE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [9 x i8] c"-valsize\00", align 1
@ST_VALSIZE = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [7 x i8] c"-trans\00", align 1
@ST_TRANS = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [8 x i8] c"-system\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@TEST_DATASOURCE_RANDOM = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"switch\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"option %s requires an argument\0A\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c" %s=%d\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c" %s=\22%s\22\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"testdb.lsm\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"%d %d %d\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@do_speed_write_hook2 = common dso_local global i32 0, align 4
@j = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_speed_test2(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [12 x %struct.Option], align 16
  %7 = alloca i32, align 4
  %8 = alloca [9 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_5__, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %24 = getelementptr inbounds [12 x %struct.Option], [12 x %struct.Option]* %6, i64 0, i64 0
  %25 = getelementptr inbounds %struct.Option, %struct.Option* %24, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %25, align 16
  %26 = getelementptr inbounds %struct.Option, %struct.Option* %24, i32 0, i32 1
  %27 = load i64, i64* @ST_REPEAT, align 8
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %26, align 8
  %29 = getelementptr inbounds %struct.Option, %struct.Option* %24, i32 0, i32 2
  store i32 10, i32* %29, align 4
  %30 = getelementptr inbounds %struct.Option, %struct.Option* %24, i64 1
  %31 = getelementptr inbounds %struct.Option, %struct.Option* %30, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %31, align 16
  %32 = getelementptr inbounds %struct.Option, %struct.Option* %30, i32 0, i32 1
  %33 = load i64, i64* @ST_WRITE, align 8
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %32, align 8
  %35 = getelementptr inbounds %struct.Option, %struct.Option* %30, i32 0, i32 2
  store i32 10000, i32* %35, align 4
  %36 = getelementptr inbounds %struct.Option, %struct.Option* %30, i64 1
  %37 = getelementptr inbounds %struct.Option, %struct.Option* %36, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %37, align 16
  %38 = getelementptr inbounds %struct.Option, %struct.Option* %36, i32 0, i32 1
  %39 = load i64, i64* @ST_PAUSE, align 8
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %38, align 8
  %41 = getelementptr inbounds %struct.Option, %struct.Option* %36, i32 0, i32 2
  store i32 0, i32* %41, align 4
  %42 = getelementptr inbounds %struct.Option, %struct.Option* %36, i64 1
  %43 = getelementptr inbounds %struct.Option, %struct.Option* %42, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %43, align 16
  %44 = getelementptr inbounds %struct.Option, %struct.Option* %42, i32 0, i32 1
  %45 = load i64, i64* @ST_FETCH, align 8
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %44, align 8
  %47 = getelementptr inbounds %struct.Option, %struct.Option* %42, i32 0, i32 2
  store i32 0, i32* %47, align 4
  %48 = getelementptr inbounds %struct.Option, %struct.Option* %42, i64 1
  %49 = getelementptr inbounds %struct.Option, %struct.Option* %48, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %49, align 16
  %50 = getelementptr inbounds %struct.Option, %struct.Option* %48, i32 0, i32 1
  %51 = load i64, i64* @ST_SCAN, align 8
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %50, align 8
  %53 = getelementptr inbounds %struct.Option, %struct.Option* %48, i32 0, i32 2
  store i32 0, i32* %53, align 4
  %54 = getelementptr inbounds %struct.Option, %struct.Option* %48, i64 1
  %55 = getelementptr inbounds %struct.Option, %struct.Option* %54, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %55, align 16
  %56 = getelementptr inbounds %struct.Option, %struct.Option* %54, i32 0, i32 1
  %57 = load i64, i64* @ST_NSCAN, align 8
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %56, align 8
  %59 = getelementptr inbounds %struct.Option, %struct.Option* %54, i32 0, i32 2
  store i32 0, i32* %59, align 4
  %60 = getelementptr inbounds %struct.Option, %struct.Option* %54, i64 1
  %61 = getelementptr inbounds %struct.Option, %struct.Option* %60, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8** %61, align 16
  %62 = getelementptr inbounds %struct.Option, %struct.Option* %60, i32 0, i32 1
  %63 = load i64, i64* @ST_KEYSIZE, align 8
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %62, align 8
  %65 = getelementptr inbounds %struct.Option, %struct.Option* %60, i32 0, i32 2
  store i32 12, i32* %65, align 4
  %66 = getelementptr inbounds %struct.Option, %struct.Option* %60, i64 1
  %67 = getelementptr inbounds %struct.Option, %struct.Option* %66, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8** %67, align 16
  %68 = getelementptr inbounds %struct.Option, %struct.Option* %66, i32 0, i32 1
  %69 = load i64, i64* @ST_VALSIZE, align 8
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %68, align 8
  %71 = getelementptr inbounds %struct.Option, %struct.Option* %66, i32 0, i32 2
  store i32 100, i32* %71, align 4
  %72 = getelementptr inbounds %struct.Option, %struct.Option* %66, i64 1
  %73 = getelementptr inbounds %struct.Option, %struct.Option* %72, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %73, align 16
  %74 = getelementptr inbounds %struct.Option, %struct.Option* %72, i32 0, i32 1
  %75 = load i64, i64* @ST_TRANS, align 8
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %74, align 8
  %77 = getelementptr inbounds %struct.Option, %struct.Option* %72, i32 0, i32 2
  store i32 0, i32* %77, align 4
  %78 = getelementptr inbounds %struct.Option, %struct.Option* %72, i64 1
  %79 = getelementptr inbounds %struct.Option, %struct.Option* %78, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8** %79, align 16
  %80 = getelementptr inbounds %struct.Option, %struct.Option* %78, i32 0, i32 1
  store i32 -1, i32* %80, align 8
  %81 = getelementptr inbounds %struct.Option, %struct.Option* %78, i32 0, i32 2
  store i32 0, i32* %81, align 4
  %82 = getelementptr inbounds %struct.Option, %struct.Option* %78, i64 1
  %83 = getelementptr inbounds %struct.Option, %struct.Option* %82, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8** %83, align 16
  %84 = getelementptr inbounds %struct.Option, %struct.Option* %82, i32 0, i32 1
  store i32 -2, i32* %84, align 8
  %85 = getelementptr inbounds %struct.Option, %struct.Option* %82, i32 0, i32 2
  store i32 0, i32* %85, align 4
  %86 = getelementptr inbounds %struct.Option, %struct.Option* %82, i64 1
  %87 = getelementptr inbounds %struct.Option, %struct.Option* %86, i32 0, i32 0
  store i8* null, i8** %87, align 16
  %88 = getelementptr inbounds %struct.Option, %struct.Option* %86, i32 0, i32 1
  store i32 0, i32* %88, align 8
  %89 = getelementptr inbounds %struct.Option, %struct.Option* %86, i32 0, i32 2
  store i32 0, i32* %89, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %90 = bitcast %struct.TYPE_5__* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %90, i8 0, i64 36, i1 false)
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %92 = load i32, i32* @TEST_DATASOURCE_RANDOM, align 4
  store i32 %92, i32* %91, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), i8** %15, align 8
  store i32 1, i32* %16, align 4
  store i32* null, i32** %17, align 8
  store i32 0, i32* %7, align 4
  br label %93

93:                                               ; preds = %120, %2
  %94 = load i32, i32* %7, align 4
  %95 = getelementptr inbounds [12 x %struct.Option], [12 x %struct.Option]* %6, i64 0, i64 0
  %96 = bitcast %struct.Option* %95 to %struct.Option.0*
  %97 = call i32 @ArraySize(%struct.Option.0* %96)
  %98 = icmp slt i32 %94, %97
  br i1 %98, label %99, label %123

99:                                               ; preds = %93
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [12 x %struct.Option], [12 x %struct.Option]* %6, i64 0, i64 %101
  %103 = getelementptr inbounds %struct.Option, %struct.Option* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 16
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %119

106:                                              ; preds = %99
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [12 x %struct.Option], [12 x %struct.Option]* %6, i64 0, i64 %108
  %110 = getelementptr inbounds %struct.Option, %struct.Option* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [12 x %struct.Option], [12 x %struct.Option]* %6, i64 0, i64 %113
  %115 = getelementptr inbounds %struct.Option, %struct.Option* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 %117
  store i32 %111, i32* %118, align 4
  br label %119

119:                                              ; preds = %106, %99
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %7, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %7, align 4
  br label %93

123:                                              ; preds = %93
  store i32 0, i32* %7, align 4
  br label %124

124:                                              ; preds = %192, %123
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* %4, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %195

128:                                              ; preds = %124
  %129 = getelementptr inbounds [12 x %struct.Option], [12 x %struct.Option]* %6, i64 0, i64 0
  %130 = bitcast %struct.Option* %129 to %struct.Option.0*
  %131 = load i8**, i8*** %5, align 8
  %132 = load i32, i32* %7, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8*, i8** %131, i64 %133
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 @testArgSelect(%struct.Option.0* %130, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8* %135, i32* %18)
  store i32 %136, i32* %9, align 4
  %137 = load i32, i32* %9, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %128
  %140 = load i32, i32* %9, align 4
  store i32 %140, i32* %3, align 4
  br label %464

141:                                              ; preds = %128
  %142 = load i32, i32* %18, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [12 x %struct.Option], [12 x %struct.Option]* %6, i64 0, i64 %143
  %145 = getelementptr inbounds %struct.Option, %struct.Option* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = icmp eq i32 %146, -2
  br i1 %147, label %148, label %150

148:                                              ; preds = %141
  %149 = call i32 (...) @print_speed_test_help()
  store i32 0, i32* %3, align 4
  br label %464

150:                                              ; preds = %141
  %151 = load i32, i32* %7, align 4
  %152 = add nsw i32 %151, 1
  %153 = load i32, i32* %4, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %162

155:                                              ; preds = %150
  %156 = load i32, i32* %18, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [12 x %struct.Option], [12 x %struct.Option]* %6, i64 0, i64 %157
  %159 = getelementptr inbounds %struct.Option, %struct.Option* %158, i32 0, i32 0
  %160 = load i8*, i8** %159, align 16
  %161 = call i32 @testPrintError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0), i8* %160)
  store i32 1, i32* %3, align 4
  br label %464

162:                                              ; preds = %150
  %163 = load i32, i32* %18, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [12 x %struct.Option], [12 x %struct.Option]* %6, i64 0, i64 %164
  %166 = getelementptr inbounds %struct.Option, %struct.Option* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = icmp sge i32 %167, 0
  br i1 %168, label %169, label %184

169:                                              ; preds = %162
  %170 = load i8**, i8*** %5, align 8
  %171 = load i32, i32* %7, align 4
  %172 = add nsw i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8*, i8** %170, i64 %173
  %175 = load i8*, i8** %174, align 8
  %176 = call i32 @atoi(i8* %175)
  %177 = load i32, i32* %18, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [12 x %struct.Option], [12 x %struct.Option]* %6, i64 0, i64 %178
  %180 = getelementptr inbounds %struct.Option, %struct.Option* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 %182
  store i32 %176, i32* %183, align 4
  br label %191

184:                                              ; preds = %162
  %185 = load i8**, i8*** %5, align 8
  %186 = load i32, i32* %7, align 4
  %187 = add nsw i32 %186, 1
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8*, i8** %185, i64 %188
  %190 = load i8*, i8** %189, align 8
  store i8* %190, i8** %15, align 8
  store i32 0, i32* %16, align 4
  br label %191

191:                                              ; preds = %184, %169
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %7, align 4
  %194 = add nsw i32 %193, 2
  store i32 %194, i32* %7, align 4
  br label %124

195:                                              ; preds = %124
  %196 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %197

197:                                              ; preds = %252, %195
  %198 = load i32, i32* %7, align 4
  %199 = getelementptr inbounds [12 x %struct.Option], [12 x %struct.Option]* %6, i64 0, i64 0
  %200 = bitcast %struct.Option* %199 to %struct.Option.0*
  %201 = call i32 @ArraySize(%struct.Option.0* %200)
  %202 = icmp slt i32 %198, %201
  br i1 %202, label %203, label %255

203:                                              ; preds = %197
  %204 = load i32, i32* %7, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [12 x %struct.Option], [12 x %struct.Option]* %6, i64 0, i64 %205
  %207 = getelementptr inbounds %struct.Option, %struct.Option* %206, i32 0, i32 0
  %208 = load i8*, i8** %207, align 16
  %209 = icmp ne i8* %208, null
  br i1 %209, label %210, label %251

210:                                              ; preds = %203
  %211 = load i32, i32* %7, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [12 x %struct.Option], [12 x %struct.Option]* %6, i64 0, i64 %212
  %214 = getelementptr inbounds %struct.Option, %struct.Option* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = icmp sge i32 %215, 0
  br i1 %216, label %217, label %233

217:                                              ; preds = %210
  %218 = load i32, i32* %7, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [12 x %struct.Option], [12 x %struct.Option]* %6, i64 0, i64 %219
  %221 = getelementptr inbounds %struct.Option, %struct.Option* %220, i32 0, i32 0
  %222 = load i8*, i8** %221, align 16
  %223 = getelementptr inbounds i8, i8* %222, i64 1
  %224 = load i32, i32* %7, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [12 x %struct.Option], [12 x %struct.Option]* %6, i64 0, i64 %225
  %227 = getelementptr inbounds %struct.Option, %struct.Option* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 8
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8* %223, i32 %231)
  br label %250

233:                                              ; preds = %210
  %234 = load i32, i32* %7, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds [12 x %struct.Option], [12 x %struct.Option]* %6, i64 0, i64 %235
  %237 = getelementptr inbounds %struct.Option, %struct.Option* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 8
  %239 = icmp eq i32 %238, -1
  br i1 %239, label %240, label %249

240:                                              ; preds = %233
  %241 = load i32, i32* %7, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds [12 x %struct.Option], [12 x %struct.Option]* %6, i64 0, i64 %242
  %244 = getelementptr inbounds %struct.Option, %struct.Option* %243, i32 0, i32 0
  %245 = load i8*, i8** %244, align 16
  %246 = getelementptr inbounds i8, i8* %245, i64 1
  %247 = load i8*, i8** %15, align 8
  %248 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i8* %246, i8* %247)
  br label %249

249:                                              ; preds = %240, %233
  br label %250

250:                                              ; preds = %249, %217
  br label %251

251:                                              ; preds = %250, %203
  br label %252

252:                                              ; preds = %251
  %253 = load i32, i32* %7, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %7, align 4
  br label %197

255:                                              ; preds = %197
  %256 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  %257 = load i64, i64* @ST_KEYSIZE, align 8
  %258 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  store i32 %259, i32* %260, align 4
  %261 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store i32 %259, i32* %261, align 4
  %262 = load i64, i64* @ST_VALSIZE, align 8
  %263 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 3
  store i32 %264, i32* %265, align 4
  %266 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 2
  store i32 %264, i32* %266, align 4
  %267 = call i32* @testDatasourceNew(%struct.TYPE_5__* %14)
  store i32* %267, i32** %13, align 8
  %268 = load i64, i64* @ST_WRITE, align 8
  %269 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %272, label %273

272:                                              ; preds = %255
  store i32 1, i32* %10, align 4
  br label %273

273:                                              ; preds = %272, %255
  %274 = load i32, i32* %16, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %283

276:                                              ; preds = %273
  %277 = load i8*, i8** %15, align 8
  %278 = load i32, i32* %10, align 4
  %279 = icmp ne i32 %278, 0
  %280 = xor i1 %279, true
  %281 = zext i1 %280 to i32
  %282 = call i32 @tdb_lsm_open(i8* %277, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i32 %281, i32** %12)
  store i32 %282, i32* %9, align 4
  br label %290

283:                                              ; preds = %273
  %284 = load i8*, i8** %15, align 8
  %285 = load i32, i32* %10, align 4
  %286 = icmp ne i32 %285, 0
  %287 = xor i1 %286, true
  %288 = zext i1 %287 to i32
  %289 = call i32* @testOpen(i8* %284, i32 %288, i32* %9)
  store i32* %289, i32** %12, align 8
  br label %290

290:                                              ; preds = %283, %276
  %291 = load i32, i32* %9, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %295

293:                                              ; preds = %290
  %294 = load i32, i32* %9, align 4
  store i32 %294, i32* %3, align 4
  br label %464

295:                                              ; preds = %290
  %296 = load i32, i32* %10, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %301

298:                                              ; preds = %295
  %299 = load i32*, i32** %12, align 8
  %300 = call i32 @testCountDatabase(i32* %299)
  store i32 %300, i32* %11, align 4
  br label %301

301:                                              ; preds = %298, %295
  store i32 0, i32* %7, align 4
  br label %302

302:                                              ; preds = %448, %301
  %303 = load i32, i32* %7, align 4
  %304 = load i64, i64* @ST_REPEAT, align 8
  %305 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 %304
  %306 = load i32, i32* %305, align 4
  %307 = icmp slt i32 %303, %306
  br i1 %307, label %308, label %311

308:                                              ; preds = %302
  %309 = load i32, i32* %9, align 4
  %310 = icmp eq i32 %309, 0
  br label %311

311:                                              ; preds = %308, %302
  %312 = phi i1 [ false, %302 ], [ %310, %308 ]
  br i1 %312, label %313, label %451

313:                                              ; preds = %311
  %314 = load i64, i64* @ST_WRITE, align 8
  %315 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 %314
  %316 = load i32, i32* %315, align 4
  store i32 %316, i32* %22, align 4
  %317 = load i32, i32* %10, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %320

319:                                              ; preds = %313
  store i32 0, i32* %19, align 4
  br label %349

320:                                              ; preds = %313
  %321 = call i32 (...) @testTimeInit()
  %322 = load i64, i64* @ST_TRANS, align 8
  %323 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 %322
  %324 = load i32, i32* %323, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %329

326:                                              ; preds = %320
  %327 = load i32*, i32** %12, align 8
  %328 = call i32 @testBegin(i32* %327, i32 2, i32* %9)
  br label %329

329:                                              ; preds = %326, %320
  %330 = load i32*, i32** %12, align 8
  %331 = load i32*, i32** %13, align 8
  %332 = load i32, i32* %7, align 4
  %333 = load i32, i32* %22, align 4
  %334 = mul nsw i32 %332, %333
  %335 = load i32, i32* %22, align 4
  %336 = call i32 @testWriteDatasourceRange(i32* %330, i32* %331, i32 %334, i32 %335, i32* %9)
  %337 = load i64, i64* @ST_TRANS, align 8
  %338 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 %337
  %339 = load i32, i32* %338, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %344

341:                                              ; preds = %329
  %342 = load i32*, i32** %12, align 8
  %343 = call i32 @testCommit(i32* %342, i32 0, i32* %9)
  br label %344

344:                                              ; preds = %341, %329
  %345 = call i32 (...) @testTimeGet()
  store i32 %345, i32* %19, align 4
  %346 = load i32, i32* %22, align 4
  %347 = load i32, i32* %11, align 4
  %348 = add nsw i32 %347, %346
  store i32 %348, i32* %11, align 4
  br label %349

349:                                              ; preds = %344, %319
  %350 = load i64, i64* @ST_PAUSE, align 8
  %351 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 %350
  %352 = load i32, i32* %351, align 4
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %380

354:                                              ; preds = %349
  %355 = load i64, i64* @ST_PAUSE, align 8
  %356 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 %355
  %357 = load i32, i32* %356, align 4
  %358 = sdiv i32 %357, 1000
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %366

360:                                              ; preds = %354
  %361 = load i64, i64* @ST_PAUSE, align 8
  %362 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 %361
  %363 = load i32, i32* %362, align 4
  %364 = sdiv i32 %363, 1000
  %365 = call i32 @sleep(i32 %364)
  br label %366

366:                                              ; preds = %360, %354
  %367 = load i64, i64* @ST_PAUSE, align 8
  %368 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 %367
  %369 = load i32, i32* %368, align 4
  %370 = srem i32 %369, 1000
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %379

372:                                              ; preds = %366
  %373 = load i64, i64* @ST_PAUSE, align 8
  %374 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 %373
  %375 = load i32, i32* %374, align 4
  %376 = srem i32 %375, 1000
  %377 = mul nsw i32 1000, %376
  %378 = call i32 @usleep(i32 %377)
  br label %379

379:                                              ; preds = %372, %366
  br label %380

380:                                              ; preds = %379, %349
  %381 = load i64, i64* @ST_FETCH, align 8
  %382 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 %381
  %383 = load i32, i32* %382, align 4
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %427

385:                                              ; preds = %380
  %386 = call i32 (...) @testTimeInit()
  %387 = load i64, i64* @ST_TRANS, align 8
  %388 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 %387
  %389 = load i32, i32* %388, align 4
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %394

391:                                              ; preds = %385
  %392 = load i32*, i32** %12, align 8
  %393 = call i32 @testBegin(i32* %392, i32 1, i32* %9)
  br label %394

394:                                              ; preds = %391, %385
  store i32 0, i32* %21, align 4
  br label %395

395:                                              ; preds = %414, %394
  %396 = load i32, i32* %21, align 4
  %397 = load i64, i64* @ST_FETCH, align 8
  %398 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 %397
  %399 = load i32, i32* %398, align 4
  %400 = icmp slt i32 %396, %399
  br i1 %400, label %401, label %417

401:                                              ; preds = %395
  %402 = load i32, i32* %7, align 4
  %403 = load i32, i32* %22, align 4
  %404 = mul nsw i32 %402, %403
  %405 = load i32, i32* %21, align 4
  %406 = add nsw i32 %404, %405
  %407 = call i32 @testPrngValue(i32 %406)
  %408 = load i32, i32* %11, align 4
  %409 = srem i32 %407, %408
  store i32 %409, i32* %23, align 4
  %410 = load i32*, i32** %12, align 8
  %411 = load i32*, i32** %13, align 8
  %412 = load i32, i32* %23, align 4
  %413 = call i32 @testDatasourceFetch(i32* %410, i32* %411, i32 %412, i32* %9)
  br label %414

414:                                              ; preds = %401
  %415 = load i32, i32* %21, align 4
  %416 = add nsw i32 %415, 1
  store i32 %416, i32* %21, align 4
  br label %395

417:                                              ; preds = %395
  %418 = load i64, i64* @ST_TRANS, align 8
  %419 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 %418
  %420 = load i32, i32* %419, align 4
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %425

422:                                              ; preds = %417
  %423 = load i32*, i32** %12, align 8
  %424 = call i32 @testCommit(i32* %423, i32 0, i32* %9)
  br label %425

425:                                              ; preds = %422, %417
  %426 = call i32 (...) @testTimeGet()
  store i32 %426, i32* %20, align 4
  br label %428

427:                                              ; preds = %380
  store i32 0, i32* %20, align 4
  br label %428

428:                                              ; preds = %427, %425
  %429 = load i32, i32* %7, align 4
  %430 = load i64, i64* @ST_REPEAT, align 8
  %431 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 %430
  %432 = load i32, i32* %431, align 4
  %433 = sub nsw i32 %432, 1
  %434 = icmp eq i32 %429, %433
  br i1 %434, label %435, label %441

435:                                              ; preds = %428
  %436 = call i32 (...) @testTimeInit()
  %437 = call i32 @testClose(i32** %12)
  %438 = call i32 (...) @testTimeGet()
  %439 = load i32, i32* %19, align 4
  %440 = add nsw i32 %439, %438
  store i32 %440, i32* %19, align 4
  br label %441

441:                                              ; preds = %435, %428
  %442 = load i32, i32* %7, align 4
  %443 = load i32, i32* %19, align 4
  %444 = load i32, i32* %20, align 4
  %445 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i32 %442, i32 %443, i32 %444)
  %446 = load i32, i32* @stdout, align 4
  %447 = call i32 @fflush(i32 %446)
  br label %448

448:                                              ; preds = %441
  %449 = load i32, i32* %7, align 4
  %450 = add nsw i32 %449, 1
  store i32 %450, i32* %7, align 4
  br label %302

451:                                              ; preds = %311
  %452 = call i32 @testClose(i32** %12)
  %453 = load i32*, i32** %13, align 8
  %454 = call i32 @testDatasourceFree(i32* %453)
  %455 = load i32*, i32** %17, align 8
  %456 = icmp ne i32* %455, null
  br i1 %456, label %457, label %462

457:                                              ; preds = %451
  %458 = load i32*, i32** %17, align 8
  %459 = call i32 @flushPrev(i32* %458)
  %460 = load i32*, i32** %17, align 8
  %461 = call i32 @fclose(i32* %460)
  br label %462

462:                                              ; preds = %457, %451
  %463 = load i32, i32* %9, align 4
  store i32 %463, i32* %3, align 4
  br label %464

464:                                              ; preds = %462, %293, %155, %148, %139
  %465 = load i32, i32* %3, align 4
  ret i32 %465
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ArraySize(%struct.Option.0*) #2

declare dso_local i32 @testArgSelect(%struct.Option.0*, i8*, i8*, i32*) #2

declare dso_local i32 @print_speed_test_help(...) #2

declare dso_local i32 @testPrintError(i8*, i8*) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32* @testDatasourceNew(%struct.TYPE_5__*) #2

declare dso_local i32 @tdb_lsm_open(i8*, i8*, i32, i32**) #2

declare dso_local i32* @testOpen(i8*, i32, i32*) #2

declare dso_local i32 @testCountDatabase(i32*) #2

declare dso_local i32 @testTimeInit(...) #2

declare dso_local i32 @testBegin(i32*, i32, i32*) #2

declare dso_local i32 @testWriteDatasourceRange(i32*, i32*, i32, i32, i32*) #2

declare dso_local i32 @testCommit(i32*, i32, i32*) #2

declare dso_local i32 @testTimeGet(...) #2

declare dso_local i32 @sleep(i32) #2

declare dso_local i32 @usleep(i32) #2

declare dso_local i32 @testPrngValue(i32) #2

declare dso_local i32 @testDatasourceFetch(i32*, i32*, i32, i32*) #2

declare dso_local i32 @testClose(i32**) #2

declare dso_local i32 @fflush(i32) #2

declare dso_local i32 @testDatasourceFree(i32*) #2

declare dso_local i32 @flushPrev(i32*) #2

declare dso_local i32 @fclose(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
