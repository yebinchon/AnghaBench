; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_data_server_message.c_ngx_http_tfs_data_server_create_message.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_data_server_message.c_ngx_http_tfs_data_server_create_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { i32* }
%struct.TYPE_41__ = type { i8*, i32, %struct.TYPE_40__, %struct.TYPE_39__*, %struct.TYPE_38__, i32, i32, %struct.TYPE_33__*, i32, i32, %struct.TYPE_37__, i32, %struct.TYPE_36__, %struct.TYPE_35__, i32, i32, i32*, i32 }
%struct.TYPE_40__ = type { i64, i64, i32, i32, %struct.TYPE_42__* }
%struct.TYPE_42__ = type { i32 }
%struct.TYPE_39__ = type { i32 }
%struct.TYPE_38__ = type { i32 }
%struct.TYPE_37__ = type { i64 }
%struct.TYPE_36__ = type { i32, i32, i32, %struct.TYPE_34__ }
%struct.TYPE_34__ = type { i32 }
%struct.TYPE_35__ = type { i32 }

@NGX_HTTP_TFS_NO = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_READ_V2 = common dso_local global i8* null, align 8
@NGX_HTTP_TFS_READ_STAT_FORCE = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_READ = common dso_local global i8* null, align 8
@NGX_HTTP_TFS_MAX_FRAGMENT_SIZE = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_MAX_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_33__* @ngx_http_tfs_data_server_create_message(%struct.TYPE_41__* %0) #0 {
  %2 = alloca %struct.TYPE_33__*, align 8
  %3 = alloca %struct.TYPE_41__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_33__*, align 8
  %8 = alloca %struct.TYPE_42__*, align 8
  store %struct.TYPE_41__* %0, %struct.TYPE_41__** %3, align 8
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %7, align 8
  store i64 0, i64* %4, align 8
  %9 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %9, i32 0, i32 12
  %11 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %15, i32 0, i32 4
  %17 = load %struct.TYPE_42__*, %struct.TYPE_42__** %16, align 8
  %18 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %17, i64 %21
  store %struct.TYPE_42__* %22, %struct.TYPE_42__** %8, align 8
  %23 = load i32, i32* %5, align 4
  switch i32 %23, label %313 [
    i32 137, label %24
    i32 139, label %64
    i32 136, label %176
    i32 138, label %201
  ]

24:                                               ; preds = %1
  %25 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %25, i32 0, i32 12
  %27 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @NGX_HTTP_TFS_NO, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %24
  %32 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %32, i32 0, i32 17
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %35, i32 0, i32 9
  %37 = load i32, i32* %36, align 4
  %38 = call i32* @ngx_http_tfs_json_init(i32 %34, i32 %37)
  %39 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %39, i32 0, i32 16
  store i32* %38, i32** %40, align 8
  %41 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %41, i32 0, i32 16
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %31
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %2, align 8
  br label %315

46:                                               ; preds = %31
  br label %47

47:                                               ; preds = %46, %24
  %48 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %53, i32 0, i32 0
  store i32 4, i32* %54, align 4
  %55 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %56 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %57 = load i8*, i8** @NGX_HTTP_TFS_READ_V2, align 8
  %58 = load i32, i32* @NGX_HTTP_TFS_READ_STAT_FORCE, align 4
  %59 = call %struct.TYPE_33__* @ngx_http_tfs_create_read_message(%struct.TYPE_41__* %55, %struct.TYPE_42__* %56, i8* %57, i32 %58)
  store %struct.TYPE_33__* %59, %struct.TYPE_33__** %2, align 8
  br label %315

60:                                               ; preds = %47
  %61 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %62 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %63 = call %struct.TYPE_33__* @ngx_http_tfs_create_stat_message(%struct.TYPE_41__* %61, %struct.TYPE_42__* %62)
  store %struct.TYPE_33__* %63, %struct.TYPE_33__** %2, align 8
  br label %315

64:                                               ; preds = %1
  %65 = load i8*, i8** @NGX_HTTP_TFS_READ, align 8
  %66 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 8
  %68 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %68, i32 0, i32 1
  store i32 4, i32* %69, align 8
  %70 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %108

