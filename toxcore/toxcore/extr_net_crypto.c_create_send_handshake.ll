; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_net_crypto.c_create_send_handshake.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_net_crypto.c_create_send_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@HANDSHAKE_PACKET_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*)* @create_send_handshake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_send_handshake(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.TYPE_3__* @get_crypto_connection(i32* %14, i32 %15)
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %10, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %18 = icmp eq %struct.TYPE_3__* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %56

20:                                               ; preds = %4
  %21 = load i32, i32* @HANDSHAKE_PACKET_LENGTH, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %11, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %12, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %9, align 8
  %37 = call i32 @create_crypto_handshake(i32* %25, i32* %24, i32* %26, i32 %29, i32 %32, i32 %35, i32* %36)
  %38 = sext i32 %37 to i64
  %39 = mul nuw i64 4, %22
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %20
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %54

42:                                               ; preds = %20
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = mul nuw i64 4, %22
  %46 = trunc i64 %45 to i32
  %47 = call i64 @new_temp_packet(i32* %43, i32 %44, i32* %24, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %54

50:                                               ; preds = %42
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @send_temp_packet(i32* %51, i32 %52)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %54

54:                                               ; preds = %50, %49, %41
  %55 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %55)
  br label %56

56:                                               ; preds = %54, %19
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local %struct.TYPE_3__* @get_crypto_connection(i32*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @create_crypto_handshake(i32*, i32*, i32*, i32, i32, i32, i32*) #1

declare dso_local i64 @new_temp_packet(i32*, i32, i32*, i32) #1

declare dso_local i32 @send_temp_packet(i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
