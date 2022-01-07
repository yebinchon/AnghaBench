; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_check_module/extr_ngx_http_upstream_check_module.c_ngx_http_upstream_check.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_check_module/extr_ngx_http_upstream_check_module.c_ngx_http_upstream_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i64, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.TYPE_24__*, i64 }
%struct.TYPE_25__ = type { i64, i64, i64, i64, i64, %struct.TYPE_22__, %struct.TYPE_20__, %struct.TYPE_27__*, i8*, i8* }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_20__ = type { i64, i32 }

@ngx_http_upstream_check_module = common dso_local global i32 0, align 4
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"type=\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"port=\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"interval=\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"timeout=\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"rise=\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"fall=\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"default_down=\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [49 x i8] c"invalid value \22%s\22, it must be \22true\22 or \22false\22\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"unique=\00", align 1
@NGX_CONF_UNSET_PTR = common dso_local global %struct.TYPE_27__* null, align 8
@.str.11 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@NGX_CONF_OK = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [23 x i8] c"invalid parameter \22%V\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_26__*, i32*, i8*)* @ngx_http_upstream_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_upstream_check(%struct.TYPE_26__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_24__, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_27__*, align 8
  %19 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 0, i64* %11, align 8
  store i64 2, i64* %12, align 8
  store i64 5, i64* %13, align 8
  store i8* inttoptr (i64 30000 to i8*), i8** %16, align 8
  store i8* inttoptr (i64 1000 to i8*), i8** %17, align 8
  store i64 1, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %20 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  store %struct.TYPE_24__* %24, %struct.TYPE_24__** %8, align 8
  %25 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %26 = load i32, i32* @ngx_http_upstream_check_module, align 4
  %27 = call %struct.TYPE_25__* @ngx_http_conf_get_module_srv_conf(%struct.TYPE_26__* %25, i32 %26)
  store %struct.TYPE_25__* %27, %struct.TYPE_25__** %19, align 8
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %29 = icmp eq %struct.TYPE_25__* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %31, i8** %4, align 8
  br label %435

32:                                               ; preds = %3
  store i64 1, i64* %10, align 8
  br label %33

33:                                               ; preds = %352, %32
  %34 = load i64, i64* %10, align 8
  %35 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ult i64 %34, %39
  br i1 %40, label %41, label %355

