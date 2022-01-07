; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_split_clients_module.c_ngx_http_split_clients.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_split_clients_module.c_ngx_http_split_clients.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_11__*, %struct.TYPE_15__* }
%struct.TYPE_11__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i8* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__, i64 }
%struct.TYPE_12__ = type { i32, i32, i8*, i64, i64 }

@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_CONF_OK = common dso_local global i8* null, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"invalid percent value \22%V\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_16__*, i32*, i8*)* @ngx_http_split_clients to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_split_clients(%struct.TYPE_16__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  store %struct.TYPE_15__* %14, %struct.TYPE_15__** %10, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  store %struct.TYPE_13__* %19, %struct.TYPE_13__** %9, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = call %struct.TYPE_14__* @ngx_array_push(i32* %21)
  store %struct.TYPE_14__* %22, %struct.TYPE_14__** %11, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %24 = icmp eq %struct.TYPE_14__* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %26, i8** %4, align 8
  br label %121

27:                                               ; preds = %3
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %45

33:                                               ; preds = %27
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 42
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  br label %89

45:                                               ; preds = %33, %27
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %66, label %51

51:                                               ; preds = %45
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i64 0
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %55, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 37
  br i1 %65, label %66, label %67

66:                                               ; preds = %51, %45
  br label %114

67:                                               ; preds = %51
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i64 0
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i64 0
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sub nsw i32 %75, 1
  %77 = call i64 @ngx_atofp(i8* %71, i32 %76, i32 2)
  store i64 %77, i64* %8, align 8
  %78 = load i64, i64* %8, align 8
  %79 = load i64, i64* @NGX_ERROR, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %84, label %81

81:                                               ; preds = %67
  %82 = load i64, i64* %8, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %81, %67
  br label %114

85:                                               ; preds = %81
  %86 = load i64, i64* %8, align 8
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 1
  store i64 %86, i64* %88, align 8
  br label %89

89:                                               ; preds = %85, %42
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i64 1
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  store i32 %93, i32* %96, align 8
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 1
  store i32 1, i32* %99, align 4
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 4
  store i64 0, i64* %102, align 8
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 3
  store i64 0, i64* %105, align 8
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i64 1
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 2
  store i8* %109, i8** %112, align 8
  %113 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %113, i8** %4, align 8
  br label %121

114:                                              ; preds = %84, %66
  %115 = load i32, i32* @NGX_LOG_EMERG, align 4
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i64 0
  %119 = call i32 @ngx_conf_log_error(i32 %115, %struct.TYPE_16__* %116, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), %struct.TYPE_13__* %118)
  %120 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %120, i8** %4, align 8
  br label %121

121:                                              ; preds = %114, %89, %25
  %122 = load i8*, i8** %4, align 8
  ret i8* %122
}

declare dso_local %struct.TYPE_14__* @ngx_array_push(i32*) #1

declare dso_local i64 @ngx_atofp(i8*, i32, i32) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_16__*, i32, i8*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
