; ModuleID = '/home/carl/AnghaBench/tengine/src/os/unix/extr_ngx_aio_read.c_ngx_aio_read.c'
source_filename = "/home/carl/AnghaBench/tengine/src/os/unix/extr_ngx_aio_read.c_ngx_aio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i64, i32, i32, i32, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i64, %struct.TYPE_11__, i32* }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_12__* }

@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"second aio post\00", align 1
@NGX_AGAIN = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_EVENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"rev->complete: %d\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"aio size: %d\00", align 1
@NGX_LOG_CRIT = common dso_local global i32 0, align 4
@ngx_errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"aio_read() failed\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"aio_read: #%d OK\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"aio_error() failed\00", align 1
@NGX_EINPROGRESS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"aio_read() still in progress\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"aio_return() failed\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"aio_read: #%d %d\00", align 1
@SIGEV_KEVENT = common dso_local global i32 0, align 4
@ngx_kqueue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_aio_read(%struct.TYPE_13__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %9, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @NGX_LOG_ALERT, align 4
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @ngx_log_error(i32 %18, i32 %21, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @NGX_AGAIN, align 4
  store i32 %23, i32* %4, align 4
  br label %183

24:                                               ; preds = %3
  %25 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @ngx_log_debug1(i32 %25, i32 %28, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %31)
  %33 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @ngx_log_debug1(i32 %33, i32 %36, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 %37)
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %88, label %43

43:                                               ; preds = %24
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 6
  %46 = call i32 @ngx_memzero(%struct.TYPE_14__* %45, i32 4)
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 6
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  store i64 %49, i64* %52, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 6
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 3
  store i32* %53, i32** %56, align 8
  %57 = load i64, i64* %7, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 6
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 1
  store i64 %57, i64* %60, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 6
  %63 = call i32 @aio_read(%struct.TYPE_14__* %62)
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %65, label %75

65:                                               ; preds = %43
  %66 = load i32, i32* @NGX_LOG_CRIT, align 4
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @ngx_errno, align 4
  %71 = call i32 @ngx_log_error(i32 %66, i32 %69, i32 %70, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 2
  store i32 1, i32* %73, align 8
  %74 = load i32, i32* @NGX_ERROR, align 4
  store i32 %74, i32* %4, align 4
  br label %183

75:                                               ; preds = %43
  %76 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @ngx_log_debug1(i32 %76, i32 %79, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i64 %82)
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 3
  store i32 1, i32* %85, align 4
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  store i32 0, i32* %87, align 8
  br label %88

88:                                               ; preds = %75, %24
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 1
  store i64 0, i64* %90, align 8
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 6
  %93 = call i32 @aio_error(%struct.TYPE_14__* %92)
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp eq i32 %94, -1
  br i1 %95, label %96, label %106

96:                                               ; preds = %88
  %97 = load i32, i32* @NGX_LOG_ALERT, align 4
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @ngx_errno, align 4
  %102 = call i32 @ngx_log_error(i32 %97, i32 %100, i32 %101, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 2
  store i32 1, i32* %104, align 8
  %105 = load i32, i32* @NGX_ERROR, align 4
  store i32 %105, i32* %4, align 4
  br label %183

106:                                              ; preds = %88
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %141

109:                                              ; preds = %106
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* @NGX_EINPROGRESS, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %129

113:                                              ; preds = %109
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %113
  %119 = load i32, i32* @NGX_LOG_ALERT, align 4
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @ngx_log_error(i32 %119, i32 %122, i32 %123, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 0
  store i32 0, i32* %126, align 8
  br label %127

127:                                              ; preds = %118, %113
  %128 = load i32, i32* @NGX_AGAIN, align 4
  store i32 %128, i32* %4, align 4
  br label %183

129:                                              ; preds = %109
  %130 = load i32, i32* @NGX_LOG_CRIT, align 4
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @ngx_log_error(i32 %130, i32 %133, i32 %134, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 2
  store i32 1, i32* %137, align 8
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  store i32 0, i32* %139, align 8
  %140 = load i32, i32* @NGX_ERROR, align 4
  store i32 %140, i32* %4, align 4
  br label %183

141:                                              ; preds = %106
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 6
  %144 = call i32 @aio_return(%struct.TYPE_14__* %143)
  store i32 %144, i32* %8, align 4
  %145 = load i32, i32* %8, align 4
  %146 = icmp eq i32 %145, -1
  br i1 %146, label %147, label %159

147:                                              ; preds = %141
  %148 = load i32, i32* @NGX_LOG_ALERT, align 4
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @ngx_errno, align 4
  %153 = call i32 @ngx_log_error(i32 %148, i32 %151, i32 %152, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 2
  store i32 1, i32* %155, align 8
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 0
  store i32 0, i32* %157, align 8
  %158 = load i32, i32* @NGX_ERROR, align 4
  store i32 %158, i32* %4, align 4
  br label %183

159:                                              ; preds = %141
  %160 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i32, i32* %8, align 4
  %168 = call i32 @ngx_log_debug2(i32 %160, i32 %163, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i64 %166, i32 %167)
  %169 = load i32, i32* %8, align 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %159
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 4
  store i32 1, i32* %173, align 8
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 0
  store i32 0, i32* %175, align 8
  br label %179

176:                                              ; preds = %159
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 0
  store i32 1, i32* %178, align 8
  br label %179

179:                                              ; preds = %176, %171
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 3
  store i32 0, i32* %181, align 4
  %182 = load i32, i32* %8, align 4
  store i32 %182, i32* %4, align 4
  br label %183

183:                                              ; preds = %179, %147, %129, %127, %96, %65, %17
  %184 = load i32, i32* %4, align 4
  ret i32 %184
}

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i64) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @aio_read(%struct.TYPE_14__*) #1

declare dso_local i32 @aio_error(%struct.TYPE_14__*) #1

declare dso_local i32 @aio_return(%struct.TYPE_14__*) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
