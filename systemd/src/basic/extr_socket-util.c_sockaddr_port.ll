; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_socket-util.c_sockaddr_port.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_socket-util.c_sockaddr_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%union.sockaddr_union = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@EAFNOSUPPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sockaddr_port(%struct.sockaddr* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %union.sockaddr_union*, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %8 = bitcast %struct.sockaddr* %7 to %union.sockaddr_union*
  store %union.sockaddr_union* %8, %union.sockaddr_union** %6, align 8
  %9 = load %union.sockaddr_union*, %union.sockaddr_union** %6, align 8
  %10 = call i32 @assert(%union.sockaddr_union* %9)
  %11 = load %union.sockaddr_union*, %union.sockaddr_union** %6, align 8
  %12 = bitcast %union.sockaddr_union* %11 to %struct.TYPE_5__*
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %35 [
    i32 130, label %15
    i32 129, label %22
    i32 128, label %29
  ]

15:                                               ; preds = %2
  %16 = load %union.sockaddr_union*, %union.sockaddr_union** %6, align 8
  %17 = bitcast %union.sockaddr_union* %16 to %struct.TYPE_6__*
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @be16toh(i32 %19)
  %21 = load i32*, i32** %5, align 8
  store i32 %20, i32* %21, align 4
  store i32 0, i32* %3, align 4
  br label %38

22:                                               ; preds = %2
  %23 = load %union.sockaddr_union*, %union.sockaddr_union** %6, align 8
  %24 = bitcast %union.sockaddr_union* %23 to %struct.TYPE_7__*
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @be16toh(i32 %26)
  %28 = load i32*, i32** %5, align 8
  store i32 %27, i32* %28, align 4
  store i32 0, i32* %3, align 4
  br label %38

29:                                               ; preds = %2
  %30 = load %union.sockaddr_union*, %union.sockaddr_union** %6, align 8
  %31 = bitcast %union.sockaddr_union* %30 to %struct.TYPE_8__*
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %5, align 8
  store i32 %33, i32* %34, align 4
  store i32 0, i32* %3, align 4
  br label %38

35:                                               ; preds = %2
  %36 = load i32, i32* @EAFNOSUPPORT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %35, %29, %22, %15
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @assert(%union.sockaddr_union*) #1

declare dso_local i32 @be16toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
