; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_seaf_repo_fetch_and_checkout.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_seaf_repo_fetch_and_checkout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, %struct.TYPE_35__*, i32, i32 }
%struct.TYPE_35__ = type { i8* }
%struct.TYPE_32__ = type { i8*, i32, i8*, i8*, i32, i32*, i64 }
%struct.TYPE_29__ = type { i8*, i8*, i8*, i32 }
%struct.TYPE_31__ = type { i8* }
%struct.TYPE_30__ = type { i32, i32, i32, i32, i64 }
%struct.index_state = type { i64 }
%struct.TYPE_33__ = type { %struct.TYPE_34__*, %struct.TYPE_33__* }
%struct.TYPE_34__ = type { i64, i64, i32, i32, i32 }
%struct.cache_entry = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32 }

@SEAF_PATH_MAX = common dso_local global i32 0, align 4
@FETCH_CHECKOUT_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@seaf = common dso_local global %struct.TYPE_27__* null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Failed to load index.\0A\00", align 1
@FETCH_CHECKOUT_FAILED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Failed to get repo %.8s.\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"master\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Failed to get master branch for repo %.8s.\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"Failed to get master head %s of repo %.8s.\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"Failed to get remote head %s of repo %.8s.\0A\00", align 1
@EMPTY_SHA1 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"Failed to diff for repo %.8s.\0A\00", align 1
@g_str_hash = common dso_local global i32 0, align 4
@g_str_equal = common dso_local global i32 0, align 4
@DIFF_STATUS_DELETED = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [17 x i8] c"Delete file %s.\0A\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"Path %s is invalid on Windows, skip delete.\0A\00", align 1
@DIFF_STATUS_DIR_DELETED = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [16 x i8] c"Delete dir %s.\0A\00", align 1
@DIFF_STATUS_RENAMED = common dso_local global i64 0, align 8
@DIFF_STATUS_DIR_RENAMED = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [18 x i8] c"Rename %s to %s.\0A\00", align 1
@update_sync_status = common dso_local global i32* null, align 8
@DIFF_STATUS_ADDED = common dso_local global i64 0, align 8
@DIFF_STATUS_MODIFIED = common dso_local global i64 0, align 8
@diff_entry_free = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@FETCH_CHECKOUT_LOCKED = common dso_local global i32 0, align 4
@IGNORE_REASON_END_SPACE_PERIOD = common dso_local global i64 0, align 8
@IGNORE_REASON_INVALID_CHARACTER = common dso_local global i64 0, align 8
@LOCKED_OP_DELETE = common dso_local global i32 0, align 4
@SYNC_ERROR_ID_FILE_LOCKED_BY_APP = common dso_local global i32 0, align 4
@SYNC_ERROR_ID_FOLDER_LOCKED_BY_APP = common dso_local global i32 0, align 4
@SYNC_ERROR_ID_PATH_END_SPACE_PERIOD = common dso_local global i32 0, align 4
@SYNC_ERROR_ID_PATH_INVALID_CHARACTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seaf_repo_fetch_and_checkout(%struct.TYPE_32__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_32__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_29__*, align 8
  %12 = alloca %struct.TYPE_31__*, align 8
  %13 = alloca %struct.TYPE_30__*, align 8
  %14 = alloca %struct.TYPE_30__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.index_state, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_33__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.TYPE_33__*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_33__*, align 8
  %27 = alloca %struct.TYPE_34__*, align 8
  %28 = alloca [32 x i8], align 16
  %29 = alloca [16 x i8], align 16
  %30 = alloca %struct.cache_entry*, align 8
  %31 = alloca i64, align 8
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %11, align 8
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %12, align 8
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %13, align 8
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %14, align 8
  %32 = load i32, i32* @SEAF_PATH_MAX, align 4
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %15, align 8
  %35 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %16, align 8
  %36 = load i32, i32* @FETCH_CHECKOUT_SUCCESS, align 4
  store i32 %36, i32* %18, align 4
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %19, align 8
  store i32* null, i32** %20, align 8
  store i32* null, i32** %21, align 8
  store i32* null, i32** %22, align 8
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %23, align 8
  store i32* null, i32** %24, align 8
  %37 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %6, align 8
  %40 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %7, align 4
  %43 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %43, i32 0, i32 6
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %8, align 8
  %46 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %46, i32 0, i32 2
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %9, align 8
  %49 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %49, i32 0, i32 3
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %10, align 8
  %52 = call i32 @memset(%struct.index_state* %17, i32 0, i32 8)
  %53 = load i32, i32* @SEAF_PATH_MAX, align 4
  %54 = load %struct.TYPE_27__*, %struct.TYPE_27__** @seaf, align 8
  %55 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_35__*, %struct.TYPE_35__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 @snprintf(i8* %35, i32 %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %58, i8* %59)
  %61 = load i32, i32* %7, align 4
  %62 = call i64 @read_index_from(%struct.index_state* %17, i8* %35, i32 %61)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %2
  %65 = call i32 (i8*, ...) @seaf_warning(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i32, i32* @FETCH_CHECKOUT_FAILED, align 4
  store i32 %66, i32* %3, align 4
  store i32 1, i32* %25, align 4
  br label %535

67:                                               ; preds = %2
  %68 = load i64, i64* %8, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %113, label %70

70:                                               ; preds = %67
  %71 = load %struct.TYPE_27__*, %struct.TYPE_27__** @seaf, align 8
  %72 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_35__*, %struct.TYPE_35__** %72, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = call %struct.TYPE_29__* @seaf_repo_manager_get_repo(%struct.TYPE_35__* %73, i8* %74)
  store %struct.TYPE_29__* %75, %struct.TYPE_29__** %11, align 8
  %76 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %77 = icmp ne %struct.TYPE_29__* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %70
  %79 = load i8*, i8** %6, align 8
  %80 = call i32 (i8*, ...) @seaf_warning(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %79)
  br label %502

81:                                               ; preds = %70
  %82 = load %struct.TYPE_27__*, %struct.TYPE_27__** @seaf, align 8
  %83 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load i8*, i8** %6, align 8
  %86 = call %struct.TYPE_31__* @seaf_branch_manager_get_branch(i32 %84, i8* %85, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_31__* %86, %struct.TYPE_31__** %12, align 8
  %87 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %88 = icmp ne %struct.TYPE_31__* %87, null
  br i1 %88, label %93, label %89

89:                                               ; preds = %81
  %90 = load i8*, i8** %6, align 8
  %91 = call i32 (i8*, ...) @seaf_warning(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i8* %90)
  %92 = load i32, i32* @FETCH_CHECKOUT_FAILED, align 4
  store i32 %92, i32* %18, align 4
  br label %502

93:                                               ; preds = %81
  %94 = load %struct.TYPE_27__*, %struct.TYPE_27__** @seaf, align 8
  %95 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load i8*, i8** %6, align 8
  %98 = load i32, i32* %7, align 4
  %99 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = call %struct.TYPE_30__* @seaf_commit_manager_get_commit(i32 %96, i8* %97, i32 %98, i8* %101)
  store %struct.TYPE_30__* %102, %struct.TYPE_30__** %14, align 8
  %103 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %104 = icmp ne %struct.TYPE_30__* %103, null
  br i1 %104, label %112, label %105

105:                                              ; preds = %93
  %106 = load i8*, i8** %6, align 8
  %107 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 (i8*, ...) @seaf_warning(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i8* %106, i8* %109)
  %111 = load i32, i32* @FETCH_CHECKOUT_FAILED, align 4
  store i32 %111, i32* %18, align 4
  br label %502

112:                                              ; preds = %93
  br label %113

113:                                              ; preds = %112, %67
  %114 = load i64, i64* %8, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %113
  %117 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  store i8* %119, i8** %9, align 8
  br label %120

120:                                              ; preds = %116, %113
  %121 = load %struct.TYPE_27__*, %struct.TYPE_27__** @seaf, align 8
  %122 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load i8*, i8** %6, align 8
  %125 = load i32, i32* %7, align 4
  %126 = load i8*, i8** %5, align 8
  %127 = call %struct.TYPE_30__* @seaf_commit_manager_get_commit(i32 %123, i8* %124, i32 %125, i8* %126)
  store %struct.TYPE_30__* %127, %struct.TYPE_30__** %13, align 8
  %128 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %129 = icmp ne %struct.TYPE_30__* %128, null
  br i1 %129, label %135, label %130

130:                                              ; preds = %120
  %131 = load i8*, i8** %6, align 8
  %132 = load i8*, i8** %5, align 8
  %133 = call i32 (i8*, ...) @seaf_warning(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i8* %131, i8* %132)
  %134 = load i32, i32* @FETCH_CHECKOUT_FAILED, align 4
  store i32 %134, i32* %18, align 4
  br label %502

135:                                              ; preds = %120
  %136 = load i8*, i8** %6, align 8
  %137 = load i32, i32* %7, align 4
  %138 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %139 = icmp ne %struct.TYPE_30__* %138, null
  br i1 %139, label %140, label %144

140:                                              ; preds = %135
  %141 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %142 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  br label %146

144:                                              ; preds = %135
  %145 = load i32, i32* @EMPTY_SHA1, align 4
  br label %146

146:                                              ; preds = %144, %140
  %147 = phi i32 [ %143, %140 ], [ %145, %144 ]
  %148 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %149 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @TRUE, align 4
  %152 = call i64 @diff_commit_roots(i8* %136, i32 %137, i32 %147, i32 %150, %struct.TYPE_33__** %19, i32 %151)
  %153 = icmp slt i64 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %146
  %155 = load i8*, i8** %6, align 8
  %156 = call i32 (i8*, ...) @seaf_warning(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i8* %155)
  %157 = load i32, i32* @FETCH_CHECKOUT_FAILED, align 4
  store i32 %157, i32* %18, align 4
  br label %502

158:                                              ; preds = %146
  %159 = load i8*, i8** %6, align 8
  %160 = load i32, i32* %7, align 4
  %161 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %162 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %165 = icmp ne %struct.TYPE_30__* %164, null
  br i1 %165, label %166, label %170

166:                                              ; preds = %158
  %167 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %168 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  br label %172

170:                                              ; preds = %158
  %171 = load i32, i32* @EMPTY_SHA1, align 4
  br label %172

172:                                              ; preds = %170, %166
  %173 = phi i32 [ %169, %166 ], [ %171, %170 ]
  %174 = call i64 @expand_diff_results(i8* %159, i32 %160, i32 %163, i32 %173, %struct.TYPE_33__** %19)
  %175 = icmp slt i64 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %172
  %177 = load i32, i32* @FETCH_CHECKOUT_FAILED, align 4
  store i32 %177, i32* %18, align 4
  br label %502

178:                                              ; preds = %172
  %179 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %180 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %179, i32 0, i32 4
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %218

183:                                              ; preds = %178
  %184 = load i64, i64* %8, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %197, label %186

186:                                              ; preds = %183
  %187 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %188 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %191 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %190, i32 0, i32 1
  %192 = load i8*, i8** %191, align 8
  %193 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %194 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %193, i32 0, i32 2
  %195 = load i8*, i8** %194, align 8
  %196 = call i32* @seafile_crypt_new(i32 %189, i8* %192, i8* %195)
  store i32* %196, i32** %20, align 8
  br label %217

197:                                              ; preds = %183
  %198 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %199 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load i8*, i8** %10, align 8
  %202 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %203 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %206 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = getelementptr inbounds [32 x i8], [32 x i8]* %28, i64 0, i64 0
  %209 = getelementptr inbounds [16 x i8], [16 x i8]* %29, i64 0, i64 0
  %210 = call i32 @seafile_decrypt_repo_enc_key(i32 %200, i8* %201, i32 %204, i32 %207, i8* %208, i8* %209)
  %211 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %212 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = getelementptr inbounds [32 x i8], [32 x i8]* %28, i64 0, i64 0
  %215 = getelementptr inbounds [16 x i8], [16 x i8]* %29, i64 0, i64 0
  %216 = call i32* @seafile_crypt_new(i32 %213, i8* %214, i8* %215)
  store i32* %216, i32** %20, align 8
  br label %217

217:                                              ; preds = %197, %186
  br label %218

218:                                              ; preds = %217, %178
  %219 = load i32, i32* @g_str_hash, align 4
  %220 = load i32, i32* @g_str_equal, align 4
  %221 = call i32* (i32, i32, i32 (i32*)*, ...) @g_hash_table_new_full(i32 %219, i32 %220, i32 (i32*)* @g_free, i32 (i32*)* @g_free)
  store i32* %221, i32** %21, align 8
  %222 = load i32, i32* @g_str_hash, align 4
  %223 = load i32, i32* @g_str_equal, align 4
  %224 = call i32* (i32, i32, i32 (i32*)*, ...) @g_hash_table_new_full(i32 %222, i32 %223, i32 (i32*)* @g_free, i8* null)
  store i32* %224, i32** %22, align 8
  %225 = load i8*, i8** %9, align 8
  %226 = call %struct.TYPE_33__* @seaf_repo_load_ignore_files(i8* %225)
  store %struct.TYPE_33__* %226, %struct.TYPE_33__** %23, align 8
  %227 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  store %struct.TYPE_33__* %227, %struct.TYPE_33__** %26, align 8
  br label %228

228:                                              ; preds = %362, %218
  %229 = load %struct.TYPE_33__*, %struct.TYPE_33__** %26, align 8
  %230 = icmp ne %struct.TYPE_33__* %229, null
  br i1 %230, label %231, label %366

231:                                              ; preds = %228
  %232 = load %struct.TYPE_33__*, %struct.TYPE_33__** %26, align 8
  %233 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %232, i32 0, i32 0
  %234 = load %struct.TYPE_34__*, %struct.TYPE_34__** %233, align 8
  store %struct.TYPE_34__* %234, %struct.TYPE_34__** %27, align 8
  %235 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %236 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* @DIFF_STATUS_DELETED, align 8
  %239 = icmp eq i64 %237, %238
  br i1 %239, label %240, label %309

240:                                              ; preds = %231
  %241 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %242 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = call i32 (i8*, i32, ...) @seaf_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %243)
  %245 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %246 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  %248 = call i64 @should_ignore_on_checkout(i32 %247, i64* null)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %255

250:                                              ; preds = %240
  %251 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %252 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 8
  %254 = call i32 @seaf_message(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0), i32 %253)
  br label %362

255:                                              ; preds = %240
  %256 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %257 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 8
  %259 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %260 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 8
  %262 = call i32 @strlen(i32 %261)
  %263 = call %struct.cache_entry* @index_name_exists(%struct.index_state* %17, i32 %258, i32 %262, i32 0)
  store %struct.cache_entry* %263, %struct.cache_entry** %30, align 8
  %264 = load %struct.cache_entry*, %struct.cache_entry** %30, align 8
  %265 = icmp ne %struct.cache_entry* %264, null
  br i1 %265, label %267, label %266

266:                                              ; preds = %255
  br label %362

267:                                              ; preds = %255
  %268 = load %struct.TYPE_27__*, %struct.TYPE_27__** @seaf, align 8
  %269 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = load i8*, i8** %6, align 8
  %272 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %273 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 8
  %275 = call i64 @seaf_filelock_manager_is_file_locked(i32 %270, i8* %271, i32 %274)
  store i64 %275, i64* %31, align 8
  %276 = load i64, i64* %31, align 8
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %287

278:                                              ; preds = %267
  %279 = load %struct.TYPE_27__*, %struct.TYPE_27__** @seaf, align 8
  %280 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = load i8*, i8** %6, align 8
  %283 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %284 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 8
  %286 = call i32 @seaf_filelock_manager_unlock_wt_file(i32 %281, i8* %282, i32 %285)
  br label %287

287:                                              ; preds = %278, %267
  %288 = load i8*, i8** %9, align 8
  %289 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %290 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %289, i32 0, i32 2
  %291 = load i32, i32* %290, align 8
  %292 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %293 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %292, i32 0, i32 4
  %294 = load i32, i32* %293, align 8
  %295 = load %struct.cache_entry*, %struct.cache_entry** %30, align 8
  %296 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = call i32 @delete_path(i8* %288, i32 %291, i32 %294, i32 %298)
  %300 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %301 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %300, i32 0, i32 2
  %302 = load i32, i32* %301, align 8
  %303 = call i32 @remove_from_index_with_prefix(%struct.index_state* %17, i32 %302, i32* null)
  %304 = load i8*, i8** %9, align 8
  %305 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %306 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %305, i32 0, i32 2
  %307 = load i32, i32* %306, align 8
  %308 = call i32 @try_add_empty_parent_dir_entry(i8* %304, %struct.index_state* %17, i32 %307)
  br label %361

309:                                              ; preds = %231
  %310 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %311 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %310, i32 0, i32 0
  %312 = load i64, i64* %311, align 8
  %313 = load i64, i64* @DIFF_STATUS_DIR_DELETED, align 8
  %314 = icmp eq i64 %312, %313
  br i1 %314, label %315, label %360

315:                                              ; preds = %309
  %316 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %317 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %316, i32 0, i32 2
  %318 = load i32, i32* %317, align 8
  %319 = call i32 (i8*, i32, ...) @seaf_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32 %318)
  %320 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %321 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %320, i32 0, i32 2
  %322 = load i32, i32* %321, align 8
  %323 = call i64 @should_ignore_on_checkout(i32 %322, i64* null)
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %330

