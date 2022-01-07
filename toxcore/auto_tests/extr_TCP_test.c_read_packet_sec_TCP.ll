; ModuleID = '/home/carl/AnghaBench/toxcore/auto_tests/extr_TCP_test.c_read_packet_sec_TCP.c'
source_filename = "/home/carl/AnghaBench/toxcore/auto_tests/extr_TCP_test.c_read_packet_sec_TCP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sec_TCP_con = type { i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"wrong len %i\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Decrypt failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_packet_sec_TCP(%struct.sec_TCP_con* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.sec_TCP_con*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sec_TCP_con* %0, %struct.sec_TCP_con** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.sec_TCP_con*, %struct.sec_TCP_con** %4, align 8
  %9 = getelementptr inbounds %struct.sec_TCP_con, %struct.sec_TCP_con* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @recv(i32 %10, i32* %11, i32 %12, i32 0)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = load i32, i32* %7, align 4
  %18 = call i32 (i32, i8*, ...) @ck_assert_msg(i32 %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.sec_TCP_con*, %struct.sec_TCP_con** %4, align 8
  %20 = getelementptr inbounds %struct.sec_TCP_con, %struct.sec_TCP_con* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sec_TCP_con*, %struct.sec_TCP_con** %4, align 8
  %23 = getelementptr inbounds %struct.sec_TCP_con, %struct.sec_TCP_con* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  %27 = load i32, i32* %6, align 4
  %28 = sub nsw i32 %27, 2
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @decrypt_data_symmetric(i32 %21, i32 %24, i32* %26, i32 %28, i32* %29)
  store i32 %30, i32* %7, align 4
  %31 = icmp ne i32 %30, -1
  %32 = zext i1 %31 to i32
  %33 = call i32 (i32, i8*, ...) @ck_assert_msg(i32 %32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.sec_TCP_con*, %struct.sec_TCP_con** %4, align 8
  %35 = getelementptr inbounds %struct.sec_TCP_con, %struct.sec_TCP_con* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @increment_nonce(i32 %36)
  %38 = load i32, i32* %7, align 4
  ret i32 %38
}

declare dso_local i32 @ck_assert_msg(i32, i8*, ...) #1

declare dso_local i32 @recv(i32, i32*, i32, i32) #1

declare dso_local i32 @decrypt_data_symmetric(i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @increment_nonce(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