74:                                               ; preds = %64
  %75 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %75, i32 0, i32 15
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %108

79:                                               ; preds = %74
  %80 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %80, i32 0, i32 7
  %82 = load %struct.TYPE_33__*, %struct.TYPE_33__** %81, align 8
  %83 = icmp eq %struct.TYPE_33__* %82, null
  br i1 %83, label %84, label %107

84:                                               ; preds = %79
  %85 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %85, i32 0, i32 9
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %88, i32 0, i32 8
  %90 = load i64, i64* @NGX_HTTP_TFS_MAX_FRAGMENT_SIZE, align 8
  %91 = call %struct.TYPE_33__* @ngx_http_tfs_chain_get_free_buf(i32 %87, i32* %89, i64 %90)
  store %struct.TYPE_33__* %91, %struct.TYPE_33__** %7, align 8
  %92 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %93 = icmp eq %struct.TYPE_33__* %92, null
  br i1 %93, label %94, label %95

94:                                               ; preds = %84
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %2, align 8
  br label %315

95:                                               ; preds = %84
  %96 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %100, i32 0, i32 3
  %102 = load %struct.TYPE_39__*, %struct.TYPE_39__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %102, i32 0, i32 0
  store i32 %99, i32* %103, align 4
  %104 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %105 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %105, i32 0, i32 7
  store %struct.TYPE_33__* %104, %struct.TYPE_33__** %106, align 8
  br label %107

107:                                              ; preds = %95, %79
  br label %108

108:                                              ; preds = %107, %74, %64
  %109 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %109, i32 0, i32 12
  %111 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %112, 1
  br i1 %113, label %114, label %129

114:                                              ; preds = %108
  %115 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %114
  %121 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %121, i32 0, i32 14
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %120
  %126 = load i8*, i8** @NGX_HTTP_TFS_READ_V2, align 8
  %127 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %127, i32 0, i32 0
  store i8* %126, i8** %128, align 8
  br label %129

129:                                              ; preds = %125, %120, %114, %108
  %130 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %130, i32 0, i32 12
  %132 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = icmp eq i32 %133, 2
  br i1 %134, label %135, label %165

135:                                              ; preds = %129
  %136 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = icmp sgt i32 %139, 0
  br i1 %140, label %141, label %165

141:                                              ; preds = %135
  %142 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %143 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @ngx_http_tfs_fill_file_hole(%struct.TYPE_41__* %142, i32 %146)
  store i32 %147, i32* %6, align 4
  %148 = load i32, i32* %6, align 4
  %149 = load i32, i32* @NGX_ERROR, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %141
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %2, align 8
  br label %315

152:                                              ; preds = %141
  %153 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %157, i32 0, i32 13
  %159 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %160, %156
  store i32 %161, i32* %159, align 4
  %162 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %163, i32 0, i32 2
  store i32 0, i32* %164, align 8
  br label %165

165:                                              ; preds = %152, %135, %129
  %166 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %167 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %168 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %168, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  %171 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %171, i32 0, i32 12
  %173 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = call %struct.TYPE_33__* @ngx_http_tfs_create_read_message(%struct.TYPE_41__* %166, %struct.TYPE_42__* %167, i8* %170, i32 %174)
  store %struct.TYPE_33__* %175, %struct.TYPE_33__** %2, align 8
  br label %315

176:                                              ; preds = %1
  %177 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %177, i32 0, i32 11
  %179 = load i32, i32* %178, align 8
  switch i32 %179, label %200 [
    i32 129, label %180
    i32 131, label %184
    i32 128, label %188
    i32 132, label %192
    i32 130, label %196
  ]

180:                                              ; preds = %176
  %181 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %182 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %183 = call %struct.TYPE_33__* @ngx_http_tfs_create_stat_message(%struct.TYPE_41__* %181, %struct.TYPE_42__* %182)
  store %struct.TYPE_33__* %183, %struct.TYPE_33__** %2, align 8
  br label %315

184:                                              ; preds = %176
  %185 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %186 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %187 = call %struct.TYPE_33__* @ngx_http_tfs_create_createfile_message(%struct.TYPE_41__* %185, %struct.TYPE_42__* %186)
  store %struct.TYPE_33__* %187, %struct.TYPE_33__** %2, align 8
  br label %315

