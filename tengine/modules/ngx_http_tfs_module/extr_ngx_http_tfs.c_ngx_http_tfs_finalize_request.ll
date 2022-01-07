; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs.c_ngx_http_tfs_finalize_request.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs.c_ngx_http_tfs_finalize_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { %struct.TYPE_30__*, i32 }
%struct.TYPE_30__ = type { %struct.TYPE_36__* }
%struct.TYPE_36__ = type { i8* }
%struct.TYPE_32__ = type { i64, i64, i64, i32 (%struct.TYPE_32__*)*, %struct.TYPE_29__, i32 (%struct.TYPE_32__*)*, %struct.TYPE_36__*, %struct.TYPE_34__*, %struct.TYPE_44__, %struct.TYPE_40__, %struct.TYPE_32__*, %struct.TYPE_38__*, %struct.TYPE_35__*, i8*, i32 }
%struct.TYPE_29__ = type { %struct.TYPE_45__ }
%struct.TYPE_45__ = type { i64 }
%struct.TYPE_34__ = type { i64, i64, i64, i32 (%struct.TYPE_34__*)*, i8*, i32, %struct.TYPE_41__, %struct.TYPE_39__, i32 }
%struct.TYPE_41__ = type { i32 }
%struct.TYPE_39__ = type { i32 }
%struct.TYPE_44__ = type { %struct.TYPE_43__* }
%struct.TYPE_43__ = type { %struct.TYPE_42__ }
%struct.TYPE_42__ = type { i64 }
%struct.TYPE_40__ = type { i64 }
%struct.TYPE_38__ = type { i32 }
%struct.TYPE_35__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { %struct.TYPE_37__*, i32, i32 (%struct.TYPE_31__*, i32, i32)* }
%struct.TYPE_37__ = type { i64, i64 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"finalize http tfs request: %i\00", align 1
@NGX_HTTP_TFS_ACTION_READ_FILE = common dso_local global i64 0, align 8
@NGX_DONE = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_YES = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [63 x i8] c"curr output segment is [%uD], [%uD] is ready, wait for call...\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"close http upstream connection: %d\00", align 1
@ngx_http_request_empty_handler = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_ACTION_WRITE_FILE = common dso_local global i64 0, align 8
@NGX_HTTP_REQUEST_TIME_OUT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [43 x i8] c"segment[%uD] output complete, call next...\00", align 1
@NGX_HTTP_TFS_ACTION_KEEPALIVE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"sending to client\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@NGX_HTTP_LAST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_http_tfs_finalize_request(%struct.TYPE_33__* %0, %struct.TYPE_32__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_33__*, align 8
  %5 = alloca %struct.TYPE_32__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_32__*, align 8
  %9 = alloca %struct.TYPE_31__*, align 8
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %4, align 8
  store %struct.TYPE_32__* %1, %struct.TYPE_32__** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %11 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @ngx_log_debug1(i32 %10, %struct.TYPE_36__* %15, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %18, i32 0, i32 7
  %20 = load %struct.TYPE_34__*, %struct.TYPE_34__** %19, align 8
  %21 = icmp ne %struct.TYPE_34__* %20, null
  br i1 %21, label %22, label %66

22:                                               ; preds = %3
  %23 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @NGX_HTTP_TFS_ACTION_READ_FILE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %66

30:                                               ; preds = %22
  %31 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %31, i32 0, i32 7
  %33 = load %struct.TYPE_34__*, %struct.TYPE_34__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %35, %38
  br i1 %39, label %40, label %66

40:                                               ; preds = %30
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* @NGX_DONE, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %45, i32 0, i32 14
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  br label %49

49:                                               ; preds = %44, %40
  %50 = load i8*, i8** @NGX_HTTP_TFS_YES, align 8
  %51 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %51, i32 0, i32 13
  store i8* %50, i8** %52, align 8
  %53 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %54 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %54, i32 0, i32 6
  %56 = load %struct.TYPE_36__*, %struct.TYPE_36__** %55, align 8
  %57 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %57, i32 0, i32 7
  %59 = load %struct.TYPE_34__*, %struct.TYPE_34__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @ngx_log_debug2(i32 %53, %struct.TYPE_36__* %56, i32 0, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i64 %61, i64 %64)
  br label %332

66:                                               ; preds = %30, %22, %3
  store i64 0, i64* %7, align 8
  br label %67

67:                                               ; preds = %146, %66
  %68 = load i64, i64* %7, align 8
  %69 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ult i64 %68, %71
  br i1 %72, label %73, label %149

73:                                               ; preds = %67
  %74 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %74, i32 0, i32 12
  %76 = load %struct.TYPE_35__*, %struct.TYPE_35__** %75, align 8
  %77 = load i64, i64* %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %78, i32 0, i32 0
  store %struct.TYPE_31__* %79, %struct.TYPE_31__** %9, align 8
  %80 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %80, i32 0, i32 2
  %82 = load i32 (%struct.TYPE_31__*, i32, i32)*, i32 (%struct.TYPE_31__*, i32, i32)** %81, align 8
  %83 = icmp ne i32 (%struct.TYPE_31__*, i32, i32)* %82, null
  br i1 %83, label %84, label %93

84:                                               ; preds = %73
  %85 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %85, i32 0, i32 2
  %87 = load i32 (%struct.TYPE_31__*, i32, i32)*, i32 (%struct.TYPE_31__*, i32, i32)** %86, align 8
  %88 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %89 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 %87(%struct.TYPE_31__* %88, i32 %91, i32 0)
  br label %93

93:                                               ; preds = %84, %73
  %94 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_37__*, %struct.TYPE_37__** %95, align 8
  %97 = icmp ne %struct.TYPE_37__* %96, null
  br i1 %97, label %98, label %143

98:                                               ; preds = %93
  %99 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %99, i32 0, i32 2
  %101 = load i32 (%struct.TYPE_31__*, i32, i32)*, i32 (%struct.TYPE_31__*, i32, i32)** %100, align 8
  %102 = icmp ne i32 (%struct.TYPE_31__*, i32, i32)* %101, null
  br i1 %102, label %103, label %112

103:                                              ; preds = %98
  %104 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %104, i32 0, i32 2
  %106 = load i32 (%struct.TYPE_31__*, i32, i32)*, i32 (%struct.TYPE_31__*, i32, i32)** %105, align 8
  %107 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %108 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i32 %106(%struct.TYPE_31__* %107, i32 %110, i32 0)
  br label %112

112:                                              ; preds = %103, %98
  %113 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %114 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_30__*, %struct.TYPE_30__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_36__*, %struct.TYPE_36__** %117, align 8
  %119 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_37__*, %struct.TYPE_37__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @ngx_log_debug1(i32 %113, %struct.TYPE_36__* %118, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %123)
  %125 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_37__*, %struct.TYPE_37__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %112
  %132 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_37__*, %struct.TYPE_37__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @ngx_destroy_pool(i64 %136)
  br label %138

138:                                              ; preds = %131, %112
  %139 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_37__*, %struct.TYPE_37__** %140, align 8
  %142 = call i32 @ngx_close_connection(%struct.TYPE_37__* %141)
  br label %143

143:                                              ; preds = %138, %93
  %144 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %144, i32 0, i32 0
  store %struct.TYPE_37__* null, %struct.TYPE_37__** %145, align 8
  br label %146

146:                                              ; preds = %143
  %147 = load i64, i64* %7, align 8
  %148 = add i64 %147, 1
  store i64 %148, i64* %7, align 8
  br label %67

149:                                              ; preds = %67
  %150 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %150, i32 0, i32 7
  %152 = load %struct.TYPE_34__*, %struct.TYPE_34__** %151, align 8
  %153 = icmp ne %struct.TYPE_34__* %152, null
  br i1 %153, label %154, label %290

154:                                              ; preds = %149
  %155 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %155, i32 0, i32 10
  %157 = load %struct.TYPE_32__*, %struct.TYPE_32__** %156, align 8
  store %struct.TYPE_32__* %157, %struct.TYPE_32__** %8, align 8
  %158 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %159 = call i32 @ngx_http_tfs_free_st(%struct.TYPE_32__* %158)
  %160 = load i32, i32* @ngx_http_request_empty_handler, align 4
  %161 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %161, i32 0, i32 1
  store i32 %160, i32* %162, align 8
  %163 = load i64, i64* %6, align 8
  %164 = load i64, i64* @NGX_DONE, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %211

166:                                              ; preds = %154
  %167 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %167, i32 0, i32 7
  %169 = load %struct.TYPE_34__*, %struct.TYPE_34__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %169, i32 0, i32 8
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %170, align 4
  %173 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %173, i32 0, i32 9
  %175 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %177, i32 0, i32 7
  %179 = load %struct.TYPE_34__*, %struct.TYPE_34__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %179, i32 0, i32 7
  %181 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = sext i32 %182 to i64
  %184 = add nsw i64 %183, %176
  %185 = trunc i64 %184 to i32
  store i32 %185, i32* %181, align 8
  %186 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %186, i32 0, i32 4
  %188 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @NGX_HTTP_TFS_ACTION_WRITE_FILE, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %210

193:                                              ; preds = %166
  %194 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %194, i32 0, i32 8
  %196 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %195, i32 0, i32 0
  %197 = load %struct.TYPE_43__*, %struct.TYPE_43__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %201, i32 0, i32 7
  %203 = load %struct.TYPE_34__*, %struct.TYPE_34__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %203, i32 0, i32 6
  %205 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = sext i32 %206 to i64
  %208 = sub nsw i64 %207, %200
  %209 = trunc i64 %208 to i32
  store i32 %209, i32* %205, align 4
  br label %210

210:                                              ; preds = %193, %166
  br label %228

211:                                              ; preds = %154
  %212 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %212, i32 0, i32 7
  %214 = load %struct.TYPE_34__*, %struct.TYPE_34__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %214, i32 0, i32 5
  %216 = load i32, i32* %215, align 8
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %215, align 8
  %218 = load i64, i64* %6, align 8
  %219 = load i64, i64* @NGX_HTTP_REQUEST_TIME_OUT, align 8
  %220 = icmp eq i64 %218, %219
  br i1 %220, label %221, label %227

221:                                              ; preds = %211
  %222 = load i8*, i8** @NGX_HTTP_TFS_YES, align 8
  %223 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %223, i32 0, i32 7
  %225 = load %struct.TYPE_34__*, %struct.TYPE_34__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %225, i32 0, i32 4
  store i8* %222, i8** %226, align 8
  br label %227

227:                                              ; preds = %221, %211
  br label %228

228:                                              ; preds = %227, %210
  %229 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %229, i32 0, i32 7
  %231 = load %struct.TYPE_34__*, %struct.TYPE_34__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = add nsw i64 %233, 1
  store i64 %234, i64* %232, align 8
  %235 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %235, i32 0, i32 7
  %237 = load %struct.TYPE_34__*, %struct.TYPE_34__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = add nsw i64 %239, 1
  store i64 %240, i64* %238, align 8
  %241 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %241, i32 0, i32 7
  %243 = load %struct.TYPE_34__*, %struct.TYPE_34__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %246, i32 0, i32 7
  %248 = load %struct.TYPE_34__*, %struct.TYPE_34__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %248, i32 0, i32 2
  %250 = load i64, i64* %249, align 8
  %251 = icmp eq i64 %245, %250
  br i1 %251, label %252, label %262

252:                                              ; preds = %228
  %253 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %253, i32 0, i32 7
  %255 = load %struct.TYPE_34__*, %struct.TYPE_34__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %255, i32 0, i32 3
  %257 = load i32 (%struct.TYPE_34__*)*, i32 (%struct.TYPE_34__*)** %256, align 8
  %258 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %258, i32 0, i32 7
  %260 = load %struct.TYPE_34__*, %struct.TYPE_34__** %259, align 8
  %261 = call i32 %257(%struct.TYPE_34__* %260)
  br label %289

262:                                              ; preds = %228
  %263 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %264 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %263, i32 0, i32 4
  %265 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = load i64, i64* @NGX_HTTP_TFS_ACTION_READ_FILE, align 8
  %269 = icmp eq i64 %267, %268
  br i1 %269, label %270, label %288

270:                                              ; preds = %262
  %271 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %272 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %272, i32 0, i32 6
  %274 = load %struct.TYPE_36__*, %struct.TYPE_36__** %273, align 8
  %275 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %276 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = call i32 @ngx_log_debug1(i32 %271, %struct.TYPE_36__* %274, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 %277)
  %279 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %280 = icmp ne %struct.TYPE_32__* %279, null
  br i1 %280, label %281, label %287

281:                                              ; preds = %270
  %282 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %283 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %282, i32 0, i32 5
  %284 = load i32 (%struct.TYPE_32__*)*, i32 (%struct.TYPE_32__*)** %283, align 8
  %285 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %286 = call i32 %284(%struct.TYPE_32__* %285)
  br label %287

287:                                              ; preds = %281, %270
  br label %288

288:                                              ; preds = %287, %262
  br label %289

289:                                              ; preds = %288, %252
  br label %332

290:                                              ; preds = %149
  %291 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %292 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %291, i32 0, i32 4
  %293 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %293, i32 0, i32 0
  %295 = load i64, i64* %294, align 8
  %296 = load i64, i64* @NGX_HTTP_TFS_ACTION_KEEPALIVE, align 8
  %297 = icmp eq i64 %295, %296
  br i1 %297, label %298, label %304

298:                                              ; preds = %290
  %299 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %300 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %299, i32 0, i32 3
  %301 = load i32 (%struct.TYPE_32__*)*, i32 (%struct.TYPE_32__*)** %300, align 8
  %302 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %303 = call i32 %301(%struct.TYPE_32__* %302)
  br label %332

304:                                              ; preds = %290
  %305 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %305, i32 0, i32 2
  %307 = load i64, i64* %306, align 8
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %314

309:                                              ; preds = %304
  %310 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %311 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %310, i32 0, i32 2
  %312 = load i64, i64* %311, align 8
  %313 = call i32 @ngx_http_tfs_json_destroy(i64 %312)
  br label %314

314:                                              ; preds = %309, %304
  %315 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %316 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %315, i32 0, i32 0
  %317 = load %struct.TYPE_30__*, %struct.TYPE_30__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %317, i32 0, i32 0
  %319 = load %struct.TYPE_36__*, %struct.TYPE_36__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %319, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8** %320, align 8
  %321 = load i64, i64* %6, align 8
  %322 = load i64, i64* @NGX_OK, align 8
  %323 = icmp eq i64 %321, %322
  br i1 %323, label %324, label %328

324:                                              ; preds = %314
  %325 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %326 = load i32, i32* @NGX_HTTP_LAST, align 4
  %327 = call i64 @ngx_http_send_special(%struct.TYPE_33__* %325, i32 %326)
  store i64 %327, i64* %6, align 8
  br label %328

328:                                              ; preds = %324, %314
  %329 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %330 = load i64, i64* %6, align 8
  %331 = call i32 @ngx_http_finalize_request(%struct.TYPE_33__* %329, i64 %330)
  br label %332

332:                                              ; preds = %328, %298, %289, %49
  ret void
}

declare dso_local i32 @ngx_log_debug1(i32, %struct.TYPE_36__*, i32, i8*, i64) #1

declare dso_local i32 @ngx_log_debug2(i32, %struct.TYPE_36__*, i32, i8*, i64, i64) #1

declare dso_local i32 @ngx_destroy_pool(i64) #1

declare dso_local i32 @ngx_close_connection(%struct.TYPE_37__*) #1

declare dso_local i32 @ngx_http_tfs_free_st(%struct.TYPE_32__*) #1

declare dso_local i32 @ngx_http_tfs_json_destroy(i64) #1

declare dso_local i64 @ngx_http_send_special(%struct.TYPE_33__*, i32) #1

declare dso_local i32 @ngx_http_finalize_request(%struct.TYPE_33__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
