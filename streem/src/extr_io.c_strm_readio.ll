; ModuleID = '/home/carl/AnghaBench/streem/src/extr_io.c_strm_readio.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_io.c_strm_readio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32, i32 }
%struct.fd_read_buffer = type { i8*, i8*, i8*, i32, i8*, %struct.TYPE_7__* }
%struct.stat = type { i32, i32 }

@stdio_read = common dso_local global i32 0, align 4
@STRM_IO_READING = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@STRM_IO_NOWAIT = common dso_local global i32 0, align 4
@read_cb = common dso_local global i32 0, align 4
@strm_producer = common dso_local global i32 0, align 4
@read_close = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@MAP_PRIVATE = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@STRM_IO_NOFILL = common dso_local global i32 0, align 4
@readline_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (%struct.TYPE_7__*)* @strm_readio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @strm_readio(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.fd_read_buffer*, align 8
  %6 = alloca %struct.stat, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %7 = load i32, i32* @stdio_read, align 4
  store i32 %7, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = icmp eq %struct.TYPE_6__* %10, null
  br i1 %11, label %12, label %75

12:                                               ; preds = %1
  %13 = call %struct.fd_read_buffer* @malloc(i32 48)
  store %struct.fd_read_buffer* %13, %struct.fd_read_buffer** %5, align 8
  %14 = load i32, i32* @STRM_IO_READING, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.fd_read_buffer*, %struct.fd_read_buffer** %5, align 8
  %23 = getelementptr inbounds %struct.fd_read_buffer, %struct.fd_read_buffer* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %25 = load %struct.fd_read_buffer*, %struct.fd_read_buffer** %5, align 8
  %26 = getelementptr inbounds %struct.fd_read_buffer, %struct.fd_read_buffer* %25, i32 0, i32 5
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %26, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @fstat(i32 %29, %struct.stat* %6)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %12
  %33 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @S_IFMT, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* @S_IFREG, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %32
  %40 = load i32, i32* @STRM_IO_NOWAIT, align 4
  %41 = load i32, i32* %4, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* @read_cb, align 4
  store i32 %43, i32* %3, align 4
  %44 = load %struct.fd_read_buffer*, %struct.fd_read_buffer** %5, align 8
  %45 = getelementptr inbounds %struct.fd_read_buffer, %struct.fd_read_buffer* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.fd_read_buffer*, %struct.fd_read_buffer** %5, align 8
  %48 = getelementptr inbounds %struct.fd_read_buffer, %struct.fd_read_buffer* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  %49 = load %struct.fd_read_buffer*, %struct.fd_read_buffer** %5, align 8
  %50 = getelementptr inbounds %struct.fd_read_buffer, %struct.fd_read_buffer* %49, i32 0, i32 2
  store i8* %46, i8** %50, align 8
  br label %59

51:                                               ; preds = %32, %12
  %52 = load %struct.fd_read_buffer*, %struct.fd_read_buffer** %5, align 8
  %53 = getelementptr inbounds %struct.fd_read_buffer, %struct.fd_read_buffer* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.fd_read_buffer*, %struct.fd_read_buffer** %5, align 8
  %56 = getelementptr inbounds %struct.fd_read_buffer, %struct.fd_read_buffer* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = load %struct.fd_read_buffer*, %struct.fd_read_buffer** %5, align 8
  %58 = getelementptr inbounds %struct.fd_read_buffer, %struct.fd_read_buffer* %57, i32 0, i32 2
  store i8* %54, i8** %58, align 8
  br label %59

59:                                               ; preds = %51, %39
  %60 = load i32, i32* @strm_producer, align 4
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @read_close, align 4
  %63 = load %struct.fd_read_buffer*, %struct.fd_read_buffer** %5, align 8
  %64 = bitcast %struct.fd_read_buffer* %63 to i8*
  %65 = call %struct.TYPE_6__* @strm_stream_new(i32 %60, i32 %61, i32 %62, i8* %64)
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  store %struct.TYPE_6__* %65, %struct.TYPE_6__** %67, align 8
  %68 = load i32, i32* %4, align 4
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %68
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %59, %1
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  ret %struct.TYPE_6__* %78
}

declare dso_local %struct.fd_read_buffer* @malloc(i32) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local %struct.TYPE_6__* @strm_stream_new(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