188:                                              ; preds = %176
  %189 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %190 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %191 = call %struct.TYPE_33__* @ngx_http_tfs_create_write_message(%struct.TYPE_41__* %189, %struct.TYPE_42__* %190)
  store %struct.TYPE_33__* %191, %struct.TYPE_33__** %2, align 8
  br label %315

192:                                              ; preds = %176
  %193 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %194 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %195 = call %struct.TYPE_33__* @ngx_http_tfs_create_closefile_message(%struct.TYPE_41__* %193, %struct.TYPE_42__* %194)
  store %struct.TYPE_33__* %195, %struct.TYPE_33__** %2, align 8
  br label %315

196:                                              ; preds = %176
  %197 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %198 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %199 = call %struct.TYPE_33__* @ngx_http_tfs_create_unlink_message(%struct.TYPE_41__* %197, %struct.TYPE_42__* %198)
  store %struct.TYPE_33__* %199, %struct.TYPE_33__** %2, align 8
  br label %315

200:                                              ; preds = %176
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %2, align 8
  br label %315

201:                                              ; preds = %1
  %202 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %202, i32 0, i32 11
  %204 = load i32, i32* %203, align 8
  switch i32 %204, label %312 [
    i32 133, label %205
    i32 134, label %209
    i32 135, label %308
  ]

205:                                              ; preds = %201
  %206 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %207 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %208 = call %struct.TYPE_33__* @ngx_http_tfs_create_stat_message(%struct.TYPE_41__* %206, %struct.TYPE_42__* %207)
  store %struct.TYPE_33__* %208, %struct.TYPE_33__** %2, align 8
  br label %315

209:                                              ; preds = %201
  %210 = load i8*, i8** @NGX_HTTP_TFS_READ, align 8
  %211 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %211, i32 0, i32 0
  store i8* %210, i8** %212, align 8
  %213 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %213, i32 0, i32 7
  %215 = load %struct.TYPE_33__*, %struct.TYPE_33__** %214, align 8
  %216 = icmp eq %struct.TYPE_33__* %215, null
  br i1 %216, label %217, label %287

217:                                              ; preds = %209
  %218 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %218, i32 0, i32 5
  %220 = load i32, i32* %219, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %234

222:                                              ; preds = %217
  %223 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %223, i32 0, i32 10
  %225 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  store i64 %226, i64* %4, align 8
  %227 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %227, i32 0, i32 10
  %229 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %231, i32 0, i32 2
  %233 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %232, i32 0, i32 1
  store i64 %230, i64* %233, align 8
  br label %234

234:                                              ; preds = %222, %217
  %235 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %235, i32 0, i32 6
  %237 = load i32, i32* %236, align 8
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %245

239:                                              ; preds = %234
  %240 = load i64, i64* @NGX_HTTP_TFS_MAX_FRAGMENT_SIZE, align 8
  store i64 %240, i64* %4, align 8
  %241 = load i64, i64* @NGX_HTTP_TFS_MAX_SIZE, align 8
  %242 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %242, i32 0, i32 2
  %244 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %243, i32 0, i32 1
  store i64 %241, i64* %244, align 8
  br label %245

245:                                              ; preds = %239, %234
  %246 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %247 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %246, i32 0, i32 9
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %250 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %249, i32 0, i32 8
  %251 = load i64, i64* %4, align 8
  %252 = call %struct.TYPE_33__* @ngx_http_tfs_chain_get_free_buf(i32 %248, i32* %250, i64 %251)
  store %struct.TYPE_33__* %252, %struct.TYPE_33__** %7, align 8
  %253 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %254 = icmp eq %struct.TYPE_33__* %253, null
  br i1 %254, label %255, label %256

255:                                              ; preds = %245
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %2, align 8
  br label %315

256:                                              ; preds = %245
  %257 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %258 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %259 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %258, i32 0, i32 7
  store %struct.TYPE_33__* %257, %struct.TYPE_33__** %259, align 8
  %260 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %261 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %260, i32 0, i32 6
  %262 = load i32, i32* %261, align 8
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %278, label %264

