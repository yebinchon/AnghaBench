; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_DHT.c_send_hardening_getnode_res.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_DHT.c_send_hardening_getnode_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }

@MAX_CRYPTO_REQUEST_SIZE = common dso_local global i32 0, align 4
@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@CHECK_TYPE_GETNODE_RES = common dso_local global i32 0, align 4
@CRYPTO_PACKET_HARDENING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_6__*, i32*, i32*, i32)* @send_hardening_getnode_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_hardening_getnode_res(%struct.TYPE_7__* %0, %struct.TYPE_6__* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = call i32 @ip_isset(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %75

23:                                               ; preds = %5
  %24 = load i32, i32* @MAX_CRYPTO_REQUEST_SIZE, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %12, align 8
  %27 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %13, align 8
  %28 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %29 = add nsw i32 1, %28
  %30 = load i32, i32* %11, align 4
  %31 = add nsw i32 %29, %30
  %32 = zext i32 %31 to i64
  %33 = alloca i32, i64 %32, align 16
  store i64 %32, i64* %14, align 8
  %34 = load i32, i32* @CHECK_TYPE_GETNODE_RES, align 4
  %35 = getelementptr inbounds i32, i32* %33, i64 0
  store i32 %34, i32* %35, align 16
  %36 = getelementptr inbounds i32, i32* %33, i64 1
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %39 = call i32 @memcpy(i32* %36, i32* %37, i32 %38)
  %40 = getelementptr inbounds i32, i32* %33, i64 1
  %41 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32*, i32** %10, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @memcpy(i32* %43, i32* %44, i32 %45)
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = mul nuw i64 4, %32
  %57 = trunc i64 %56 to i32
  %58 = load i32, i32* @CRYPTO_PACKET_HARDENING, align 4
  %59 = call i32 @create_request(i32 %49, i32 %52, i32* %27, i32 %55, i32* %33, i32 %57, i32 %58)
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %15, align 4
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %63

62:                                               ; preds = %23
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %73

63:                                               ; preds = %23
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %15, align 4
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @sendpacket(i32 %66, i32 %71, i32* %27, i32 %69)
  store i32 %72, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %73

73:                                               ; preds = %63, %62
  %74 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %74)
  br label %75

75:                                               ; preds = %73, %22
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local i32 @ip_isset(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @create_request(i32, i32, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @sendpacket(i32, i32, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
