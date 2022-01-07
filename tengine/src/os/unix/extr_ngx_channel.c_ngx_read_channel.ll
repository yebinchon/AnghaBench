; ModuleID = '/home/carl/AnghaBench/tengine/src/os/unix/extr_ngx_channel.c_ngx_read_channel.c'
source_filename = "/home/carl/AnghaBench/tengine/src/os/unix/extr_ngx_channel.c_ngx_read_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }
%struct.iovec = type { i8*, i64 }
%struct.msghdr = type { i32, i32, i32, i32, i8*, i8*, %struct.iovec*, i64, i32* }

@ngx_errno = common dso_local global i64 0, align 8
@NGX_EAGAIN = common dso_local global i64 0, align 8
@NGX_AGAIN = common dso_local global i32 0, align 4
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"recvmsg() failed\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_CORE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"recvmsg() returned zero\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"recvmsg() returned not enough data: %z\00", align 1
@NGX_CMD_OPEN_CHANNEL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"recvmsg() returned no ancillary data\00", align 1
@MSG_CTRUNC = common dso_local global i32 0, align 4
@MSG_TRUNC = common dso_local global i32 0, align 4
@SCM_RIGHTS = common dso_local global i64 0, align 8
@SOL_SOCKET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_read_channel(i32 %0, %struct.TYPE_3__* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca [1 x %struct.iovec], align 16
  %13 = alloca %struct.msghdr, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %16 = bitcast %struct.TYPE_3__* %15 to i8*
  %17 = getelementptr inbounds [1 x %struct.iovec], [1 x %struct.iovec]* %12, i64 0, i64 0
  %18 = getelementptr inbounds %struct.iovec, %struct.iovec* %17, i32 0, i32 0
  store i8* %16, i8** %18, align 16
  %19 = load i64, i64* %8, align 8
  %20 = getelementptr inbounds [1 x %struct.iovec], [1 x %struct.iovec]* %12, i64 0, i64 0
  %21 = getelementptr inbounds %struct.iovec, %struct.iovec* %20, i32 0, i32 1
  store i64 %19, i64* %21, align 8
  %22 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 8
  store i32* null, i32** %22, align 8
  %23 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 7
  store i64 0, i64* %23, align 8
  %24 = getelementptr inbounds [1 x %struct.iovec], [1 x %struct.iovec]* %12, i64 0, i64 0
  %25 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 6
  store %struct.iovec* %24, %struct.iovec** %25, align 8
  %26 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = bitcast i32* %14 to i8*
  %28 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 4
  store i8* %27, i8** %28, align 8
  %29 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 2
  store i32 4, i32* %29, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @recvmsg(i32 %30, %struct.msghdr* %13, i32 0)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %47

34:                                               ; preds = %4
  %35 = load i64, i64* @ngx_errno, align 8
  store i64 %35, i64* %11, align 8
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* @NGX_EAGAIN, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @NGX_AGAIN, align 4
  store i32 %40, i32* %5, align 4
  br label %87

41:                                               ; preds = %34
  %42 = load i32, i32* @NGX_LOG_ALERT, align 4
  %43 = load i32*, i32** %9, align 8
  %44 = load i64, i64* %11, align 8
  %45 = call i32 (i32, i32*, i64, i8*, ...) @ngx_log_error(i32 %42, i32* %43, i64 %44, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @NGX_ERROR, align 4
  store i32 %46, i32* %5, align 4
  br label %87

47:                                               ; preds = %4
  %48 = load i32, i32* %10, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load i32, i32* @NGX_LOG_DEBUG_CORE, align 4
  %52 = load i32*, i32** %9, align 8
  %53 = call i32 @ngx_log_debug0(i32 %51, i32* %52, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* @NGX_ERROR, align 4
  store i32 %54, i32* %5, align 4
  br label %87

55:                                               ; preds = %47
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = icmp ult i64 %57, 16
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load i32, i32* @NGX_LOG_ALERT, align 4
  %61 = load i32*, i32** %9, align 8
  %62 = load i32, i32* %10, align 4
  %63 = call i32 (i32, i32*, i64, i8*, ...) @ngx_log_error(i32 %60, i32* %61, i64 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @NGX_ERROR, align 4
  store i32 %64, i32* %5, align 4
  br label %87

65:                                               ; preds = %55
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @NGX_CMD_OPEN_CHANNEL, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %85

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = icmp ne i64 %74, 4
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load i32, i32* @NGX_LOG_ALERT, align 4
  %78 = load i32*, i32** %9, align 8
  %79 = call i32 (i32, i32*, i64, i8*, ...) @ngx_log_error(i32 %77, i32* %78, i64 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %80 = load i32, i32* @NGX_ERROR, align 4
  store i32 %80, i32* %5, align 4
  br label %87

81:                                               ; preds = %71
  %82 = load i32, i32* %14, align 4
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 8
  br label %85

85:                                               ; preds = %81, %65
  %86 = load i32, i32* %10, align 4
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %85, %76, %59, %50, %41, %39
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @recvmsg(i32, %struct.msghdr*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32*, i64, i8*, ...) #1

declare dso_local i32 @ngx_log_debug0(i32, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
