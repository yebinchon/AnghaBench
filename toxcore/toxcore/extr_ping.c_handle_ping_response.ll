; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_ping.c_handle_ping_response.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_ping.c_handle_ping_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64* }

@DHT_PING_SIZE = common dso_local global i64 0, align 8
@crypto_box_BEFORENMBYTES = common dso_local global i32 0, align 4
@PING_PLAIN_SIZE = common dso_local global i32 0, align 4
@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@crypto_box_NONCEBYTES = common dso_local global i32 0, align 4
@crypto_box_MACBYTES = common dso_local global i32 0, align 4
@NET_PACKET_PING_RESPONSE = common dso_local global i64 0, align 8
@PING_DATA_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i64*, i64)* @handle_ping_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_ping_response(i8* %0, i32 %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %10, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* @DHT_PING_SIZE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %120

26:                                               ; preds = %4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  store %struct.TYPE_5__* %29, %struct.TYPE_5__** %12, align 8
  %30 = load i64*, i64** %8, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = call i64 @id_equal(i64* %31, i64* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %26
  store i32 1, i32* %5, align 4
  br label %120

40:                                               ; preds = %26
  %41 = load i32, i32* @crypto_box_BEFORENMBYTES, align 4
  %42 = zext i32 %41 to i64
  %43 = call i8* @llvm.stacksave()
  store i8* %43, i8** %13, align 8
  %44 = alloca i64, i64 %42, align 16
  store i64 %42, i64* %14, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = load i64*, i64** %8, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 1
  %50 = call i32 @DHT_get_shared_key_sent(%struct.TYPE_7__* %47, i64* %44, i64* %49)
  %51 = load i32, i32* @PING_PLAIN_SIZE, align 4
  %52 = zext i32 %51 to i64
  %53 = alloca i64, i64 %52, align 16
  store i64 %52, i64* %15, align 8
  %54 = load i64*, i64** %8, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 1
  %56 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64*, i64** %8, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 1
  %61 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i32, i32* @crypto_box_NONCEBYTES, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i32, i32* @PING_PLAIN_SIZE, align 4
  %68 = load i32, i32* @crypto_box_MACBYTES, align 4
  %69 = add nsw i32 %67, %68
  %70 = call i32 @decrypt_data_symmetric(i64* %44, i64* %58, i64* %66, i32 %69, i64* %53)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = mul nuw i64 8, %52
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %40
  store i32 1, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %118

76:                                               ; preds = %40
  %77 = getelementptr inbounds i64, i64* %53, i64 0
  %78 = load i64, i64* %77, align 16
  %79 = load i64, i64* @NET_PACKET_PING_RESPONSE, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  store i32 1, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %118

82:                                               ; preds = %76
  %83 = getelementptr inbounds i64, i64* %53, i64 1
  %84 = call i32 @memcpy(i32* %17, i64* %83, i32 4)
  %85 = load i32, i32* @PING_DATA_SIZE, align 4
  %86 = zext i32 %85 to i64
  %87 = alloca i64, i64 %86, align 16
  store i64 %86, i64* %18, align 8
  %88 = mul nuw i64 8, %86
  %89 = trunc i64 %88 to i32
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32, i32* %17, align 4
  %93 = call i32 @ping_array_check(i64* %87, i32 %89, i32* %91, i32 %92)
  %94 = sext i32 %93 to i64
  %95 = mul nuw i64 8, %86
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %82
  store i32 1, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %118

98:                                               ; preds = %82
  %99 = load i64*, i64** %8, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 1
  %101 = call i64 @id_equal(i64* %100, i64* %87)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %98
  store i32 1, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %118

104:                                              ; preds = %98
  %105 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %87, i64 %106
  %108 = call i32 @memcpy(i32* %19, i64* %107, i32 4)
  %109 = call i32 @ipport_equal(i32* %19, i32* %7)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %104
  store i32 1, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %118

112:                                              ; preds = %104
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %114 = load i32, i32* %7, align 4
  %115 = load i64*, i64** %8, align 8
  %116 = getelementptr inbounds i64, i64* %115, i64 1
  %117 = call i32 @addto_lists(%struct.TYPE_6__* %113, i32 %114, i64* %116)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %118

118:                                              ; preds = %112, %111, %103, %97, %81, %75
  %119 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %119)
  br label %120

120:                                              ; preds = %118, %39, %25
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

declare dso_local i64 @id_equal(i64*, i64*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @DHT_get_shared_key_sent(%struct.TYPE_7__*, i64*, i64*) #1

declare dso_local i32 @decrypt_data_symmetric(i64*, i64*, i64*, i32, i64*) #1

declare dso_local i32 @memcpy(i32*, i64*, i32) #1

declare dso_local i32 @ping_array_check(i64*, i32, i32*, i32) #1

declare dso_local i32 @ipport_equal(i32*, i32*) #1

declare dso_local i32 @addto_lists(%struct.TYPE_6__*, i32, i64*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
