; ModuleID = '/home/carl/AnghaBench/tengine/src/core/extr_ngx_thread_pool.c_ngx_thread_pool.c'
source_filename = "/home/carl/AnghaBench/tengine/src/core/extr_ngx_thread_pool.c_ngx_thread_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i64 }
%struct.TYPE_17__ = type { %struct.TYPE_15__ }
%struct.TYPE_14__ = type { i64, i32, %struct.TYPE_15__ }

@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"duplicate thread pool \22%V\22\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"threads=\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"invalid threads value \22%V\22\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"max_queue=\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"invalid max_queue value \22%V\22\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"\22%V\22 must have \22threads\22 parameter\00", align 1
@NGX_CONF_OK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_16__*, %struct.TYPE_17__*, i8*)* @ngx_thread_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_thread_pool(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  store %struct.TYPE_15__* %15, %struct.TYPE_15__** %8, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i64 1
  %19 = call %struct.TYPE_14__* @ngx_thread_pool_add(%struct.TYPE_16__* %16, %struct.TYPE_15__* %18)
  store %struct.TYPE_14__* %19, %struct.TYPE_14__** %10, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %21 = icmp eq %struct.TYPE_14__* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %23, i8** %4, align 8
  br label %149

24:                                               ; preds = %3
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load i32, i32* @NGX_LOG_EMERG, align 4
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 2
  %34 = call i32 @ngx_conf_log_error(i32 %30, %struct.TYPE_16__* %31, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), %struct.TYPE_15__* %33)
  %35 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %35, i8** %4, align 8
  br label %149

36:                                               ; preds = %24
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 1
  store i32 65536, i32* %38, align 8
  store i64 2, i64* %9, align 8
  br label %39

39:                                               ; preds = %132, %36
  %40 = load i64, i64* %9, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ult i64 %40, %45
  br i1 %46, label %47, label %135

47:                                               ; preds = %39
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %49 = load i64, i64* %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @ngx_strncmp(i64 %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %92

55:                                               ; preds = %47
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %57 = load i64, i64* %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, 8
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %63 = load i64, i64* %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = sub nsw i64 %66, 8
  %68 = call i8* @ngx_atoi(i64 %61, i64 %67)
  %69 = ptrtoint i8* %68 to i64
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* @NGX_ERROR, align 4
  %76 = sext i32 %75 to i64
  %77 = icmp eq i64 %74, %76
  br i1 %77, label %83, label %78

78:                                               ; preds = %55
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %78, %55
  %84 = load i32, i32* @NGX_LOG_EMERG, align 4
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %87 = load i64, i64* %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i64 %87
  %89 = call i32 @ngx_conf_log_error(i32 %84, %struct.TYPE_16__* %85, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_15__* %88)
  %90 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %90, i8** %4, align 8
  br label %149

91:                                               ; preds = %78
  br label %132

92:                                               ; preds = %47
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %94 = load i64, i64* %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = call i64 @ngx_strncmp(i64 %97, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 10)
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %131

100:                                              ; preds = %92
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %102 = load i64, i64* %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %105, 10
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %108 = load i64, i64* %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = sub nsw i64 %111, 10
  %113 = call i8* @ngx_atoi(i64 %106, i64 %112)
  %114 = ptrtoint i8* %113 to i32
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 8
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @NGX_ERROR, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %130

122:                                              ; preds = %100
  %123 = load i32, i32* @NGX_LOG_EMERG, align 4
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %126 = load i64, i64* %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i64 %126
  %128 = call i32 @ngx_conf_log_error(i32 %123, %struct.TYPE_16__* %124, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_15__* %127)
  %129 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %129, i8** %4, align 8
  br label %149

130:                                              ; preds = %100
  br label %132

131:                                              ; preds = %92
  br label %132

132:                                              ; preds = %131, %130, %91
  %133 = load i64, i64* %9, align 8
  %134 = add i64 %133, 1
  store i64 %134, i64* %9, align 8
  br label %39

135:                                              ; preds = %39
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %135
  %141 = load i32, i32* @NGX_LOG_EMERG, align 4
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 0
  %145 = call i32 @ngx_conf_log_error(i32 %141, %struct.TYPE_16__* %142, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_15__* %144)
  %146 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %146, i8** %4, align 8
  br label %149

147:                                              ; preds = %135
  %148 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %148, i8** %4, align 8
  br label %149

149:                                              ; preds = %147, %140, %122, %83, %29, %22
  %150 = load i8*, i8** %4, align 8
  ret i8* %150
}

declare dso_local %struct.TYPE_14__* @ngx_thread_pool_add(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_16__*, i32, i8*, %struct.TYPE_15__*) #1

declare dso_local i64 @ngx_strncmp(i64, i8*, i32) #1

declare dso_local i8* @ngx_atoi(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
