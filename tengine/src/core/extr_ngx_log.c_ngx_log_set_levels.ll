; ModuleID = '/home/carl/AnghaBench/tengine/src/core/extr_ngx_log.c_ngx_log_set_levels.c'
source_filename = "/home/carl/AnghaBench/tengine/src/core/extr_ngx_log.c_ngx_log_set_levels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i64 }

@NGX_LOG_ERR = common dso_local global i64 0, align 8
@NGX_CONF_OK = common dso_local global i8* null, align 8
@NGX_LOG_DEBUG = common dso_local global i64 0, align 8
@err_levels = common dso_local global %struct.TYPE_14__* null, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"duplicate log level \22%V\22\00", align 1
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_LOG_DEBUG_FIRST = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_LAST = common dso_local global i64 0, align 8
@debug_levels = common dso_local global i32* null, align 8
@NGX_LOG_DEBUG_ALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"invalid log level \22%V\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_13__*, %struct.TYPE_12__*)* @ngx_log_set_levels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_log_set_levels(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load i64, i64* @NGX_LOG_ERR, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %21, i8** %3, align 8
  br label %150

22:                                               ; preds = %2
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  store %struct.TYPE_11__* %27, %struct.TYPE_11__** %10, align 8
  store i64 2, i64* %6, align 8
  br label %28

28:                                               ; preds = %134, %22
  %29 = load i64, i64* %6, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = icmp ult i64 %29, %35
  br i1 %36, label %37, label %137

37:                                               ; preds = %28
  store i64 0, i64* %9, align 8
  store i64 1, i64* %7, align 8
  br label %38

38:                                               ; preds = %73, %37
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* @NGX_LOG_DEBUG, align 8
  %41 = icmp ule i64 %39, %40
  br i1 %41, label %42, label %76

42:                                               ; preds = %38
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %44 = load i64, i64* %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** @err_levels, align 8
  %49 = load i64, i64* %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @ngx_strcmp(i32 %47, i32 %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %72

55:                                               ; preds = %42
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load i32, i32* @NGX_LOG_EMERG, align 4
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %64 = load i64, i64* %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i64 %64
  %66 = call i32 @ngx_conf_log_error(i32 %61, %struct.TYPE_13__* %62, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.TYPE_11__* %65)
  %67 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %67, i8** %3, align 8
  br label %150

68:                                               ; preds = %55
  %69 = load i64, i64* %7, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  store i64 1, i64* %9, align 8
  br label %76

72:                                               ; preds = %42
  br label %73

73:                                               ; preds = %72
  %74 = load i64, i64* %7, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %7, align 8
  br label %38

76:                                               ; preds = %68, %38
  store i64 0, i64* %7, align 8
  %77 = load i64, i64* @NGX_LOG_DEBUG_FIRST, align 8
  store i64 %77, i64* %8, align 8
  br label %78

78:                                               ; preds = %119, %76
  %79 = load i64, i64* %8, align 8
  %80 = load i64, i64* @NGX_LOG_DEBUG_LAST, align 8
  %81 = icmp ule i64 %79, %80
  br i1 %81, label %82, label %122

82:                                               ; preds = %78
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %84 = load i64, i64* %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** @debug_levels, align 8
  %89 = load i64, i64* %7, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %7, align 8
  %91 = getelementptr inbounds i32, i32* %88, i64 %89
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @ngx_strcmp(i32 %87, i32 %92)
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %118

95:                                               ; preds = %82
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* @NGX_LOG_DEBUG_ALL, align 4
  %100 = xor i32 %99, -1
  %101 = sext i32 %100 to i64
  %102 = and i64 %98, %101
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %95
  %105 = load i32, i32* @NGX_LOG_EMERG, align 4
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %108 = load i64, i64* %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i64 %108
  %110 = call i32 @ngx_conf_log_error(i32 %105, %struct.TYPE_13__* %106, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_11__* %109)
  %111 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %111, i8** %3, align 8
  br label %150

112:                                              ; preds = %95
  %113 = load i64, i64* %8, align 8
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = or i64 %116, %113
  store i64 %117, i64* %115, align 8
  store i64 1, i64* %9, align 8
  br label %122

118:                                              ; preds = %82
  br label %119

119:                                              ; preds = %118
  %120 = load i64, i64* %8, align 8
  %121 = shl i64 %120, 1
  store i64 %121, i64* %8, align 8
  br label %78

122:                                              ; preds = %112, %78
  %123 = load i64, i64* %9, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %133, label %125

125:                                              ; preds = %122
  %126 = load i32, i32* @NGX_LOG_EMERG, align 4
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %129 = load i64, i64* %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i64 %129
  %131 = call i32 @ngx_conf_log_error(i32 %126, %struct.TYPE_13__* %127, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_11__* %130)
  %132 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %132, i8** %3, align 8
  br label %150

133:                                              ; preds = %122
  br label %134

134:                                              ; preds = %133
  %135 = load i64, i64* %6, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %6, align 8
  br label %28

137:                                              ; preds = %28
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @NGX_LOG_DEBUG, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %148

143:                                              ; preds = %137
  %144 = load i32, i32* @NGX_LOG_DEBUG_ALL, align 4
  %145 = sext i32 %144 to i64
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 0
  store i64 %145, i64* %147, align 8
  br label %148

148:                                              ; preds = %143, %137
  %149 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %149, i8** %3, align 8
  br label %150

150:                                              ; preds = %148, %125, %104, %60, %17
  %151 = load i8*, i8** %3, align 8
  ret i8* %151
}

declare dso_local i64 @ngx_strcmp(i32, i32) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_13__*, i32, i8*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