264:                                              ; preds = %256
  %265 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %266 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %265, i32 0, i32 5
  %267 = load i32, i32* %266, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %278

269:                                              ; preds = %264
  %270 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %271 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %270, i32 0, i32 3
  %272 = load %struct.TYPE_39__*, %struct.TYPE_39__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %276 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %275, i32 0, i32 4
  %277 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %276, i32 0, i32 0
  store i32 %274, i32* %277, align 8
  br label %278

278:                                              ; preds = %269, %264, %256
  %279 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %280 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %279, i32 0, i32 0
  %281 = load i32*, i32** %280, align 8
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %284 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %283, i32 0, i32 3
  %285 = load %struct.TYPE_39__*, %struct.TYPE_39__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %285, i32 0, i32 0
  store i32 %282, i32* %286, align 4
  br label %287

287:                                              ; preds = %278, %209
  %288 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %289 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %288, i32 0, i32 1
  store i32 4, i32* %289, align 8
  %290 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %291 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %290, i32 0, i32 2
  %292 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %291, i32 0, i32 1
  %293 = load i64, i64* %292, align 8
  %294 = load i64, i64* @NGX_HTTP_TFS_MAX_SIZE, align 8
  %295 = icmp eq i64 %293, %294
  br i1 %295, label %296, label %300

296:                                              ; preds = %287
  %297 = load i8*, i8** @NGX_HTTP_TFS_READ_V2, align 8
  %298 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %299 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %298, i32 0, i32 0
  store i8* %297, i8** %299, align 8
  br label %300

300:                                              ; preds = %296, %287
  %301 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %302 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %303 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %304 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %303, i32 0, i32 0
  %305 = load i8*, i8** %304, align 8
  %306 = load i32, i32* @NGX_HTTP_TFS_READ_STAT_FORCE, align 4
  %307 = call %struct.TYPE_33__* @ngx_http_tfs_create_read_message(%struct.TYPE_41__* %301, %struct.TYPE_42__* %302, i8* %305, i32 %306)
  store %struct.TYPE_33__* %307, %struct.TYPE_33__** %2, align 8
  br label %315

308:                                              ; preds = %201
  %309 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %310 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %311 = call %struct.TYPE_33__* @ngx_http_tfs_create_unlink_message(%struct.TYPE_41__* %309, %struct.TYPE_42__* %310)
  store %struct.TYPE_33__* %311, %struct.TYPE_33__** %2, align 8
  br label %315

312:                                              ; preds = %201
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %2, align 8
  br label %315

313:                                              ; preds = %1
  %314 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  store %struct.TYPE_33__* %314, %struct.TYPE_33__** %2, align 8
  br label %315

315:                                              ; preds = %313, %312, %308, %300, %255, %205, %200, %196, %192, %188, %184, %180, %165, %151, %94, %60, %52, %45
  %316 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  ret %struct.TYPE_33__* %316
}

declare dso_local i32* @ngx_http_tfs_json_init(i32, i32) #1

declare dso_local %struct.TYPE_33__* @ngx_http_tfs_create_read_message(%struct.TYPE_41__*, %struct.TYPE_42__*, i8*, i32) #1

declare dso_local %struct.TYPE_33__* @ngx_http_tfs_create_stat_message(%struct.TYPE_41__*, %struct.TYPE_42__*) #1

declare dso_local %struct.TYPE_33__* @ngx_http_tfs_chain_get_free_buf(i32, i32*, i64) #1

declare dso_local i32 @ngx_http_tfs_fill_file_hole(%struct.TYPE_41__*, i32) #1

declare dso_local %struct.TYPE_33__* @ngx_http_tfs_create_createfile_message(%struct.TYPE_41__*, %struct.TYPE_42__*) #1

declare dso_local %struct.TYPE_33__* @ngx_http_tfs_create_write_message(%struct.TYPE_41__*, %struct.TYPE_42__*) #1

declare dso_local %struct.TYPE_33__* @ngx_http_tfs_create_closefile_message(%struct.TYPE_41__*, %struct.TYPE_42__*) #1

declare dso_local %struct.TYPE_33__* @ngx_http_tfs_create_unlink_message(%struct.TYPE_41__*, %struct.TYPE_42__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
