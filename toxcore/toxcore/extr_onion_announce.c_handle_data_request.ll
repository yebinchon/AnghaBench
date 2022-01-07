; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_onion_announce.c_handle_data_request.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_onion_announce.c_handle_data_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@DATA_REQUEST_MIN_SIZE_RECV = common dso_local global i64 0, align 8
@ONION_MAX_PACKET_SIZE = common dso_local global i64 0, align 8
@crypto_box_PUBLICKEYBYTES = common dso_local global i64 0, align 8
@ONION_RETURN_3 = common dso_local global i64 0, align 8
@NET_PACKET_ONION_DATA_RESPONSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*, i64)* @handle_data_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_data_request(i8* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %10, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* @DATA_REQUEST_MIN_SIZE_RECV, align 8
  %19 = icmp sle i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %83

21:                                               ; preds = %4
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* @ONION_MAX_PACKET_SIZE, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 1, i32* %5, align 4
  br label %83

26:                                               ; preds = %21
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = call i32 @in_entries(%struct.TYPE_5__* %27, i32* %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 1, i32* %5, align 4
  br label %83

34:                                               ; preds = %26
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* @crypto_box_PUBLICKEYBYTES, align 8
  %37 = load i64, i64* @ONION_RETURN_3, align 8
  %38 = add nsw i64 %36, %37
  %39 = sub nsw i64 %35, %38
  %40 = call i8* @llvm.stacksave()
  store i8* %40, i8** %12, align 8
  %41 = alloca i32, i64 %39, align 16
  store i64 %39, i64* %13, align 8
  %42 = load i32, i32* @NET_PACKET_ONION_DATA_RESPONSE, align 4
  %43 = getelementptr inbounds i32, i32* %41, i64 0
  store i32 %42, i32* %43, align 16
  %44 = getelementptr inbounds i32, i32* %41, i64 1
  %45 = load i32*, i32** %8, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i64, i64* @crypto_box_PUBLICKEYBYTES, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* @crypto_box_PUBLICKEYBYTES, align 8
  %51 = add nsw i64 1, %50
  %52 = load i64, i64* @ONION_RETURN_3, align 8
  %53 = add nsw i64 %51, %52
  %54 = sub nsw i64 %49, %53
  %55 = call i32 @memcpy(i32* %44, i32* %48, i64 %54)
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = mul nuw i64 4, %39
  %68 = trunc i64 %67 to i32
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @send_onion_response(i32 %58, i32 %66, i32* %41, i32 %68, i32 %76)
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %79, label %80

79:                                               ; preds = %34
  store i32 1, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %81

80:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %81

81:                                               ; preds = %80, %79
  %82 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %82)
  br label %83

83:                                               ; preds = %81, %33, %25, %20
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i32 @in_entries(%struct.TYPE_5__*, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @send_onion_response(i32, i32, i32*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