41:                                               ; preds = %33
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %43 = load i64, i64* %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %45, align 8
  %47 = call i64 @ngx_strncmp(%struct.TYPE_24__* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %74

49:                                               ; preds = %41
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %51 = load i64, i64* %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %54, 5
  %56 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 1
  store i64 %55, i64* %56, align 8
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %58 = load i64, i64* %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %61, i64 5
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 0
  store %struct.TYPE_24__* %62, %struct.TYPE_24__** %63, align 8
  %64 = call i8* @ngx_http_get_check_type_conf(%struct.TYPE_24__* %9)
  %65 = bitcast i8* %64 to %struct.TYPE_27__*
  %66 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %66, i32 0, i32 7
  store %struct.TYPE_27__* %65, %struct.TYPE_27__** %67, align 8
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %69 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %68, i32 0, i32 7
  %70 = load %struct.TYPE_27__*, %struct.TYPE_27__** %69, align 8
  %71 = icmp eq %struct.TYPE_27__* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %49
  br label %427

73:                                               ; preds = %49
  br label %352

74:                                               ; preds = %41
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %76 = load i64, i64* %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %78, align 8
  %80 = call i64 @ngx_strncmp(%struct.TYPE_24__* %79, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %111

82:                                               ; preds = %74
  %83 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %84 = load i64, i64* %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = sub nsw i64 %87, 5
  %89 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 1
  store i64 %88, i64* %89, align 8
  %90 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %91 = load i64, i64* %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_24__*, %struct.TYPE_24__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %94, i64 5
  %96 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 0
  store %struct.TYPE_24__* %95, %struct.TYPE_24__** %96, align 8
  %97 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 0
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = call i8* @ngx_atoi(%struct.TYPE_24__* %98, i64 %100)
  %102 = ptrtoint i8* %101 to i64
  store i64 %102, i64* %11, align 8
  %103 = load i64, i64* %11, align 8
  %104 = load i64, i64* @NGX_ERROR, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %109, label %106

106:                                              ; preds = %82
  %107 = load i64, i64* %11, align 8
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %106, %82
  br label %427

110:                                              ; preds = %106
  br label %352

111:                                              ; preds = %74
  %112 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %113 = load i64, i64* %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %115, align 8
  %117 = call i64 @ngx_strncmp(%struct.TYPE_24__* %116, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 9)
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %148

119:                                              ; preds = %111
  %120 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %121 = load i64, i64* %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %120, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = sub nsw i64 %124, 9
  %126 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 1
  store i64 %125, i64* %126, align 8
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %128 = load i64, i64* %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_24__*, %struct.TYPE_24__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %131, i64 9
  %133 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 0
  store %struct.TYPE_24__* %132, %struct.TYPE_24__** %133, align 8
  %134 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 0
  %135 = load %struct.TYPE_24__*, %struct.TYPE_24__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = call i8* @ngx_atoi(%struct.TYPE_24__* %135, i64 %137)
  store i8* %138, i8** %16, align 8
  %139 = load i8*, i8** %16, align 8
  %140 = load i64, i64* @NGX_ERROR, align 8
  %141 = inttoptr i64 %140 to i8*
  %142 = icmp eq i8* %139, %141
  br i1 %142, label %146, label %143

143:                                              ; preds = %119
  %144 = load i8*, i8** %16, align 8
  %145 = icmp eq i8* %144, null
  br i1 %145, label %146, label %147

146:                                              ; preds = %143, %119
  br label %427

147:                                              ; preds = %143
  br label %352

148:                                              ; preds = %111
  %149 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %150 = load i64, i64* %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %149, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_24__*, %struct.TYPE_24__** %152, align 8
  %154 = call i64 @ngx_strncmp(%struct.TYPE_24__* %153, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 8)
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %156, label %185

156:                                              ; preds = %148
  %157 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %158 = load i64, i64* %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %157, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = sub nsw i64 %161, 8
  %163 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 1
  store i64 %162, i64* %163, align 8
  %164 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %165 = load i64, i64* %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %164, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_24__*, %struct.TYPE_24__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %168, i64 8
  %170 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 0
  store %struct.TYPE_24__* %169, %struct.TYPE_24__** %170, align 8
  %171 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 0
  %172 = load %struct.TYPE_24__*, %struct.TYPE_24__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = call i8* @ngx_atoi(%struct.TYPE_24__* %172, i64 %174)
  store i8* %175, i8** %17, align 8
  %176 = load i8*, i8** %17, align 8
  %177 = load i64, i64* @NGX_ERROR, align 8
  %178 = inttoptr i64 %177 to i8*
  %179 = icmp eq i8* %176, %178
  br i1 %179, label %183, label %180

180:                                              ; preds = %156
  %181 = load i8*, i8** %17, align 8
  %182 = icmp eq i8* %181, null
  br i1 %182, label %183, label %184

183:                                              ; preds = %180, %156
  br label %427

184:                                              ; preds = %180
  br label %352

185:                                              ; preds = %148
  %186 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %187 = load i64, i64* %10, align 8
  %188 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %186, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_24__*, %struct.TYPE_24__** %189, align 8
  %191 = call i64 @ngx_strncmp(%struct.TYPE_24__* %190, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 5)
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %193, label %222

193:                                              ; preds = %185
  %194 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %195 = load i64, i64* %10, align 8
  %196 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %194, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = sub nsw i64 %198, 5
  %200 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 1
  store i64 %199, i64* %200, align 8
  %201 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %202 = load i64, i64* %10, align 8
  %203 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %201, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_24__*, %struct.TYPE_24__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %205, i64 5
  %207 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 0
  store %struct.TYPE_24__* %206, %struct.TYPE_24__** %207, align 8
  %208 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 0
  %209 = load %struct.TYPE_24__*, %struct.TYPE_24__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = call i8* @ngx_atoi(%struct.TYPE_24__* %209, i64 %211)
  %213 = ptrtoint i8* %212 to i64
  store i64 %213, i64* %12, align 8
  %214 = load i64, i64* %12, align 8
  %215 = load i64, i64* @NGX_ERROR, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %220, label %217

217:                                              ; preds = %193
  %218 = load i64, i64* %12, align 8
  %219 = icmp eq i64 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %217, %193
  br label %427

221:                                              ; preds = %217
  br label %352

222:                                              ; preds = %185
  %223 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %224 = load i64, i64* %10, align 8
  %225 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %223, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %225, i32 0, i32 0
  %227 = load %struct.TYPE_24__*, %struct.TYPE_24__** %226, align 8
  %228 = call i64 @ngx_strncmp(%struct.TYPE_24__* %227, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 5)
  %229 = icmp eq i64 %228, 0
  br i1 %229, label %230, label %259

230:                                              ; preds = %222
  %231 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %232 = load i64, i64* %10, align 8
  %233 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %231, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = sub nsw i64 %235, 5
  %237 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 1
  store i64 %236, i64* %237, align 8
  %238 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %239 = load i64, i64* %10, align 8
  %240 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %238, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %240, i32 0, i32 0
  %242 = load %struct.TYPE_24__*, %struct.TYPE_24__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %242, i64 5
  %244 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 0
  store %struct.TYPE_24__* %243, %struct.TYPE_24__** %244, align 8
  %245 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 0
  %246 = load %struct.TYPE_24__*, %struct.TYPE_24__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = call i8* @ngx_atoi(%struct.TYPE_24__* %246, i64 %248)
  %250 = ptrtoint i8* %249 to i64
  store i64 %250, i64* %13, align 8
  %251 = load i64, i64* %13, align 8
  %252 = load i64, i64* @NGX_ERROR, align 8
  %253 = icmp eq i64 %251, %252
  br i1 %253, label %257, label %254

254:                                              ; preds = %230
  %255 = load i64, i64* %13, align 8
  %256 = icmp eq i64 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %254, %230
  br label %427

258:                                              ; preds = %254
  br label %352

259:                                              ; preds = %222
  %260 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %261 = load i64, i64* %10, align 8
  %262 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %260, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %262, i32 0, i32 0
  %264 = load %struct.TYPE_24__*, %struct.TYPE_24__** %263, align 8
  %265 = call i64 @ngx_strncmp(%struct.TYPE_24__* %264, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 13)
  %266 = icmp eq i64 %265, 0
  br i1 %266, label %267, label %305

267:                                              ; preds = %259
  %268 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %269 = load i64, i64* %10, align 8
  %270 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %268, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %270, i32 0, i32 1
  %272 = load i64, i64* %271, align 8
  %273 = sub nsw i64 %272, 13
  %274 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 1
  store i64 %273, i64* %274, align 8
  %275 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %276 = load i64, i64* %10, align 8
  %277 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %275, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %277, i32 0, i32 0
  %279 = load %struct.TYPE_24__*, %struct.TYPE_24__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %279, i64 13
  %281 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 0
  store %struct.TYPE_24__* %280, %struct.TYPE_24__** %281, align 8
  %282 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 0
  %283 = load %struct.TYPE_24__*, %struct.TYPE_24__** %282, align 8
  %284 = call i64 @ngx_strcasecmp(%struct.TYPE_24__* %283, i32* bitcast ([5 x i8]* @.str.7 to i32*))
  %285 = icmp eq i64 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %267
  store i64 1, i64* %14, align 8
  br label %304

287:                                              ; preds = %267
  %288 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 0
  %289 = load %struct.TYPE_24__*, %struct.TYPE_24__** %288, align 8
  %290 = call i64 @ngx_strcasecmp(%struct.TYPE_24__* %289, i32* bitcast ([6 x i8]* @.str.8 to i32*))
  %291 = icmp eq i64 %290, 0
  br i1 %291, label %292, label %293

292:                                              ; preds = %287
  store i64 0, i64* %14, align 8
  br label %303

293:                                              ; preds = %287
  %294 = load i32, i32* @NGX_LOG_EMERG, align 4
  %295 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %296 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %297 = load i64, i64* %10, align 8
  %298 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %296, i64 %297
  %299 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %298, i32 0, i32 0
  %300 = load %struct.TYPE_24__*, %struct.TYPE_24__** %299, align 8
  %301 = call i32 @ngx_conf_log_error(i32 %294, %struct.TYPE_26__* %295, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0), %struct.TYPE_24__* %300)
  %302 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %302, i8** %4, align 8
  br label %435

303:                                              ; preds = %292
  br label %304

304:                                              ; preds = %303, %286
  br label %352

305:                                              ; preds = %259
  %306 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %307 = load i64, i64* %10, align 8
  %308 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %306, i64 %307
  %309 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %308, i32 0, i32 0
  %310 = load %struct.TYPE_24__*, %struct.TYPE_24__** %309, align 8
  %311 = call i64 @ngx_strncmp(%struct.TYPE_24__* %310, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 7)
  %312 = icmp eq i64 %311, 0
  br i1 %312, label %313, label %351

313:                                              ; preds = %305
  %314 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %315 = load i64, i64* %10, align 8
  %316 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %314, i64 %315
  %317 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %316, i32 0, i32 1
  %318 = load i64, i64* %317, align 8
  %319 = sub nsw i64 %318, 7
  %320 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 1
  store i64 %319, i64* %320, align 8
  %321 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %322 = load i64, i64* %10, align 8
  %323 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %321, i64 %322
  %324 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %323, i32 0, i32 0
  %325 = load %struct.TYPE_24__*, %struct.TYPE_24__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %325, i64 7
  %327 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 0
  store %struct.TYPE_24__* %326, %struct.TYPE_24__** %327, align 8
  %328 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 0
  %329 = load %struct.TYPE_24__*, %struct.TYPE_24__** %328, align 8
  %330 = call i64 @ngx_strcasecmp(%struct.TYPE_24__* %329, i32* bitcast ([5 x i8]* @.str.7 to i32*))
  %331 = icmp eq i64 %330, 0
  br i1 %331, label %332, label %333

332:                                              ; preds = %313
  store i64 1, i64* %15, align 8
  br label %350

333:                                              ; preds = %313
  %334 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 0
  %335 = load %struct.TYPE_24__*, %struct.TYPE_24__** %334, align 8
  %336 = call i64 @ngx_strcasecmp(%struct.TYPE_24__* %335, i32* bitcast ([6 x i8]* @.str.8 to i32*))
  %337 = icmp eq i64 %336, 0
  br i1 %337, label %338, label %339

338:                                              ; preds = %333
  store i64 0, i64* %15, align 8
  br label %349

339:                                              ; preds = %333
  %340 = load i32, i32* @NGX_LOG_EMERG, align 4
  %341 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %342 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %343 = load i64, i64* %10, align 8
  %344 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %342, i64 %343
  %345 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %344, i32 0, i32 0
  %346 = load %struct.TYPE_24__*, %struct.TYPE_24__** %345, align 8
  %347 = call i32 @ngx_conf_log_error(i32 %340, %struct.TYPE_26__* %341, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0), %struct.TYPE_24__* %346)
  %348 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %348, i8** %4, align 8
  br label %435

