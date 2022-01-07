; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-llmnr.c_on_llmnr_stream.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-llmnr.c_on_llmnr_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@SOCK_NONBLOCK = common dso_local global i32 0, align 4
@SOCK_CLOEXEC = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@DNS_STREAM_LLMNR_RECV = common dso_local global i32 0, align 4
@DNS_PROTOCOL_LLMNR = common dso_local global i32 0, align 4
@on_llmnr_stream_packet = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i8*)* @on_llmnr_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_llmnr_stream(i32* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %11, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @SOCK_NONBLOCK, align 4
  %18 = load i32, i32* @SOCK_CLOEXEC, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @accept4(i32 %16, i32* null, i32* null, i32 %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %4
  %24 = load i32, i32* @errno, align 4
  %25 = call i64 @ERRNO_IS_ACCEPT_AGAIN(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %47

28:                                               ; preds = %23
  %29 = load i32, i32* @errno, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %47

31:                                               ; preds = %4
  %32 = load i32*, i32** %11, align 8
  %33 = load i32, i32* @DNS_STREAM_LLMNR_RECV, align 4
  %34 = load i32, i32* @DNS_PROTOCOL_LLMNR, align 4
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @dns_stream_new(i32* %32, %struct.TYPE_3__** %10, i32 %33, i32 %34, i32 %35, i32* null)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @safe_close(i32 %40)
  %42 = load i32, i32* %13, align 4
  store i32 %42, i32* %5, align 4
  br label %47

43:                                               ; preds = %31
  %44 = load i32, i32* @on_llmnr_stream_packet, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %43, %39, %28, %27
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @accept4(i32, i32*, i32*, i32) #1

declare dso_local i64 @ERRNO_IS_ACCEPT_AGAIN(i32) #1

declare dso_local i32 @dns_stream_new(i32*, %struct.TYPE_3__**, i32, i32, i32, i32*) #1

declare dso_local i32 @safe_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
