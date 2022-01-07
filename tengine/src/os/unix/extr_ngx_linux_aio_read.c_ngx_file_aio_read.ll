; ModuleID = '/home/carl/AnghaBench/tengine/src/os/unix/extr_ngx_linux_aio_read.c_ngx_file_aio_read.c'
source_filename = "/home/carl/AnghaBench/tengine/src/os/unix/extr_ngx_linux_aio_read.c_ngx_file_aio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_12__, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { %struct.TYPE_12__* }
%struct.TYPE_11__ = type { %struct.iocb, i32, %struct.TYPE_10__ }
%struct.iocb = type { i64, i32, i32, i32, i8*, i32, i32, i8* }
%struct.TYPE_10__ = type { i32, i64, i64, i32 }

@ngx_file_aio = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"second aio post for \22%V\22\00", align 1
@NGX_AGAIN = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_CORE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"aio complete:%d @%O:%uz %V\00", align 1
@NGX_LOG_CRIT = common dso_local global i32 0, align 4
@ngx_errno = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"aio read \22%s\22 failed\00", align 1
@IOCB_CMD_PREAD = common dso_local global i32 0, align 4
@IOCB_FLAG_RESFD = common dso_local global i32 0, align 4
@ngx_eventfd = common dso_local global i32 0, align 4
@ngx_file_aio_event_handler = common dso_local global i32 0, align 4
@ngx_aio_ctx = common dso_local global i32 0, align 4
@NGX_EAGAIN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"io_submit(\22%V\22) failed\00", align 1
@NGX_ENOSYS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_file_aio_read(%struct.TYPE_9__* %0, i32* %1, i64 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca [1 x %struct.iocb*], align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %16 = load i64, i64* @ngx_file_aio, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %5
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @ngx_read_file(%struct.TYPE_9__* %19, i32* %20, i64 %21, i32 %22)
  store i32 %23, i32* %6, align 4
  br label %195

24:                                               ; preds = %5
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 3
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %28 = icmp eq %struct.TYPE_11__* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = call i64 @ngx_file_aio_init(%struct.TYPE_9__* %30, i32* %31)
  %33 = load i64, i64* @NGX_OK, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @NGX_ERROR, align 4
  store i32 %36, i32* %6, align 4
  br label %195

37:                                               ; preds = %29, %24
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  store %struct.TYPE_11__* %40, %struct.TYPE_11__** %15, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 2
  store %struct.TYPE_10__* %42, %struct.TYPE_10__** %14, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %37
  %48 = load i32, i32* @NGX_LOG_ALERT, align 4
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = call i32 @ngx_log_error(i32 %48, i32 %51, i64 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.TYPE_12__* %53)
  %55 = load i32, i32* @NGX_AGAIN, align 4
  store i32 %55, i32* %6, align 4
  br label %195

56:                                               ; preds = %37
  %57 = load i32, i32* @NGX_LOG_DEBUG_CORE, align 4
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load i64, i64* %9, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = call i32 @ngx_log_debug4(i32 %57, i32 %60, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %63, i32 %64, i64 %65, %struct.TYPE_12__* %67)
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %104

73:                                               ; preds = %56
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  store i32 0, i32* %75, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  store i64 0, i64* %77, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = icmp sge i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %73
  %83 = call i32 @ngx_set_errno(i32 0)
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  store i32 %86, i32* %6, align 4
  br label %195

87:                                               ; preds = %73
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = sub nsw i32 0, %90
  %92 = call i32 @ngx_set_errno(i32 %91)
  %93 = load i32, i32* @NGX_LOG_CRIT, align 4
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load i64, i64* @ngx_errno, align 8
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %100, align 8
  %102 = call i32 @ngx_log_error(i32 %93, i32 %96, i64 %97, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_12__* %101)
  %103 = load i32, i32* @NGX_ERROR, align 4
  store i32 %103, i32* %6, align 4
  br label %195

104:                                              ; preds = %56
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  %107 = call i32 @ngx_memzero(%struct.iocb* %106, i32 48)
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %109 = ptrtoint %struct.TYPE_10__* %108 to i64
  %110 = inttoptr i64 %109 to i8*
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.iocb, %struct.iocb* %112, i32 0, i32 7
  store i8* %110, i8** %113, align 8
  %114 = load i32, i32* @IOCB_CMD_PREAD, align 4
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.iocb, %struct.iocb* %116, i32 0, i32 6
  store i32 %114, i32* %117, align 4
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.iocb, %struct.iocb* %122, i32 0, i32 5
  store i32 %120, i32* %123, align 8
  %124 = load i32*, i32** %8, align 8
  %125 = ptrtoint i32* %124 to i64
  %126 = inttoptr i64 %125 to i8*
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.iocb, %struct.iocb* %128, i32 0, i32 4
  store i8* %126, i8** %129, align 8
  %130 = load i64, i64* %9, align 8
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.iocb, %struct.iocb* %132, i32 0, i32 0
  store i64 %130, i64* %133, align 8
  %134 = load i32, i32* %10, align 4
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.iocb, %struct.iocb* %136, i32 0, i32 3
  store i32 %134, i32* %137, align 8
  %138 = load i32, i32* @IOCB_FLAG_RESFD, align 4
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.iocb, %struct.iocb* %140, i32 0, i32 2
  store i32 %138, i32* %141, align 4
  %142 = load i32, i32* @ngx_eventfd, align 4
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.iocb, %struct.iocb* %144, i32 0, i32 1
  store i32 %142, i32* %145, align 8
  %146 = load i32, i32* @ngx_file_aio_event_handler, align 4
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 3
  store i32 %146, i32* %148, align 8
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  %151 = getelementptr inbounds [1 x %struct.iocb*], [1 x %struct.iocb*]* %13, i64 0, i64 0
  store %struct.iocb* %150, %struct.iocb** %151, align 8
  %152 = load i32, i32* @ngx_aio_ctx, align 4
  %153 = getelementptr inbounds [1 x %struct.iocb*], [1 x %struct.iocb*]* %13, i64 0, i64 0
  %154 = call i32 @io_submit(i32 %152, i32 1, %struct.iocb** %153)
  %155 = icmp eq i32 %154, 1
  br i1 %155, label %156, label %164

156:                                              ; preds = %104
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 0
  store i32 1, i32* %158, align 8
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 2
  store i64 0, i64* %160, align 8
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 1
  store i64 0, i64* %162, align 8
  %163 = load i32, i32* @NGX_AGAIN, align 4
  store i32 %163, i32* %6, align 4
  br label %195

164:                                              ; preds = %104
  %165 = load i64, i64* @ngx_errno, align 8
  store i64 %165, i64* %12, align 8
  %166 = load i64, i64* %12, align 8
  %167 = load i64, i64* @NGX_EAGAIN, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %175

169:                                              ; preds = %164
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %171 = load i32*, i32** %8, align 8
  %172 = load i64, i64* %9, align 8
  %173 = load i32, i32* %10, align 4
  %174 = call i32 @ngx_read_file(%struct.TYPE_9__* %170, i32* %171, i64 %172, i32 %173)
  store i32 %174, i32* %6, align 4
  br label %195

175:                                              ; preds = %164
  %176 = load i32, i32* @NGX_LOG_CRIT, align 4
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = load i64, i64* %12, align 8
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 0
  %183 = call i32 @ngx_log_error(i32 %176, i32 %179, i64 %180, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_12__* %182)
  %184 = load i64, i64* %12, align 8
  %185 = load i64, i64* @NGX_ENOSYS, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %193

187:                                              ; preds = %175
  store i64 0, i64* @ngx_file_aio, align 8
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %189 = load i32*, i32** %8, align 8
  %190 = load i64, i64* %9, align 8
  %191 = load i32, i32* %10, align 4
  %192 = call i32 @ngx_read_file(%struct.TYPE_9__* %188, i32* %189, i64 %190, i32 %191)
  store i32 %192, i32* %6, align 4
  br label %195

193:                                              ; preds = %175
  %194 = load i32, i32* @NGX_ERROR, align 4
  store i32 %194, i32* %6, align 4
  br label %195

195:                                              ; preds = %193, %187, %169, %156, %87, %82, %47, %35, %18
  %196 = load i32, i32* %6, align 4
  ret i32 %196
}

declare dso_local i32 @ngx_read_file(%struct.TYPE_9__*, i32*, i64, i32) #1

declare dso_local i64 @ngx_file_aio_init(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i64, i8*, %struct.TYPE_12__*) #1

declare dso_local i32 @ngx_log_debug4(i32, i32, i32, i8*, i64, i32, i64, %struct.TYPE_12__*) #1

declare dso_local i32 @ngx_set_errno(i32) #1

declare dso_local i32 @ngx_memzero(%struct.iocb*, i32) #1

declare dso_local i32 @io_submit(i32, i32, %struct.iocb**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
