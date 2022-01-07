; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_geo_module.c_ngx_http_geo_cidr.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_geo_module.c_ngx_http_geo_cidr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32*, i32*, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__, %struct.TYPE_25__ }
%struct.TYPE_20__ = type { i8*, i8* }
%struct.TYPE_25__ = type { %struct.TYPE_19__, %struct.TYPE_18__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }

@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@NGX_CONF_OK = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@NGX_LOG_WARN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"no network \22%V\22 to delete\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, %struct.TYPE_23__*, %struct.TYPE_22__*)* @ngx_http_geo_cidr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_geo_cidr(i32* %0, %struct.TYPE_23__* %1, %struct.TYPE_22__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca %struct.TYPE_24__, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %6, align 8
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %7, align 8
  %13 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %32

17:                                               ; preds = %3
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i8* @ngx_radix_tree_create(i32 %20, i32 -1)
  %22 = bitcast i8* %21 to i32*
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 0
  store i32* %22, i32** %24, align 8
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %17
  %30 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %30, i8** %4, align 8
  br label %143

31:                                               ; preds = %17
  br label %32

32:                                               ; preds = %31, %3
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @ngx_strcmp(i32 %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %62

39:                                               ; preds = %32
  %40 = load i32, i32* @AF_INET, align 4
  %41 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 0
  store i32 %40, i32* %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 1
  store i8* null, i8** %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 0
  store i8* null, i8** %47, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i64 1
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i64 0
  %54 = call i8* @ngx_http_geo_cidr_add(i32* %48, %struct.TYPE_23__* %49, %struct.TYPE_24__* %12, %struct.TYPE_22__* %51, %struct.TYPE_22__* %53)
  store i8* %54, i8** %8, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = load i8*, i8** @NGX_CONF_OK, align 8
  %57 = icmp ne i8* %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %39
  %59 = load i8*, i8** %8, align 8
  store i8* %59, i8** %4, align 8
  br label %143

60:                                               ; preds = %39
  %61 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %61, i8** %4, align 8
  br label %143

62:                                               ; preds = %32
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i64 0
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @ngx_strcmp(i32 %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i64 1
  store %struct.TYPE_22__* %71, %struct.TYPE_22__** %11, align 8
  store i32 1, i32* %10, align 4
  br label %75

72:                                               ; preds = %62
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i64 0
  store %struct.TYPE_22__* %74, %struct.TYPE_22__** %11, align 8
  store i32 0, i32* %10, align 4
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i32*, i32** %5, align 8
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %78 = call i64 @ngx_http_geo_cidr_value(i32* %76, %struct.TYPE_22__* %77, %struct.TYPE_24__* %12)
  %79 = load i64, i64* @NGX_OK, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %82, i8** %4, align 8
  br label %143

83:                                               ; preds = %75
  %84 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @AF_INET, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %105

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = call i8* @ntohl(i8* %92)
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 1
  store i8* %93, i8** %96, align 8
  %97 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = call i8* @ntohl(i8* %100)
  %102 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 0
  store i8* %101, i8** %104, align 8
  br label %105

105:                                              ; preds = %88, %83
  %106 = load i32, i32* %10, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %136

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  switch i32 %110, label %111 [
  ]

111:                                              ; preds = %108
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @ngx_radix32tree_delete(i32* %114, i8* %118, i8* %122)
  store i32 %123, i32* %9, align 4
  br label %124

124:                                              ; preds = %111
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = load i64, i64* @NGX_OK, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %124
  %130 = load i32, i32* @NGX_LOG_WARN, align 4
  %131 = load i32*, i32** %5, align 8
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %133 = call i32 @ngx_conf_log_error(i32 %130, i32* %131, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_22__* %132)
  br label %134

134:                                              ; preds = %129, %124
  %135 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %135, i8** %4, align 8
  br label %143

136:                                              ; preds = %105
  %137 = load i32*, i32** %5, align 8
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i64 1
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %142 = call i8* @ngx_http_geo_cidr_add(i32* %137, %struct.TYPE_23__* %138, %struct.TYPE_24__* %12, %struct.TYPE_22__* %140, %struct.TYPE_22__* %141)
  store i8* %142, i8** %4, align 8
  br label %143

143:                                              ; preds = %136, %134, %81, %60, %58, %29
  %144 = load i8*, i8** %4, align 8
  ret i8* %144
}

declare dso_local i8* @ngx_radix_tree_create(i32, i32) #1

declare dso_local i64 @ngx_strcmp(i32, i8*) #1

declare dso_local i8* @ngx_http_geo_cidr_add(i32*, %struct.TYPE_23__*, %struct.TYPE_24__*, %struct.TYPE_22__*, %struct.TYPE_22__*) #1

declare dso_local i64 @ngx_http_geo_cidr_value(i32*, %struct.TYPE_22__*, %struct.TYPE_24__*) #1

declare dso_local i8* @ntohl(i8*) #1

declare dso_local i32 @ngx_radix32tree_delete(i32*, i8*, i8*) #1

declare dso_local i32 @ngx_conf_log_error(i32, i32*, i32, i8*, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