349:                                              ; preds = %338
  br label %350

350:                                              ; preds = %349, %332
  br label %352

351:                                              ; preds = %305
  br label %427

352:                                              ; preds = %350, %304, %258, %221, %184, %147, %110, %73
  %353 = load i64, i64* %10, align 8
  %354 = add i64 %353, 1
  store i64 %354, i64* %10, align 8
  br label %33

355:                                              ; preds = %33
  %356 = load i64, i64* %11, align 8
  %357 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %358 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %357, i32 0, i32 0
  store i64 %356, i64* %358, align 8
  %359 = load i8*, i8** %16, align 8
  %360 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %361 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %360, i32 0, i32 9
  store i8* %359, i8** %361, align 8
  %362 = load i8*, i8** %17, align 8
  %363 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %364 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %363, i32 0, i32 8
  store i8* %362, i8** %364, align 8
  %365 = load i64, i64* %13, align 8
  %366 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %367 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %366, i32 0, i32 1
  store i64 %365, i64* %367, align 8
  %368 = load i64, i64* %12, align 8
  %369 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %370 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %369, i32 0, i32 2
  store i64 %368, i64* %370, align 8
  %371 = load i64, i64* %14, align 8
  %372 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %373 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %372, i32 0, i32 3
  store i64 %371, i64* %373, align 8
  %374 = load i64, i64* %15, align 8
  %375 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %376 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %375, i32 0, i32 4
  store i64 %374, i64* %376, align 8
  %377 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %378 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %377, i32 0, i32 7
  %379 = load %struct.TYPE_27__*, %struct.TYPE_27__** %378, align 8
  %380 = load %struct.TYPE_27__*, %struct.TYPE_27__** @NGX_CONF_UNSET_PTR, align 8
  %381 = icmp eq %struct.TYPE_27__* %379, %380
  br i1 %381, label %382, label %388

