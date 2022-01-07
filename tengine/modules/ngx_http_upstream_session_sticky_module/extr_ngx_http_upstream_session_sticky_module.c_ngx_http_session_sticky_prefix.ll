; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_session_sticky_module/extr_ngx_http_upstream_session_sticky_module.c_ngx_http_session_sticky_prefix.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_session_sticky_module/extr_ngx_http_upstream_session_sticky_module.c_ngx_http_session_sticky_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i8*, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_14__, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i32, i8* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i32 }

@ngx_http_upstream_session_sticky_module = common dso_local global i32 0, align 4
@NGX_AGAIN = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_16__*)* @ngx_http_session_sticky_prefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_session_sticky_prefix(%struct.TYPE_18__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %13 = load i32, i32* @ngx_http_upstream_session_sticky_module, align 4
  %14 = call %struct.TYPE_17__* @ngx_http_get_module_ctx(%struct.TYPE_18__* %12, i32 %13)
  store %struct.TYPE_17__* %14, %struct.TYPE_17__** %10, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %22, i64 %27
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %40, 1
  %42 = call i8* @ngx_strlcasestrn(i8* %18, i8* %28, i32 %34, i64 %41)
  store i8* %42, i8** %6, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %2
  %46 = load i32, i32* @NGX_AGAIN, align 4
  store i32 %46, i32* %3, align 4
  br label %165

47:                                               ; preds = %2
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %51, i64 %56
  store i8* %57, i8** %9, align 8
  store i32 0, i32* %11, align 4
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 %63
  store i8* %65, i8** %6, align 8
  br label %66

66:                                               ; preds = %94, %47
  %67 = load i8*, i8** %6, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = icmp ult i8* %67, %68
  br i1 %69, label %70, label %97

70:                                               ; preds = %66
  %71 = load i32, i32* %11, align 4
  switch i32 %71, label %93 [
    i32 0, label %72
    i32 1, label %79
  ]

72:                                               ; preds = %70
  %73 = load i8*, i8** %6, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 61
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  store i32 1, i32* %11, align 4
  br label %78

78:                                               ; preds = %77, %72
  br label %94

79:                                               ; preds = %70
  %80 = load i8*, i8** %6, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 59
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %99

85:                                               ; preds = %79
  %86 = load i8*, i8** %6, align 8
  %87 = load i8, i8* %86, align 1
  %88 = call i32 @is_space(i8 signext %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %85
  br label %99

91:                                               ; preds = %85
  br label %92

92:                                               ; preds = %91
  br label %94

93:                                               ; preds = %70
  br label %94

94:                                               ; preds = %93, %92, %78
  %95 = load i8*, i8** %6, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %6, align 8
  br label %66

97:                                               ; preds = %66
  %98 = load i32, i32* @NGX_AGAIN, align 4
  store i32 %98, i32* %3, align 4
  br label %165

99:                                               ; preds = %90, %84
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %103, 1
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, %104
  store i32 %109, i32* %107, align 8
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = call i8* @ngx_pnalloc(i32 %112, i32 %116)
  store i8* %117, i8** %7, align 8
  %118 = load i8*, i8** %7, align 8
  %119 = icmp eq i8* %118, null
  br i1 %119, label %120, label %122

120:                                              ; preds = %99
  %121 = load i32, i32* @NGX_ERROR, align 4
  store i32 %121, i32* %3, align 4
  br label %165

122:                                              ; preds = %99
  %123 = load i8*, i8** %7, align 8
  store i8* %123, i8** %8, align 8
  %124 = load i8*, i8** %8, align 8
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = load i8*, i8** %6, align 8
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = ptrtoint i8* %129 to i64
  %135 = ptrtoint i8* %133 to i64
  %136 = sub i64 %134, %135
  %137 = trunc i64 %136 to i32
  %138 = call i8* @ngx_cpymem(i8* %124, i8* %128, i32 %137)
  store i8* %138, i8** %8, align 8
  %139 = load i8*, i8** %8, align 8
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 1
  %143 = load i8*, i8** %142, align 8
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i8* @ngx_cpymem(i8* %139, i8* %143, i32 %147)
  store i8* %148, i8** %8, align 8
  %149 = load i8*, i8** %8, align 8
  %150 = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %150, i8** %8, align 8
  store i8 126, i8* %149, align 1
  %151 = load i8*, i8** %8, align 8
  %152 = load i8*, i8** %6, align 8
  %153 = load i8*, i8** %9, align 8
  %154 = load i8*, i8** %6, align 8
  %155 = ptrtoint i8* %153 to i64
  %156 = ptrtoint i8* %154 to i64
  %157 = sub i64 %155, %156
  %158 = trunc i64 %157 to i32
  %159 = call i8* @ngx_cpymem(i8* %151, i8* %152, i32 %158)
  store i8* %159, i8** %8, align 8
  %160 = load i8*, i8** %7, align 8
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 0
  store i8* %160, i8** %163, align 8
  %164 = load i32, i32* @NGX_OK, align 4
  store i32 %164, i32* %3, align 4
  br label %165

165:                                              ; preds = %122, %120, %97, %45
  %166 = load i32, i32* %3, align 4
  ret i32 %166
}

declare dso_local %struct.TYPE_17__* @ngx_http_get_module_ctx(%struct.TYPE_18__*, i32) #1

declare dso_local i8* @ngx_strlcasestrn(i8*, i8*, i32, i64) #1

declare dso_local i32 @is_space(i8 signext) #1

declare dso_local i8* @ngx_pnalloc(i32, i32) #1

declare dso_local i8* @ngx_cpymem(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
