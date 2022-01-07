; ModuleID = '/home/carl/AnghaBench/tengine/src/os/unix/extr_ngx_files.c_ngx_set_file_time.c'
source_filename = "/home/carl/AnghaBench/tengine/src/os/unix/extr_ngx_files.c_ngx_set_file_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i32 }

@NGX_OK = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_set_file_time(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x %struct.timeval], align 16
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = call i32 (...) @ngx_time()
  %10 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %8, i64 0, i64 0
  %11 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 8
  %12 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %8, i64 0, i64 0
  %13 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  store i64 0, i64* %13, align 16
  %14 = load i32, i32* %7, align 4
  %15 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %8, i64 0, i64 1
  %16 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  %17 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %8, i64 0, i64 1
  %18 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 0
  store i64 0, i64* %18, align 16
  %19 = load i32*, i32** %5, align 8
  %20 = bitcast i32* %19 to i8*
  %21 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %8, i64 0, i64 0
  %22 = call i32 @utimes(i8* %20, %struct.timeval* %21)
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* @NGX_OK, align 4
  store i32 %25, i32* %4, align 4
  br label %28

26:                                               ; preds = %3
  %27 = load i32, i32* @NGX_ERROR, align 4
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @ngx_time(...) #1

declare dso_local i32 @utimes(i8*, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
