; ModuleID = '/home/carl/AnghaBench/tengine/src/os/unix/extr_ngx_pipe.c_ngx_open_pipes.c'
source_filename = "/home/carl/AnghaBench/tengine/src/os/unix/extr_ngx_pipe.c_ngx_open_pipes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, %struct.TYPE_10__*, i32, i32*, i32, %struct.TYPE_9__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32*, i64 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }

@ngx_core_module = common dso_local global i32 0, align 4
@ngx_last_pipe = common dso_local global i64 0, align 8
@ngx_pipes = common dso_local global %struct.TYPE_13__* null, align 8
@ngx_pipe_generation = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_CORE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"pipe: %ui(%d, %d) \22%s\22\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@ngx_errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"open pipe \22%s\22 failed\00", align 1
@F_SETFD = common dso_local global i32 0, align 4
@FD_CLOEXEC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"fcntl(FD_CLOEXEC) \22%s\22 failed\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"nonblock \22%s\22 failed\00", align 1
@NGX_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_open_pipes(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @ngx_core_module, align 4
  %11 = call i64 @ngx_get_conf(i32 %9, i32 %10)
  %12 = inttoptr i64 %11 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %6, align 8
  store i64 0, i64* %5, align 8
  br label %13

13:                                               ; preds = %163, %1
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @ngx_last_pipe, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %166

17:                                               ; preds = %13
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ngx_pipes, align 8
  %19 = load i64, i64* %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  br label %163

25:                                               ; preds = %17
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ngx_pipes, align 8
  %27 = load i64, i64* %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ngx_pipe_generation, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %163

34:                                               ; preds = %25
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ngx_pipes, align 8
  %36 = load i64, i64* %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 5
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ngx_pipes, align 8
  %40 = load i64, i64* %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = bitcast %struct.TYPE_9__* %38 to i8*
  %46 = bitcast %struct.TYPE_9__* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 8 %46, i64 16, i1 false)
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ngx_pipes, align 8
  %51 = load i64, i64* %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 4
  store i32 %49, i32* %53, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ngx_pipes, align 8
  %56 = load i64, i64* %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i64 %56
  %58 = call i64 @ngx_open_pipe(%struct.TYPE_11__* %54, %struct.TYPE_13__* %57)
  store i64 %58, i64* %4, align 8
  %59 = load i32, i32* @NGX_LOG_DEBUG_CORE, align 4
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i64, i64* %5, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ngx_pipes, align 8
  %65 = load i64, i64* %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ngx_pipes, align 8
  %72 = load i64, i64* %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ngx_pipes, align 8
  %79 = load i64, i64* %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @ngx_log_debug4(i32 %59, i32 %62, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %63, i32 %70, i32 %77, i32 %82)
  %84 = load i64, i64* %4, align 8
  %85 = load i64, i64* @NGX_ERROR, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %100

87:                                               ; preds = %34
  %88 = load i32, i32* @NGX_LOG_EMERG, align 4
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @ngx_errno, align 4
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ngx_pipes, align 8
  %94 = load i64, i64* %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @ngx_log_error(i32 %88, i32 %91, i32 %92, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  %99 = load i64, i64* @NGX_ERROR, align 8
  store i64 %99, i64* %2, align 8
  br label %168

100:                                              ; preds = %34
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ngx_pipes, align 8
  %102 = load i64, i64* %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @F_SETFD, align 4
  %109 = load i32, i32* @FD_CLOEXEC, align 4
  %110 = call i32 @fcntl(i32 %107, i32 %108, i32 %109)
  %111 = icmp eq i32 %110, -1
  br i1 %111, label %112, label %125

112:                                              ; preds = %100
  %113 = load i32, i32* @NGX_LOG_EMERG, align 4
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @ngx_errno, align 4
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ngx_pipes, align 8
  %119 = load i64, i64* %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @ngx_log_error(i32 %113, i32 %116, i32 %117, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %122)
  %124 = load i64, i64* @NGX_ERROR, align 8
  store i64 %124, i64* %2, align 8
  br label %168

125:                                              ; preds = %100
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ngx_pipes, align 8
  %127 = load i64, i64* %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @ngx_nonblocking(i32 %132)
  %134 = icmp eq i32 %133, -1
  br i1 %134, label %135, label %148

135:                                              ; preds = %125
  %136 = load i32, i32* @NGX_LOG_EMERG, align 4
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @ngx_errno, align 4
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ngx_pipes, align 8
  %142 = load i64, i64* %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @ngx_log_error(i32 %136, i32 %139, i32 %140, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %145)
  %147 = load i64, i64* @NGX_ERROR, align 8
  store i64 %147, i64* %2, align 8
  br label %168

148:                                              ; preds = %125
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ngx_pipes, align 8
  %150 = load i64, i64* %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 1
  store i64 0, i64* %155, align 8
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ngx_pipes, align 8
  %157 = load i64, i64* %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  store i32* null, i32** %162, align 8
  br label %163

163:                                              ; preds = %148, %33, %24
  %164 = load i64, i64* %5, align 8
  %165 = add i64 %164, 1
  store i64 %165, i64* %5, align 8
  br label %13

166:                                              ; preds = %13
  %167 = load i64, i64* @NGX_OK, align 8
  store i64 %167, i64* %2, align 8
  br label %168

168:                                              ; preds = %166, %135, %112, %87
  %169 = load i64, i64* %2, align 8
  ret i64 %169
}

declare dso_local i64 @ngx_get_conf(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ngx_open_pipe(%struct.TYPE_11__*, %struct.TYPE_13__*) #1

declare dso_local i32 @ngx_log_debug4(i32, i32, i32, i8*, i64, i32, i32, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @ngx_nonblocking(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
