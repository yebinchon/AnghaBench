; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_json.c_ngx_http_tfs_json_custom_file_info.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_json.c_ngx_http_tfs_json_custom_file_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_19__*, i32* }
%struct.TYPE_19__ = type { i32, i32, i64, i64, i64 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_16__ = type { i64, %struct.TYPE_17__*, %struct.TYPE_16__* }
%struct.TYPE_17__ = type { %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i64 }

@NGX_HTTP_TFS_GMT_TIME_SIZE = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_CUSTOM_FT_DIR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"NAME\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"PID\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"ID\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"SIZE\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"IS_FILE\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"CREATE_TIME\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"MODIFY_TIME\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"VER_NO\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_18__* @ngx_http_tfs_json_custom_file_info(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_18__*, align 8
  %17 = alloca %struct.TYPE_17__*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store i64 %2, i64* %7, align 8
  %19 = load i32, i32* @NGX_HTTP_TFS_GMT_TIME_SIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %9, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %10, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %11, align 4
  store i64 0, i64* %8, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* @NGX_HTTP_TFS_CUSTOM_FT_DIR, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @yajl_gen_array_open(i32 %30)
  br label %32

32:                                               ; preds = %29, %3
  br label %33

33:                                               ; preds = %156, %32
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %35 = icmp ne %struct.TYPE_16__* %34, null
  br i1 %35, label %36, label %160

36:                                               ; preds = %33
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %12, align 8
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %41, align 8
  store %struct.TYPE_17__* %42, %struct.TYPE_17__** %17, align 8
  store i64 0, i64* %15, align 8
  br label %43

43:                                               ; preds = %152, %36
  %44 = load i64, i64* %15, align 8
  %45 = load i64, i64* %12, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %155

47:                                               ; preds = %43
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @yajl_gen_map_open(i32 %48)
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @yajl_gen_string(i32 %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %52 = load i32, i32* %11, align 4
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %54 = load i64, i64* %15, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i8*
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %61 = load i64, i64* %15, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @yajl_gen_string(i32 %52, i8* %59, i32 %65)
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @yajl_gen_string(i32 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %69 = load i32, i32* %11, align 4
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %71 = load i64, i64* %15, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @yajl_gen_integer(i32 %69, i32 %75)
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @yajl_gen_string(i32 %77, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %79 = load i32, i32* %11, align 4
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %81 = load i64, i64* %15, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @yajl_gen_integer(i32 %79, i32 %85)
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @yajl_gen_string(i32 %87, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %89 = load i32, i32* %11, align 4
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %91 = load i64, i64* %15, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @yajl_gen_integer(i32 %89, i32 %95)
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @yajl_gen_string(i32 %97, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 7)
  %99 = load i64, i64* %7, align 8
  %100 = load i64, i64* @NGX_HTTP_TFS_CUSTOM_FT_DIR, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %111

102:                                              ; preds = %47
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %104 = load i64, i64* %15, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = ashr i32 %108, 63
  %110 = and i32 %109, 1
  store i32 %110, i32* %14, align 4
  br label %112

111:                                              ; preds = %47
  store i32 1, i32* %14, align 4
  br label %112

112:                                              ; preds = %111, %102
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* %14, align 4
  %115 = call i32 @yajl_gen_bool(i32 %113, i32 %114)
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %117 = load i64, i64* %15, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @ngx_http_tfs_time(i8* %22, i32 %121)
  %123 = load i32, i32* %11, align 4
  %124 = call i32 @yajl_gen_string(i32 %123, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 11)
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* @NGX_HTTP_TFS_GMT_TIME_SIZE, align 4
  %127 = call i32 @yajl_gen_string(i32 %125, i8* %22, i32 %126)
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %129 = load i64, i64* %15, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @ngx_http_tfs_time(i8* %22, i32 %133)
  %135 = load i32, i32* %11, align 4
  %136 = call i32 @yajl_gen_string(i32 %135, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 11)
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* @NGX_HTTP_TFS_GMT_TIME_SIZE, align 4
  %139 = call i32 @yajl_gen_string(i32 %137, i8* %22, i32 %138)
  %140 = load i32, i32* %11, align 4
  %141 = call i32 @yajl_gen_string(i32 %140, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 6)
  %142 = load i32, i32* %11, align 4
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %144 = load i64, i64* %15, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @yajl_gen_integer(i32 %142, i32 %148)
  %150 = load i32, i32* %11, align 4
  %151 = call i32 @yajl_gen_map_close(i32 %150)
  br label %152

152:                                              ; preds = %112
  %153 = load i64, i64* %15, align 8
  %154 = add i64 %153, 1
  store i64 %154, i64* %15, align 8
  br label %43

155:                                              ; preds = %43
  br label %156

156:                                              ; preds = %155
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 2
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %158, align 8
  store %struct.TYPE_16__* %159, %struct.TYPE_16__** %6, align 8
  br label %33

160:                                              ; preds = %33
  %161 = load i64, i64* %7, align 8
  %162 = load i64, i64* @NGX_HTTP_TFS_CUSTOM_FT_DIR, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %167

164:                                              ; preds = %160
  %165 = load i32, i32* %11, align 4
  %166 = call i32 @yajl_gen_array_close(i32 %165)
  br label %167

167:                                              ; preds = %164, %160
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call %struct.TYPE_18__* @ngx_alloc_chain_link(i32 %170)
  store %struct.TYPE_18__* %171, %struct.TYPE_18__** %16, align 8
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %173 = icmp eq %struct.TYPE_18__* %172, null
  br i1 %173, label %174, label %175

174:                                              ; preds = %167
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %4, align 8
  store i32 1, i32* %18, align 4
  br label %211

175:                                              ; preds = %167
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 1
  store i32* null, i32** %177, align 8
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call %struct.TYPE_19__* @ngx_calloc_buf(i32 %180)
  store %struct.TYPE_19__* %181, %struct.TYPE_19__** %13, align 8
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %183 = icmp eq %struct.TYPE_19__* %182, null
  br i1 %183, label %184, label %185

184:                                              ; preds = %175
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %4, align 8
  store i32 1, i32* %18, align 4
  br label %211

185:                                              ; preds = %175
  %186 = load i32, i32* %11, align 4
  %187 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %188 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %187, i32 0, i32 4
  %189 = bitcast i64* %188 to i8**
  %190 = call i32 @yajl_gen_get_buf(i32 %186, i8** %189, i64* %8)
  %191 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %192 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %191, i32 0, i32 4
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* %8, align 8
  %195 = add i64 %193, %194
  %196 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %197 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %196, i32 0, i32 2
  store i64 %195, i64* %197, align 8
  %198 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %199 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %198, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %202 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %201, i32 0, i32 3
  store i64 %200, i64* %202, align 8
  %203 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %204 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %203, i32 0, i32 0
  store i32 1, i32* %204, align 8
  %205 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %206 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %205, i32 0, i32 1
  store i32 1, i32* %206, align 4
  %207 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %208 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %209 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %208, i32 0, i32 0
  store %struct.TYPE_19__* %207, %struct.TYPE_19__** %209, align 8
  %210 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  store %struct.TYPE_18__* %210, %struct.TYPE_18__** %4, align 8
  store i32 1, i32* %18, align 4
  br label %211

211:                                              ; preds = %185, %184, %174
  %212 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %212)
  %213 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  ret %struct.TYPE_18__* %213
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @yajl_gen_array_open(i32) #2

declare dso_local i32 @yajl_gen_map_open(i32) #2

declare dso_local i32 @yajl_gen_string(i32, i8*, i32) #2

declare dso_local i32 @yajl_gen_integer(i32, i32) #2

declare dso_local i32 @yajl_gen_bool(i32, i32) #2

declare dso_local i32 @ngx_http_tfs_time(i8*, i32) #2

declare dso_local i32 @yajl_gen_map_close(i32) #2

declare dso_local i32 @yajl_gen_array_close(i32) #2

declare dso_local %struct.TYPE_18__* @ngx_alloc_chain_link(i32) #2

declare dso_local %struct.TYPE_19__* @ngx_calloc_buf(i32) #2

declare dso_local i32 @yajl_gen_get_buf(i32, i8**, i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
