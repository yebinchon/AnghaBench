; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_onion_client.c_handle_dht_dhtpk.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_onion_client.c_handle_dht_dhtpk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@DHTPK_DATA_MIN_LENGTH = common dso_local global i64 0, align 8
@DATA_IN_RESPONSE_MIN_SIZE = common dso_local global i64 0, align 8
@crypto_box_NONCEBYTES = common dso_local global i64 0, align 8
@DHTPK_DATA_MAX_LENGTH = common dso_local global i64 0, align 8
@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*, i32*, i64)* @handle_dht_dhtpk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_dht_dhtpk(i8* %0, i32 %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %12, align 8
  %19 = load i64, i64* %11, align 8
  %20 = load i64, i64* @DHTPK_DATA_MIN_LENGTH, align 8
  %21 = load i64, i64* @DATA_IN_RESPONSE_MIN_SIZE, align 8
  %22 = add nsw i64 %20, %21
  %23 = load i64, i64* @crypto_box_NONCEBYTES, align 8
  %24 = add nsw i64 %22, %23
  %25 = icmp slt i64 %19, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %86

27:                                               ; preds = %5
  %28 = load i64, i64* %11, align 8
  %29 = load i64, i64* @DHTPK_DATA_MAX_LENGTH, align 8
  %30 = load i64, i64* @DATA_IN_RESPONSE_MIN_SIZE, align 8
  %31 = add nsw i64 %29, %30
  %32 = load i64, i64* @crypto_box_NONCEBYTES, align 8
  %33 = add nsw i64 %31, %32
  %34 = icmp sgt i64 %28, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  store i32 1, i32* %6, align 4
  br label %86

36:                                               ; preds = %27
  %37 = load i64, i64* @DHTPK_DATA_MAX_LENGTH, align 8
  %38 = call i8* @llvm.stacksave()
  store i8* %38, i8** %13, align 8
  %39 = alloca i32, i64 %37, align 16
  store i64 %37, i64* %14, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %10, align 8
  %47 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32*, i32** %10, align 8
  %51 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i64, i64* @crypto_box_NONCEBYTES, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i64, i64* %11, align 8
  %57 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* @crypto_box_NONCEBYTES, align 8
  %60 = add nsw i64 %58, %59
  %61 = sub nsw i64 %56, %60
  %62 = call i32 @decrypt_data(i32* %40, i32 %45, i32* %49, i32* %55, i64 %61, i32* %39)
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %15, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* %11, align 8
  %66 = load i64, i64* @DATA_IN_RESPONSE_MIN_SIZE, align 8
  %67 = load i64, i64* @crypto_box_NONCEBYTES, align 8
  %68 = add nsw i64 %66, %67
  %69 = sub nsw i64 %65, %68
  %70 = icmp ne i64 %64, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %36
  store i32 1, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %84

72:                                               ; preds = %36
  %73 = load i32*, i32** %9, align 8
  %74 = getelementptr inbounds i32, i32* %39, i64 1
  %75 = getelementptr inbounds i32, i32* %74, i64 4
  %76 = call i64 @public_key_cmp(i32* %73, i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  store i32 1, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %84

79:                                               ; preds = %72
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %81 = load i32*, i32** %10, align 8
  %82 = load i32, i32* %15, align 4
  %83 = call i32 @handle_dhtpk_announce(%struct.TYPE_5__* %80, i32* %81, i32* %39, i32 %82)
  store i32 %83, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %84

84:                                               ; preds = %79, %78, %71
  %85 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %85)
  br label %86

86:                                               ; preds = %84, %35, %26
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @decrypt_data(i32*, i32, i32*, i32*, i64, i32*) #2

declare dso_local i64 @public_key_cmp(i32*, i32*) #2

declare dso_local i32 @handle_dhtpk_announce(%struct.TYPE_5__*, i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
