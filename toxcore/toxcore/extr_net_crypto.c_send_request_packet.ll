; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_net_crypto.c_send_request_packet.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_net_crypto.c_send_request_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_7__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@MAX_CRYPTO_DATA_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @send_request_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_request_packet(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.TYPE_6__* @get_crypto_connection(i32* %11, i32 %12)
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %6, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %15 = icmp eq %struct.TYPE_6__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %45

17:                                               ; preds = %2
  %18 = load i32, i32* @MAX_CRYPTO_DATA_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %7, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %8, align 8
  %22 = mul nuw i64 4, %19
  %23 = trunc i64 %22 to i32
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = call i32 @generate_request_packet(i32* %21, i32 %23, %struct.TYPE_7__* %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %30

29:                                               ; preds = %17
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %43

30:                                               ; preds = %17
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @send_data_packet_helper(i32* %31, i32 %32, i32 %36, i32 %40, i32* %21, i32 %41)
  store i32 %42, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %43

43:                                               ; preds = %30, %29
  %44 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %44)
  br label %45

45:                                               ; preds = %43, %16
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.TYPE_6__* @get_crypto_connection(i32*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @generate_request_packet(i32*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @send_data_packet_helper(i32*, i32, i32, i32, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
