; ModuleID = '/home/carl/AnghaBench/tengine/modules/mod_dubbo/extr_ngx_http_dubbo_module.c_ngx_http_dubbo_create_dubbo_request.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/mod_dubbo/extr_ngx_http_dubbo_module.c_ngx_http_dubbo_create_dubbo_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_46__ = type { i64, i64 }
%struct.TYPE_36__ = type { %struct.TYPE_51__*, %struct.TYPE_47__, i32 }
%struct.TYPE_51__ = type { i32 }
%struct.TYPE_47__ = type { %struct.TYPE_44__ }
%struct.TYPE_44__ = type { %struct.TYPE_55__ }
%struct.TYPE_55__ = type { i64, %struct.TYPE_54__*, %struct.TYPE_55__* }
%struct.TYPE_54__ = type { i64, %struct.TYPE_50__, %struct.TYPE_49__ }
%struct.TYPE_50__ = type { i64, i64 }
%struct.TYPE_49__ = type { i64 }
%struct.TYPE_42__ = type { %struct.TYPE_48__*, %struct.TYPE_42__* }
%struct.TYPE_48__ = type { i64, i64, i64, i64, i32, i64 }
%struct.TYPE_38__ = type { %struct.TYPE_40__* }
%struct.TYPE_40__ = type { i32, i32 }
%struct.TYPE_37__ = type { i32, i32, i32, %struct.TYPE_52__*, i64, i64 }
%struct.TYPE_52__ = type { i64, %struct.TYPE_39__* }
%struct.TYPE_39__ = type { i64, i64, %struct.TYPE_45__, %struct.TYPE_45__ }
%struct.TYPE_45__ = type { i64, i64 }
%struct.TYPE_41__ = type { %struct.TYPE_53__, i32 }
%struct.TYPE_53__ = type { i32* }
%struct.TYPE_34__ = type { %struct.TYPE_45__, %struct.TYPE_45__ }
%struct.TYPE_43__ = type { i64, i64 }
%struct.TYPE_35__ = type { i64, i64, i64 }

@NGX_ERROR = common dso_local global i64 0, align 8
@ngx_http_dubbo_module = common dso_local global i32 0, align 4
@DUBBO_ARG_MAP = common dso_local global i32 0, align 4
@ngx_http_dubbo_str_body = common dso_local global %struct.TYPE_46__ zeroinitializer, align 8
@NGX_CONF_UNSET = common dso_local global i64 0, align 8
@NGX_LOG_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"dubbo: cannot found pass set key from variable index %ui, %V\00", align 1
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"dubbo: encode request failed\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_36__*, i32*, i32**, %struct.TYPE_42__*)* @ngx_http_dubbo_create_dubbo_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_dubbo_create_dubbo_request(%struct.TYPE_36__* %0, i32* %1, i32** %2, %struct.TYPE_42__* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_36__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca %struct.TYPE_42__*, align 8
  %10 = alloca %struct.TYPE_38__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_40__*, align 8
  %13 = alloca %struct.TYPE_37__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_41__*, align 8
  %16 = alloca %struct.TYPE_34__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_43__*, align 8
  %21 = alloca %struct.TYPE_42__*, align 8
  %22 = alloca %struct.TYPE_35__*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.TYPE_55__*, align 8
  %26 = alloca %struct.TYPE_54__*, align 8
  %27 = alloca %struct.TYPE_39__*, align 8
  store %struct.TYPE_36__* %0, %struct.TYPE_36__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32** %2, i32*** %8, align 8
  store %struct.TYPE_42__* %3, %struct.TYPE_42__** %9, align 8
  store i64 0, i64* %18, align 8
  store %struct.TYPE_43__* null, %struct.TYPE_43__** %20, align 8
  %28 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %29 = call %struct.TYPE_38__* @ngx_http_dubbo_get_ctx(%struct.TYPE_36__* %28)
  store %struct.TYPE_38__* %29, %struct.TYPE_38__** %10, align 8
  %30 = load %struct.TYPE_38__*, %struct.TYPE_38__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_40__*, %struct.TYPE_40__** %31, align 8
  store %struct.TYPE_40__* %32, %struct.TYPE_40__** %12, align 8
  %33 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  store %struct.TYPE_42__* %33, %struct.TYPE_42__** %21, align 8
  br label %34

