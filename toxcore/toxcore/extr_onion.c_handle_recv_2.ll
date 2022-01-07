; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_onion.c_handle_recv_2.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_onion.c_handle_recv_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@ONION_MAX_PACKET_SIZE = common dso_local global i32 0, align 4
@RETURN_2 = common dso_local global i32 0, align 4
@NET_PACKET_ANNOUNCE_RESPONSE = common dso_local global i64 0, align 8
@NET_PACKET_ONION_DATA_RESPONSE = common dso_local global i64 0, align 8
@SIZE_IPPORT = common dso_local global i32 0, align 4
@RETURN_1 = common dso_local global i32 0, align 4
@crypto_box_NONCEBYTES = common dso_local global i32 0, align 4
@crypto_box_MACBYTES = common dso_local global i32 0, align 4
@NET_PACKET_ONION_RECV_1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i64*, i32)* @handle_recv_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_recv_2(i8* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %10, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @ONION_MAX_PACKET_SIZE, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %130

24:                                               ; preds = %4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @RETURN_2, align 4
  %27 = add nsw i32 1, %26
  %28 = icmp sle i32 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 1, i32* %5, align 4
  br label %130

30:                                               ; preds = %24
  %31 = load i64*, i64** %8, align 8
  %32 = load i32, i32* @RETURN_2, align 4
  %33 = add nsw i32 1, %32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %31, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @NET_PACKET_ANNOUNCE_RESPONSE, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %30
  %40 = load i64*, i64** %8, align 8
  %41 = load i32, i32* @RETURN_2, align 4
  %42 = add nsw i32 1, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %40, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @NET_PACKET_ONION_DATA_RESPONSE, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  store i32 1, i32* %5, align 4
  br label %130

49:                                               ; preds = %39, %30
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %51 = call i32 @change_symmetric_key(%struct.TYPE_3__* %50)
  %52 = load i32, i32* @SIZE_IPPORT, align 4
  %53 = load i32, i32* @RETURN_1, align 4
  %54 = add nsw i32 %52, %53
  %55 = zext i32 %54 to i64
  %56 = call i8* @llvm.stacksave()
  store i8* %56, i8** %11, align 8
  %57 = alloca i64, i64 %55, align 16
  store i64 %55, i64* %12, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i64*, i64** %8, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 1
  %63 = load i64*, i64** %8, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 1
  %65 = load i32, i32* @crypto_box_NONCEBYTES, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i32, i32* @SIZE_IPPORT, align 4
  %69 = load i32, i32* @RETURN_1, align 4
  %70 = add nsw i32 %68, %69
  %71 = load i32, i32* @crypto_box_MACBYTES, align 4
  %72 = add nsw i32 %70, %71
  %73 = call i32 @decrypt_data_symmetric(i32 %60, i64* %62, i64* %67, i32 %72, i64* %57)
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = mul nuw i64 8, %55
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %49
  store i32 1, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %128

79:                                               ; preds = %49
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @ipport_unpack(i32* %15, i64* %57, i32 %80, i32 0)
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  store i32 1, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %128

84:                                               ; preds = %79
  %85 = load i32, i32* @ONION_MAX_PACKET_SIZE, align 4
  %86 = zext i32 %85 to i64
  %87 = alloca i64, i64 %86, align 16
  store i64 %86, i64* %16, align 8
  %88 = load i64, i64* @NET_PACKET_ONION_RECV_1, align 8
  %89 = getelementptr inbounds i64, i64* %87, i64 0
  store i64 %88, i64* %89, align 16
  %90 = getelementptr inbounds i64, i64* %87, i64 1
  %91 = load i32, i32* @SIZE_IPPORT, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %57, i64 %92
  %94 = load i32, i32* @RETURN_1, align 4
  %95 = call i32 @memcpy(i64* %90, i64* %93, i32 %94)
  %96 = getelementptr inbounds i64, i64* %87, i64 1
  %97 = load i32, i32* @RETURN_1, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %96, i64 %98
  %100 = load i64*, i64** %8, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 1
  %102 = load i32, i32* @RETURN_2, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %101, i64 %103
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* @RETURN_2, align 4
  %107 = add nsw i32 1, %106
  %108 = sub nsw i32 %105, %107
  %109 = call i32 @memcpy(i64* %99, i64* %104, i32 %108)
  %110 = load i32, i32* @RETURN_1, align 4
  %111 = add nsw i32 1, %110
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* @RETURN_2, align 4
  %114 = add nsw i32 1, %113
  %115 = sub nsw i32 %112, %114
  %116 = add nsw i32 %111, %115
  store i32 %116, i32* %17, align 4
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %15, align 4
  %121 = load i32, i32* %17, align 4
  %122 = call i64 @sendpacket(i32 %119, i32 %120, i64* %87, i32 %121)
  %123 = trunc i64 %122 to i32
  %124 = load i32, i32* %17, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %84
  store i32 1, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %128

127:                                              ; preds = %84
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %128

128:                                              ; preds = %127, %126, %83, %78
  %129 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %129)
  br label %130

130:                                              ; preds = %128, %48, %29, %23
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

declare dso_local i32 @change_symmetric_key(%struct.TYPE_3__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @decrypt_data_symmetric(i32, i64*, i64*, i32, i64*) #1

declare dso_local i32 @ipport_unpack(i32*, i64*, i32, i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i64 @sendpacket(i32, i32, i64*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
