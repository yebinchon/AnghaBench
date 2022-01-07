; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_TCP_server.c_read_TCP_length.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_TCP_server.c_read_TCP_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSG_NOSIGNAL = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"FAIL recv packet\0A\00", align 1
@MAX_PACKET_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @read_TCP_length(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @TCP_socket_data_recv_buffer(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = zext i32 %9 to i64
  %11 = icmp uge i64 %10, 8
  br i1 %11, label %12, label %32

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = bitcast i64* %5 to i32*
  %15 = load i32, i32* @MSG_NOSIGNAL, align 4
  %16 = call i32 @recv(i32 %13, i32* %14, i32 8, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = icmp ne i64 %18, 8
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = load i32, i32* @stderr, align 4
  %22 = call i32 @fprintf(i32 %21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %2, align 8
  br label %33

23:                                               ; preds = %12
  %24 = load i64, i64* %5, align 8
  %25 = call i64 @ntohs(i64 %24)
  store i64 %25, i64* %5, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @MAX_PACKET_SIZE, align 8
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i64 -1, i64* %2, align 8
  br label %33

30:                                               ; preds = %23
  %31 = load i64, i64* %5, align 8
  store i64 %31, i64* %2, align 8
  br label %33

32:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %33

33:                                               ; preds = %32, %30, %29, %20
  %34 = load i64, i64* %2, align 8
  ret i64 %34
}

declare dso_local i32 @TCP_socket_data_recv_buffer(i32) #1

declare dso_local i32 @recv(i32, i32*, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i64 @ntohs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