34:                                               ; preds = %44, %4
  %35 = load %struct.TYPE_42__*, %struct.TYPE_42__** %21, align 8
  %36 = icmp ne %struct.TYPE_42__* %35, null
  br i1 %36, label %37, label %48

37:                                               ; preds = %34
  %38 = load %struct.TYPE_42__*, %struct.TYPE_42__** %21, align 8
  %39 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_48__*, %struct.TYPE_48__** %39, align 8
  %41 = call i64 @ngx_buf_size(%struct.TYPE_48__* %40)
  %42 = load i64, i64* %18, align 8
  %43 = add i64 %42, %41
  store i64 %43, i64* %18, align 8
  br label %44

44:                                               ; preds = %37
  %45 = load %struct.TYPE_42__*, %struct.TYPE_42__** %21, align 8
  %46 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_42__*, %struct.TYPE_42__** %46, align 8
  store %struct.TYPE_42__* %47, %struct.TYPE_42__** %21, align 8
  br label %34

48:                                               ; preds = %34
  %49 = load i64, i64* %18, align 8
  %50 = icmp ugt i64 %49, 0
  br i1 %50, label %51, label %139

51:                                               ; preds = %48
  %52 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i64, i64* %18, align 8
  %56 = call %struct.TYPE_43__* @ngx_create_temp_buf(i32 %54, i64 %55)
  store %struct.TYPE_43__* %56, %struct.TYPE_43__** %20, align 8
  %57 = load %struct.TYPE_43__*, %struct.TYPE_43__** %20, align 8
  %58 = icmp eq %struct.TYPE_43__* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i64, i64* @NGX_ERROR, align 8
  store i64 %60, i64* %5, align 8
  br label %515

61:                                               ; preds = %51
  %62 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  store %struct.TYPE_42__* %62, %struct.TYPE_42__** %21, align 8
  br label %63

63:                                               ; preds = %134, %61
  %64 = load %struct.TYPE_42__*, %struct.TYPE_42__** %21, align 8
  %65 = icmp ne %struct.TYPE_42__* %64, null
  br i1 %65, label %66, label %138

66:                                               ; preds = %63
  %67 = load %struct.TYPE_42__*, %struct.TYPE_42__** %21, align 8
  %68 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_48__*, %struct.TYPE_48__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %69, i32 0, i32 5
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %110

73:                                               ; preds = %66
  %74 = load %struct.TYPE_42__*, %struct.TYPE_42__** %21, align 8
  %75 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_48__*, %struct.TYPE_48__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_43__*, %struct.TYPE_43__** %20, align 8
  %80 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_42__*, %struct.TYPE_42__** %21, align 8
  %83 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_48__*, %struct.TYPE_48__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_42__*, %struct.TYPE_42__** %21, align 8
  %88 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_48__*, %struct.TYPE_48__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = sub nsw i64 %86, %91
  %93 = load %struct.TYPE_42__*, %struct.TYPE_42__** %21, align 8
  %94 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_48__*, %struct.TYPE_48__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = call i64 @ngx_read_file(i32 %78, i64 %81, i64 %92, i64 %97)
  store i64 %98, i64* %19, align 8
  %99 = load i64, i64* %19, align 8
  %100 = load i64, i64* @NGX_ERROR, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %73
  %103 = load i64, i64* @NGX_ERROR, align 8
  store i64 %103, i64* %5, align 8
  br label %515

104:                                              ; preds = %73
  %105 = load i64, i64* %19, align 8
  %106 = load %struct.TYPE_43__*, %struct.TYPE_43__** %20, align 8
  %107 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %108, %105
  store i64 %109, i64* %107, align 8
  br label %133

