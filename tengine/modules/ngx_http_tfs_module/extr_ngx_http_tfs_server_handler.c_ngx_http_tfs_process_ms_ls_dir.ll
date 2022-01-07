; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_server_handler.c_ngx_http_tfs_process_ms_ls_dir.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_server_handler.c_ngx_http_tfs_process_ms_ls_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, %struct.TYPE_23__, i32, %struct.TYPE_19__, i32, %struct.TYPE_24__*, %struct.TYPE_18__, i32, %struct.TYPE_17__*, i32, %struct.TYPE_21__*, %struct.TYPE_21__* }
%struct.TYPE_23__ = type { i64, i64, %struct.TYPE_23__* }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_24__* }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i64, i64, i64, i64 }
%struct.TYPE_22__ = type { i32, i64 }

@NGX_AGAIN = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_EXIT_LEASE_EXPIRED = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_EXIT_TABLE_VERSION_ERROR = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_STATE_ACTION_GET_META_TABLE = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_ROOT_SERVER = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"need update meta table, rc: %i\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_STATE_ACTION_DONE = common dso_local global i32 0, align 4
@NGX_DONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_http_tfs_process_ms_ls_dir(%struct.TYPE_20__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_24__**, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 11
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  store %struct.TYPE_21__* %14, %struct.TYPE_21__** %10, align 8
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  store %struct.TYPE_25__* %16, %struct.TYPE_25__** %4, align 8
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 10
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  store %struct.TYPE_21__* %19, %struct.TYPE_21__** %9, align 8
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %24 = call i64 @ngx_buf_size(%struct.TYPE_25__* %23)
  %25 = icmp ne i64 %22, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %1
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %29, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %35, i64* %2, align 8
  br label %204

36:                                               ; preds = %26, %1
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %38 = call i64 @ngx_http_tfs_meta_server_parse_message(%struct.TYPE_20__* %37)
  store i64 %38, i64* %5, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @NGX_ERROR, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i64, i64* @NGX_ERROR, align 8
  store i64 %43, i64* %2, align 8
  br label %204

44:                                               ; preds = %36
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* @NGX_HTTP_TFS_EXIT_LEASE_EXPIRED, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* @NGX_HTTP_TFS_EXIT_TABLE_VERSION_ERROR, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %76

52:                                               ; preds = %48, %44
  %53 = load i32, i32* @NGX_HTTP_TFS_STATE_ACTION_GET_META_TABLE, align 4
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %57 = call i32 @ngx_http_tfs_clear_buf(%struct.TYPE_25__* %56)
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 9
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %62 = load i64, i64* @NGX_HTTP_TFS_ROOT_SERVER, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i64 %62
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 8
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 0
  %68 = call i32 @ngx_http_tfs_peer_set_addr(i32 %60, %struct.TYPE_21__* %63, i32* %67)
  %69 = load i32, i32* @NGX_LOG_DEBUG, align 4
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 7
  %72 = load i32, i32* %71, align 8
  %73 = load i64, i64* %5, align 8
  %74 = call i32 @ngx_log_error(i32 %69, i32 %72, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %73)
  %75 = load i64, i64* @NGX_OK, align 8
  store i64 %75, i64* %2, align 8
  br label %204

76:                                               ; preds = %48
  %77 = load i64, i64* %5, align 8
  %78 = load i64, i64* @NGX_OK, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %202

80:                                               ; preds = %76
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %147

85:                                               ; preds = %80
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %142, label %91

91:                                               ; preds = %85
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 6
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %99 = call i32 @ngx_http_tfs_clear_buf(%struct.TYPE_25__* %98)
  %100 = load i64, i64* @NGX_OK, align 8
  store i64 %100, i64* %2, align 8
  br label %204

101:                                              ; preds = %91
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp sgt i64 %105, 0
  br i1 %106, label %107, label %141

107:                                              ; preds = %101
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 5
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %109, align 8
  store %struct.TYPE_24__* %110, %struct.TYPE_24__** %6, align 8
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 5
  store %struct.TYPE_24__** %112, %struct.TYPE_24__*** %7, align 8
  br label %113

113:                                              ; preds = %119, %107
  %114 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %115 = icmp ne %struct.TYPE_24__* %114, null
  br i1 %115, label %116, label %123

116:                                              ; preds = %113
  %117 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %117, i32 0, i32 0
  store %struct.TYPE_24__** %118, %struct.TYPE_24__*** %7, align 8
  br label %119

119:                                              ; preds = %116
  %120 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_24__*, %struct.TYPE_24__** %121, align 8
  store %struct.TYPE_24__* %122, %struct.TYPE_24__** %6, align 8
  br label %113

123:                                              ; preds = %113
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call %struct.TYPE_24__* @ngx_http_tfs_json_custom_file_info(i32 %126, %struct.TYPE_23__* %128, i32 %132)
  store %struct.TYPE_24__* %133, %struct.TYPE_24__** %6, align 8
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %135 = icmp eq %struct.TYPE_24__* %134, null
  br i1 %135, label %136, label %138

136:                                              ; preds = %123
  %137 = load i64, i64* @NGX_ERROR, align 8
  store i64 %137, i64* %2, align 8
  br label %204

138:                                              ; preds = %123
  %139 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %140 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %7, align 8
  store %struct.TYPE_24__* %139, %struct.TYPE_24__** %140, align 8
  br label %141

141:                                              ; preds = %138, %101
  br label %142

142:                                              ; preds = %141, %85
  %143 = load i32, i32* @NGX_HTTP_TFS_STATE_ACTION_DONE, align 4
  %144 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 2
  store i32 %143, i32* %145, align 8
  %146 = load i64, i64* @NGX_DONE, align 8
  store i64 %146, i64* %2, align 8
  br label %204

147:                                              ; preds = %80
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i32 0, i32 1
  store %struct.TYPE_23__* %149, %struct.TYPE_23__** %11, align 8
  br label %150

150:                                              ; preds = %156, %147
  %151 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %152 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %151, i32 0, i32 2
  %153 = load %struct.TYPE_23__*, %struct.TYPE_23__** %152, align 8
  %154 = icmp ne %struct.TYPE_23__* %153, null
  br i1 %154, label %155, label %160

155:                                              ; preds = %150
  br label %156

156:                                              ; preds = %155
  %157 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %158 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %157, i32 0, i32 2
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %158, align 8
  store %struct.TYPE_23__* %159, %struct.TYPE_23__** %11, align 8
  br label %150

160:                                              ; preds = %150
  %161 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %162 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = icmp sgt i64 %163, 0
  br i1 %164, label %165, label %201

165:                                              ; preds = %160
  %166 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %166, i32 0, i32 2
  %168 = load i64, i64* %167, align 8
  %169 = inttoptr i64 %168 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %169, %struct.TYPE_22__** %8, align 8
  %170 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %170, i32 0, i32 0
  store i32 1, i32* %171, align 8
  %172 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %173 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %175, i32 0, i32 1
  store i64 %174, i64* %176, align 8
  %177 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %177, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = add i64 %179, 16
  %181 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %181, i32 0, i32 3
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %185 = call i64 @ngx_buf_size(%struct.TYPE_25__* %184)
  %186 = call i64 @ngx_movemem(i64 %180, i64 %183, i64 %185)
  %187 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %187, i32 0, i32 0
  store i64 %186, i64* %188, align 8
  %189 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %189, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %192, i32 0, i32 3
  store i64 %191, i64* %193, align 8
  %194 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %195 = call i64 @ngx_buf_size(%struct.TYPE_25__* %194)
  %196 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = add nsw i64 %198, %195
  store i64 %199, i64* %197, align 8
  %200 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %200, i64* %2, align 8
  br label %204

201:                                              ; preds = %160
  br label %202

202:                                              ; preds = %201, %76
  %203 = load i64, i64* %5, align 8
  store i64 %203, i64* %2, align 8
  br label %204

204:                                              ; preds = %202, %165, %142, %136, %97, %52, %42, %34
  %205 = load i64, i64* %2, align 8
  ret i64 %205
}

declare dso_local i64 @ngx_buf_size(%struct.TYPE_25__*) #1

declare dso_local i64 @ngx_http_tfs_meta_server_parse_message(%struct.TYPE_20__*) #1

declare dso_local i32 @ngx_http_tfs_clear_buf(%struct.TYPE_25__*) #1

declare dso_local i32 @ngx_http_tfs_peer_set_addr(i32, %struct.TYPE_21__*, i32*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i64) #1

declare dso_local %struct.TYPE_24__* @ngx_http_tfs_json_custom_file_info(i32, %struct.TYPE_23__*, i32) #1

declare dso_local i64 @ngx_movemem(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
