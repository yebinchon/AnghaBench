; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_uart_emul.c_ttyopen.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_uart_emul.c_ttyopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.ttyfd = type { i64, %struct.TYPE_5__, %struct.TYPE_5__ }

@CLOCAL = common dso_local global i32 0, align 4
@TCSANOW = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i64 0, align 8
@tio_stdio_orig = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@ttyclose = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ttyfd*)* @ttyopen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ttyopen(%struct.ttyfd* %0) #0 {
  %2 = alloca %struct.ttyfd*, align 8
  store %struct.ttyfd* %0, %struct.ttyfd** %2, align 8
  %3 = load %struct.ttyfd*, %struct.ttyfd** %2, align 8
  %4 = getelementptr inbounds %struct.ttyfd, %struct.ttyfd* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.ttyfd*, %struct.ttyfd** %2, align 8
  %7 = getelementptr inbounds %struct.ttyfd, %struct.ttyfd* %6, i32 0, i32 1
  %8 = call i32 @tcgetattr(i64 %5, %struct.TYPE_5__* %7)
  %9 = load %struct.ttyfd*, %struct.ttyfd** %2, align 8
  %10 = getelementptr inbounds %struct.ttyfd, %struct.ttyfd* %9, i32 0, i32 2
  %11 = load %struct.ttyfd*, %struct.ttyfd** %2, align 8
  %12 = getelementptr inbounds %struct.ttyfd, %struct.ttyfd* %11, i32 0, i32 1
  %13 = bitcast %struct.TYPE_5__* %10 to i8*
  %14 = bitcast %struct.TYPE_5__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 8 %14, i64 4, i1 false)
  %15 = load %struct.ttyfd*, %struct.ttyfd** %2, align 8
  %16 = getelementptr inbounds %struct.ttyfd, %struct.ttyfd* %15, i32 0, i32 2
  %17 = call i32 @cfmakeraw(%struct.TYPE_5__* %16)
  %18 = load i32, i32* @CLOCAL, align 4
  %19 = load %struct.ttyfd*, %struct.ttyfd** %2, align 8
  %20 = getelementptr inbounds %struct.ttyfd, %struct.ttyfd* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %18
  store i32 %23, i32* %21, align 4
  %24 = load %struct.ttyfd*, %struct.ttyfd** %2, align 8
  %25 = getelementptr inbounds %struct.ttyfd, %struct.ttyfd* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* @TCSANOW, align 4
  %28 = load %struct.ttyfd*, %struct.ttyfd** %2, align 8
  %29 = getelementptr inbounds %struct.ttyfd, %struct.ttyfd* %28, i32 0, i32 2
  %30 = call i32 @tcsetattr(i64 %26, i32 %27, %struct.TYPE_5__* %29)
  %31 = load %struct.ttyfd*, %struct.ttyfd** %2, align 8
  %32 = getelementptr inbounds %struct.ttyfd, %struct.ttyfd* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @STDIN_FILENO, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %1
  %37 = load %struct.ttyfd*, %struct.ttyfd** %2, align 8
  %38 = getelementptr inbounds %struct.ttyfd, %struct.ttyfd* %37, i32 0, i32 1
  %39 = bitcast %struct.TYPE_5__* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.TYPE_5__* @tio_stdio_orig to i8*), i8* align 8 %39, i64 4, i1 false)
  %40 = load i32, i32* @ttyclose, align 4
  %41 = call i32 @atexit(i32 %40)
  br label %42

42:                                               ; preds = %36, %1
  ret void
}

declare dso_local i32 @tcgetattr(i64, %struct.TYPE_5__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cfmakeraw(%struct.TYPE_5__*) #1

declare dso_local i32 @tcsetattr(i64, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @atexit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
