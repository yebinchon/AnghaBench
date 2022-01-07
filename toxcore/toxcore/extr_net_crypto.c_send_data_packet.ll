; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_net_crypto.c_send_data_packet.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_net_crypto.c_send_data_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@crypto_box_MACBYTES = common dso_local global i64 0, align 8
@MAX_CRYPTO_PACKET_SIZE = common dso_local global i64 0, align 8
@NET_PACKET_CRYPTO_DATA = common dso_local global i32 0, align 4
@crypto_box_NONCEBYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i64)* @send_data_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_data_packet(i32* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i64, i64* %9, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %4
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* @crypto_box_MACBYTES, align 8
  %20 = add i64 9, %19
  %21 = add i64 %18, %20
  %22 = load i64, i64* @MAX_CRYPTO_PACKET_SIZE, align 8
  %23 = icmp ugt i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %17, %4
  store i32 -1, i32* %5, align 4
  br label %91

25:                                               ; preds = %17
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call %struct.TYPE_3__* @get_crypto_connection(i32* %26, i32 %27)
  store %struct.TYPE_3__* %28, %struct.TYPE_3__** %10, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %30 = icmp eq %struct.TYPE_3__* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 -1, i32* %5, align 4
  br label %91

32:                                               ; preds = %25
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = call i32 @pthread_mutex_lock(i32* %34)
  %36 = load i64, i64* %9, align 8
  %37 = add i64 9, %36
  %38 = load i64, i64* @crypto_box_MACBYTES, align 8
  %39 = add i64 %37, %38
  %40 = call i8* @llvm.stacksave()
  store i8* %40, i8** %11, align 8
  %41 = alloca i32, i64 %39, align 16
  store i64 %39, i64* %12, align 8
  %42 = load i32, i32* @NET_PACKET_CRYPTO_DATA, align 4
  %43 = getelementptr inbounds i32, i32* %41, i64 0
  store i32 %42, i32* %43, align 16
  %44 = getelementptr inbounds i32, i32* %41, i64 1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = load i32, i32* @crypto_box_NONCEBYTES, align 4
  %50 = sext i32 %49 to i64
  %51 = sub i64 %50, 8
  %52 = add i64 %48, %51
  %53 = trunc i64 %52 to i32
  %54 = call i32 @memcpy(i32* %44, i32 %53, i32 8)
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %8, align 8
  %62 = load i64, i64* %9, align 8
  %63 = getelementptr inbounds i32, i32* %41, i64 1
  %64 = getelementptr inbounds i32, i32* %63, i64 8
  %65 = call i32 @encrypt_data_symmetric(i32 %57, i32 %60, i32* %61, i64 %62, i32* %64)
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = add i64 %68, 8
  %70 = mul nuw i64 4, %39
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %32
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = call i32 @pthread_mutex_unlock(i32* %74)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %89

76:                                               ; preds = %32
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @increment_nonce(i32 %79)
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = call i32 @pthread_mutex_unlock(i32* %82)
  %84 = load i32*, i32** %6, align 8
  %85 = load i32, i32* %7, align 4
  %86 = mul nuw i64 4, %39
  %87 = trunc i64 %86 to i32
  %88 = call i32 @send_packet_to(i32* %84, i32 %85, i32* %41, i32 %87)
  store i32 %88, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %89

89:                                               ; preds = %76, %72
  %90 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %90)
  br label %91

91:                                               ; preds = %89, %31, %24
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local %struct.TYPE_3__* @get_crypto_connection(i32*, i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @encrypt_data_symmetric(i32, i32, i32*, i64, i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @increment_nonce(i32) #1

declare dso_local i32 @send_packet_to(i32*, i32, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