110:                                              ; preds = %66
  %111 = load %struct.TYPE_43__*, %struct.TYPE_43__** %20, align 8
  %112 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.TYPE_42__*, %struct.TYPE_42__** %21, align 8
  %115 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_48__*, %struct.TYPE_48__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.TYPE_42__*, %struct.TYPE_42__** %21, align 8
  %120 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_48__*, %struct.TYPE_48__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.TYPE_42__*, %struct.TYPE_42__** %21, align 8
  %125 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_48__*, %struct.TYPE_48__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = sub nsw i64 %123, %128
  %130 = call i64 @ngx_cpymem(i64 %113, i64 %118, i64 %129)
  %131 = load %struct.TYPE_43__*, %struct.TYPE_43__** %20, align 8
  %132 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %131, i32 0, i32 0
  store i64 %130, i64* %132, align 8
  br label %133

133:                                              ; preds = %110, %104
  br label %134

134:                                              ; preds = %133
  %135 = load %struct.TYPE_42__*, %struct.TYPE_42__** %21, align 8
  %136 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_42__*, %struct.TYPE_42__** %136, align 8
  store %struct.TYPE_42__* %137, %struct.TYPE_42__** %21, align 8
  br label %63

138:                                              ; preds = %63
  br label %139

139:                                              ; preds = %138, %48
  %140 = load %struct.TYPE_40__*, %struct.TYPE_40__** %12, align 8
  %141 = icmp eq %struct.TYPE_40__* %140, null
  br i1 %141, label %142, label %144

142:                                              ; preds = %139
  %143 = load i64, i64* @NGX_ERROR, align 8
  store i64 %143, i64* %5, align 8
  br label %515

144:                                              ; preds = %139
  %145 = load i32*, i32** %7, align 8
  %146 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %147 = call i32* @ngx_create_multi_request(i32* %145, %struct.TYPE_36__* %146)
  store i32* %147, i32** %11, align 8
  %148 = load i32*, i32** %11, align 8
  %149 = icmp eq i32* %148, null
  br i1 %149, label %150, label %152

150:                                              ; preds = %144
  %151 = load i64, i64* @NGX_ERROR, align 8
  store i64 %151, i64* %5, align 8
  br label %515

152:                                              ; preds = %144
  %153 = load i32*, i32** %11, align 8
  %154 = load i32**, i32*** %8, align 8
  store i32* %153, i32** %154, align 8
  %155 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %156 = load i32, i32* @ngx_http_dubbo_module, align 4
  %157 = call %struct.TYPE_37__* @ngx_http_get_module_loc_conf(%struct.TYPE_36__* %155, i32 %156)
  store %struct.TYPE_37__* %157, %struct.TYPE_37__** %13, align 8
  %158 = load %struct.TYPE_40__*, %struct.TYPE_40__** %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i8* @ngx_array_create(i32 %160, i64 1, i32 16)
  %162 = bitcast i8* %161 to i32*
  store i32* %162, i32** %14, align 8
  %163 = load i32*, i32** %14, align 8
  %164 = icmp eq i32* %163, null
  br i1 %164, label %165, label %167

165:                                              ; preds = %152
  %166 = load i64, i64* @NGX_ERROR, align 8
  store i64 %166, i64* %5, align 8
  br label %515

167:                                              ; preds = %152
  %168 = load i32*, i32** %14, align 8
  %169 = call i64 @ngx_array_push(i32* %168)
  %170 = inttoptr i64 %169 to %struct.TYPE_41__*
  store %struct.TYPE_41__* %170, %struct.TYPE_41__** %15, align 8
  %171 = load %struct.TYPE_41__*, %struct.TYPE_41__** %15, align 8
  %172 = icmp eq %struct.TYPE_41__* %171, null
  br i1 %172, label %173, label %175

173:                                              ; preds = %167
  %174 = load i64, i64* @NGX_ERROR, align 8
  store i64 %174, i64* %5, align 8
  br label %515

175:                                              ; preds = %167
  %176 = load %struct.TYPE_37__*, %struct.TYPE_37__** %13, align 8
  %177 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %176, i32 0, i32 3
  %178 = load %struct.TYPE_52__*, %struct.TYPE_52__** %177, align 8
  %179 = icmp eq %struct.TYPE_52__* %178, null
  br i1 %179, label %180, label %181

180:                                              ; preds = %175
  store i64 1, i64* %17, align 8
  br label %187

181:                                              ; preds = %175
  %182 = load %struct.TYPE_37__*, %struct.TYPE_37__** %13, align 8
  %183 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %182, i32 0, i32 3
  %184 = load %struct.TYPE_52__*, %struct.TYPE_52__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  store i64 %186, i64* %17, align 8
  br label %187

