; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_func.c_do_show.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_func.c_do_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Option = type { i8*, i32, i32 }
%struct.Option.0 = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"array\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"array-pages\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"blocksize\00", align 1
@LSM_CONFIG_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"pagesize\00", align 1
@LSM_CONFIG_PAGE_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"freelist\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"page-ascii\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"page-hex\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"-config\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"option\00", align 1
@LSM_OK = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [18 x i8] c"lsm_new(): rc=%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"lsm_open(): rc=%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"no chance\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"DATABASE ?array|page-ascii|page-hex PGNO?\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_show(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca [8 x %struct.Option], align 16
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 131, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %17 = getelementptr inbounds [8 x %struct.Option], [8 x %struct.Option]* %13, i64 0, i64 0
  %18 = getelementptr inbounds %struct.Option, %struct.Option* %17, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %18, align 16
  %19 = getelementptr inbounds %struct.Option, %struct.Option* %17, i32 0, i32 1
  store i32 0, i32* %19, align 8
  %20 = getelementptr inbounds %struct.Option, %struct.Option* %17, i32 0, i32 2
  store i32 132, i32* %20, align 4
  %21 = getelementptr inbounds %struct.Option, %struct.Option* %17, i64 1
  %22 = getelementptr inbounds %struct.Option, %struct.Option* %21, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %22, align 16
  %23 = getelementptr inbounds %struct.Option, %struct.Option* %21, i32 0, i32 1
  store i32 0, i32* %23, align 8
  %24 = getelementptr inbounds %struct.Option, %struct.Option* %21, i32 0, i32 2
  store i32 133, i32* %24, align 4
  %25 = getelementptr inbounds %struct.Option, %struct.Option* %21, i64 1
  %26 = getelementptr inbounds %struct.Option, %struct.Option* %25, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %26, align 16
  %27 = getelementptr inbounds %struct.Option, %struct.Option* %25, i32 0, i32 1
  store i32 1, i32* %27, align 8
  %28 = getelementptr inbounds %struct.Option, %struct.Option* %25, i32 0, i32 2
  %29 = load i32, i32* @LSM_CONFIG_BLOCK_SIZE, align 4
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds %struct.Option, %struct.Option* %25, i64 1
  %31 = getelementptr inbounds %struct.Option, %struct.Option* %30, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8** %31, align 16
  %32 = getelementptr inbounds %struct.Option, %struct.Option* %30, i32 0, i32 1
  store i32 1, i32* %32, align 8
  %33 = getelementptr inbounds %struct.Option, %struct.Option* %30, i32 0, i32 2
  %34 = load i32, i32* @LSM_CONFIG_PAGE_SIZE, align 4
  store i32 %34, i32* %33, align 4
  %35 = getelementptr inbounds %struct.Option, %struct.Option* %30, i64 1
  %36 = getelementptr inbounds %struct.Option, %struct.Option* %35, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %36, align 16
  %37 = getelementptr inbounds %struct.Option, %struct.Option* %35, i32 0, i32 1
  store i32 0, i32* %37, align 8
  %38 = getelementptr inbounds %struct.Option, %struct.Option* %35, i32 0, i32 2
  store i32 130, i32* %38, align 4
  %39 = getelementptr inbounds %struct.Option, %struct.Option* %35, i64 1
  %40 = getelementptr inbounds %struct.Option, %struct.Option* %39, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8** %40, align 16
  %41 = getelementptr inbounds %struct.Option, %struct.Option* %39, i32 0, i32 1
  store i32 0, i32* %41, align 8
  %42 = getelementptr inbounds %struct.Option, %struct.Option* %39, i32 0, i32 2
  store i32 129, i32* %42, align 4
  %43 = getelementptr inbounds %struct.Option, %struct.Option* %39, i64 1
  %44 = getelementptr inbounds %struct.Option, %struct.Option* %43, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8** %44, align 16
  %45 = getelementptr inbounds %struct.Option, %struct.Option* %43, i32 0, i32 1
  store i32 0, i32* %45, align 8
  %46 = getelementptr inbounds %struct.Option, %struct.Option* %43, i32 0, i32 2
  store i32 128, i32* %46, align 4
  %47 = getelementptr inbounds %struct.Option, %struct.Option* %43, i64 1
  %48 = getelementptr inbounds %struct.Option, %struct.Option* %47, i32 0, i32 0
  store i8* null, i8** %48, align 16
  %49 = getelementptr inbounds %struct.Option, %struct.Option* %47, i32 0, i32 1
  store i32 0, i32* %49, align 8
  %50 = getelementptr inbounds %struct.Option, %struct.Option* %47, i32 0, i32 2
  store i32 0, i32* %50, align 4
  store i8* null, i8** %14, align 8
  store i32 0, i32* %15, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp sgt i32 %51, 2
  br i1 %52, label %53, label %73

53:                                               ; preds = %2
  %54 = load i8**, i8*** %5, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @strlen(i8* %56)
  %58 = icmp sgt i32 %57, 1
  br i1 %58, label %59, label %73

59:                                               ; preds = %53
  %60 = load i8**, i8*** %5, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 0
  %62 = load i8*, i8** %61, align 8
  %63 = load i8**, i8*** %5, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @strlen(i8* %65)
  %67 = call i64 @memcmp(i8* %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %66)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %59
  %70 = load i8**, i8*** %5, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 1
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** %12, align 8
  store i32 2, i32* %15, align 4
  br label %73

73:                                               ; preds = %69, %59, %53, %2
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* %15, align 4
  %76 = add nsw i32 %75, 1
  %77 = icmp slt i32 %74, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %230

79:                                               ; preds = %73
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* %15, align 4
  %82 = add nsw i32 %81, 1
  %83 = icmp sgt i32 %80, %82
  br i1 %83, label %84, label %150

84:                                               ; preds = %79
  %85 = getelementptr inbounds [8 x %struct.Option], [8 x %struct.Option]* %13, i64 0, i64 0
  %86 = bitcast %struct.Option* %85 to %struct.Option.0*
  %87 = load i8**, i8*** %5, align 8
  %88 = load i32, i32* %15, align 4
  %89 = add nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8*, i8** %87, i64 %90
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @testArgSelect(%struct.Option.0* %86, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* %92, i32* %9)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %84
  %97 = load i32, i32* %7, align 4
  store i32 %97, i32* %3, align 4
  br label %232

98:                                               ; preds = %84
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [8 x %struct.Option], [8 x %struct.Option]* %13, i64 0, i64 %100
  %102 = getelementptr inbounds %struct.Option, %struct.Option* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [8 x %struct.Option], [8 x %struct.Option]* %13, i64 0, i64 %105
  %107 = getelementptr inbounds %struct.Option, %struct.Option* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %11, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %98
  %112 = load i32, i32* %9, align 4
  %113 = icmp eq i32 %112, 130
  br i1 %113, label %128, label %114

114:                                              ; preds = %111, %98
  %115 = load i32, i32* %11, align 4
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* @LSM_CONFIG_BLOCK_SIZE, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %128, label %121

121:                                              ; preds = %117, %114
  %122 = load i32, i32* %11, align 4
  %123 = icmp eq i32 %122, 1
  br i1 %123, label %124, label %135

124:                                              ; preds = %121
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* @LSM_CONFIG_PAGE_SIZE, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %135

128:                                              ; preds = %124, %117, %111
  %129 = load i32, i32* %4, align 4
  %130 = load i32, i32* %15, align 4
  %131 = add nsw i32 %130, 2
  %132 = icmp ne i32 %129, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %128
  br label %230

134:                                              ; preds = %128
  br label %149

135:                                              ; preds = %124, %121
  %136 = load i32, i32* %4, align 4
  %137 = load i32, i32* %15, align 4
  %138 = add nsw i32 %137, 3
  %139 = icmp ne i32 %136, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %135
  br label %230

141:                                              ; preds = %135
  %142 = load i8**, i8*** %5, align 8
  %143 = load i32, i32* %15, align 4
  %144 = add nsw i32 %143, 2
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8*, i8** %142, i64 %145
  %147 = load i8*, i8** %146, align 8
  %148 = call i32 @atoi(i8* %147)
  store i32 %148, i32* %10, align 4
  br label %149

149:                                              ; preds = %141, %134
  br label %150

150:                                              ; preds = %149, %79
  %151 = load i8**, i8*** %5, align 8
  %152 = load i32, i32* %15, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8*, i8** %151, i64 %153
  %155 = load i8*, i8** %154, align 8
  store i8* %155, i8** %8, align 8
  %156 = call i32 @lsm_new(i32 0, i32** %6)
  store i32 %156, i32* %7, align 4
  %157 = load i32*, i32** %6, align 8
  %158 = load i8*, i8** %12, align 8
  %159 = call i32 @tdb_lsm_configure(i32* %157, i8* %158)
  %160 = load i32, i32* %7, align 4
  %161 = load i32, i32* @LSM_OK, align 4
  %162 = icmp ne i32 %160, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %150
  %164 = load i32, i32* %7, align 4
  %165 = call i32 @testPrintError(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 %164)
  br label %177

166:                                              ; preds = %150
  %167 = load i32*, i32** %6, align 8
  %168 = load i8*, i8** %8, align 8
  %169 = call i32 @lsm_open(i32* %167, i8* %168)
  store i32 %169, i32* %7, align 4
  %170 = load i32, i32* %7, align 4
  %171 = load i32, i32* @LSM_OK, align 4
  %172 = icmp ne i32 %170, %171
  br i1 %172, label %173, label %176

173:                                              ; preds = %166
  %174 = load i32, i32* %7, align 4
  %175 = call i32 @testPrintError(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i32 %174)
  br label %176

176:                                              ; preds = %173, %166
  br label %177

177:                                              ; preds = %176, %163
  %178 = load i32, i32* %7, align 4
  %179 = load i32, i32* @LSM_OK, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %181, label %226

181:                                              ; preds = %177
  %182 = load i32, i32* %11, align 4
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %217

184:                                              ; preds = %181
  %185 = load i32, i32* %9, align 4
  switch i32 %185, label %195 [
    i32 131, label %186
    i32 130, label %186
    i32 132, label %190
    i32 133, label %190
    i32 129, label %190
    i32 128, label %190
  ]

186:                                              ; preds = %184, %184
  %187 = load i32*, i32** %6, align 8
  %188 = load i32, i32* %9, align 4
  %189 = call i32 (i32*, i32, ...) @lsm_info(i32* %187, i32 %188, i8** %14)
  store i32 %189, i32* %7, align 4
  br label %197

190:                                              ; preds = %184, %184, %184, %184
  %191 = load i32*, i32** %6, align 8
  %192 = load i32, i32* %9, align 4
  %193 = load i32, i32* %10, align 4
  %194 = call i32 (i32*, i32, ...) @lsm_info(i32* %191, i32 %192, i32 %193, i8** %14)
  store i32 %194, i32* %7, align 4
  br label %197

195:                                              ; preds = %184
  %196 = call i32 @assert(i32 0)
  br label %197

197:                                              ; preds = %195, %190, %186
  %198 = load i32, i32* %7, align 4
  %199 = load i32, i32* @LSM_OK, align 4
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %201, label %212

201:                                              ; preds = %197
  %202 = load i8*, i8** %14, align 8
  %203 = icmp ne i8* %202, null
  br i1 %203, label %204, label %206

204:                                              ; preds = %201
  %205 = load i8*, i8** %14, align 8
  br label %207

206:                                              ; preds = %201
  br label %207

207:                                              ; preds = %206, %204
  %208 = phi i8* [ %205, %204 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %206 ]
  %209 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* %208)
  %210 = load i32, i32* @stdout, align 4
  %211 = call i32 @fflush(i32 %210)
  br label %212

