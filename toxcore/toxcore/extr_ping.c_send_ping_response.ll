; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_ping.c_send_ping_response.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_ping.c_send_ping_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@DHT_PING_SIZE = common dso_local global i32 0, align 4
@PING_PLAIN_SIZE = common dso_local global i32 0, align 4
@NET_PACKET_PING_RESPONSE = common dso_local global i32 0, align 4
@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@crypto_box_NONCEBYTES = common dso_local global i32 0, align 4
@crypto_box_MACBYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32*, i32, i32*)* @send_ping_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_ping_response(%struct.TYPE_5__* %0, i32 %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %17 = load i32, i32* @DHT_PING_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %12, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %13, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @id_equal(i32* %21, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %83

30:                                               ; preds = %5
  %31 = load i32, i32* @PING_PLAIN_SIZE, align 4
  %32 = zext i32 %31 to i64
  %33 = alloca i32, i64 %32, align 16
  store i64 %32, i64* %16, align 8
  %34 = load i32, i32* @NET_PACKET_PING_RESPONSE, align 4
  %35 = getelementptr inbounds i32, i32* %33, i64 0
  store i32 %34, i32* %35, align 16
  %36 = getelementptr inbounds i32, i32* %33, i64 1
  %37 = call i32 @memcpy(i32* %36, i32* %10, i32 4)
  %38 = load i32, i32* @NET_PACKET_PING_RESPONSE, align 4
  %39 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 %38, i32* %39, align 16
  %40 = getelementptr inbounds i32, i32* %20, i64 1
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @id_copy(i32* %40, i32 %45)
  %47 = getelementptr inbounds i32, i32* %20, i64 1
  %48 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = call i32 @new_nonce(i32* %50)
  %52 = load i32*, i32** %11, align 8
  %53 = getelementptr inbounds i32, i32* %20, i64 1
  %54 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = mul nuw i64 4, %32
  %58 = trunc i64 %57 to i32
  %59 = getelementptr inbounds i32, i32* %20, i64 1
  %60 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* @crypto_box_NONCEBYTES, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = call i32 @encrypt_data_symmetric(i32* %52, i32* %56, i32* %33, i32 %58, i32* %65)
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* @PING_PLAIN_SIZE, align 4
  %69 = load i32, i32* @crypto_box_MACBYTES, align 4
  %70 = add nsw i32 %68, %69
  %71 = icmp ne i32 %67, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %30
  store i32 1, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %83

73:                                               ; preds = %30
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %8, align 4
  %80 = mul nuw i64 4, %18
  %81 = trunc i64 %80 to i32
  %82 = call i32 @sendpacket(i32 %78, i32 %79, i32* %20, i32 %81)
  store i32 %82, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %83

83:                                               ; preds = %73, %72, %29
  %84 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %84)
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @id_equal(i32*, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @id_copy(i32*, i32) #2

declare dso_local i32 @new_nonce(i32*) #2

declare dso_local i32 @encrypt_data_symmetric(i32*, i32*, i32*, i32, i32*) #2

declare dso_local i32 @sendpacket(i32, i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
