; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_static_module.c_ngx_http_static_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_static_module.c_ngx_http_static_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_39__ = type { i32, i32, i32, %struct.TYPE_39__*, i64, i32, %struct.TYPE_47__, %struct.TYPE_49__, %struct.TYPE_50__, i32, %struct.TYPE_46__* }
%struct.TYPE_47__ = type { i64, i32, i32, %struct.TYPE_45__*, i32 }
%struct.TYPE_45__ = type { i32, %struct.TYPE_44__, i32 }
%struct.TYPE_44__ = type { i64, i8* }
%struct.TYPE_49__ = type { i64, i32 }
%struct.TYPE_50__ = type { i8*, i32 }
%struct.TYPE_46__ = type { %struct.TYPE_53__* }
%struct.TYPE_53__ = type { i8* }
%struct.TYPE_51__ = type { i32, i8* }
%struct.TYPE_42__ = type { i64, i32, i32, i32, %struct.TYPE_43__*, i64 }
%struct.TYPE_43__ = type { i8*, i32, %struct.TYPE_53__*, %struct.TYPE_51__ }
%struct.TYPE_41__ = type { i32*, %struct.TYPE_42__* }
%struct.TYPE_52__ = type { i32, i8*, i64, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_40__ = type { %struct.TYPE_48__, i32*, i32, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_48__ = type { i32 }

@NGX_HTTP_GET = common dso_local global i32 0, align 4
@NGX_HTTP_HEAD = common dso_local global i32 0, align 4
@NGX_HTTP_POST = common dso_local global i32 0, align 4
@NGX_HTTP_NOT_ALLOWED = common dso_local global i64 0, align 8
@NGX_DECLINED = common dso_local global i64 0, align 8
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"http filename: \22%s\22\00", align 1
@ngx_http_core_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@NGX_HTTP_NOT_FOUND = common dso_local global i64 0, align 8
@NGX_HTTP_FORBIDDEN = common dso_local global i64 0, align 8
@NGX_LOG_CRIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"%s \22%s\22 failed\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"http static fd: %d\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"http dir\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Location\00", align 1
@NGX_HTTP_MOVED_PERMANENTLY = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [27 x i8] c"\22%s\22 is not a regular file\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"sending response to client\00", align 1
@NGX_HTTP_OK = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_39__*)* @ngx_http_static_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_static_handler(%struct.TYPE_39__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_39__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_51__, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_53__*, align 8
  %12 = alloca %struct.TYPE_42__*, align 8
  %13 = alloca %struct.TYPE_41__, align 8
  %14 = alloca %struct.TYPE_52__, align 8
  %15 = alloca %struct.TYPE_40__*, align 8
  store %struct.TYPE_39__* %0, %struct.TYPE_39__** %3, align 8
  %16 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @NGX_HTTP_GET, align 4
  %20 = load i32, i32* @NGX_HTTP_HEAD, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @NGX_HTTP_POST, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %18, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %1
  %27 = load i64, i64* @NGX_HTTP_NOT_ALLOWED, align 8
  store i64 %27, i64* %2, align 8
  br label %472

28:                                               ; preds = %1
  %29 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %29, i32 0, i32 8
  %31 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %33, i32 0, i32 8
  %35 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %32, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 47
  br i1 %42, label %43, label %45

43:                                               ; preds = %28
  %44 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %44, i64* %2, align 8
  br label %472

45:                                               ; preds = %28
  %46 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %46, i32 0, i32 10
  %48 = load %struct.TYPE_46__*, %struct.TYPE_46__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_53__*, %struct.TYPE_53__** %49, align 8
  store %struct.TYPE_53__* %50, %struct.TYPE_53__** %11, align 8
  %51 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %52 = call i8* @ngx_http_map_uri_to_path(%struct.TYPE_39__* %51, %struct.TYPE_51__* %8, i64* %6, i32 0)
  store i8* %52, i8** %4, align 8
  %53 = load i8*, i8** %4, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %45
  %56 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %56, i64* %2, align 8
  br label %472

57:                                               ; preds = %45
  %58 = load i8*, i8** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %8, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = ptrtoint i8* %58 to i64
  %62 = ptrtoint i8* %60 to i64
  %63 = sub i64 %61, %62
  %64 = trunc i64 %63 to i32
  %65 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %8, i32 0, i32 0
  store i32 %64, i32* %65, align 8
  %66 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %67 = load %struct.TYPE_53__*, %struct.TYPE_53__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %8, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @ngx_log_debug1(i32 %66, %struct.TYPE_53__* %67, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %69)
  %71 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %72 = load i32, i32* @ngx_http_core_module, align 4
  %73 = call %struct.TYPE_40__* @ngx_http_get_module_loc_conf(%struct.TYPE_39__* %71, i32 %72)
  store %struct.TYPE_40__* %73, %struct.TYPE_40__** %15, align 8
  %74 = call i32 @ngx_memzero(%struct.TYPE_52__* %14, i32 80)
  %75 = load %struct.TYPE_40__*, %struct.TYPE_40__** %15, align 8
  %76 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %75, i32 0, i32 10
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %14, i32 0, i32 13
  store i32 %77, i32* %78, align 8
  %79 = load %struct.TYPE_40__*, %struct.TYPE_40__** %15, align 8
  %80 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %79, i32 0, i32 9
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %14, i32 0, i32 12
  store i32 %81, i32* %82, align 4
  %83 = load %struct.TYPE_40__*, %struct.TYPE_40__** %15, align 8
  %84 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %83, i32 0, i32 8
  %85 = load i32, i32* %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %14, i32 0, i32 11
  store i32 %85, i32* %86, align 8
  %87 = load %struct.TYPE_40__*, %struct.TYPE_40__** %15, align 8
  %88 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %87, i32 0, i32 7
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %14, i32 0, i32 10
  store i32 %89, i32* %90, align 4
  %91 = load %struct.TYPE_40__*, %struct.TYPE_40__** %15, align 8
  %92 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %14, i32 0, i32 9
  store i32 %93, i32* %94, align 8
  %95 = load %struct.TYPE_40__*, %struct.TYPE_40__** %15, align 8
  %96 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %14, i32 0, i32 8
  store i32 %97, i32* %98, align 4
  %99 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %100 = load %struct.TYPE_40__*, %struct.TYPE_40__** %15, align 8
  %101 = call i64 @ngx_http_set_disable_symlinks(%struct.TYPE_39__* %99, %struct.TYPE_40__* %100, %struct.TYPE_51__* %8, %struct.TYPE_52__* %14)
  %102 = load i64, i64* @NGX_OK, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %57
  %105 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %105, i64* %2, align 8
  br label %472

106:                                              ; preds = %57
  %107 = load %struct.TYPE_40__*, %struct.TYPE_40__** %15, align 8
  %108 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 8
  %113 = call i64 @ngx_open_cached_file(i32 %109, %struct.TYPE_51__* %8, %struct.TYPE_52__* %14, i32 %112)
  %114 = load i64, i64* @NGX_OK, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %153

116:                                              ; preds = %106
  %117 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %14, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  switch i32 %118, label %127 [
    i32 0, label %119
    i32 129, label %121
    i32 128, label %121
    i32 130, label %121
    i32 133, label %124
  ]

119:                                              ; preds = %116
  %120 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %120, i64* %2, align 8
  br label %472

121:                                              ; preds = %116, %116, %116
  %122 = load i32, i32* @NGX_LOG_ERR, align 4
  store i32 %122, i32* %10, align 4
  %123 = load i64, i64* @NGX_HTTP_NOT_FOUND, align 8
  store i64 %123, i64* %9, align 8
  br label %130

124:                                              ; preds = %116
  %125 = load i32, i32* @NGX_LOG_ERR, align 4
  store i32 %125, i32* %10, align 4
  %126 = load i64, i64* @NGX_HTTP_FORBIDDEN, align 8
  store i64 %126, i64* %9, align 8
  br label %130

127:                                              ; preds = %116
  %128 = load i32, i32* @NGX_LOG_CRIT, align 4
  store i32 %128, i32* %10, align 4
  %129 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %129, i64* %9, align 8
  br label %130

130:                                              ; preds = %127, %124, %121
  %131 = load i64, i64* %9, align 8
  %132 = load i64, i64* @NGX_HTTP_NOT_FOUND, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %139, label %134

134:                                              ; preds = %130
  %135 = load %struct.TYPE_40__*, %struct.TYPE_40__** %15, align 8
  %136 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %151

139:                                              ; preds = %134, %130
  %140 = load i32, i32* %10, align 4
  %141 = load %struct.TYPE_53__*, %struct.TYPE_53__** %11, align 8
  %142 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %14, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %14, i32 0, i32 7
  %145 = load i32, i32* %144, align 8
  %146 = sext i32 %145 to i64
  %147 = inttoptr i64 %146 to i8*
  %148 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %8, i32 0, i32 1
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 (i32, %struct.TYPE_53__*, i32, i8*, i8*, ...) @ngx_log_error(i32 %140, %struct.TYPE_53__* %141, i32 %143, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %147, i8* %149)
  br label %151

151:                                              ; preds = %139, %134
  %152 = load i64, i64* %9, align 8
  store i64 %152, i64* %2, align 8
  br label %472

153:                                              ; preds = %106
  %154 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %154, i32 0, i32 9
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %156, 0
  %158 = xor i1 %157, true
  %159 = zext i1 %158 to i32
  %160 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %160, i32 0, i32 1
  store i32 %159, i32* %161, align 4
  %162 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %163 = load %struct.TYPE_53__*, %struct.TYPE_53__** %11, align 8
  %164 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %14, i32 0, i32 1
  %165 = load i8*, i8** %164, align 8
  %166 = call i32 @ngx_log_debug1(i32 %162, %struct.TYPE_53__* %163, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %165)
  %167 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %14, i32 0, i32 6
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %307

170:                                              ; preds = %153
  %171 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %172 = load %struct.TYPE_53__*, %struct.TYPE_53__** %11, align 8
  %173 = call i32 @ngx_log_debug0(i32 %171, %struct.TYPE_53__* %172, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %174 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %175 = call i32 @ngx_http_clear_location(%struct.TYPE_39__* %174)
  %176 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %176, i32 0, i32 6
  %178 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %177, i32 0, i32 4
  %179 = call %struct.TYPE_45__* @ngx_list_push(i32* %178)
  %180 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %180, i32 0, i32 6
  %182 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %181, i32 0, i32 3
  store %struct.TYPE_45__* %179, %struct.TYPE_45__** %182, align 8
  %183 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %183, i32 0, i32 6
  %185 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %184, i32 0, i32 3
  %186 = load %struct.TYPE_45__*, %struct.TYPE_45__** %185, align 8
  %187 = icmp eq %struct.TYPE_45__* %186, null
  br i1 %187, label %188, label %190

188:                                              ; preds = %170
  %189 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %189, i64* %2, align 8
  br label %472

190:                                              ; preds = %170
  %191 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %191, i32 0, i32 8
  %193 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = add nsw i32 %194, 1
  %196 = sext i32 %195 to i64
  store i64 %196, i64* %7, align 8
  %197 = load %struct.TYPE_40__*, %struct.TYPE_40__** %15, align 8
  %198 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %222, label %201

201:                                              ; preds = %190
  %202 = load %struct.TYPE_40__*, %struct.TYPE_40__** %15, align 8
  %203 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %202, i32 0, i32 1
  %204 = load i32*, i32** %203, align 8
  %205 = icmp eq i32* %204, null
  br i1 %205, label %206, label %222

206:                                              ; preds = %201
  %207 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %207, i32 0, i32 7
  %209 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = icmp eq i64 %210, 0
  br i1 %211, label %212, label %222

212:                                              ; preds = %206
  %213 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %8, i32 0, i32 1
  %214 = load i8*, i8** %213, align 8
  %215 = load %struct.TYPE_40__*, %struct.TYPE_40__** %15, align 8
  %216 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i8, i8* %214, i64 %219
  store i8* %220, i8** %5, align 8
  %221 = load i8*, i8** %4, align 8
  store i8 47, i8* %221, align 1
  br label %280

222:                                              ; preds = %206, %201, %190
  %223 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %223, i32 0, i32 7
  %225 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %236

228:                                              ; preds = %222
  %229 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %229, i32 0, i32 7
  %231 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = add nsw i64 %232, 1
  %234 = load i64, i64* %7, align 8
  %235 = add i64 %234, %233
  store i64 %235, i64* %7, align 8
  br label %236

236:                                              ; preds = %228, %222
  %237 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %238 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %237, i32 0, i32 5
  %239 = load i32, i32* %238, align 8
  %240 = load i64, i64* %7, align 8
  %241 = call i8* @ngx_pnalloc(i32 %239, i64 %240)
  store i8* %241, i8** %5, align 8
  %242 = load i8*, i8** %5, align 8
  %243 = icmp eq i8* %242, null
  br i1 %243, label %244, label %248

244:                                              ; preds = %236
  %245 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %246 = call i32 @ngx_http_clear_location(%struct.TYPE_39__* %245)
  %247 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %247, i64* %2, align 8
  br label %472

248:                                              ; preds = %236
  %249 = load i8*, i8** %5, align 8
  %250 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %250, i32 0, i32 8
  %252 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %251, i32 0, i32 0
  %253 = load i8*, i8** %252, align 8
  %254 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %254, i32 0, i32 8
  %256 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 8
  %258 = call i8* @ngx_copy(i8* %249, i8* %253, i32 %257)
  store i8* %258, i8** %4, align 8
  %259 = load i8*, i8** %4, align 8
  store i8 47, i8* %259, align 1
  %260 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %261 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %260, i32 0, i32 7
  %262 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %279

265:                                              ; preds = %248
  %266 = load i8*, i8** %4, align 8
  %267 = getelementptr inbounds i8, i8* %266, i32 1
  store i8* %267, i8** %4, align 8
  store i8 63, i8* %267, align 1
  %268 = load i8*, i8** %4, align 8
  %269 = getelementptr inbounds i8, i8* %268, i32 1
  store i8* %269, i8** %4, align 8
  %270 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %271 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %270, i32 0, i32 7
  %272 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 8
  %274 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %275 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %274, i32 0, i32 7
  %276 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = call i32 @ngx_memcpy(i8* %269, i32 %273, i64 %277)
  br label %279

279:                                              ; preds = %265, %248
  br label %280

280:                                              ; preds = %279, %212
  %281 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %282 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %281, i32 0, i32 6
  %283 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %282, i32 0, i32 3
  %284 = load %struct.TYPE_45__*, %struct.TYPE_45__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %284, i32 0, i32 0
  store i32 1, i32* %285, align 8
  %286 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %287 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %286, i32 0, i32 6
  %288 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %287, i32 0, i32 3
  %289 = load %struct.TYPE_45__*, %struct.TYPE_45__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %289, i32 0, i32 2
  %291 = call i32 @ngx_str_set(i32* %290, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %292 = load i64, i64* %7, align 8
  %293 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %294 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %293, i32 0, i32 6
  %295 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %294, i32 0, i32 3
  %296 = load %struct.TYPE_45__*, %struct.TYPE_45__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %296, i32 0, i32 1
  %298 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %297, i32 0, i32 0
  store i64 %292, i64* %298, align 8
  %299 = load i8*, i8** %5, align 8
  %300 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %301 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %300, i32 0, i32 6
  %302 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %301, i32 0, i32 3
  %303 = load %struct.TYPE_45__*, %struct.TYPE_45__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %303, i32 0, i32 1
  %305 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %304, i32 0, i32 1
  store i8* %299, i8** %305, align 8
  %306 = load i64, i64* @NGX_HTTP_MOVED_PERMANENTLY, align 8
  store i64 %306, i64* %2, align 8
  br label %472

307:                                              ; preds = %153
  %308 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %14, i32 0, i32 5
  %309 = load i32, i32* %308, align 8
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %318, label %311

311:                                              ; preds = %307
  %312 = load i32, i32* @NGX_LOG_CRIT, align 4
  %313 = load %struct.TYPE_53__*, %struct.TYPE_53__** %11, align 8
  %314 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %8, i32 0, i32 1
  %315 = load i8*, i8** %314, align 8
  %316 = call i32 (i32, %struct.TYPE_53__*, i32, i8*, i8*, ...) @ngx_log_error(i32 %312, %struct.TYPE_53__* %313, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8* %315)
  %317 = load i64, i64* @NGX_HTTP_NOT_FOUND, align 8
  store i64 %317, i64* %2, align 8
  br label %472

318:                                              ; preds = %307
  %319 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %320 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = load i32, i32* @NGX_HTTP_POST, align 4
  %323 = icmp eq i32 %321, %322
  br i1 %323, label %324, label %326

324:                                              ; preds = %318
  %325 = load i64, i64* @NGX_HTTP_NOT_ALLOWED, align 8
  store i64 %325, i64* %2, align 8
  br label %472

326:                                              ; preds = %318
  %327 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %328 = call i64 @ngx_http_discard_request_body(%struct.TYPE_39__* %327)
  store i64 %328, i64* %9, align 8
  %329 = load i64, i64* %9, align 8
  %330 = load i64, i64* @NGX_OK, align 8
  %331 = icmp ne i64 %329, %330
  br i1 %331, label %332, label %334

332:                                              ; preds = %326
  %333 = load i64, i64* %9, align 8
  store i64 %333, i64* %2, align 8
  br label %472

334:                                              ; preds = %326
  %335 = load %struct.TYPE_53__*, %struct.TYPE_53__** %11, align 8
  %336 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %335, i32 0, i32 0
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8** %336, align 8
  %337 = load i32, i32* @NGX_HTTP_OK, align 4
  %338 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %339 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %338, i32 0, i32 6
  %340 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %339, i32 0, i32 2
  store i32 %337, i32* %340, align 4
  %341 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %14, i32 0, i32 2
  %342 = load i64, i64* %341, align 8
  %343 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %344 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %343, i32 0, i32 6
  %345 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %344, i32 0, i32 0
  store i64 %342, i64* %345, align 8
  %346 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %14, i32 0, i32 4
  %347 = load i32, i32* %346, align 4
  %348 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %349 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %348, i32 0, i32 6
  %350 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %349, i32 0, i32 1
  store i32 %347, i32* %350, align 8
  %351 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %352 = call i64 @ngx_http_set_etag(%struct.TYPE_39__* %351)
  %353 = load i64, i64* @NGX_OK, align 8
  %354 = icmp ne i64 %352, %353
  br i1 %354, label %355, label %357

355:                                              ; preds = %334
  %356 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %356, i64* %2, align 8
  br label %472

357:                                              ; preds = %334
  %358 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %359 = call i64 @ngx_http_set_content_type(%struct.TYPE_39__* %358)
  %360 = load i64, i64* @NGX_OK, align 8
  %361 = icmp ne i64 %359, %360
  br i1 %361, label %362, label %364

362:                                              ; preds = %357
  %363 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %363, i64* %2, align 8
  br label %472

364:                                              ; preds = %357
  %365 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %366 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %367 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %366, i32 0, i32 3
  %368 = load %struct.TYPE_39__*, %struct.TYPE_39__** %367, align 8
  %369 = icmp ne %struct.TYPE_39__* %365, %368
  br i1 %369, label %370, label %377

370:                                              ; preds = %364
  %371 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %14, i32 0, i32 2
  %372 = load i64, i64* %371, align 8
  %373 = icmp eq i64 %372, 0
  br i1 %373, label %374, label %377

374:                                              ; preds = %370
  %375 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %376 = call i64 @ngx_http_send_header(%struct.TYPE_39__* %375)
  store i64 %376, i64* %2, align 8
  br label %472

377:                                              ; preds = %370, %364
  %378 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %379 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %378, i32 0, i32 2
  store i32 1, i32* %379, align 8
  %380 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %381 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %380, i32 0, i32 5
  %382 = load i32, i32* %381, align 8
  %383 = call %struct.TYPE_42__* @ngx_calloc_buf(i32 %382)
  store %struct.TYPE_42__* %383, %struct.TYPE_42__** %12, align 8
  %384 = load %struct.TYPE_42__*, %struct.TYPE_42__** %12, align 8
  %385 = icmp eq %struct.TYPE_42__* %384, null
  br i1 %385, label %386, label %388

386:                                              ; preds = %377
  %387 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %387, i64* %2, align 8
  br label %472

388:                                              ; preds = %377
  %389 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %390 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %389, i32 0, i32 5
  %391 = load i32, i32* %390, align 8
  %392 = call %struct.TYPE_43__* @ngx_pcalloc(i32 %391, i32 4)
  %393 = load %struct.TYPE_42__*, %struct.TYPE_42__** %12, align 8
  %394 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %393, i32 0, i32 4
  store %struct.TYPE_43__* %392, %struct.TYPE_43__** %394, align 8
  %395 = load %struct.TYPE_42__*, %struct.TYPE_42__** %12, align 8
  %396 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %395, i32 0, i32 4
  %397 = load %struct.TYPE_43__*, %struct.TYPE_43__** %396, align 8
  %398 = icmp eq %struct.TYPE_43__* %397, null
  br i1 %398, label %399, label %401

399:                                              ; preds = %388
  %400 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %400, i64* %2, align 8
  br label %472

401:                                              ; preds = %388
  %402 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %403 = call i64 @ngx_http_send_header(%struct.TYPE_39__* %402)
  store i64 %403, i64* %9, align 8
  %404 = load i64, i64* %9, align 8
  %405 = load i64, i64* @NGX_ERROR, align 8
  %406 = icmp eq i64 %404, %405
  br i1 %406, label %416, label %407

407:                                              ; preds = %401
  %408 = load i64, i64* %9, align 8
  %409 = load i64, i64* @NGX_OK, align 8
  %410 = icmp sgt i64 %408, %409
  br i1 %410, label %416, label %411

411:                                              ; preds = %407
  %412 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %413 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %412, i32 0, i32 4
  %414 = load i64, i64* %413, align 8
  %415 = icmp ne i64 %414, 0
  br i1 %415, label %416, label %418

416:                                              ; preds = %411, %407, %401
  %417 = load i64, i64* %9, align 8
  store i64 %417, i64* %2, align 8
  br label %472

418:                                              ; preds = %411
  %419 = load %struct.TYPE_42__*, %struct.TYPE_42__** %12, align 8
  %420 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %419, i32 0, i32 5
  store i64 0, i64* %420, align 8
  %421 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %14, i32 0, i32 2
  %422 = load i64, i64* %421, align 8
  %423 = load %struct.TYPE_42__*, %struct.TYPE_42__** %12, align 8
  %424 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %423, i32 0, i32 0
  store i64 %422, i64* %424, align 8
  %425 = load %struct.TYPE_42__*, %struct.TYPE_42__** %12, align 8
  %426 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %425, i32 0, i32 0
  %427 = load i64, i64* %426, align 8
  %428 = icmp ne i64 %427, 0
  %429 = zext i1 %428 to i64
  %430 = select i1 %428, i32 1, i32 0
  %431 = load %struct.TYPE_42__*, %struct.TYPE_42__** %12, align 8
  %432 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %431, i32 0, i32 1
  store i32 %430, i32* %432, align 8
  %433 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %434 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %435 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %434, i32 0, i32 3
  %436 = load %struct.TYPE_39__*, %struct.TYPE_39__** %435, align 8
  %437 = icmp eq %struct.TYPE_39__* %433, %436
  %438 = zext i1 %437 to i64
  %439 = select i1 %437, i32 1, i32 0
  %440 = load %struct.TYPE_42__*, %struct.TYPE_42__** %12, align 8
  %441 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %440, i32 0, i32 2
  store i32 %439, i32* %441, align 4
  %442 = load %struct.TYPE_42__*, %struct.TYPE_42__** %12, align 8
  %443 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %442, i32 0, i32 3
  store i32 1, i32* %443, align 8
  %444 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %14, i32 0, i32 1
  %445 = load i8*, i8** %444, align 8
  %446 = load %struct.TYPE_42__*, %struct.TYPE_42__** %12, align 8
  %447 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %446, i32 0, i32 4
  %448 = load %struct.TYPE_43__*, %struct.TYPE_43__** %447, align 8
  %449 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %448, i32 0, i32 0
  store i8* %445, i8** %449, align 8
  %450 = load %struct.TYPE_42__*, %struct.TYPE_42__** %12, align 8
  %451 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %450, i32 0, i32 4
  %452 = load %struct.TYPE_43__*, %struct.TYPE_43__** %451, align 8
  %453 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %452, i32 0, i32 3
  %454 = bitcast %struct.TYPE_51__* %453 to i8*
  %455 = bitcast %struct.TYPE_51__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %454, i8* align 8 %455, i64 16, i1 false)
  %456 = load %struct.TYPE_53__*, %struct.TYPE_53__** %11, align 8
  %457 = load %struct.TYPE_42__*, %struct.TYPE_42__** %12, align 8
  %458 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %457, i32 0, i32 4
  %459 = load %struct.TYPE_43__*, %struct.TYPE_43__** %458, align 8
  %460 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %459, i32 0, i32 2
  store %struct.TYPE_53__* %456, %struct.TYPE_53__** %460, align 8
  %461 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %14, i32 0, i32 3
  %462 = load i32, i32* %461, align 8
  %463 = load %struct.TYPE_42__*, %struct.TYPE_42__** %12, align 8
  %464 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %463, i32 0, i32 4
  %465 = load %struct.TYPE_43__*, %struct.TYPE_43__** %464, align 8
  %466 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %465, i32 0, i32 1
  store i32 %462, i32* %466, align 8
  %467 = load %struct.TYPE_42__*, %struct.TYPE_42__** %12, align 8
  %468 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %13, i32 0, i32 1
  store %struct.TYPE_42__* %467, %struct.TYPE_42__** %468, align 8
  %469 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %13, i32 0, i32 0
  store i32* null, i32** %469, align 8
  %470 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %471 = call i64 @ngx_http_output_filter(%struct.TYPE_39__* %470, %struct.TYPE_41__* %13)
  store i64 %471, i64* %2, align 8
  br label %472

472:                                              ; preds = %418, %416, %399, %386, %374, %362, %355, %332, %324, %311, %280, %244, %188, %151, %119, %104, %55, %43, %26
  %473 = load i64, i64* %2, align 8
  ret i64 %473
}

declare dso_local i8* @ngx_http_map_uri_to_path(%struct.TYPE_39__*, %struct.TYPE_51__*, i64*, i32) #1

declare dso_local i32 @ngx_log_debug1(i32, %struct.TYPE_53__*, i32, i8*, i8*) #1

declare dso_local %struct.TYPE_40__* @ngx_http_get_module_loc_conf(%struct.TYPE_39__*, i32) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_52__*, i32) #1

declare dso_local i64 @ngx_http_set_disable_symlinks(%struct.TYPE_39__*, %struct.TYPE_40__*, %struct.TYPE_51__*, %struct.TYPE_52__*) #1

declare dso_local i64 @ngx_open_cached_file(i32, %struct.TYPE_51__*, %struct.TYPE_52__*, i32) #1

declare dso_local i32 @ngx_log_error(i32, %struct.TYPE_53__*, i32, i8*, i8*, ...) #1

declare dso_local i32 @ngx_log_debug0(i32, %struct.TYPE_53__*, i32, i8*) #1

declare dso_local i32 @ngx_http_clear_location(%struct.TYPE_39__*) #1

declare dso_local %struct.TYPE_45__* @ngx_list_push(i32*) #1

declare dso_local i8* @ngx_pnalloc(i32, i64) #1

declare dso_local i8* @ngx_copy(i8*, i8*, i32) #1

declare dso_local i32 @ngx_memcpy(i8*, i32, i64) #1

declare dso_local i32 @ngx_str_set(i32*, i8*) #1

declare dso_local i64 @ngx_http_discard_request_body(%struct.TYPE_39__*) #1

declare dso_local i64 @ngx_http_set_etag(%struct.TYPE_39__*) #1

declare dso_local i64 @ngx_http_set_content_type(%struct.TYPE_39__*) #1

declare dso_local i64 @ngx_http_send_header(%struct.TYPE_39__*) #1

declare dso_local %struct.TYPE_42__* @ngx_calloc_buf(i32) #1

declare dso_local %struct.TYPE_43__* @ngx_pcalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ngx_http_output_filter(%struct.TYPE_39__*, %struct.TYPE_41__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
