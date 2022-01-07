; ModuleID = '/home/carl/AnghaBench/systemd/src/fuzz/extr_fuzz-journald-stream.c_LLVMFuzzerTestOneInput.c'
source_filename = "/home/carl/AnghaBench/systemd/src/fuzz/extr_fuzz-journald-stream.c_LLVMFuzzerTestOneInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }

@.str = private unnamed_addr constant [18 x i8] c"SYSTEMD_LOG_LEVEL\00", align 1
@LOG_CRIT = common dso_local global i32 0, align 4
@AF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@SOCK_CLOEXEC = common dso_local global i32 0, align 4
@SOCK_NONBLOCK = common dso_local global i32 0, align 4
@stream_fds = common dso_local global i32* null, align 8
@SIOCINQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LLVMFuzzerTestOneInput(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i64, i64* %5, align 8
  %13 = icmp ugt i64 %12, 65536
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %2
  store i32 0, i32* %3, align 4
  br label %82

15:                                               ; preds = %11
  %16 = call i32 @getenv(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* @LOG_CRIT, align 4
  %20 = call i32 @log_set_max_level(i32 %19)
  br label %21

21:                                               ; preds = %18, %15
  %22 = load i32, i32* @AF_UNIX, align 4
  %23 = load i32, i32* @SOCK_STREAM, align 4
  %24 = load i32, i32* @SOCK_CLOEXEC, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @SOCK_NONBLOCK, align 4
  %27 = or i32 %25, %26
  %28 = load i32*, i32** @stream_fds, align 8
  %29 = call i64 @socketpair(i32 %22, i32 %27, i32 0, i32* %28)
  %30 = icmp sge i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert_se(i32 %31)
  %33 = call i32 @dummy_server_init(%struct.TYPE_5__* %6, i32* null, i32 0)
  %34 = load i32*, i32** @stream_fds, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @stdout_stream_install(%struct.TYPE_5__* %6, i32 %36, i32** %7)
  %38 = icmp sge i64 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert_se(i32 %39)
  %41 = load i32*, i32** @stream_fds, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %4, align 8
  %45 = load i64, i64* %5, align 8
  %46 = call i64 @write(i32 %43, i32* %44, i64 %45)
  %47 = load i64, i64* %5, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert_se(i32 %49)
  br label %51

51:                                               ; preds = %63, %21
  %52 = load i32*, i32** @stream_fds, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @SIOCINQ, align 4
  %56 = call i64 @ioctl(i32 %54, i32 %55, i32* %8)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br label %61

61:                                               ; preds = %58, %51
  %62 = phi i1 [ false, %51 ], [ %60, %58 ]
  br i1 %62, label %63, label %67

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @sd_event_run(i32 %65, i32 -1)
  br label %51

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i32*, i32** %7, align 8
  %73 = call i32 @stdout_stream_destroy(i32* %72)
  br label %74

74:                                               ; preds = %71, %67
  %75 = call i32 @server_done(%struct.TYPE_5__* %6)
  %76 = load i32*, i32** @stream_fds, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @safe_close(i32 %78)
  %80 = load i32*, i32** @stream_fds, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  store i32 %79, i32* %81, align 4
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %74, %14
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @getenv(i8*) #1

declare dso_local i32 @log_set_max_level(i32) #1

declare dso_local i32 @assert_se(i32) #1

declare dso_local i64 @socketpair(i32, i32, i32, i32*) #1

declare dso_local i32 @dummy_server_init(%struct.TYPE_5__*, i32*, i32) #1

declare dso_local i64 @stdout_stream_install(%struct.TYPE_5__*, i32, i32**) #1

declare dso_local i64 @write(i32, i32*, i64) #1

declare dso_local i64 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @sd_event_run(i32, i32) #1

declare dso_local i32 @stdout_stream_destroy(i32*) #1

declare dso_local i32 @server_done(%struct.TYPE_5__*) #1

declare dso_local i32 @safe_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
