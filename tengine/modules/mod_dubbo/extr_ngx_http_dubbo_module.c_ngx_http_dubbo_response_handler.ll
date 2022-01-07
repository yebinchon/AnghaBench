; ModuleID = '/home/carl/AnghaBench/tengine/modules/mod_dubbo/extr_ngx_http_dubbo_module.c_ngx_http_dubbo_response_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/mod_dubbo/extr_ngx_http_dubbo_module.c_ngx_http_dubbo_response_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_28__ = type { i32, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { %struct.TYPE_25__*, %struct.TYPE_24__, %struct.TYPE_30__*, i32 }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_24__ = type { i64, i32 }
%struct.TYPE_30__ = type { %struct.TYPE_31__* }
%struct.TYPE_31__ = type { i32, i32, i32*, i32* }
%struct.TYPE_32__ = type { i64, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { %struct.TYPE_23__, %struct.TYPE_22__ }
%struct.TYPE_23__ = type { i64, i32* }
%struct.TYPE_22__ = type { i32, i32 }

@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"dubbo [%V]: out_bufs is not NULL, %p\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_HTTP_BAD_GATEWAY = common dso_local global i8* null, align 8
@ngx_http_dubbo_str_body = common dso_local global %struct.TYPE_21__ zeroinitializer, align 4
@ngx_http_dubbo_str_status = common dso_local global %struct.TYPE_20__ zeroinitializer, align 4
@NGX_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_http_dubbo_response_handler(%struct.TYPE_29__* %0, %struct.TYPE_28__* %1, %struct.TYPE_32__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca %struct.TYPE_32__*, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca %struct.TYPE_26__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_30__*, align 8
  %12 = alloca %struct.TYPE_31__*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %5, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %6, align 8
  store %struct.TYPE_32__* %2, %struct.TYPE_32__** %7, align 8
  %14 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  store %struct.TYPE_27__* %16, %struct.TYPE_27__** %8, align 8
  %17 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %20 = icmp ne %struct.TYPE_30__* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %3
  %22 = load i32, i32* @NGX_LOG_ERR, align 4
  %23 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %27 = call i32 @ngx_log_error(i32 %22, i32 %25, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), %struct.TYPE_28__* %26)
  %28 = load i64, i64* @NGX_ERROR, align 8
  store i64 %28, i64* %4, align 8
  br label %209

29:                                               ; preds = %3
  %30 = load i8*, i8** @NGX_HTTP_BAD_GATEWAY, align 8
  %31 = ptrtoint i8* %30 to i64
  %32 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 0
  store i64 %31, i64* %34, align 8
  %35 = load i8*, i8** @NGX_HTTP_BAD_GATEWAY, align 8
  %36 = ptrtoint i8* %35 to i64
  %37 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 0
  store i64 %36, i64* %40, align 8
  %41 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_26__*, %struct.TYPE_26__** %42, align 8
  store %struct.TYPE_26__* %43, %struct.TYPE_26__** %9, align 8
  store i64 0, i64* %10, align 8
  br label %44

44:                                               ; preds = %204, %29
  %45 = load i64, i64* %10, align 8
  %46 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ult i64 %45, %48
  br i1 %49, label %50, label %207

50:                                               ; preds = %44
  %51 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %52 = load i64, i64* %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 4
  br i1 %57, label %58, label %143

58:                                               ; preds = %50
  %59 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %60 = load i64, i64* %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @ngx_http_dubbo_str_body, i32 0, i32 1), align 4
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @ngx_http_dubbo_str_body, i32 0, i32 0), align 4
  %67 = call i64 @ngx_strncasecmp(i32 %64, i32 %65, i32 %66)
  %68 = icmp eq i64 0, %67
  br i1 %68, label %69, label %143

69:                                               ; preds = %58
  %70 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %71 = load i64, i64* %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %77, label %132

77:                                               ; preds = %69
  %78 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %79 = load i64, i64* %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %132

85:                                               ; preds = %77
  %86 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %89, i32 0, i32 3
  %91 = call %struct.TYPE_30__* @ngx_chain_get_free_buf(i32 %88, i32* %90)
  store %struct.TYPE_30__* %91, %struct.TYPE_30__** %11, align 8
  %92 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %93 = icmp eq %struct.TYPE_30__* %92, null
  br i1 %93, label %94, label %96