325:                                              ; preds = %315
  %326 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %327 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %326, i32 0, i32 2
  %328 = load i32, i32* %327, align 8
  %329 = call i32 @seaf_message(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0), i32 %328)
  br label %362

330:                                              ; preds = %315
  %331 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %332 = icmp ne %struct.TYPE_30__* %331, null
  br i1 %332, label %333, label %340

333:                                              ; preds = %330
  %334 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %335 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = load i32, i32* @EMPTY_SHA1, align 4
  %338 = call i64 @strcmp(i32 %336, i32 %337)
  %339 = icmp eq i64 %338, 0
  br i1 %339, label %340, label %341

340:                                              ; preds = %333, %330
  br label %362

341:                                              ; preds = %333
  %342 = load i8*, i8** %6, align 8
  %343 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %344 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %343, i32 0, i32 5
  %345 = load i32*, i32** %344, align 8
  %346 = load i8*, i8** %9, align 8
  %347 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %348 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %347, i32 0, i32 2
  %349 = load i32, i32* %348, align 8
  %350 = call i32 @delete_worktree_dir(i8* %342, i32* %345, %struct.index_state* %17, i8* %346, i32 %349)
  %351 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %352 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %351, i32 0, i32 2
  %353 = load i32, i32* %352, align 8
  %354 = call i32 @remove_from_index_with_prefix(%struct.index_state* %17, i32 %353, i32* null)
  %355 = load i8*, i8** %9, align 8
  %356 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %357 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %356, i32 0, i32 2
  %358 = load i32, i32* %357, align 8
  %359 = call i32 @try_add_empty_parent_dir_entry(i8* %355, %struct.index_state* %17, i32 %358)
  br label %360