212:                                              ; preds = %207, %197
  %213 = load i32*, i32** %6, align 8
  %214 = call i32 @lsm_get_env(i32* %213)
  %215 = load i8*, i8** %14, align 8
  %216 = call i32 @lsm_free(i32 %214, i8* %215)
  br label %225

217:                                              ; preds = %181
  store i32 -1, i32* %16, align 4
  %218 = load i32*, i32** %6, align 8
  %219 = load i32, i32* %9, align 4
  %220 = call i32 @lsm_config(i32* %218, i32 %219, i32* %16)
  %221 = load i32, i32* %16, align 4
  %222 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i32 %221)
  %223 = load i32, i32* @stdout, align 4
  %224 = call i32 @fflush(i32 %223)
  br label %225

225:                                              ; preds = %217, %212
  br label %226

226:                                              ; preds = %225, %177
  %227 = load i32*, i32** %6, align 8
  %228 = call i32 @lsm_close(i32* %227)
  %229 = load i32, i32* %7, align 4
  store i32 %229, i32* %3, align 4
  br label %232

230:                                              ; preds = %140, %133, %78
  %231 = call i32 @testPrintUsage(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %232

232:                                              ; preds = %230, %226, %96
  %233 = load i32, i32* %3, align 4
  ret i32 %233
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @testArgSelect(%struct.Option.0*, i8*, i8*, i32*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @lsm_new(i32, i32**) #1

declare dso_local i32 @tdb_lsm_configure(i32*, i8*) #1

declare dso_local i32 @testPrintError(i8*, i32) #1

declare dso_local i32 @lsm_open(i32*, i8*) #1

declare dso_local i32 @lsm_info(i32*, i32, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @lsm_free(i32, i8*) #1

declare dso_local i32 @lsm_get_env(i32*) #1

declare dso_local i32 @lsm_config(i32*, i32, i32*) #1

declare dso_local i32 @lsm_close(i32*) #1

declare dso_local i32 @testPrintUsage(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
