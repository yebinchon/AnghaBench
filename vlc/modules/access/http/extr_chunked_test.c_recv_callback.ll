; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_chunked_test.c_recv_callback.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_chunked_test.c_recv_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_tls = type { i32 }
%struct.iovec = type { i64, i32 }

@stream_length = common dso_local global i64 0, align 8
@stream_content = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vlc_tls*, %struct.iovec*, i32)* @recv_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @recv_callback(%struct.vlc_tls* %0, %struct.iovec* %1, i32 %2) #0 {
  %4 = alloca %struct.vlc_tls*, align 8
  %5 = alloca %struct.iovec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.vlc_tls* %0, %struct.vlc_tls** %4, align 8
  store %struct.iovec* %1, %struct.iovec** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %7, align 8
  br label %9

9:                                                ; preds = %40, %3
  %10 = load i32, i32* %6, align 4
  %11 = icmp ugt i32 %10, 0
  br i1 %11, label %12, label %45

12:                                               ; preds = %9
  %13 = load %struct.iovec*, %struct.iovec** %5, align 8
  %14 = getelementptr inbounds %struct.iovec, %struct.iovec* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %8, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* @stream_length, align 8
  %18 = icmp ugt i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = load i64, i64* @stream_length, align 8
  store i64 %20, i64* %8, align 8
  br label %21

21:                                               ; preds = %19, %12
  %22 = load i64, i64* %8, align 8
  %23 = icmp ugt i64 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %21
  %25 = load %struct.iovec*, %struct.iovec** %5, align 8
  %26 = getelementptr inbounds %struct.iovec, %struct.iovec* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i64, i64* @stream_content, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @memcpy(i32 %27, i64 %28, i64 %29)
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* @stream_content, align 8
  %33 = add i64 %32, %31
  store i64 %33, i64* @stream_content, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* @stream_length, align 8
  %36 = sub i64 %35, %34
  store i64 %36, i64* @stream_length, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %7, align 8
  %39 = add i64 %38, %37
  store i64 %39, i64* %7, align 8
  br label %40

40:                                               ; preds = %24, %21
  %41 = load %struct.iovec*, %struct.iovec** %5, align 8
  %42 = getelementptr inbounds %struct.iovec, %struct.iovec* %41, i32 1
  store %struct.iovec* %42, %struct.iovec** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = add i32 %43, -1
  store i32 %44, i32* %6, align 4
  br label %9

45:                                               ; preds = %9
  %46 = load %struct.vlc_tls*, %struct.vlc_tls** %4, align 8
  %47 = load i64, i64* %7, align 8
  ret i64 %47
}

declare dso_local i32 @memcpy(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