360:                                              ; preds = %341, %309
  br label %361

361:                                              ; preds = %360, %287
  br label %362

362:                                              ; preds = %361, %340, %325, %266, %250
  %363 = load %struct.TYPE_33__*, %struct.TYPE_33__** %26, align 8
  %364 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %363, i32 0, i32 1
  %365 = load %struct.TYPE_33__*, %struct.TYPE_33__** %364, align 8
  store %struct.TYPE_33__* %365, %struct.TYPE_33__** %26, align 8
  br label %228

366:                                              ; preds = %228
  %367 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  store %struct.TYPE_33__* %367, %struct.TYPE_33__** %26, align 8
  br label %368

368:                                              ; preds = %445, %366
  %369 = load %struct.TYPE_33__*, %struct.TYPE_33__** %26, align 8
  %370 = icmp ne %struct.TYPE_33__* %369, null
  br i1 %370, label %371, label %449

371:                                              ; preds = %368
  %372 = load %struct.TYPE_33__*, %struct.TYPE_33__** %26, align 8
  %373 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %372, i32 0, i32 0
  %374 = load %struct.TYPE_34__*, %struct.TYPE_34__** %373, align 8
  store %struct.TYPE_34__* %374, %struct.TYPE_34__** %27, align 8
  %375 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %376 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %375, i32 0, i32 0
  %377 = load i64, i64* %376, align 8
  %378 = load i64, i64* @DIFF_STATUS_RENAMED, align 8
  %379 = icmp eq i64 %377, %378
  br i1 %379, label %386, label %380

