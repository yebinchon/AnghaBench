; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_ssi_filter_module.c_ngx_http_ssi_date_gmt_local_variable.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_ssi_filter_module.c_ngx_http_ssi_date_gmt_local_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i8* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i32, i64, i32*, i64, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.tm = type { i32 }

@NGX_HTTP_SSI_DATE_LEN = common dso_local global i32 0, align 4
@ngx_http_ssi_filter_module = common dso_local global i32 0, align 4
@ngx_http_ssi_timefmt = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@NGX_TIME_T_LEN = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%T\00", align 1
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_11__*, i64)* @ngx_http_ssi_date_gmt_local_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_ssi_date_gmt_local_variable(%struct.TYPE_13__* %0, %struct.TYPE_11__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.tm, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load i32, i32* @NGX_HTTP_SSI_DATE_LEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %12, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %13, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 4
  store i64 0, i64* %22, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 3
  store i64 0, i64* %24, align 8
  %25 = call i32 (...) @ngx_time()
  store i32 %25, i32* %8, align 4
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %27 = load i32, i32* @ngx_http_ssi_filter_module, align 4
  %28 = call %struct.TYPE_12__* @ngx_http_get_module_ctx(%struct.TYPE_13__* %26, i32 %27)
  store %struct.TYPE_12__* %28, %struct.TYPE_12__** %9, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %30 = icmp ne %struct.TYPE_12__* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  br label %35

34:                                               ; preds = %3
  br label %35

35:                                               ; preds = %34, %31
  %36 = phi %struct.TYPE_10__* [ %33, %31 ], [ @ngx_http_ssi_timefmt, %34 ]
  store %struct.TYPE_10__* %36, %struct.TYPE_10__** %10, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = icmp eq i64 %40, 2
  br i1 %41, label %42, label %89

42:                                               ; preds = %35
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 37
  br i1 %49, label %50, label %89

50:                                               ; preds = %42
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 115
  br i1 %57, label %58, label %89

58:                                               ; preds = %50
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i64, i64* @NGX_TIME_T_LEN, align 8
  %63 = call i8* @ngx_pnalloc(i32 %61, i64 %62)
  %64 = bitcast i8* %63 to i32*
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 2
  store i32* %64, i32** %66, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %58
  %72 = load i32, i32* @NGX_ERROR, align 4
  store i32 %72, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %139

73:                                               ; preds = %58
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = call i32* @ngx_sprintf(i32* %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %77)
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = ptrtoint i32* %78 to i64
  %83 = ptrtoint i32* %81 to i64
  %84 = sub i64 %82, %83
  %85 = sdiv exact i64 %84, 4
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 1
  store i64 %85, i64* %87, align 8
  %88 = load i32, i32* @NGX_OK, align 4
  store i32 %88, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %139

89:                                               ; preds = %50, %42, %35
  %90 = load i64, i64* %7, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @ngx_libc_gmtime(i32 %93, %struct.tm* %11)
  br label %98

95:                                               ; preds = %89
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @ngx_libc_localtime(i32 %96, %struct.tm* %11)
  br label %98

98:                                               ; preds = %95, %92
  %99 = load i32, i32* @NGX_HTTP_SSI_DATE_LEN, align 4
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = call i32* @strftime(i8* %18, i32 %99, i8* %102, %struct.tm* %11)
  %104 = ptrtoint i32* %103 to i64
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 1
  store i64 %104, i64* %106, align 8
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %98
  %112 = load i32, i32* @NGX_ERROR, align 4
  store i32 %112, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %139

113:                                              ; preds = %98
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = call i8* @ngx_pnalloc(i32 %116, i64 %119)
  %121 = bitcast i8* %120 to i32*
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 2
  store i32* %121, i32** %123, align 8
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = icmp eq i32* %126, null
  br i1 %127, label %128, label %130

128:                                              ; preds = %113
  %129 = load i32, i32* @NGX_ERROR, align 4
  store i32 %129, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %139

130:                                              ; preds = %113
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @ngx_memcpy(i32* %133, i8* %18, i64 %136)
  %138 = load i32, i32* @NGX_OK, align 4
  store i32 %138, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %139

139:                                              ; preds = %130, %128, %111, %73, %71
  %140 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %140)
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ngx_time(...) #2

declare dso_local %struct.TYPE_12__* @ngx_http_get_module_ctx(%struct.TYPE_13__*, i32) #2

declare dso_local i8* @ngx_pnalloc(i32, i64) #2

declare dso_local i32* @ngx_sprintf(i32*, i8*, i32) #2

declare dso_local i32 @ngx_libc_gmtime(i32, %struct.tm*) #2

declare dso_local i32 @ngx_libc_localtime(i32, %struct.tm*) #2

declare dso_local i32* @strftime(i8*, i32, i8*, %struct.tm*) #2

declare dso_local i32 @ngx_memcpy(i32*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
