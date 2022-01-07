; ModuleID = '/home/carl/AnghaBench/streem/src/extr_io.c_read_cb.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_io.c_read_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.fd_read_buffer* }
%struct.fd_read_buffer = type { i64, i64, i64, i32 }

@BUFSIZ = common dso_local global i64 0, align 8
@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32)* @read_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_cb(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fd_read_buffer*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load %struct.fd_read_buffer*, %struct.fd_read_buffer** %11, align 8
  store %struct.fd_read_buffer* %12, %struct.fd_read_buffer** %6, align 8
  %13 = load i64, i64* @BUFSIZ, align 8
  %14 = load %struct.fd_read_buffer*, %struct.fd_read_buffer** %6, align 8
  %15 = getelementptr inbounds %struct.fd_read_buffer, %struct.fd_read_buffer* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.fd_read_buffer*, %struct.fd_read_buffer** %6, align 8
  %18 = getelementptr inbounds %struct.fd_read_buffer, %struct.fd_read_buffer* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = sub nsw i64 %16, %19
  %21 = sub nsw i64 %13, %20
  store i64 %21, i64* %7, align 8
  %22 = load %struct.fd_read_buffer*, %struct.fd_read_buffer** %6, align 8
  %23 = getelementptr inbounds %struct.fd_read_buffer, %struct.fd_read_buffer* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.fd_read_buffer*, %struct.fd_read_buffer** %6, align 8
  %26 = getelementptr inbounds %struct.fd_read_buffer, %struct.fd_read_buffer* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i64 @strm_read(i32 %24, i64 %27, i64 %28)
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %8, align 8
  %31 = icmp sle i64 %30, 0
  br i1 %31, label %32, label %73

32:                                               ; preds = %2
  %33 = load %struct.fd_read_buffer*, %struct.fd_read_buffer** %6, align 8
  %34 = getelementptr inbounds %struct.fd_read_buffer, %struct.fd_read_buffer* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.fd_read_buffer*, %struct.fd_read_buffer** %6, align 8
  %37 = getelementptr inbounds %struct.fd_read_buffer, %struct.fd_read_buffer* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %35, %38
  br i1 %39, label %40, label %65

40:                                               ; preds = %32
  %41 = load %struct.fd_read_buffer*, %struct.fd_read_buffer** %6, align 8
  %42 = getelementptr inbounds %struct.fd_read_buffer, %struct.fd_read_buffer* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.fd_read_buffer*, %struct.fd_read_buffer** %6, align 8
  %45 = getelementptr inbounds %struct.fd_read_buffer, %struct.fd_read_buffer* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.fd_read_buffer*, %struct.fd_read_buffer** %6, align 8
  %48 = getelementptr inbounds %struct.fd_read_buffer, %struct.fd_read_buffer* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %46, %49
  %51 = call i32 @read_str(i64 %43, i64 %50)
  store i32 %51, i32* %9, align 4
  %52 = load %struct.fd_read_buffer*, %struct.fd_read_buffer** %6, align 8
  %53 = getelementptr inbounds %struct.fd_read_buffer, %struct.fd_read_buffer* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.fd_read_buffer*, %struct.fd_read_buffer** %6, align 8
  %56 = getelementptr inbounds %struct.fd_read_buffer, %struct.fd_read_buffer* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load %struct.fd_read_buffer*, %struct.fd_read_buffer** %6, align 8
  %58 = getelementptr inbounds %struct.fd_read_buffer, %struct.fd_read_buffer* %57, i32 0, i32 2
  store i64 %54, i64* %58, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.fd_read_buffer*, %struct.fd_read_buffer** %6, align 8
  %62 = getelementptr inbounds %struct.fd_read_buffer, %struct.fd_read_buffer* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @strm_io_emit(%struct.TYPE_8__* %59, i32 %60, i32 %63, i32 (%struct.TYPE_8__*, i32)* @read_cb)
  br label %71

65:                                               ; preds = %32
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %67 = load %struct.fd_read_buffer*, %struct.fd_read_buffer** %6, align 8
  %68 = getelementptr inbounds %struct.fd_read_buffer, %struct.fd_read_buffer* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @strm_io_stop(%struct.TYPE_8__* %66, i32 %69)
  br label %71

71:                                               ; preds = %65, %40
  %72 = load i32, i32* @STRM_OK, align 4
  store i32 %72, i32* %3, align 4
  br label %83

73:                                               ; preds = %2
  %74 = load i64, i64* %8, align 8
  %75 = load %struct.fd_read_buffer*, %struct.fd_read_buffer** %6, align 8
  %76 = getelementptr inbounds %struct.fd_read_buffer, %struct.fd_read_buffer* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, %74
  store i64 %78, i64* %76, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %80 = call i32 (...) @strm_nil_value()
  %81 = call i32 @readline_cb(%struct.TYPE_8__* %79, i32 %80)
  %82 = load i32, i32* @STRM_OK, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %73, %71
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i64 @strm_read(i32, i64, i64) #1

declare dso_local i32 @read_str(i64, i64) #1

declare dso_local i32 @strm_io_emit(%struct.TYPE_8__*, i32, i32, i32 (%struct.TYPE_8__*, i32)*) #1

declare dso_local i32 @strm_io_stop(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @readline_cb(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @strm_nil_value(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
