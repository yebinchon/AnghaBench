; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_onion_client.c_handle_data_response.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_onion_client.c_handle_data_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { i32 (i32, i64*, i64*, i32)*, i32 }
%struct.TYPE_4__ = type { i32 }

@ONION_DATA_RESPONSE_MIN_SIZE = common dso_local global i64 0, align 8
@DATA_IN_RESPONSE_MIN_SIZE = common dso_local global i64 0, align 8
@MAX_DATA_REQUEST_SIZE = common dso_local global i64 0, align 8
@crypto_box_NONCEBYTES = common dso_local global i32 0, align 4
@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i64*, i64)* @handle_data_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_data_response(i8* %0, i32 %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %10, align 8
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* @ONION_DATA_RESPONSE_MIN_SIZE, align 8
  %20 = load i64, i64* @DATA_IN_RESPONSE_MIN_SIZE, align 8
  %21 = add nsw i64 %19, %20
  %22 = icmp sle i64 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %126

24:                                               ; preds = %4
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* @MAX_DATA_REQUEST_SIZE, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 1, i32* %5, align 4
  br label %126

29:                                               ; preds = %24
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* @ONION_DATA_RESPONSE_MIN_SIZE, align 8
  %32 = sub nsw i64 %30, %31
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %11, align 8
  %34 = alloca i64, i64 %32, align 16
  store i64 %32, i64* %12, align 8
  %35 = load i64*, i64** %8, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 1
  %37 = load i32, i32* @crypto_box_NONCEBYTES, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i64*, i64** %8, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 1
  %45 = load i64*, i64** %8, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 1
  %47 = load i32, i32* @crypto_box_NONCEBYTES, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %9, align 8
  %54 = load i32, i32* @crypto_box_NONCEBYTES, align 4
  %55 = add nsw i32 1, %54
  %56 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %57 = add nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = sub nsw i64 %53, %58
  %60 = trunc i64 %59 to i32
  %61 = call i32 @decrypt_data(i64* %39, i32 %42, i64* %44, i64* %52, i32 %60, i64* %34)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = mul nuw i64 8, %32
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %29
  store i32 1, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %124

67:                                               ; preds = %29
  %68 = mul nuw i64 8, %32
  %69 = load i64, i64* @DATA_IN_RESPONSE_MIN_SIZE, align 8
  %70 = sub i64 %68, %69
  %71 = alloca i64, i64 %70, align 16
  store i64 %70, i64* %15, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i64*, i64** %8, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 1
  %79 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %34, i64 %80
  %82 = mul nuw i64 8, %32
  %83 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %84 = sext i32 %83 to i64
  %85 = sub i64 %82, %84
  %86 = trunc i64 %85 to i32
  %87 = call i32 @decrypt_data(i64* %34, i32 %76, i64* %78, i64* %81, i32 %86, i64* %71)
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %13, align 4
  %89 = sext i32 %88 to i64
  %90 = mul nuw i64 8, %70
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %67
  store i32 1, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %124

93:                                               ; preds = %67
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = getelementptr inbounds i64, i64* %71, i64 0
  %98 = load i64, i64* %97, align 16
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32 (i32, i64*, i64*, i32)*, i32 (i32, i64*, i64*, i32)** %100, align 8
  %102 = icmp ne i32 (i32, i64*, i64*, i32)* %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %93
  store i32 1, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %124

104:                                              ; preds = %93
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = getelementptr inbounds i64, i64* %71, i64 0
  %109 = load i64, i64* %108, align 16
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i32 (i32, i64*, i64*, i32)*, i32 (i32, i64*, i64*, i32)** %111, align 8
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %114, align 8
  %116 = getelementptr inbounds i64, i64* %71, i64 0
  %117 = load i64, i64* %116, align 16
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = mul nuw i64 8, %70
  %122 = trunc i64 %121 to i32
  %123 = call i32 %112(i32 %120, i64* %34, i64* %71, i32 %122)
  store i32 %123, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %124

124:                                              ; preds = %104, %103, %92, %66
  %125 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %125)
  br label %126

126:                                              ; preds = %124, %28, %23
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @decrypt_data(i64*, i32, i64*, i64*, i32, i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