187:                                              ; preds = %181, %180
  %188 = load i32, i32* @DUBBO_ARG_MAP, align 4
  %189 = load %struct.TYPE_41__*, %struct.TYPE_41__** %15, align 8
  %190 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %189, i32 0, i32 1
  store i32 %188, i32* %190, align 8
  %191 = load %struct.TYPE_40__*, %struct.TYPE_40__** %12, align 8
  %192 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load i64, i64* %17, align 8
  %195 = call i8* @ngx_array_create(i32 %193, i64 %194, i32 32)
  %196 = bitcast i8* %195 to i32*
  %197 = load %struct.TYPE_41__*, %struct.TYPE_41__** %15, align 8
  %198 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %198, i32 0, i32 0
  store i32* %196, i32** %199, align 8
  %200 = load %struct.TYPE_43__*, %struct.TYPE_43__** %20, align 8
  %201 = icmp ne %struct.TYPE_43__* %200, null
  br i1 %201, label %202, label %243

202:                                              ; preds = %187
  %203 = load %struct.TYPE_37__*, %struct.TYPE_37__** %13, align 8
  %204 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %203, i32 0, i32 5
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %243

207:                                              ; preds = %202
  %208 = load %struct.TYPE_41__*, %struct.TYPE_41__** %15, align 8
  %209 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %209, i32 0, i32 0
  %211 = load i32*, i32** %210, align 8
  %212 = call i64 @ngx_array_push(i32* %211)
  %213 = inttoptr i64 %212 to %struct.TYPE_34__*
  store %struct.TYPE_34__* %213, %struct.TYPE_34__** %16, align 8
  %214 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %215 = icmp eq %struct.TYPE_34__* %214, null
  br i1 %215, label %216, label %218

216:                                              ; preds = %207
  %217 = load i64, i64* @NGX_ERROR, align 8
  store i64 %217, i64* %5, align 8
  br label %515

218:                                              ; preds = %207
  %219 = load i64, i64* getelementptr inbounds (%struct.TYPE_46__, %struct.TYPE_46__* @ngx_http_dubbo_str_body, i32 0, i32 0), align 8
  %220 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %221 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %221, i32 0, i32 0
  store i64 %219, i64* %222, align 8
  %223 = load i64, i64* getelementptr inbounds (%struct.TYPE_46__, %struct.TYPE_46__* @ngx_http_dubbo_str_body, i32 0, i32 1), align 8
  %224 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %225 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %225, i32 0, i32 1
  store i64 %223, i64* %226, align 8
  %227 = load %struct.TYPE_43__*, %struct.TYPE_43__** %20, align 8
  %228 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %231 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %231, i32 0, i32 0
  store i64 %229, i64* %232, align 8
  %233 = load %struct.TYPE_43__*, %struct.TYPE_43__** %20, align 8
  %234 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = load %struct.TYPE_43__*, %struct.TYPE_43__** %20, align 8
  %237 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = sub nsw i64 %235, %238
  %240 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %241 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %241, i32 0, i32 1
  store i64 %239, i64* %242, align 8
  br label %243

243:                                              ; preds = %218, %202, %187
  %244 = load %struct.TYPE_37__*, %struct.TYPE_37__** %13, align 8
  %245 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %244, i32 0, i32 4
  %246 = load i64, i64* %245, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %326

248:                                              ; preds = %243
  %249 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %251, i32 0, i32 0
  store %struct.TYPE_55__* %252, %struct.TYPE_55__** %25, align 8
  %253 = load %struct.TYPE_55__*, %struct.TYPE_55__** %25, align 8
  %254 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %253, i32 0, i32 1
  %255 = load %struct.TYPE_54__*, %struct.TYPE_54__** %254, align 8
  store %struct.TYPE_54__* %255, %struct.TYPE_54__** %26, align 8
  store i64 0, i64* %24, align 8
  br label %256

256:                                              ; preds = %322, %248
  %257 = load i64, i64* %24, align 8
  %258 = load %struct.TYPE_55__*, %struct.TYPE_55__** %25, align 8
  %259 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = icmp uge i64 %257, %260
  br i1 %261, label %262, label %275

