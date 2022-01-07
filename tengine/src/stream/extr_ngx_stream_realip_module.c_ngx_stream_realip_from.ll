; ModuleID = '/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_realip_module.c_ngx_stream_realip_from.c'
source_filename = "/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_realip_module.c_ngx_stream_realip_from.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { i32* }
%struct.TYPE_34__ = type { i32, i32, %struct.TYPE_33__, %struct.TYPE_30__*, %struct.TYPE_24__, i32 }
%struct.TYPE_33__ = type { %struct.TYPE_32__, %struct.TYPE_28__ }
%struct.TYPE_32__ = type { i32, i32 }
%struct.TYPE_28__ = type { %struct.TYPE_27__, i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_30__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i32 }

@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_DONE = common dso_local global i64 0, align 8
@NGX_LOG_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"low address bits of %V are meaningless\00", align 1
@NGX_CONF_OK = common dso_local global i8* null, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"%s in set_real_ip_from \22%V\22\00", align 1
@AF_UNIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_25__*, i32*, i8*)* @ngx_stream_realip_from to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_stream_realip_from(%struct.TYPE_25__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca %struct.TYPE_34__, align 8
  %12 = alloca %struct.TYPE_34__, align 8
  %13 = alloca %struct.TYPE_34__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.sockaddr_in*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %17, %struct.TYPE_23__** %8, align 8
  %18 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  store %struct.TYPE_24__* %22, %struct.TYPE_24__** %10, align 8
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %41

27:                                               ; preds = %3
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32* @ngx_array_create(i32 %30, i32 2, i32 40)
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 0
  store i32* %31, i32** %33, align 8
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %39, i8** %4, align 8
  br label %173

40:                                               ; preds = %27
  br label %41

41:                                               ; preds = %40, %3
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %42, i64 1
  %44 = call i64 @ngx_ptocidr(%struct.TYPE_24__* %43, %struct.TYPE_34__* %12)
  store i64 %44, i64* %9, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* @NGX_ERROR, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %72

48:                                               ; preds = %41
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* @NGX_DONE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = load i32, i32* @NGX_LOG_WARN, align 4
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %55 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %55, i64 1
  %57 = call i32 (i32, %struct.TYPE_25__*, i32, i8*, %struct.TYPE_24__*, ...) @ngx_conf_log_error(i32 %53, %struct.TYPE_25__* %54, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), %struct.TYPE_24__* %56)
  br label %58

58:                                               ; preds = %52, %48
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = call %struct.TYPE_34__* @ngx_array_push(i32* %61)
  store %struct.TYPE_34__* %62, %struct.TYPE_34__** %13, align 8
  %63 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %64 = icmp eq %struct.TYPE_34__* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %66, i8** %4, align 8
  br label %173

67:                                               ; preds = %58
  %68 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %69 = bitcast %struct.TYPE_34__* %68 to i8*
  %70 = bitcast %struct.TYPE_34__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %69, i8* align 8 %70, i64 40, i1 false)
  %71 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %71, i8** %4, align 8
  br label %173

72:                                               ; preds = %41
  %73 = call i32 @ngx_memzero(%struct.TYPE_34__* %11, i32 40)
  %74 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %11, i32 0, i32 4
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %75, i64 1
  %77 = bitcast %struct.TYPE_24__* %74 to i8*
  %78 = bitcast %struct.TYPE_24__* %76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %77, i8* align 4 %78, i64 4, i1 false)
  %79 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @ngx_inet_resolve_host(i32 %81, %struct.TYPE_34__* %11)
  %83 = load i64, i64* @NGX_OK, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %100

85:                                               ; preds = %72
  %86 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %11, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %85
  %90 = load i32, i32* @NGX_LOG_EMERG, align 4
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %11, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = inttoptr i64 %94 to %struct.TYPE_24__*
  %96 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %11, i32 0, i32 4
  %97 = call i32 (i32, %struct.TYPE_25__*, i32, i8*, %struct.TYPE_24__*, ...) @ngx_conf_log_error(i32 %90, %struct.TYPE_25__* %91, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_24__* %95, %struct.TYPE_24__* %96)
  br label %98

98:                                               ; preds = %89, %85
  %99 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %99, i8** %4, align 8
  br label %173

100:                                              ; preds = %72
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %11, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call %struct.TYPE_34__* @ngx_array_push_n(i32* %103, i32 %105)
  store %struct.TYPE_34__* %106, %struct.TYPE_34__** %13, align 8
  %107 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %108 = icmp eq %struct.TYPE_34__* %107, null
  br i1 %108, label %109, label %111

109:                                              ; preds = %100
  %110 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %110, i8** %4, align 8
  br label %173

111:                                              ; preds = %100
  %112 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %113 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %11, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = sext i32 %114 to i64
  %116 = mul i64 %115, 40
  %117 = trunc i64 %116 to i32
  %118 = call i32 @ngx_memzero(%struct.TYPE_34__* %112, i32 %117)
  store i64 0, i64* %14, align 8
  br label %119

119:                                              ; preds = %168, %111
  %120 = load i64, i64* %14, align 8
  %121 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %11, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = sext i32 %122 to i64
  %124 = icmp ult i64 %120, %123
  br i1 %124, label %125, label %171

125:                                              ; preds = %119
  %126 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %11, i32 0, i32 3
  %127 = load %struct.TYPE_30__*, %struct.TYPE_30__** %126, align 8
  %128 = load i64, i64* %14, align 8
  %129 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_29__*, %struct.TYPE_29__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %135 = load i64, i64* %14, align 8
  %136 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %136, i32 0, i32 0
  store i32 %133, i32* %137, align 8
  %138 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %139 = load i64, i64* %14, align 8
  %140 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %138, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  switch i32 %142, label %143 [
  ]

143:                                              ; preds = %125
  %144 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %11, i32 0, i32 3
  %145 = load %struct.TYPE_30__*, %struct.TYPE_30__** %144, align 8
  %146 = load i64, i64* %14, align 8
  %147 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %145, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_29__*, %struct.TYPE_29__** %148, align 8
  %150 = bitcast %struct.TYPE_29__* %149 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %150, %struct.sockaddr_in** %15, align 8
  %151 = load %struct.sockaddr_in*, %struct.sockaddr_in** %15, align 8
  %152 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %156 = load i64, i64* %14, align 8
  %157 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %155, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %159, i32 0, i32 1
  store i32 %154, i32* %160, align 4
  %161 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %162 = load i64, i64* %14, align 8
  %163 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %161, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %165, i32 0, i32 0
  store i32 -1, i32* %166, align 8
  br label %167

167:                                              ; preds = %143
  br label %168

168:                                              ; preds = %167
  %169 = load i64, i64* %14, align 8
  %170 = add i64 %169, 1
  store i64 %170, i64* %14, align 8
  br label %119

171:                                              ; preds = %119
  %172 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %172, i8** %4, align 8
  br label %173

173:                                              ; preds = %171, %109, %98, %67, %65, %38
  %174 = load i8*, i8** %4, align 8
  ret i8* %174
}

declare dso_local i32* @ngx_array_create(i32, i32, i32) #1

declare dso_local i64 @ngx_ptocidr(%struct.TYPE_24__*, %struct.TYPE_34__*) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_25__*, i32, i8*, %struct.TYPE_24__*, ...) #1

declare dso_local %struct.TYPE_34__* @ngx_array_push(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ngx_memzero(%struct.TYPE_34__*, i32) #1

declare dso_local i64 @ngx_inet_resolve_host(i32, %struct.TYPE_34__*) #1

declare dso_local %struct.TYPE_34__* @ngx_array_push_n(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
