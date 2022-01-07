; ModuleID = '/home/carl/AnghaBench/tengine/src/event/modules/extr_ngx_win32_select_module.c_ngx_select_repair_fd_sets.c'
source_filename = "/home/carl/AnghaBench/tengine/src/event/modules/extr_ngx_win32_select_module.c_ngx_select_repair_fd_sets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32* }
%struct.TYPE_6__ = type { i32 }

@master_read_fd_set = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_TYPE = common dso_local global i32 0, align 4
@ngx_socket_errno = common dso_local global i32 0, align 4
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"invalid descriptor #%d in read fd_set\00", align 1
@master_write_fd_set = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"invalid descriptor #%d in write fd_set\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @ngx_select_repair_fd_sets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_select_repair_fd_sets(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  store i64 0, i64* %4, align 8
  br label %8

8:                                                ; preds = %35, %1
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @master_read_fd_set, i32 0, i32 0), align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %38

12:                                               ; preds = %8
  %13 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @master_read_fd_set, i32 0, i32 1), align 8
  %14 = load i64, i64* %4, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  store i32 4, i32* %5, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @SOL_SOCKET, align 4
  %19 = load i32, i32* @SO_TYPE, align 4
  %20 = bitcast i32* %3 to i8*
  %21 = call i32 @getsockopt(i32 %17, i32 %18, i32 %19, i8* %20, i32* %5)
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %34

23:                                               ; preds = %12
  %24 = load i32, i32* @ngx_socket_errno, align 4
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* @NGX_LOG_ALERT, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @ngx_log_error(i32 %25, i32 %28, i32 %29, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @FD_CLR(i32 %32, %struct.TYPE_7__* @master_read_fd_set)
  br label %34

34:                                               ; preds = %23, %12
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %4, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %4, align 8
  br label %8

38:                                               ; preds = %8
  store i64 0, i64* %4, align 8
  br label %39

39:                                               ; preds = %66, %38
  %40 = load i64, i64* %4, align 8
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @master_write_fd_set, i32 0, i32 0), align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %69

43:                                               ; preds = %39
  %44 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @master_write_fd_set, i32 0, i32 1), align 8
  %45 = load i64, i64* %4, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %7, align 4
  store i32 4, i32* %5, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @SOL_SOCKET, align 4
  %50 = load i32, i32* @SO_TYPE, align 4
  %51 = bitcast i32* %3 to i8*
  %52 = call i32 @getsockopt(i32 %48, i32 %49, i32 %50, i8* %51, i32* %5)
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %65

54:                                               ; preds = %43
  %55 = load i32, i32* @ngx_socket_errno, align 4
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* @NGX_LOG_ALERT, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @ngx_log_error(i32 %56, i32 %59, i32 %60, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @FD_CLR(i32 %63, %struct.TYPE_7__* @master_write_fd_set)
  br label %65

65:                                               ; preds = %54, %43
  br label %66

66:                                               ; preds = %65
  %67 = load i64, i64* %4, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %4, align 8
  br label %39

69:                                               ; preds = %39
  ret void
}

declare dso_local i32 @getsockopt(i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @FD_CLR(i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