262:                                              ; preds = %256
  %263 = load %struct.TYPE_55__*, %struct.TYPE_55__** %25, align 8
  %264 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %263, i32 0, i32 2
  %265 = load %struct.TYPE_55__*, %struct.TYPE_55__** %264, align 8
  %266 = icmp eq %struct.TYPE_55__* %265, null
  br i1 %266, label %267, label %268

267:                                              ; preds = %262
  br label %325

268:                                              ; preds = %262
  %269 = load %struct.TYPE_55__*, %struct.TYPE_55__** %25, align 8
  %270 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %269, i32 0, i32 2
  %271 = load %struct.TYPE_55__*, %struct.TYPE_55__** %270, align 8
  store %struct.TYPE_55__* %271, %struct.TYPE_55__** %25, align 8
  %272 = load %struct.TYPE_55__*, %struct.TYPE_55__** %25, align 8
  %273 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %272, i32 0, i32 1
  %274 = load %struct.TYPE_54__*, %struct.TYPE_54__** %273, align 8
  store %struct.TYPE_54__* %274, %struct.TYPE_54__** %26, align 8
  store i64 0, i64* %24, align 8
  br label %275

275:                                              ; preds = %268, %256
  %276 = load %struct.TYPE_41__*, %struct.TYPE_41__** %15, align 8
  %277 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %277, i32 0, i32 0
  %279 = load i32*, i32** %278, align 8
  %280 = call i64 @ngx_array_push(i32* %279)
  %281 = inttoptr i64 %280 to %struct.TYPE_34__*
  store %struct.TYPE_34__* %281, %struct.TYPE_34__** %16, align 8
  %282 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %283 = icmp eq %struct.TYPE_34__* %282, null
  br i1 %283, label %284, label %286

284:                                              ; preds = %275
  %285 = load i64, i64* @NGX_ERROR, align 8
  store i64 %285, i64* %5, align 8
  br label %515

286:                                              ; preds = %275
  %287 = load %struct.TYPE_54__*, %struct.TYPE_54__** %26, align 8
  %288 = load i64, i64* %24, align 8
  %289 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %287, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %293 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %292, i32 0, i32 1
  %294 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %293, i32 0, i32 0
  store i64 %291, i64* %294, align 8
  %295 = load %struct.TYPE_54__*, %struct.TYPE_54__** %26, align 8
  %296 = load i64, i64* %24, align 8
  %297 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %295, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %297, i32 0, i32 2
  %299 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %302 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %301, i32 0, i32 1
  %303 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %302, i32 0, i32 1
  store i64 %300, i64* %303, align 8
  %304 = load %struct.TYPE_54__*, %struct.TYPE_54__** %26, align 8
  %305 = load i64, i64* %24, align 8
  %306 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %304, i64 %305
  %307 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %306, i32 0, i32 1
  %308 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %307, i32 0, i32 0
  %309 = load i64, i64* %308, align 8
  %310 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %311 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %311, i32 0, i32 0
  store i64 %309, i64* %312, align 8
  %313 = load %struct.TYPE_54__*, %struct.TYPE_54__** %26, align 8
  %314 = load i64, i64* %24, align 8
  %315 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %313, i64 %314
  %316 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %315, i32 0, i32 1
  %317 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %316, i32 0, i32 1
  %318 = load i64, i64* %317, align 8
  %319 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %320 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %320, i32 0, i32 1
  store i64 %318, i64* %321, align 8
  br label %322

322:                                              ; preds = %286
  %323 = load i64, i64* %24, align 8
  %324 = add i64 %323, 1
  store i64 %324, i64* %24, align 8
  br label %256

325:                                              ; preds = %267
  br label %326

326:                                              ; preds = %325, %243
  %327 = load %struct.TYPE_37__*, %struct.TYPE_37__** %13, align 8
  %328 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %327, i32 0, i32 3
  %329 = load %struct.TYPE_52__*, %struct.TYPE_52__** %328, align 8
  %330 = icmp ne %struct.TYPE_52__* %329, null
  br i1 %330, label %331, label %493