94:                                               ; preds = %85
  %95 = load i64, i64* @NGX_ERROR, align 8
  store i64 %95, i64* %4, align 8
  br label %209

96:                                               ; preds = %85
  %97 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %98 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %98, i32 0, i32 2
  store %struct.TYPE_30__* %97, %struct.TYPE_30__** %99, align 8
  %100 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %100, i32 0, i32 2
  %102 = load %struct.TYPE_30__*, %struct.TYPE_30__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_31__*, %struct.TYPE_31__** %103, align 8
  store %struct.TYPE_31__* %104, %struct.TYPE_31__** %12, align 8
  %105 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %105, i32 0, i32 0
  store i32 1, i32* %106, align 8
  %107 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %107, i32 0, i32 1
  store i32 1, i32* %108, align 4
  %109 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %110 = load i64, i64* %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %115, i32 0, i32 3
  store i32* %114, i32** %116, align 8
  %117 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %118 = load i64, i64* %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %117, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %124 = load i64, i64* %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds i32, i32* %122, i64 %128
  %130 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %130, i32 0, i32 2
  store i32* %129, i32** %131, align 8
  br label %132

132:                                              ; preds = %96, %77, %69
  %133 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %134 = load i64, i64* %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %133, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = trunc i64 %138 to i32
  %140 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %141, i32 0, i32 1
  store i32 %139, i32* %142, align 8
  br label %203

143:                                              ; preds = %58, %50
  %144 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %145 = load i64, i64* %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %144, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = icmp eq i32 %149, 6
  br i1 %150, label %151, label %186

151:                                              ; preds = %143
  %152 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %153 = load i64, i64* %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %152, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @ngx_http_dubbo_str_status, i32 0, i32 1), align 4
  %159 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @ngx_http_dubbo_str_status, i32 0, i32 0), align 4
  %160 = call i64 @ngx_strncasecmp(i32 %157, i32 %158, i32 %159)
  %161 = icmp eq i64 0, %160
  br i1 %161, label %162, label %186

162:                                              ; preds = %151
  %163 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %164 = load i64, i64* %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %163, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %166, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %170 = load i64, i64* %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %169, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = trunc i64 %174 to i32
  %176 = call i64 @ngx_atoi(i32* %168, i32 %175)
  store i64 %176, i64* %13, align 8
  %177 = load i64, i64* %13, align 8
  %178 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %179, i32 0, i32 0
  store i64 %177, i64* %180, align 8
  %181 = load i64, i64* %13, align 8
  %182 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_25__*, %struct.TYPE_25__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %184, i32 0, i32 0
  store i64 %181, i64* %185, align 8
  br label %202

186:                                              ; preds = %151, %143
  %187 = load i64, i64* @NGX_OK, align 8
  %188 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %189 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %190 = load i64, i64* %10, align 8
  %191 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %189, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %194 = load i64, i64* %10, align 8
  %195 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %193, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %195, i32 0, i32 0
  %197 = call i64 @ngx_http_dubbo_add_response_header(%struct.TYPE_28__* %188, %struct.TYPE_22__* %192, %struct.TYPE_23__* %196)
  %198 = icmp ne i64 %187, %197
  br i1 %198, label %199, label %201

199:                                              ; preds = %186
  %200 = load i64, i64* @NGX_ERROR, align 8
  store i64 %200, i64* %4, align 8
  br label %209

201:                                              ; preds = %186
  br label %202

202:                                              ; preds = %201, %162
  br label %203

203:                                              ; preds = %202, %132
  br label %204

204:                                              ; preds = %203
  %205 = load i64, i64* %10, align 8
  %206 = add i64 %205, 1
  store i64 %206, i64* %10, align 8
  br label %44

207:                                              ; preds = %44
  %208 = load i64, i64* @NGX_OK, align 8
  store i64 %208, i64* %4, align 8
  br label %209

209:                                              ; preds = %207, %199, %94, %21
  %210 = load i64, i64* %4, align 8
  ret i64 %210
}

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, %struct.TYPE_28__*) #1

declare dso_local i64 @ngx_strncasecmp(i32, i32, i32) #1

declare dso_local %struct.TYPE_30__* @ngx_chain_get_free_buf(i32, i32*) #1

declare dso_local i64 @ngx_atoi(i32*, i32) #1

declare dso_local i64 @ngx_http_dubbo_add_response_header(%struct.TYPE_28__*, %struct.TYPE_22__*, %struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