380:                                              ; preds = %371
  %381 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %382 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %381, i32 0, i32 0
  %383 = load i64, i64* %382, align 8
  %384 = load i64, i64* @DIFF_STATUS_DIR_RENAMED, align 8
  %385 = icmp eq i64 %383, %384
  br i1 %385, label %386, label %444

386:                                              ; preds = %380, %371
  %387 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %388 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %387, i32 0, i32 2
  %389 = load i32, i32* %388, align 8
  %390 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %391 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %390, i32 0, i32 3
  %392 = load i32, i32* %391, align 4
  %393 = call i32 (i8*, i32, ...) @seaf_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 %389, i32 %392)
  %394 = load %struct.TYPE_27__*, %struct.TYPE_27__** @seaf, align 8
  %395 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 8
  %397 = load i8*, i8** %6, align 8
  %398 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %399 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %398, i32 0, i32 2
  %400 = load i32, i32* %399, align 8
  %401 = call i64 @seaf_filelock_manager_is_file_locked(i32 %396, i8* %397, i32 %400)
  %402 = icmp ne i64 %401, 0
  br i1 %402, label %403, label %412

403:                                              ; preds = %386
  %404 = load %struct.TYPE_27__*, %struct.TYPE_27__** @seaf, align 8
  %405 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 8
  %407 = load i8*, i8** %6, align 8
  %408 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %409 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %408, i32 0, i32 2
  %410 = load i32, i32* %409, align 8
  %411 = call i32 @seaf_filelock_manager_unlock_wt_file(i32 %406, i8* %407, i32 %410)
  br label %412

