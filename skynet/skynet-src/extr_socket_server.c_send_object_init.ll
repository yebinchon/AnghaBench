; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_send_object_init.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_send_object_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_server = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (i8*)*, i32, i8* (i8*)* }
%struct.send_object = type { i64, i32, i8* }

@USEROBJECT = common dso_local global i64 0, align 8
@FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket_server*, %struct.send_object*, i8*, i64)* @send_object_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_object_init(%struct.socket_server* %0, %struct.send_object* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket_server*, align 8
  %7 = alloca %struct.send_object*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.socket_server* %0, %struct.socket_server** %6, align 8
  store %struct.send_object* %1, %struct.send_object** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @USEROBJECT, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %36

13:                                               ; preds = %4
  %14 = load %struct.socket_server*, %struct.socket_server** %6, align 8
  %15 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i8* (i8*)*, i8* (i8*)** %16, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i8* %17(i8* %18)
  %20 = load %struct.send_object*, %struct.send_object** %7, align 8
  %21 = getelementptr inbounds %struct.send_object, %struct.send_object* %20, i32 0, i32 2
  store i8* %19, i8** %21, align 8
  %22 = load %struct.socket_server*, %struct.socket_server** %6, align 8
  %23 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64 (i8*)*, i64 (i8*)** %24, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = call i64 %25(i8* %26)
  %28 = load %struct.send_object*, %struct.send_object** %7, align 8
  %29 = getelementptr inbounds %struct.send_object, %struct.send_object* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.socket_server*, %struct.socket_server** %6, align 8
  %31 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.send_object*, %struct.send_object** %7, align 8
  %35 = getelementptr inbounds %struct.send_object, %struct.send_object* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  store i32 1, i32* %5, align 4
  br label %46

36:                                               ; preds = %4
  %37 = load i8*, i8** %8, align 8
  %38 = load %struct.send_object*, %struct.send_object** %7, align 8
  %39 = getelementptr inbounds %struct.send_object, %struct.send_object* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load %struct.send_object*, %struct.send_object** %7, align 8
  %42 = getelementptr inbounds %struct.send_object, %struct.send_object* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load i32, i32* @FREE, align 4
  %44 = load %struct.send_object*, %struct.send_object** %7, align 8
  %45 = getelementptr inbounds %struct.send_object, %struct.send_object* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %36, %13
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
