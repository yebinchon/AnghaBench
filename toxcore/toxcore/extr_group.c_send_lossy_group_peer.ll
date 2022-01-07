; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_group.c_send_lossy_group_peer.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_group.c_send_lossy_group_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@MAX_CRYPTO_DATA_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32, i32, i32*, i32)* @send_lossy_group_peer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_lossy_group_peer(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* %13, align 4
  %17 = sext i32 %16 to i64
  %18 = add i64 5, %17
  %19 = load i32, i32* @MAX_CRYPTO_DATA_SIZE, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp ugt i64 %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %52

23:                                               ; preds = %6
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @htons(i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %13, align 4
  %27 = sext i32 %26 to i64
  %28 = add i64 5, %27
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %14, align 8
  %30 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %15, align 8
  %31 = load i32, i32* %10, align 4
  %32 = getelementptr inbounds i32, i32* %30, i64 0
  store i32 %31, i32* %32, align 16
  %33 = getelementptr inbounds i32, i32* %30, i64 1
  %34 = call i32 @memcpy(i32* %33, i32* %11, i32 4)
  %35 = getelementptr inbounds i32, i32* %30, i64 1
  %36 = getelementptr inbounds i32, i32* %35, i64 4
  %37 = load i32*, i32** %12, align 8
  %38 = load i32, i32* %13, align 4
  %39 = call i32 @memcpy(i32* %36, i32* %37, i32 %38)
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @friend_connection_crypt_connection_id(%struct.TYPE_4__* %43, i32 %44)
  %46 = mul nuw i64 4, %28
  %47 = trunc i64 %46 to i32
  %48 = call i32 @send_lossy_cryptpacket(i32 %42, i32 %45, i32* %30, i32 %47)
  %49 = icmp ne i32 %48, -1
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %7, align 4
  %51 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %51)
  br label %52

52:                                               ; preds = %23, %22
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local i32 @htons(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @send_lossy_cryptpacket(i32, i32, i32*, i32) #1

declare dso_local i32 @friend_connection_crypt_connection_id(%struct.TYPE_4__*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