412:                                              ; preds = %403, %386
  %413 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %414 = load i8*, i8** %9, align 8
  %415 = load i32*, i32** %21, align 8
  %416 = load i32*, i32** %22, align 8
  %417 = call i32 @do_rename_in_worktree(%struct.TYPE_34__* %413, i8* %414, i32* %415, i32* %416)
  %418 = load i64, i64* %8, align 8
  %419 = icmp ne i64 %418, 0
  br i1 %419, label %430, label %420

420:                                              ; preds = %412
  %421 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %422 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %421, i32 0, i32 2
  %423 = load i32, i32* %422, align 8
  %424 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %425 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %424, i32 0, i32 3
  %426 = load i32, i32* %425, align 4
  %427 = load i32*, i32** @update_sync_status, align 8
  %428 = load i8*, i8** %6, align 8
  %429 = call i32 @rename_index_entries(%struct.index_state* %17, i32 %423, i32 %426, i32* null, i32* %427, i8* %428)
  br label %438

430:                                              ; preds = %412
  %431 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %432 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %431, i32 0, i32 2
  %433 = load i32, i32* %432, align 8
  %434 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %435 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %434, i32 0, i32 3
  %436 = load i32, i32* %435, align 4
  %437 = call i32 @rename_index_entries(%struct.index_state* %17, i32 %433, i32 %436, i32* null, i32* null, i8* null)
  br label %438

