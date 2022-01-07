; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_check_module/extr_ngx_http_upstream_check_module.c_ngx_http_upstream_check_init_srv_conf.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_check_module/extr_ngx_http_upstream_check_module.c_ngx_http_upstream_check_init_srv_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64, i64 }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_26__ = type { i64, i64 }
%struct.TYPE_22__ = type { i32* }
%struct.TYPE_23__ = type { i64, i64, i64, i64, i64, i64, %struct.TYPE_21__, %struct.TYPE_19__, %struct.TYPE_18__*, %struct.TYPE_25__* }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_19__ = type { i64, i64 }
%struct.TYPE_18__ = type { i32, i32 }

@NGX_CONF_OK = common dso_local global i8* null, align 8
@ngx_http_upstream_check_module = common dso_local global i32 0, align 4
@NGX_CONF_UNSET_UINT = common dso_local global i64 0, align 8
@NGX_CONF_UNSET_MSEC = common dso_local global i64 0, align 8
@NGX_CONF_UNSET_PTR = common dso_local global %struct.TYPE_25__* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"fastcgi\00", align 1
@fastcgi_default_request = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_24__*, i8*)* @ngx_http_upstream_check_init_srv_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_upstream_check_init_srv_conf(%struct.TYPE_24__* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %12, %struct.TYPE_22__** %9, align 8
  %13 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %14 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %18, i8** %3, align 8
  br label %188

19:                                               ; preds = %2
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %21 = load i32, i32* @ngx_http_upstream_check_module, align 4
  %22 = call %struct.TYPE_23__* @ngx_http_conf_upstream_srv_conf(%struct.TYPE_22__* %20, i32 %21)
  store %struct.TYPE_23__* %22, %struct.TYPE_23__** %10, align 8
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @NGX_CONF_UNSET_UINT, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  br label %31

31:                                               ; preds = %28, %19
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @NGX_CONF_UNSET_UINT, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 1
  store i64 2, i64* %39, align 8
  br label %40

40:                                               ; preds = %37, %31
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @NGX_CONF_UNSET_UINT, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 2
  store i64 5, i64* %48, align 8
  br label %49

49:                                               ; preds = %46, %40
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @NGX_CONF_UNSET_MSEC, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i32 0, i32 3
  store i64 0, i64* %57, align 8
  br label %58

58:                                               ; preds = %55, %49
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @NGX_CONF_UNSET_MSEC, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %65, i32 0, i32 4
  store i64 1000, i64* %66, align 8
  br label %67

67:                                               ; preds = %64, %58
  %68 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %68, i32 0, i32 5
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @NGX_CONF_UNSET_UINT, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 5
  store i64 1, i64* %75, align 8
  br label %76

76:                                               ; preds = %73, %67
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i32 0, i32 9
  %79 = load %struct.TYPE_25__*, %struct.TYPE_25__** %78, align 8
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** @NGX_CONF_UNSET_PTR, align 8
  %81 = icmp eq %struct.TYPE_25__* %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %83, i32 0, i32 9
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %84, align 8
  br label %85

85:                                               ; preds = %82, %76
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 9
  %88 = load %struct.TYPE_25__*, %struct.TYPE_25__** %87, align 8
  store %struct.TYPE_25__* %88, %struct.TYPE_25__** %8, align 8
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %90 = icmp ne %struct.TYPE_25__* %89, null
  br i1 %90, label %91, label %186

91:                                               ; preds = %85
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %92, i32 0, i32 7
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %172

97:                                               ; preds = %91
  %98 = call i32 @ngx_str_set(i32* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %99 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %100 = call %struct.TYPE_25__* @ngx_http_get_check_type_conf(i32* %6)
  %101 = icmp eq %struct.TYPE_25__* %99, %100
  br i1 %101, label %102, label %156

102:                                              ; preds = %97
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %103, i32 0, i32 8
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %102
  %110 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @fastcgi_default_request, i32 0, i32 0), align 8
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %111, i32 0, i32 7
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 1
  store i64 %110, i64* %113, align 8
  %114 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @fastcgi_default_request, i32 0, i32 1), align 8
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 7
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 0
  store i64 %114, i64* %117, align 8
  br label %155

118:                                              ; preds = %102
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %122, i32 0, i32 8
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %127, i32 0, i32 8
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = sdiv i32 %131, 2
  %133 = call %struct.TYPE_26__* @ngx_http_upstream_check_create_fastcgi_request(i32 %121, i32 %126, i32 %132)
  store %struct.TYPE_26__* %133, %struct.TYPE_26__** %7, align 8
  %134 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %135 = icmp eq %struct.TYPE_26__* %134, null
  br i1 %135, label %136, label %138

136:                                              ; preds = %118
  %137 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %137, i8** %3, align 8
  br label %188

138:                                              ; preds = %118
  %139 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %142, i32 0, i32 7
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 1
  store i64 %141, i64* %144, align 8
  %145 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = sub nsw i64 %147, %150
  %152 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %152, i32 0, i32 7
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 0
  store i64 %151, i64* %154, align 8
  br label %155

155:                                              ; preds = %138, %109
  br label %171

156:                                              ; preds = %97
  %157 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %161, i32 0, i32 7
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 1
  store i64 %160, i64* %163, align 8
  %164 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %168, i32 0, i32 7
  %170 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %169, i32 0, i32 0
  store i64 %167, i64* %170, align 8
  br label %171

171:                                              ; preds = %156, %155
  br label %172

172:                                              ; preds = %171, %91
  %173 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %173, i32 0, i32 6
  %175 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %178, label %185

178:                                              ; preds = %172
  %179 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %183 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %182, i32 0, i32 6
  %184 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %183, i32 0, i32 0
  store i64 %181, i64* %184, align 8
  br label %185

185:                                              ; preds = %178, %172
  br label %186

186:                                              ; preds = %185, %85
  %187 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %187, i8** %3, align 8
  br label %188

188:                                              ; preds = %186, %136, %17
  %189 = load i8*, i8** %3, align 8
  ret i8* %189
}

declare dso_local %struct.TYPE_23__* @ngx_http_conf_upstream_srv_conf(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @ngx_str_set(i32*, i8*) #1

declare dso_local %struct.TYPE_25__* @ngx_http_get_check_type_conf(i32*) #1

declare dso_local %struct.TYPE_26__* @ngx_http_upstream_check_create_fastcgi_request(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