331:                                              ; preds = %326
  %332 = load %struct.TYPE_37__*, %struct.TYPE_37__** %13, align 8
  %333 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %332, i32 0, i32 3
  %334 = load %struct.TYPE_52__*, %struct.TYPE_52__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %334, i32 0, i32 1
  %336 = load %struct.TYPE_39__*, %struct.TYPE_39__** %335, align 8
  store %struct.TYPE_39__* %336, %struct.TYPE_39__** %27, align 8
  store i64 0, i64* %23, align 8
  br label %337

337:                                              ; preds = %489, %331
  %338 = load i64, i64* %23, align 8
  %339 = load %struct.TYPE_37__*, %struct.TYPE_37__** %13, align 8
  %340 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %339, i32 0, i32 3
  %341 = load %struct.TYPE_52__*, %struct.TYPE_52__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %341, i32 0, i32 0
  %343 = load i64, i64* %342, align 8
  %344 = icmp ult i64 %338, %343
  br i1 %344, label %345, label %492

345:                                              ; preds = %337
  %346 = load %struct.TYPE_41__*, %struct.TYPE_41__** %15, align 8
  %347 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %347, i32 0, i32 0
  %349 = load i32*, i32** %348, align 8
  %350 = call i64 @ngx_array_push(i32* %349)
  %351 = inttoptr i64 %350 to %struct.TYPE_34__*
  store %struct.TYPE_34__* %351, %struct.TYPE_34__** %16, align 8
  %352 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %353 = icmp eq %struct.TYPE_34__* %352, null
  br i1 %353, label %354, label %356

354:                                              ; preds = %345
  %355 = load i64, i64* @NGX_ERROR, align 8
  store i64 %355, i64* %5, align 8
  br label %515

356:                                              ; preds = %345
  %357 = load %struct.TYPE_39__*, %struct.TYPE_39__** %27, align 8
  %358 = load i64, i64* %23, align 8
  %359 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %357, i64 %358
  %360 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %359, i32 0, i32 0
  %361 = load i64, i64* %360, align 8
  %362 = load i64, i64* @NGX_CONF_UNSET, align 8
  %363 = icmp ne i64 %361, %362
  br i1 %363, label %364, label %413

364:                                              ; preds = %356
  %365 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %366 = load %struct.TYPE_39__*, %struct.TYPE_39__** %27, align 8
  %367 = load i64, i64* %23, align 8
  %368 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %366, i64 %367
  %369 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %368, i32 0, i32 0
  %370 = load i64, i64* %369, align 8
  %371 = call %struct.TYPE_35__* @ngx_http_get_indexed_variable(%struct.TYPE_36__* %365, i64 %370)
  store %struct.TYPE_35__* %371, %struct.TYPE_35__** %22, align 8
  %372 = load %struct.TYPE_35__*, %struct.TYPE_35__** %22, align 8
  %373 = icmp eq %struct.TYPE_35__* %372, null
  br i1 %373, label %379, label %374

374:                                              ; preds = %364
  %375 = load %struct.TYPE_35__*, %struct.TYPE_35__** %22, align 8
  %376 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %375, i32 0, i32 2
  %377 = load i64, i64* %376, align 8
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %379, label %399

379:                                              ; preds = %374, %364
  %380 = load i32, i32* @NGX_LOG_WARN, align 4
  %381 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %382 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %381, i32 0, i32 0
  %383 = load %struct.TYPE_51__*, %struct.TYPE_51__** %382, align 8
  %384 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 4
  %386 = load %struct.TYPE_39__*, %struct.TYPE_39__** %27, align 8
  %387 = load i64, i64* %23, align 8
  %388 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %386, i64 %387
  %389 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %388, i32 0, i32 0
  %390 = load i64, i64* %389, align 8
  %391 = load %struct.TYPE_39__*, %struct.TYPE_39__** %27, align 8
  %392 = load i64, i64* %23, align 8
  %393 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %391, i64 %392
  %394 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %393, i32 0, i32 3
  %395 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %380, i32 %385, i32 0, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i64 %390, %struct.TYPE_45__* %394)
  %396 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %397 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %396, i32 0, i32 1
  %398 = call i32 @ngx_str_null(%struct.TYPE_45__* %397)
  br label %412

