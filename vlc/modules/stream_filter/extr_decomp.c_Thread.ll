; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_filter/extr_decomp.c_Thread.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_filter/extr_decomp.c_Thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i64 }

@SIGPIPE = common dso_local global i32 0, align 4
@SIG_BLOCK = common dso_local global i32 0, align 4
@bufsize = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"cannot write data: %s\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"compressed stream at EOF\00", align 1
@ENOSYS = common dso_local global i64 0, align 8
@MAP_ANONYMOUS = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@MAP_PRIVATE = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@SPLICE_F_GIFT = common dso_local global i32 0, align 4
@_SC_PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @Thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @Thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %3, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %4, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %21 = call i32 @sigemptyset(i32* %7)
  %22 = load i32, i32* @SIGPIPE, align 4
  %23 = call i32 @sigaddset(i32* %7, i32 %22)
  %24 = load i32, i32* @SIG_BLOCK, align 4
  %25 = call i32 @pthread_sigmask(i32 %24, i32* %7, i32* null)
  br label %26

26:                                               ; preds = %102, %1
  %27 = call i32 (...) @vlc_savecancel()
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* @bufsize, align 4
  %29 = call i8* @malloc(i32 %28)
  store i8* %29, i8** %10, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = icmp eq i8* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %106

36:                                               ; preds = %26
  %37 = load i8*, i8** %10, align 8
  %38 = call i32 @vlc_cleanup_push(i32 (i8*)* @free, i8* %37)
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = call i32 @vlc_mutex_lock(i32* %40)
  br label %42

42:                                               ; preds = %47, %36
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = call i32 @vlc_cond_wait(i32* %49, i32* %51)
  br label %42

53:                                               ; preds = %42
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = load i32, i32* @bufsize, align 4
  %59 = call i64 @vlc_stream_Read(i32 %56, i8* %57, i32 %58)
  store i64 %59, i64* %8, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = call i32 @vlc_mutex_unlock(i32* %61)
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @vlc_restorecancel(i32 %63)
  %65 = load i64, i64* %8, align 8
  %66 = icmp sle i64 %65, 0
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %6, align 4
  store i64 0, i64* %11, align 8
  br label %68

68:                                               ; preds = %94, %53
  %69 = load i64, i64* %11, align 8
  %70 = load i64, i64* %8, align 8
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %72, label %98

72:                                               ; preds = %68
  %73 = load i32, i32* %5, align 4
  %74 = load i8*, i8** %10, align 8
  %75 = load i64, i64* %11, align 8
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  %77 = load i64, i64* %8, align 8
  %78 = load i64, i64* %11, align 8
  %79 = sub nsw i64 %77, %78
  %80 = call i64 @write(i32 %73, i8* %76, i64 %79)
  store i64 %80, i64* %12, align 8
  %81 = load i64, i64* %12, align 8
  %82 = icmp sle i64 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %72
  %84 = load i64, i64* %12, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = load i64, i64* @EPIPE, align 8
  store i64 %87, i64* @errno, align 8
  br label %88

88:                                               ; preds = %86, %83
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %90 = load i64, i64* @errno, align 8
  %91 = call i32 @vlc_strerror_c(i64 %90)
  %92 = call i32 @msg_Err(%struct.TYPE_5__* %89, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %91)
  store i32 1, i32* %6, align 4
  br label %98

93:                                               ; preds = %72
  br label %94

94:                                               ; preds = %93
  %95 = load i64, i64* %12, align 8
  %96 = load i64, i64* %11, align 8
  %97 = add nsw i64 %96, %95
  store i64 %97, i64* %11, align 8
  br label %68

98:                                               ; preds = %88, %68
  %99 = call i32 (...) @vlc_cleanup_pop()
  %100 = load i8*, i8** %10, align 8
  %101 = call i32 @free(i8* %100)
  br label %102

102:                                              ; preds = %98
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  %105 = xor i1 %104, true
  br i1 %105, label %26, label %106

106:                                              ; preds = %102, %35
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %108 = call i32 @msg_Dbg(%struct.TYPE_5__* %107, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  store i32 -1, i32* %110, align 8
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @vlc_close(i32 %111)
  ret i8* null
}

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i32 @pthread_sigmask(i32, i32*, i32*) #1

declare dso_local i32 @vlc_savecancel(...) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vlc_cleanup_push(i32 (i8*)*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vlc_cond_wait(i32*, i32*) #1

declare dso_local i64 @vlc_stream_Read(i32, i8*, i32) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @vlc_restorecancel(i32) #1

declare dso_local i64 @write(i32, i8*, i64) #1

declare dso_local i32 @msg_Err(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @vlc_strerror_c(i64) #1

declare dso_local i32 @vlc_cleanup_pop(...) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @vlc_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
