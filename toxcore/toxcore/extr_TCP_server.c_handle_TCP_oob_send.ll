; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_TCP_server.c_handle_TCP_oob_send.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_TCP_server.c_handle_TCP_oob_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32* }

@TCP_MAX_OOB_DATA_LENGTH = common dso_local global i64 0, align 8
@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@TCP_PACKET_OOB_RECV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i64, i32*, i32*, i64)* @handle_TCP_oob_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_TCP_oob_send(%struct.TYPE_6__* %0, i64 %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load i64, i64* %11, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %5
  %19 = load i64, i64* %11, align 8
  %20 = load i64, i64* @TCP_MAX_OOB_DATA_LENGTH, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %5
  store i32 -1, i32* %6, align 4
  br label %69

23:                                               ; preds = %18
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = load i64, i64* %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i64 %27
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %12, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = call i32 @get_TCP_connection_index(%struct.TYPE_6__* %29, i32* %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, -1
  br i1 %33, label %34, label %68

34:                                               ; preds = %23
  %35 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %36 = add nsw i32 1, %35
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* %11, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i8* @llvm.stacksave()
  store i8* %40, i8** %14, align 8
  %41 = alloca i32, i64 %39, align 16
  store i64 %39, i64* %15, align 8
  %42 = load i32, i32* @TCP_PACKET_OOB_RECV, align 4
  %43 = getelementptr inbounds i32, i32* %41, i64 0
  store i32 %42, i32* %43, align 16
  %44 = getelementptr inbounds i32, i32* %41, i64 1
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %49 = sext i32 %48 to i64
  %50 = call i32 @memcpy(i32* %44, i32* %47, i64 %49)
  %51 = getelementptr inbounds i32, i32* %41, i64 1
  %52 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32*, i32** %10, align 8
  %56 = load i64, i64* %11, align 8
  %57 = call i32 @memcpy(i32* %54, i32* %55, i64 %56)
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i64 %62
  %64 = mul nuw i64 4, %39
  %65 = trunc i64 %64 to i32
  %66 = call i32 @write_packet_TCP_secure_connection(%struct.TYPE_7__* %63, i32* %41, i32 %65, i32 0)
  %67 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %67)
  br label %68

68:                                               ; preds = %34, %23
  store i32 0, i32* %6, align 4
  br label %69

69:                                               ; preds = %68, %22
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i32 @get_TCP_connection_index(%struct.TYPE_6__*, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @write_packet_TCP_secure_connection(%struct.TYPE_7__*, i32*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