399:                                              ; preds = %374
  %400 = load %struct.TYPE_35__*, %struct.TYPE_35__** %22, align 8
  %401 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %400, i32 0, i32 0
  %402 = load i64, i64* %401, align 8
  %403 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %404 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %403, i32 0, i32 1
  %405 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %404, i32 0, i32 0
  store i64 %402, i64* %405, align 8
  %406 = load %struct.TYPE_35__*, %struct.TYPE_35__** %22, align 8
  %407 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %406, i32 0, i32 1
  %408 = load i64, i64* %407, align 8
  %409 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %410 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %409, i32 0, i32 1
  %411 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %410, i32 0, i32 1
  store i64 %408, i64* %411, align 8
  br label %412

412:                                              ; preds = %399, %379
  br label %422

413:                                              ; preds = %356
  %414 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %415 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %414, i32 0, i32 1
  %416 = load %struct.TYPE_39__*, %struct.TYPE_39__** %27, align 8
  %417 = load i64, i64* %23, align 8
  %418 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %416, i64 %417
  %419 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %418, i32 0, i32 3
  %420 = bitcast %struct.TYPE_45__* %415 to i8*
  %421 = bitcast %struct.TYPE_45__* %419 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %420, i8* align 8 %421, i64 16, i1 false)
  br label %422

422:                                              ; preds = %413, %412
  %423 = load %struct.TYPE_39__*, %struct.TYPE_39__** %27, align 8
  %424 = load i64, i64* %23, align 8
  %425 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %423, i64 %424
  %426 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %425, i32 0, i32 1
  %427 = load i64, i64* %426, align 8
  %428 = load i64, i64* @NGX_CONF_UNSET, align 8
  %429 = icmp ne i64 %427, %428
  br i1 %429, label %430, label %479

430:                                              ; preds = %422
  %431 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %432 = load %struct.TYPE_39__*, %struct.TYPE_39__** %27, align 8
  %433 = load i64, i64* %23, align 8
  %434 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %432, i64 %433
  %435 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %434, i32 0, i32 1
  %436 = load i64, i64* %435, align 8
  %437 = call %struct.TYPE_35__* @ngx_http_get_indexed_variable(%struct.TYPE_36__* %431, i64 %436)
  store %struct.TYPE_35__* %437, %struct.TYPE_35__** %22, align 8
  %438 = load %struct.TYPE_35__*, %struct.TYPE_35__** %22, align 8
  %439 = icmp eq %struct.TYPE_35__* %438, null
  br i1 %439, label %445, label %440

440:                                              ; preds = %430
  %441 = load %struct.TYPE_35__*, %struct.TYPE_35__** %22, align 8
  %442 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %441, i32 0, i32 2
  %443 = load i64, i64* %442, align 8
  %444 = icmp ne i64 %443, 0
  br i1 %444, label %445, label %465

445:                                              ; preds = %440, %430
  %446 = load i32, i32* @NGX_LOG_WARN, align 4
  %447 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %448 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %447, i32 0, i32 0
  %449 = load %struct.TYPE_51__*, %struct.TYPE_51__** %448, align 8
  %450 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %449, i32 0, i32 0
  %451 = load i32, i32* %450, align 4
  %452 = load %struct.TYPE_39__*, %struct.TYPE_39__** %27, align 8
  %453 = load i64, i64* %23, align 8
  %454 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %452, i64 %453
  %455 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %454, i32 0, i32 1
  %456 = load i64, i64* %455, align 8
  %457 = load %struct.TYPE_39__*, %struct.TYPE_39__** %27, align 8
  %458 = load i64, i64* %23, align 8
  %459 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %457, i64 %458
  %460 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %459, i32 0, i32 2
  %461 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %446, i32 %451, i32 0, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i64 %456, %struct.TYPE_45__* %460)
  %462 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %463 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %462, i32 0, i32 0
  %464 = call i32 @ngx_str_null(%struct.TYPE_45__* %463)
  br label %478

