; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_send_object_init_from_sendbuffer.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_send_object_init_from_sendbuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_server = type { i32 }
%struct.send_object = type { i32*, i32, i32* }
%struct.socket_sendbuffer = type { i32, i32, i64 }

@USEROBJECT = common dso_local global i32 0, align 4
@dummy_free = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.socket_server*, %struct.send_object*, %struct.socket_sendbuffer*)* @send_object_init_from_sendbuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_object_init_from_sendbuffer(%struct.socket_server* %0, %struct.send_object* %1, %struct.socket_sendbuffer* %2) #0 {
  %4 = alloca %struct.socket_server*, align 8
  %5 = alloca %struct.send_object*, align 8
  %6 = alloca %struct.socket_sendbuffer*, align 8
  store %struct.socket_server* %0, %struct.socket_server** %4, align 8
  store %struct.send_object* %1, %struct.send_object** %5, align 8
  store %struct.socket_sendbuffer* %2, %struct.socket_sendbuffer** %6, align 8
  %7 = load %struct.socket_sendbuffer*, %struct.socket_sendbuffer** %6, align 8
  %8 = getelementptr inbounds %struct.socket_sendbuffer, %struct.socket_sendbuffer* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %46 [
    i32 130, label %10
    i32 129, label %21
    i32 128, label %30
  ]

10:                                               ; preds = %3
  %11 = load %struct.socket_server*, %struct.socket_server** %4, align 8
  %12 = load %struct.send_object*, %struct.send_object** %5, align 8
  %13 = load %struct.socket_sendbuffer*, %struct.socket_sendbuffer** %6, align 8
  %14 = getelementptr inbounds %struct.socket_sendbuffer, %struct.socket_sendbuffer* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = load %struct.socket_sendbuffer*, %struct.socket_sendbuffer** %6, align 8
  %18 = getelementptr inbounds %struct.socket_sendbuffer, %struct.socket_sendbuffer* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @send_object_init(%struct.socket_server* %11, %struct.send_object* %12, i8* %16, i32 %19)
  br label %53

21:                                               ; preds = %3
  %22 = load %struct.socket_server*, %struct.socket_server** %4, align 8
  %23 = load %struct.send_object*, %struct.send_object** %5, align 8
  %24 = load %struct.socket_sendbuffer*, %struct.socket_sendbuffer** %6, align 8
  %25 = getelementptr inbounds %struct.socket_sendbuffer, %struct.socket_sendbuffer* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = load i32, i32* @USEROBJECT, align 4
  %29 = call i32 @send_object_init(%struct.socket_server* %22, %struct.send_object* %23, i8* %27, i32 %28)
  br label %53

30:                                               ; preds = %3
  %31 = load %struct.socket_sendbuffer*, %struct.socket_sendbuffer** %6, align 8
  %32 = getelementptr inbounds %struct.socket_sendbuffer, %struct.socket_sendbuffer* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = bitcast i8* %34 to i32*
  %36 = load %struct.send_object*, %struct.send_object** %5, align 8
  %37 = getelementptr inbounds %struct.send_object, %struct.send_object* %36, i32 0, i32 2
  store i32* %35, i32** %37, align 8
  %38 = load %struct.socket_sendbuffer*, %struct.socket_sendbuffer** %6, align 8
  %39 = getelementptr inbounds %struct.socket_sendbuffer, %struct.socket_sendbuffer* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.send_object*, %struct.send_object** %5, align 8
  %42 = getelementptr inbounds %struct.send_object, %struct.send_object* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load i32*, i32** @dummy_free, align 8
  %44 = load %struct.send_object*, %struct.send_object** %5, align 8
  %45 = getelementptr inbounds %struct.send_object, %struct.send_object* %44, i32 0, i32 0
  store i32* %43, i32** %45, align 8
  br label %53

46:                                               ; preds = %3
  %47 = load %struct.send_object*, %struct.send_object** %5, align 8
  %48 = getelementptr inbounds %struct.send_object, %struct.send_object* %47, i32 0, i32 2
  store i32* null, i32** %48, align 8
  %49 = load %struct.send_object*, %struct.send_object** %5, align 8
  %50 = getelementptr inbounds %struct.send_object, %struct.send_object* %49, i32 0, i32 1
  store i32 0, i32* %50, align 8
  %51 = load %struct.send_object*, %struct.send_object** %5, align 8
  %52 = getelementptr inbounds %struct.send_object, %struct.send_object* %51, i32 0, i32 0
  store i32* null, i32** %52, align 8
  br label %53

53:                                               ; preds = %46, %30, %21, %10
  ret void
}

declare dso_local i32 @send_object_init(%struct.socket_server*, %struct.send_object*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