438:                                              ; preds = %430, %420
  %439 = load i8*, i8** %9, align 8
  %440 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %441 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %440, i32 0, i32 2
  %442 = load i32, i32* %441, align 8
  %443 = call i32 @try_add_empty_parent_dir_entry(i8* %439, %struct.index_state* %17, i32 %442)
  br label %444

444:                                              ; preds = %438, %380
  br label %445

445:                                              ; preds = %444
  %446 = load %struct.TYPE_33__*, %struct.TYPE_33__** %26, align 8
  %447 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %446, i32 0, i32 1
  %448 = load %struct.TYPE_33__*, %struct.TYPE_33__** %447, align 8
  store %struct.TYPE_33__* %448, %struct.TYPE_33__** %26, align 8
  br label %368

449:                                              ; preds = %368
  %450 = getelementptr inbounds %struct.index_state, %struct.index_state* %17, i32 0, i32 0
  %451 = load i64, i64* %450, align 8
  %452 = icmp ne i64 %451, 0
  br i1 %452, label %453, label %455

453:                                              ; preds = %449
  %454 = call i32 @update_index(%struct.index_state* %17, i8* %35)
  br label %455

455:                                              ; preds = %453, %449
  %456 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  store %struct.TYPE_33__* %456, %struct.TYPE_33__** %26, align 8
  br label %457

