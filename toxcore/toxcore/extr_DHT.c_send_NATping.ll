; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_DHT.c_send_NATping.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_DHT.c_send_NATping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@MAX_CRYPTO_REQUEST_SIZE = common dso_local global i32 0, align 4
@CRYPTO_PACKET_NAT_PING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32, i32)* @send_NATping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_NATping(%struct.TYPE_5__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [5 x i32], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* @MAX_CRYPTO_REQUEST_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %11, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %20 = load i32, i32* %9, align 4
  %21 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 0
  store i32 %20, i32* %21, align 16
  %22 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 0
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = call i32 @memcpy(i32* %23, i32* %8, i32 4)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 0
  %33 = load i32, i32* @CRYPTO_PACKET_NAT_PING, align 4
  %34 = call i32 @create_request(i32 %27, i32 %30, i32* %19, i32* %31, i32* %32, i32 5, i32 %33)
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %38

37:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %61

38:                                               ; preds = %4
  %39 = load i32, i32* %9, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %14, align 4
  %45 = call i32 @route_tofriend(%struct.TYPE_5__* %42, i32* %43, i32* %19, i32 %44)
  store i32 %45, i32* %13, align 4
  br label %55

46:                                               ; preds = %38
  %47 = load i32, i32* %9, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %14, align 4
  %53 = call i32 @routeone_tofriend(%struct.TYPE_5__* %50, i32* %51, i32* %19, i32 %52)
  store i32 %53, i32* %13, align 4
  br label %54

54:                                               ; preds = %49, %46
  br label %55

55:                                               ; preds = %54, %41
  %56 = load i32, i32* %13, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %61

59:                                               ; preds = %55
  %60 = load i32, i32* %13, align 4
  store i32 %60, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %61

61:                                               ; preds = %59, %58, %37
  %62 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %62)
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @create_request(i32, i32, i32*, i32*, i32*, i32, i32) #2

declare dso_local i32 @route_tofriend(%struct.TYPE_5__*, i32*, i32*, i32) #2

declare dso_local i32 @routeone_tofriend(%struct.TYPE_5__*, i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
