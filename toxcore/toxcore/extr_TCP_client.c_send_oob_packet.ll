; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_TCP_client.c_send_oob_packet.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_TCP_client.c_send_oob_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TCP_MAX_OOB_DATA_LENGTH = common dso_local global i64 0, align 8
@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@TCP_PACKET_OOB_SEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @send_oob_packet(i32* %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i64, i64* %9, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %4
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* @TCP_MAX_OOB_DATA_LENGTH, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %4
  store i32 -1, i32* %5, align 4
  br label %46

19:                                               ; preds = %14
  %20 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %21 = add nsw i32 1, %20
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* %9, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %10, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %11, align 8
  %27 = load i32, i32* @TCP_PACKET_OOB_SEND, align 4
  %28 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 %27, i32* %28, align 16
  %29 = getelementptr inbounds i32, i32* %26, i64 1
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %32 = sext i32 %31 to i64
  %33 = call i32 @memcpy(i32* %29, i32* %30, i64 %32)
  %34 = getelementptr inbounds i32, i32* %26, i64 1
  %35 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32*, i32** %8, align 8
  %39 = load i64, i64* %9, align 8
  %40 = call i32 @memcpy(i32* %37, i32* %38, i64 %39)
  %41 = load i32*, i32** %6, align 8
  %42 = mul nuw i64 4, %24
  %43 = trunc i64 %42 to i32
  %44 = call i32 @write_packet_TCP_secure_connection(i32* %41, i32* %26, i32 %43, i32 0)
  store i32 %44, i32* %5, align 4
  %45 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %45)
  br label %46

46:                                               ; preds = %19, %18
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #2

declare dso_local i32 @write_packet_TCP_secure_connection(i32*, i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