457:                                              ; preds = %486, %455
  %458 = load %struct.TYPE_33__*, %struct.TYPE_33__** %26, align 8
  %459 = icmp ne %struct.TYPE_33__* %458, null
  br i1 %459, label %460, label %490

460:                                              ; preds = %457
  %461 = load %struct.TYPE_33__*, %struct.TYPE_33__** %26, align 8
  %462 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %461, i32 0, i32 0
  %463 = load %struct.TYPE_34__*, %struct.TYPE_34__** %462, align 8
  store %struct.TYPE_34__* %463, %struct.TYPE_34__** %27, align 8
  %464 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %465 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %464, i32 0, i32 0
  %466 = load i64, i64* %465, align 8
  %467 = load i64, i64* @DIFF_STATUS_ADDED, align 8
  %468 = icmp eq i64 %466, %467
  br i1 %468, label %475, label %469

469:                                              ; preds = %460
  %470 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %471 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %470, i32 0, i32 0
  %472 = load i64, i64* %471, align 8
  %473 = load i64, i64* @DIFF_STATUS_MODIFIED, align 8
  %474 = icmp eq i64 %472, %473
  br i1 %474, label %475, label %485

475:                                              ; preds = %469, %460
  %476 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %477 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %476, i32 0, i32 1
  %478 = load i64, i64* %477, align 8
  %479 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %480 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %479, i32 0, i32 4
  %481 = load i32, i32* %480, align 8
  %482 = sext i32 %481 to i64
  %483 = add nsw i64 %482, %478
  %484 = trunc i64 %483 to i32
  store i32 %484, i32* %480, align 8
  br label %485

485:                                              ; preds = %475, %469
  br label %486

486:                                              ; preds = %485
  %487 = load %struct.TYPE_33__*, %struct.TYPE_33__** %26, align 8
  %488 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %487, i32 0, i32 1
  %489 = load %struct.TYPE_33__*, %struct.TYPE_33__** %488, align 8
  store %struct.TYPE_33__* %489, %struct.TYPE_33__** %26, align 8
  br label %457

490:                                              ; preds = %457
  %491 = load i8*, i8** %6, align 8
  %492 = load i32, i32* %7, align 4
  %493 = load i8*, i8** %9, align 8
  %494 = load i32*, i32** %20, align 8
  %495 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %496 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  %497 = load i32*, i32** %21, align 8
  %498 = load i32*, i32** %22, align 8
  %499 = load i8*, i8** %5, align 8
  %500 = load i32*, i32** %24, align 8
  %501 = call i32 @download_files_http(i8* %491, i32 %492, i8* %493, %struct.index_state* %17, i8* %35, i32* %494, %struct.TYPE_32__* %495, %struct.TYPE_33__* %496, i32* %497, i32* %498, i8* %499, i32* %500)
  store i32 %501, i32* %18, align 4
  br label %502

502:                                              ; preds = %490, %176, %154, %130, %105, %89, %78
  %503 = call i32 @discard_index(%struct.index_state* %17)
  %504 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %505 = call i32 @seaf_branch_unref(%struct.TYPE_31__* %504)
  %506 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %507 = call i32 @seaf_commit_unref(%struct.TYPE_30__* %506)
  %508 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %509 = call i32 @seaf_commit_unref(%struct.TYPE_30__* %508)
  %510 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  %511 = load i64, i64* @diff_entry_free, align 8
  %512 = trunc i64 %511 to i32
  %513 = call i32 @g_list_free_full(%struct.TYPE_33__* %510, i32 %512)
  %514 = load i32*, i32** %20, align 8
  %515 = call i32 @g_free(i32* %514)
  %516 = load i32*, i32** %21, align 8
  %517 = icmp ne i32* %516, null
  br i1 %517, label %518, label %521

518:                                              ; preds = %502
  %519 = load i32*, i32** %21, align 8
  %520 = call i32 @g_hash_table_destroy(i32* %519)
  br label %521

521:                                              ; preds = %518, %502
  %522 = load i32*, i32** %22, align 8
  %523 = icmp ne i32* %522, null
  br i1 %523, label %524, label %527

524:                                              ; preds = %521
  %525 = load i32*, i32** %22, align 8
  %526 = call i32 @g_hash_table_destroy(i32* %525)
  br label %527

