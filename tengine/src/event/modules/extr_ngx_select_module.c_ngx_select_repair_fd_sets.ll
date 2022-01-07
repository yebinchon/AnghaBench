; ModuleID = '/home/carl/AnghaBench/tengine/src/event/modules/extr_ngx_select_module.c_ngx_select_repair_fd_sets.c'
source_filename = "/home/carl/AnghaBench/tengine/src/event/modules/extr_ngx_select_module.c_ngx_select_repair_fd_sets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@max_fd = common dso_local global i32 0, align 4
@master_read_fd_set = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_TYPE = common dso_local global i32 0, align 4
@ngx_socket_errno = common dso_local global i32 0, align 4
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"invalid descriptor #%d in read fd_set\00", align 1
@master_write_fd_set = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"invalid descriptor #%d in write fd_set\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @ngx_select_repair_fd_sets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_select_repair_fd_sets(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %34, %1
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @max_fd, align 4
  %10 = icmp sle i32 %8, %9
  br i1 %10, label %11, label %37

11:                                               ; preds = %7
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @FD_ISSET(i32 %12, i32* @master_read_fd_set)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %34

16:                                               ; preds = %11
  store i32 4, i32* %4, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @SOL_SOCKET, align 4
  %19 = load i32, i32* @SO_TYPE, align 4
  %20 = call i32 @getsockopt(i32 %17, i32 %18, i32 %19, i32* %3, i32* %4)
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %33

22:                                               ; preds = %16
  %23 = load i32, i32* @ngx_socket_errno, align 4
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @NGX_LOG_ALERT, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @ngx_log_error(i32 %24, i32 %27, i32 %28, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @FD_CLR(i32 %31, i32* @master_read_fd_set)
  br label %33

33:                                               ; preds = %22, %16
  br label %34

34:                                               ; preds = %33, %15
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %7

37:                                               ; preds = %7
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %65, %37
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @max_fd, align 4
  %41 = icmp sle i32 %39, %40
  br i1 %41, label %42, label %68

42:                                               ; preds = %38
  %43 = load i32, i32* %6, align 4
  %44 = call i64 @FD_ISSET(i32 %43, i32* @master_write_fd_set)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %65

47:                                               ; preds = %42
  store i32 4, i32* %4, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @SOL_SOCKET, align 4
  %50 = load i32, i32* @SO_TYPE, align 4
  %51 = call i32 @getsockopt(i32 %48, i32 %49, i32 %50, i32* %3, i32* %4)
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %64

53:                                               ; preds = %47
  %54 = load i32, i32* @ngx_socket_errno, align 4
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* @NGX_LOG_ALERT, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @ngx_log_error(i32 %55, i32 %58, i32 %59, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @FD_CLR(i32 %62, i32* @master_write_fd_set)
  br label %64

64:                                               ; preds = %53, %47
  br label %65

65:                                               ; preds = %64, %46
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %38

68:                                               ; preds = %38
  store i32 -1, i32* @max_fd, align 4
  ret void
}

declare dso_local i64 @FD_ISSET(i32, i32*) #1

declare dso_local i32 @getsockopt(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @FD_CLR(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