382:                                              ; preds = %355
  %383 = call i32 @ngx_str_set(%struct.TYPE_24__* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  %384 = call i8* @ngx_http_get_check_type_conf(%struct.TYPE_24__* %9)
  %385 = bitcast i8* %384 to %struct.TYPE_27__*
  %386 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %387 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %386, i32 0, i32 7
  store %struct.TYPE_27__* %385, %struct.TYPE_27__** %387, align 8
  br label %388

388:                                              ; preds = %382, %355
  %389 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %390 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %389, i32 0, i32 7
  %391 = load %struct.TYPE_27__*, %struct.TYPE_27__** %390, align 8
  store %struct.TYPE_27__* %391, %struct.TYPE_27__** %18, align 8
  %392 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %393 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %392, i32 0, i32 6
  %394 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %393, i32 0, i32 0
  %395 = load i64, i64* %394, align 8
  %396 = icmp eq i64 %395, 0
  br i1 %396, label %397, label %412

397:                                              ; preds = %388
  %398 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %399 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %398, i32 0, i32 1
  %400 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %399, i32 0, i32 1
  %401 = load i32, i32* %400, align 8
  %402 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %403 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %402, i32 0, i32 6
  %404 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %403, i32 0, i32 1
  store i32 %401, i32* %404, align 8
  %405 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %406 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %405, i32 0, i32 1
  %407 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %406, i32 0, i32 0
  %408 = load i64, i64* %407, align 8
  %409 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %410 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %409, i32 0, i32 6
  %411 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %410, i32 0, i32 0
  store i64 %408, i64* %411, align 8
  br label %412

412:                                              ; preds = %397, %388
  %413 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %414 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %413, i32 0, i32 5
  %415 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %414, i32 0, i32 0
  %416 = load i64, i64* %415, align 8
  %417 = icmp eq i64 %416, 0
  br i1 %417, label %418, label %425

418:                                              ; preds = %412
  %419 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %420 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %419, i32 0, i32 0
  %421 = load i64, i64* %420, align 8
  %422 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %423 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %422, i32 0, i32 5
  %424 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %423, i32 0, i32 0
  store i64 %421, i64* %424, align 8
  br label %425

425:                                              ; preds = %418, %412
  %426 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %426, i8** %4, align 8
  br label %435

427:                                              ; preds = %351, %257, %220, %183, %146, %109, %72
  %428 = load i32, i32* @NGX_LOG_EMERG, align 4
  %429 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %430 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %431 = load i64, i64* %10, align 8
  %432 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %430, i64 %431
  %433 = call i32 @ngx_conf_log_error(i32 %428, %struct.TYPE_26__* %429, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), %struct.TYPE_24__* %432)
  %434 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %434, i8** %4, align 8
  br label %435

435:                                              ; preds = %427, %425, %339, %293, %30
  %436 = load i8*, i8** %4, align 8
  ret i8* %436
}

declare dso_local %struct.TYPE_25__* @ngx_http_conf_get_module_srv_conf(%struct.TYPE_26__*, i32) #1

declare dso_local i64 @ngx_strncmp(%struct.TYPE_24__*, i8*, i32) #1

declare dso_local i8* @ngx_http_get_check_type_conf(%struct.TYPE_24__*) #1

declare dso_local i8* @ngx_atoi(%struct.TYPE_24__*, i64) #1

declare dso_local i64 @ngx_strcasecmp(%struct.TYPE_24__*, i32*) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_26__*, i32, i8*, %struct.TYPE_24__*) #1

declare dso_local i32 @ngx_str_set(%struct.TYPE_24__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