527:                                              ; preds = %524, %521
  %528 = load %struct.TYPE_33__*, %struct.TYPE_33__** %23, align 8
  %529 = icmp ne %struct.TYPE_33__* %528, null
  br i1 %529, label %530, label %533

530:                                              ; preds = %527
  %531 = load %struct.TYPE_33__*, %struct.TYPE_33__** %23, align 8
  %532 = call i32 @seaf_repo_free_ignore_files(%struct.TYPE_33__* %531)
  br label %533

533:                                              ; preds = %530, %527
  %534 = load i32, i32* %18, align 4
  store i32 %534, i32* %3, align 4
  store i32 1, i32* %25, align 4
  br label %535

535:                                              ; preds = %533, %64
  %536 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %536)
  %537 = load i32, i32* %3, align 4
  ret i32 %537
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.index_state*, i32, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i64 @read_index_from(%struct.index_state*, i8*, i32) #2

declare dso_local i32 @seaf_warning(i8*, ...) #2

declare dso_local %struct.TYPE_29__* @seaf_repo_manager_get_repo(%struct.TYPE_35__*, i8*) #2

declare dso_local %struct.TYPE_31__* @seaf_branch_manager_get_branch(i32, i8*, i8*) #2

declare dso_local %struct.TYPE_30__* @seaf_commit_manager_get_commit(i32, i8*, i32, i8*) #2

declare dso_local i64 @diff_commit_roots(i8*, i32, i32, i32, %struct.TYPE_33__**, i32) #2

declare dso_local i64 @expand_diff_results(i8*, i32, i32, i32, %struct.TYPE_33__**) #2

declare dso_local i32* @seafile_crypt_new(i32, i8*, i8*) #2

declare dso_local i32 @seafile_decrypt_repo_enc_key(i32, i8*, i32, i32, i8*, i8*) #2

declare dso_local i32* @g_hash_table_new_full(i32, i32, i32 (i32*)*, ...) #2

declare dso_local i32 @g_free(i32*) #2

declare dso_local %struct.TYPE_33__* @seaf_repo_load_ignore_files(i8*) #2

declare dso_local i32 @seaf_debug(i8*, i32, ...) #2

declare dso_local i64 @should_ignore_on_checkout(i32, i64*) #2

declare dso_local i32 @seaf_message(i8*, i32) #2

declare dso_local %struct.cache_entry* @index_name_exists(%struct.index_state*, i32, i32, i32) #2

declare dso_local i32 @strlen(i32) #2

declare dso_local i64 @seaf_filelock_manager_is_file_locked(i32, i8*, i32) #2

declare dso_local i32 @seaf_filelock_manager_unlock_wt_file(i32, i8*, i32) #2

declare dso_local i32 @delete_path(i8*, i32, i32, i32) #2

declare dso_local i32 @remove_from_index_with_prefix(%struct.index_state*, i32, i32*) #2

declare dso_local i32 @try_add_empty_parent_dir_entry(i8*, %struct.index_state*, i32) #2

declare dso_local i64 @strcmp(i32, i32) #2

declare dso_local i32 @delete_worktree_dir(i8*, i32*, %struct.index_state*, i8*, i32) #2

declare dso_local i32 @do_rename_in_worktree(%struct.TYPE_34__*, i8*, i32*, i32*) #2

declare dso_local i32 @rename_index_entries(%struct.index_state*, i32, i32, i32*, i32*, i8*) #2

declare dso_local i32 @update_index(%struct.index_state*, i8*) #2

declare dso_local i32 @download_files_http(i8*, i32, i8*, %struct.index_state*, i8*, i32*, %struct.TYPE_32__*, %struct.TYPE_33__*, i32*, i32*, i8*, i32*) #2

declare dso_local i32 @discard_index(%struct.index_state*) #2

declare dso_local i32 @seaf_branch_unref(%struct.TYPE_31__*) #2

declare dso_local i32 @seaf_commit_unref(%struct.TYPE_30__*) #2

declare dso_local i32 @g_list_free_full(%struct.TYPE_33__*, i32) #2

declare dso_local i32 @g_hash_table_destroy(i32*) #2

declare dso_local i32 @seaf_repo_free_ignore_files(%struct.TYPE_33__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
