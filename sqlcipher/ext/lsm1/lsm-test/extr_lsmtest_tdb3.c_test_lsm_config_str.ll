; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_tdb3.c_test_lsm_config_str.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_tdb3.c_test_lsm_config_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.CfgParam = type { i8*, i32, i32 }
%struct.CfgParam.0 = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"autoflush\00", align 1
@LSM_CONFIG_AUTOFLUSH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"page_size\00", align 1
@LSM_CONFIG_PAGE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"block_size\00", align 1
@LSM_CONFIG_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"safety\00", align 1
@LSM_CONFIG_SAFETY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"autowork\00", align 1
@LSM_CONFIG_AUTOWORK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"autocheckpoint\00", align 1
@LSM_CONFIG_AUTOCHECKPOINT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"mmap\00", align 1
@LSM_CONFIG_MMAP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"use_log\00", align 1
@LSM_CONFIG_USE_LOG = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"automerge\00", align 1
@LSM_CONFIG_AUTOMERGE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c"max_freelist\00", align 1
@LSM_CONFIG_MAX_FREELIST = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [11 x i8] c"multi_proc\00", align 1
@LSM_CONFIG_MULTIPLE_PROCESSES = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [17 x i8] c"worker_automerge\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"test_no_recovery\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"bg_min_ckpt\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"mt_mode\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"mt_min_ckpt\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"mt_max_ckpt\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"param\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"syntax error at: \22%s\22\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_lsm_config_str(%struct.TYPE_4__* %0, i32* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca [18 x %struct.CfgParam], align 16
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [32 x i8], align 16
  %22 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %23 = getelementptr inbounds [18 x %struct.CfgParam], [18 x %struct.CfgParam]* %12, i64 0, i64 0
  %24 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %23, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %24, align 16
  %25 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %23, i32 0, i32 1
  store i32 0, i32* %25, align 8
  %26 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %23, i32 0, i32 2
  %27 = load i32, i32* @LSM_CONFIG_AUTOFLUSH, align 4
  store i32 %27, i32* %26, align 4
  %28 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %23, i64 1
  %29 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %28, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %29, align 16
  %30 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %28, i32 0, i32 1
  store i32 0, i32* %30, align 8
  %31 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %28, i32 0, i32 2
  %32 = load i32, i32* @LSM_CONFIG_PAGE_SIZE, align 4
  store i32 %32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %28, i64 1
  %34 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %33, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %34, align 16
  %35 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %33, i32 0, i32 1
  store i32 0, i32* %35, align 8
  %36 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %33, i32 0, i32 2
  %37 = load i32, i32* @LSM_CONFIG_BLOCK_SIZE, align 4
  store i32 %37, i32* %36, align 4
  %38 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %33, i64 1
  %39 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %38, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %39, align 16
  %40 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %38, i32 0, i32 1
  store i32 0, i32* %40, align 8
  %41 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %38, i32 0, i32 2
  %42 = load i32, i32* @LSM_CONFIG_SAFETY, align 4
  store i32 %42, i32* %41, align 4
  %43 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %38, i64 1
  %44 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %43, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8** %44, align 16
  %45 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %43, i32 0, i32 1
  store i32 0, i32* %45, align 8
  %46 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %43, i32 0, i32 2
  %47 = load i32, i32* @LSM_CONFIG_AUTOWORK, align 4
  store i32 %47, i32* %46, align 4
  %48 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %43, i64 1
  %49 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %48, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8** %49, align 16
  %50 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %48, i32 0, i32 1
  store i32 0, i32* %50, align 8
  %51 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %48, i32 0, i32 2
  %52 = load i32, i32* @LSM_CONFIG_AUTOCHECKPOINT, align 4
  store i32 %52, i32* %51, align 4
  %53 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %48, i64 1
  %54 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %53, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %54, align 16
  %55 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %53, i32 0, i32 1
  store i32 0, i32* %55, align 8
  %56 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %53, i32 0, i32 2
  %57 = load i32, i32* @LSM_CONFIG_MMAP, align 4
  store i32 %57, i32* %56, align 4
  %58 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %53, i64 1
  %59 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %58, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8** %59, align 16
  %60 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %58, i32 0, i32 1
  store i32 0, i32* %60, align 8
  %61 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %58, i32 0, i32 2
  %62 = load i32, i32* @LSM_CONFIG_USE_LOG, align 4
  store i32 %62, i32* %61, align 4
  %63 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %58, i64 1
  %64 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %63, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8** %64, align 16
  %65 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %63, i32 0, i32 1
  store i32 0, i32* %65, align 8
  %66 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %63, i32 0, i32 2
  %67 = load i32, i32* @LSM_CONFIG_AUTOMERGE, align 4
  store i32 %67, i32* %66, align 4
  %68 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %63, i64 1
  %69 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %68, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8** %69, align 16
  %70 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %68, i32 0, i32 1
  store i32 0, i32* %70, align 8
  %71 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %68, i32 0, i32 2
  %72 = load i32, i32* @LSM_CONFIG_MAX_FREELIST, align 4
  store i32 %72, i32* %71, align 4
  %73 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %68, i64 1
  %74 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %73, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8** %74, align 16
  %75 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %73, i32 0, i32 1
  store i32 0, i32* %75, align 8
  %76 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %73, i32 0, i32 2
  %77 = load i32, i32* @LSM_CONFIG_MULTIPLE_PROCESSES, align 4
  store i32 %77, i32* %76, align 4
  %78 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %73, i64 1
  %79 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %78, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8** %79, align 16
  %80 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %78, i32 0, i32 1
  store i32 1, i32* %80, align 8
  %81 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %78, i32 0, i32 2
  %82 = load i32, i32* @LSM_CONFIG_AUTOMERGE, align 4
  store i32 %82, i32* %81, align 4
  %83 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %78, i64 1
  %84 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %83, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i8** %84, align 16
  %85 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %83, i32 0, i32 1
  store i32 0, i32* %85, align 8
  %86 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %83, i32 0, i32 2
  store i32 128, i32* %86, align 4
  %87 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %83, i64 1
  %88 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %87, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i8** %88, align 16
  %89 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %87, i32 0, i32 1
  store i32 0, i32* %89, align 8
  %90 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %87, i32 0, i32 2
  store i32 128, i32* %90, align 4
  %91 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %87, i64 1
  %92 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %91, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8** %92, align 16
  %93 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %91, i32 0, i32 1
  store i32 0, i32* %93, align 8
  %94 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %91, i32 0, i32 2
  store i32 129, i32* %94, align 4
  %95 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %91, i64 1
  %96 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %95, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i8** %96, align 16
  %97 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %95, i32 0, i32 1
  store i32 0, i32* %97, align 8
  %98 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %95, i32 0, i32 2
  store i32 130, i32* %98, align 4
  %99 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %95, i64 1
  %100 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %99, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i8** %100, align 16
  %101 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %99, i32 0, i32 1
  store i32 0, i32* %101, align 8
  %102 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %99, i32 0, i32 2
  store i32 131, i32* %102, align 4
  %103 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %99, i64 1
  %104 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %103, i32 0, i32 0
  store i8* null, i8** %104, align 16
  %105 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %103, i32 0, i32 1
  store i32 0, i32* %105, align 8
  %106 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %103, i32 0, i32 2
  store i32 0, i32* %106, align 4
  %107 = load i8*, i8** %10, align 8
  store i8* %107, i8** %13, align 8
  store i32 1, i32* %14, align 4
  %108 = load i8*, i8** %10, align 8
  %109 = icmp eq i8* %108, null
  br i1 %109, label %110, label %111

110:                                              ; preds = %5
  store i32 0, i32* %6, align 4
  br label %349

111:                                              ; preds = %5
  %112 = load i32*, i32** %8, align 8
  %113 = call i32 @assert(i32* %112)
  br label %114

114:                                              ; preds = %321, %111
  %115 = load i8*, i8** %13, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 0
  %117 = load i8, i8* %116, align 1
  %118 = icmp ne i8 %117, 0
  br i1 %118, label %119, label %322

119:                                              ; preds = %114
  br label %120

120:                                              ; preds = %125, %119
  %121 = load i8*, i8** %13, align 8
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 32
  br i1 %124, label %125, label %128

125:                                              ; preds = %120
  %126 = load i8*, i8** %13, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %13, align 8
  br label %120

128:                                              ; preds = %120
  %129 = load i8*, i8** %13, align 8
  store i8* %129, i8** %15, align 8
  br label %130

130:                                              ; preds = %142, %128
  %131 = load i8*, i8** %13, align 8
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %130
  %136 = load i8*, i8** %13, align 8
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp ne i32 %138, 61
  br label %140

140:                                              ; preds = %135, %130
  %141 = phi i1 [ false, %130 ], [ %139, %135 ]
  br i1 %141, label %142, label %145

142:                                              ; preds = %140
  %143 = load i8*, i8** %13, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %144, i8** %13, align 8
  br label %130

145:                                              ; preds = %140
  %146 = load i8*, i8** %13, align 8
  %147 = load i8, i8* %146, align 1
  %148 = icmp ne i8 %147, 0
  br i1 %148, label %149, label %315

149:                                              ; preds = %145
  store i32 1, i32* %19, align 4
  %150 = load i8*, i8** %13, align 8
  %151 = load i8*, i8** %15, align 8
  %152 = ptrtoint i8* %150 to i64
  %153 = ptrtoint i8* %151 to i64
  %154 = sub i64 %152, %153
  %155 = trunc i64 %154 to i32
  store i32 %155, i32* %22, align 4
  %156 = load i32, i32* %22, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %162, label %158

158:                                              ; preds = %149
  %159 = load i32, i32* %22, align 4
  %160 = sext i32 %159 to i64
  %161 = icmp ugt i64 %160, 31
  br i1 %161, label %162, label %163

162:                                              ; preds = %158, %149
  br label %346

163:                                              ; preds = %158
  %164 = getelementptr inbounds [32 x i8], [32 x i8]* %21, i64 0, i64 0
  %165 = load i8*, i8** %15, align 8
  %166 = load i32, i32* %22, align 4
  %167 = call i32 @memcpy(i8* %164, i8* %165, i32 %166)
  %168 = load i32, i32* %22, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [32 x i8], [32 x i8]* %21, i64 0, i64 %169
  store i8 0, i8* %170, align 1
  %171 = getelementptr inbounds [18 x %struct.CfgParam], [18 x %struct.CfgParam]* %12, i64 0, i64 0
  %172 = bitcast %struct.CfgParam* %171 to %struct.CfgParam.0*
  %173 = getelementptr inbounds [32 x i8], [32 x i8]* %21, i64 0, i64 0
  %174 = call i32 @testArgSelect(%struct.CfgParam.0* %172, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i8* %173, i32* %17)
  store i32 %174, i32* %20, align 4
  %175 = load i32, i32* %20, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %163
  %178 = load i32, i32* %20, align 4
  store i32 %178, i32* %6, align 4
  br label %349

179:                                              ; preds = %163
  %180 = load i32, i32* %17, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [18 x %struct.CfgParam], [18 x %struct.CfgParam]* %12, i64 0, i64 %181
  %183 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  store i32 %184, i32* %16, align 4
  %185 = load i8*, i8** %13, align 8
  %186 = getelementptr inbounds i8, i8* %185, i32 1
  store i8* %186, i8** %13, align 8
  %187 = load i8*, i8** %13, align 8
  store i8* %187, i8** %15, align 8
  br label %188

188:                                              ; preds = %200, %179
  %189 = load i8*, i8** %13, align 8
  %190 = load i8, i8* %189, align 1
  %191 = sext i8 %190 to i32
  %192 = icmp sge i32 %191, 48
  br i1 %192, label %193, label %198

193:                                              ; preds = %188
  %194 = load i8*, i8** %13, align 8
  %195 = load i8, i8* %194, align 1
  %196 = sext i8 %195 to i32
  %197 = icmp sle i32 %196, 57
  br label %198

198:                                              ; preds = %193, %188
  %199 = phi i1 [ false, %188 ], [ %197, %193 ]
  br i1 %199, label %200, label %203

200:                                              ; preds = %198
  %201 = load i8*, i8** %13, align 8
  %202 = getelementptr inbounds i8, i8* %201, i32 1
  store i8* %202, i8** %13, align 8
  br label %188

203:                                              ; preds = %198
  %204 = load i8*, i8** %13, align 8
  %205 = load i8, i8* %204, align 1
  %206 = sext i8 %205 to i32
  %207 = icmp eq i32 %206, 107
  br i1 %207, label %213, label %208

208:                                              ; preds = %203
  %209 = load i8*, i8** %13, align 8
  %210 = load i8, i8* %209, align 1
  %211 = sext i8 %210 to i32
  %212 = icmp eq i32 %211, 75
  br i1 %212, label %213, label %216

213:                                              ; preds = %208, %203
  store i32 1, i32* %19, align 4
  %214 = load i8*, i8** %13, align 8
  %215 = getelementptr inbounds i8, i8* %214, i32 1
  store i8* %215, i8** %13, align 8
  br label %230

216:                                              ; preds = %208
  %217 = load i8*, i8** %13, align 8
  %218 = load i8, i8* %217, align 1
  %219 = sext i8 %218 to i32
  %220 = icmp eq i32 %219, 77
  br i1 %220, label %226, label %221

221:                                              ; preds = %216
  %222 = load i8*, i8** %13, align 8
  %223 = load i8, i8* %222, align 1
  %224 = sext i8 %223 to i32
  %225 = icmp eq i32 %224, 77
  br i1 %225, label %226, label %229

226:                                              ; preds = %221, %216
  store i32 1024, i32* %19, align 4
  %227 = load i8*, i8** %13, align 8
  %228 = getelementptr inbounds i8, i8* %227, i32 1
  store i8* %228, i8** %13, align 8
  br label %229

229:                                              ; preds = %226, %221
  br label %230

230:                                              ; preds = %229, %213
  %231 = load i8*, i8** %13, align 8
  %232 = load i8*, i8** %15, align 8
  %233 = ptrtoint i8* %231 to i64
  %234 = ptrtoint i8* %232 to i64
  %235 = sub i64 %233, %234
  %236 = trunc i64 %235 to i32
  store i32 %236, i32* %22, align 4
  %237 = load i32, i32* %22, align 4
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %243, label %239

239:                                              ; preds = %230
  %240 = load i32, i32* %22, align 4
  %241 = sext i32 %240 to i64
  %242 = icmp ugt i64 %241, 31
  br i1 %242, label %243, label %244

243:                                              ; preds = %239, %230
  br label %346

244:                                              ; preds = %239
  %245 = getelementptr inbounds [32 x i8], [32 x i8]* %21, i64 0, i64 0
  %246 = load i8*, i8** %15, align 8
  %247 = load i32, i32* %22, align 4
  %248 = call i32 @memcpy(i8* %245, i8* %246, i32 %247)
  %249 = load i32, i32* %22, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds [32 x i8], [32 x i8]* %21, i64 0, i64 %250
  store i8 0, i8* %251, align 1
  %252 = getelementptr inbounds [32 x i8], [32 x i8]* %21, i64 0, i64 0
  %253 = call i32 @atoi(i8* %252)
  %254 = load i32, i32* %19, align 4
  %255 = mul nsw i32 %253, %254
  store i32 %255, i32* %18, align 4
  %256 = load i32, i32* %16, align 4
  %257 = icmp sgt i32 %256, 0
  br i1 %257, label %258, label %273

258:                                              ; preds = %244
  %259 = load i32, i32* %9, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %268, label %261

261:                                              ; preds = %258
  %262 = load i32, i32* %17, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds [18 x %struct.CfgParam], [18 x %struct.CfgParam]* %12, i64 0, i64 %263
  %265 = getelementptr inbounds %struct.CfgParam, %struct.CfgParam* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 8
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %272

268:                                              ; preds = %261, %258
  %269 = load i32*, i32** %8, align 8
  %270 = load i32, i32* %16, align 4
  %271 = call i32 @lsm_config(i32* %269, i32 %270, i32* %18)
  br label %272

272:                                              ; preds = %268, %261
  br label %314

273:                                              ; preds = %244
  %274 = load i32, i32* %16, align 4
  switch i32 %274, label %313 [
    i32 128, label %275
    i32 129, label %283
    i32 130, label %289
    i32 131, label %301
  ]

275:                                              ; preds = %273
  %276 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %277 = icmp ne %struct.TYPE_4__* %276, null
  br i1 %277, label %278, label %282

278:                                              ; preds = %275
  %279 = load i32, i32* %18, align 4
  %280 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %281 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %280, i32 0, i32 0
  store i32 %279, i32* %281, align 4
  br label %282

282:                                              ; preds = %278, %275
  br label %313

283:                                              ; preds = %273
  %284 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %285 = icmp ne %struct.TYPE_4__* %284, null
  br i1 %285, label %286, label %288

286:                                              ; preds = %283
  %287 = load i32, i32* %18, align 4
  store i32 %287, i32* %14, align 4
  br label %288

288:                                              ; preds = %286, %283
  br label %313

289:                                              ; preds = %273
  %290 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %291 = icmp ne %struct.TYPE_4__* %290, null
  br i1 %291, label %292, label %300

292:                                              ; preds = %289
  %293 = load i32, i32* %18, align 4
  %294 = icmp sgt i32 %293, 0
  br i1 %294, label %295, label %300

295:                                              ; preds = %292
  %296 = load i32, i32* %18, align 4
  %297 = mul nsw i32 %296, 1024
  %298 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %299 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %298, i32 0, i32 1
  store i32 %297, i32* %299, align 4
  br label %300

300:                                              ; preds = %295, %292, %289
  br label %313

301:                                              ; preds = %273
  %302 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %303 = icmp ne %struct.TYPE_4__* %302, null
  br i1 %303, label %304, label %312

304:                                              ; preds = %301
  %305 = load i32, i32* %18, align 4
  %306 = icmp sgt i32 %305, 0
  br i1 %306, label %307, label %312

307:                                              ; preds = %304
  %308 = load i32, i32* %18, align 4
  %309 = mul nsw i32 %308, 1024
  %310 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %311 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %310, i32 0, i32 2
  store i32 %309, i32* %311, align 4
  br label %312

312:                                              ; preds = %307, %304, %301
  br label %313

313:                                              ; preds = %273, %312, %300, %288, %282
  br label %314

314:                                              ; preds = %313, %272
  br label %321

315:                                              ; preds = %145
  %316 = load i8*, i8** %13, align 8
  %317 = load i8*, i8** %15, align 8
  %318 = icmp ne i8* %316, %317
  br i1 %318, label %319, label %320

319:                                              ; preds = %315
  br label %346

320:                                              ; preds = %315
  br label %321

321:                                              ; preds = %320, %314
  br label %114

322:                                              ; preds = %114
  %323 = load i32*, i32** %11, align 8
  %324 = icmp ne i32* %323, null
  br i1 %324, label %325, label %328

325:                                              ; preds = %322
  %326 = load i32, i32* %14, align 4
  %327 = load i32*, i32** %11, align 8
  store i32 %326, i32* %327, align 4
  br label %328

328:                                              ; preds = %325, %322
  %329 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %330 = icmp ne %struct.TYPE_4__* %329, null
  br i1 %330, label %331, label %345

331:                                              ; preds = %328
  %332 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %333 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %332, i32 0, i32 2
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %336 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 4
  %338 = icmp slt i32 %334, %337
  br i1 %338, label %339, label %345

339:                                              ; preds = %331
  %340 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %341 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %340, i32 0, i32 2
  %342 = load i32, i32* %341, align 4
  %343 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %344 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %343, i32 0, i32 1
  store i32 %342, i32* %344, align 4
  br label %345

345:                                              ; preds = %339, %331, %328
  store i32 0, i32* %6, align 4
  br label %349

346:                                              ; preds = %319, %243, %162
  %347 = load i8*, i8** %13, align 8
  %348 = call i32 @testPrintError(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i8* %347)
  store i32 1, i32* %6, align 4
  br label %349

349:                                              ; preds = %346, %345, %177, %110
  %350 = load i32, i32* %6, align 4
  ret i32 %350
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @testArgSelect(%struct.CfgParam.0*, i8*, i8*, i32*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @lsm_config(i32*, i32, i32*) #1

declare dso_local i32 @testPrintError(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
