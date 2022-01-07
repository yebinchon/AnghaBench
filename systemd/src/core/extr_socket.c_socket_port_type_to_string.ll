; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_socket.c_socket_port_type_to_string.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_socket.c_socket_port_type_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"Stream\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Datagram\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"SequentialPacket\00", align 1
@AF_NETLINK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"Netlink\00", align 1
@_fallthrough_ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"Special\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"MessageQueue\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"FIFO\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"USBFunction\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @socket_port_type_to_string(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %5 = call i32 @assert(%struct.TYPE_5__* %4)
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %31 [
    i32 134, label %9
    i32 133, label %27
    i32 135, label %28
    i32 136, label %29
    i32 132, label %30
  ]

9:                                                ; preds = %1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %26 [
    i32 128, label %14
    i32 131, label %15
    i32 129, label %16
    i32 130, label %17
  ]

14:                                               ; preds = %9
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %32

15:                                               ; preds = %9
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %32

16:                                               ; preds = %9
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %32

17:                                               ; preds = %9
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = call i32 @socket_address_family(%struct.TYPE_6__* %19)
  %21 = load i32, i32* @AF_NETLINK, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %32

24:                                               ; preds = %17
  %25 = load i32, i32* @_fallthrough_, align 4
  br label %26

26:                                               ; preds = %9, %24
  store i8* null, i8** %2, align 8
  br label %32

27:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %32

28:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %32

29:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %32

30:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %32

31:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %32

32:                                               ; preds = %31, %30, %29, %28, %27, %26, %23, %16, %15, %14
  %33 = load i8*, i8** %2, align 8
  ret i8* %33
}

declare dso_local i32 @assert(%struct.TYPE_5__*) #1

declare dso_local i32 @socket_address_family(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