465:                                              ; preds = %440
  %466 = load %struct.TYPE_35__*, %struct.TYPE_35__** %22, align 8
  %467 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %466, i32 0, i32 0
  %468 = load i64, i64* %467, align 8
  %469 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %470 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %469, i32 0, i32 0
  %471 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %470, i32 0, i32 0
  store i64 %468, i64* %471, align 8
  %472 = load %struct.TYPE_35__*, %struct.TYPE_35__** %22, align 8
  %473 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %472, i32 0, i32 1
  %474 = load i64, i64* %473, align 8
  %475 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %476 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %475, i32 0, i32 0
  %477 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %476, i32 0, i32 1
  store i64 %474, i64* %477, align 8
  br label %478

478:                                              ; preds = %465, %445
  br label %488

479:                                              ; preds = %422
  %480 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %481 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %480, i32 0, i32 0
  %482 = load %struct.TYPE_39__*, %struct.TYPE_39__** %27, align 8
  %483 = load i64, i64* %23, align 8
  %484 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %482, i64 %483
  %485 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %484, i32 0, i32 2
  %486 = bitcast %struct.TYPE_45__* %481 to i8*
  %487 = bitcast %struct.TYPE_45__* %485 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %486, i8* align 8 %487, i64 16, i1 false)
  br label %488

488:                                              ; preds = %479, %478
  br label %489

489:                                              ; preds = %488
  %490 = load i64, i64* %23, align 8
  %491 = add i64 %490, 1
  store i64 %491, i64* %23, align 8
  br label %337

492:                                              ; preds = %337
  br label %493

493:                                              ; preds = %492, %326
  %494 = load i64, i64* @NGX_ERROR, align 8
  %495 = load %struct.TYPE_40__*, %struct.TYPE_40__** %12, align 8
  %496 = load %struct.TYPE_37__*, %struct.TYPE_37__** %13, align 8
  %497 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %496, i32 0, i32 2
  %498 = load %struct.TYPE_37__*, %struct.TYPE_37__** %13, align 8
  %499 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %498, i32 0, i32 1
  %500 = load %struct.TYPE_37__*, %struct.TYPE_37__** %13, align 8
  %501 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %500, i32 0, i32 0
  %502 = load i32*, i32** %14, align 8
  %503 = load i32*, i32** %11, align 8
  %504 = call i64 @ngx_dubbo_encode_request(%struct.TYPE_40__* %495, i32* %497, i32* %499, i32* %501, i32* %502, i32* %503)
  %505 = icmp eq i64 %494, %504
  br i1 %505, label %506, label %513

506:                                              ; preds = %493
  %507 = load i32, i32* @NGX_LOG_ERR, align 4
  %508 = load %struct.TYPE_40__*, %struct.TYPE_40__** %12, align 8
  %509 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %508, i32 0, i32 0
  %510 = load i32, i32* %509, align 4
  %511 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %507, i32 %510, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %512 = load i64, i64* @NGX_ERROR, align 8
  store i64 %512, i64* %5, align 8
  br label %515

513:                                              ; preds = %493
  %514 = load i64, i64* @NGX_OK, align 8
  store i64 %514, i64* %5, align 8
  br label %515

515:                                              ; preds = %513, %506, %354, %284, %216, %173, %165, %150, %142, %102, %59
  %516 = load i64, i64* %5, align 8
  ret i64 %516
}

declare dso_local %struct.TYPE_38__* @ngx_http_dubbo_get_ctx(%struct.TYPE_36__*) #1

declare dso_local i64 @ngx_buf_size(%struct.TYPE_48__*) #1

declare dso_local %struct.TYPE_43__* @ngx_create_temp_buf(i32, i64) #1

declare dso_local i64 @ngx_read_file(i32, i64, i64, i64) #1

declare dso_local i64 @ngx_cpymem(i64, i64, i64) #1

declare dso_local i32* @ngx_create_multi_request(i32*, %struct.TYPE_36__*) #1

declare dso_local %struct.TYPE_37__* @ngx_http_get_module_loc_conf(%struct.TYPE_36__*, i32) #1

declare dso_local i8* @ngx_array_create(i32, i64, i32) #1

declare dso_local i64 @ngx_array_push(i32*) #1

declare dso_local %struct.TYPE_35__* @ngx_http_get_indexed_variable(%struct.TYPE_36__*, i64) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @ngx_str_null(%struct.TYPE_45__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ngx_dubbo_encode_request(%struct.TYPE_40__*, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
