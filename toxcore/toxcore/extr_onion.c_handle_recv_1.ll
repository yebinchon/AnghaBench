; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_onion.c_handle_recv_1.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_onion.c_handle_recv_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i32 (i32, i64, i64*, i64)*, i32, i32, i32 }

@ONION_MAX_PACKET_SIZE = common dso_local global i64 0, align 8
@RETURN_1 = common dso_local global i32 0, align 4
@NET_PACKET_ANNOUNCE_RESPONSE = common dso_local global i64 0, align 8
@NET_PACKET_ONION_DATA_RESPONSE = common dso_local global i64 0, align 8
@SIZE_IPPORT = common dso_local global i32 0, align 4
@crypto_box_NONCEBYTES = common dso_local global i32 0, align 4
@crypto_box_MACBYTES = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i64*, i64)* @handle_recv_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_recv_1(i8* %0, i64 %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_11__, align 8
  %16 = alloca i64, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  store i64 %1, i64* %18, align 8
  store i8* %0, i8** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %10, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* @ONION_MAX_PACKET_SIZE, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %142

25:                                               ; preds = %4
  %26 = load i64, i64* %9, align 8
  %27 = load i32, i32* @RETURN_1, align 4
  %28 = add nsw i32 1, %27
  %29 = sext i32 %28 to i64
  %30 = icmp sle i64 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 1, i32* %5, align 4
  br label %142

32:                                               ; preds = %25
  %33 = load i64*, i64** %8, align 8
  %34 = load i32, i32* @RETURN_1, align 4
  %35 = add nsw i32 1, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %33, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @NET_PACKET_ANNOUNCE_RESPONSE, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %32
  %42 = load i64*, i64** %8, align 8
  %43 = load i32, i32* @RETURN_1, align 4
  %44 = add nsw i32 1, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %42, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @NET_PACKET_ONION_DATA_RESPONSE, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  store i32 1, i32* %5, align 4
  br label %142

51:                                               ; preds = %41, %32
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %53 = call i32 @change_symmetric_key(%struct.TYPE_10__* %52)
  %54 = load i32, i32* @SIZE_IPPORT, align 4
  %55 = zext i32 %54 to i64
  %56 = call i8* @llvm.stacksave()
  store i8* %56, i8** %11, align 8
  %57 = alloca i64, i64 %55, align 16
  store i64 %55, i64* %12, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load i64*, i64** %8, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 1
  %63 = load i64*, i64** %8, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 1
  %65 = load i32, i32* @crypto_box_NONCEBYTES, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i32, i32* @SIZE_IPPORT, align 4
  %69 = load i32, i32* @crypto_box_MACBYTES, align 4
  %70 = add nsw i32 %68, %69
  %71 = call i32 @decrypt_data_symmetric(i32 %60, i64* %62, i64* %67, i32 %70, i64* %57)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* @SIZE_IPPORT, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %51
  store i32 1, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %140

76:                                               ; preds = %51
  %77 = load i32, i32* %13, align 4
  %78 = call i32 @ipport_unpack(%struct.TYPE_11__* %15, i64* %57, i32 %77, i32 1)
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store i32 1, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %140

81:                                               ; preds = %76
  %82 = load i64, i64* %9, align 8
  %83 = load i32, i32* @RETURN_1, align 4
  %84 = add nsw i32 1, %83
  %85 = sext i32 %84 to i64
  %86 = sub nsw i64 %82, %85
  store i64 %86, i64* %16, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i32 (i32, i64, i64*, i64)*, i32 (i32, i64, i64*, i64)** %88, align 8
  %90 = icmp ne i32 (i32, i64, i64*, i64)* %89, null
  br i1 %90, label %91, label %120

91:                                               ; preds = %81
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @AF_INET, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %120

97:                                               ; preds = %91
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @AF_INET6, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %120

103:                                              ; preds = %97
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load i32 (i32, i64, i64*, i64)*, i32 (i32, i64, i64*, i64)** %105, align 8
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load i64*, i64** %8, align 8
  %111 = load i32, i32* @RETURN_1, align 4
  %112 = add nsw i32 1, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i64, i64* %110, i64 %113
  %115 = load i64, i64* %16, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = call i32 %106(i32 %109, i64 %118, i64* %114, i64 %115)
  store i32 %119, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %140

120:                                              ; preds = %97, %91, %81
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load i64*, i64** %8, align 8
  %125 = load i32, i32* @RETURN_1, align 4
  %126 = add nsw i32 1, %125
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i64, i64* %124, i64 %127
  %129 = load i64, i64* %16, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = call i64 @sendpacket(i32 %123, i64 %132, i64* %128, i64 %129)
  %134 = trunc i64 %133 to i32
  %135 = sext i32 %134 to i64
  %136 = load i64, i64* %16, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %120
  store i32 1, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %140

139:                                              ; preds = %120
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %140

140:                                              ; preds = %139, %138, %103, %80, %75
  %141 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %141)
  br label %142

142:                                              ; preds = %140, %50, %31, %24
  %143 = load i32, i32* %5, align 4
  ret i32 %143
}

declare dso_local i32 @change_symmetric_key(%struct.TYPE_10__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @decrypt_data_symmetric(i32, i64*, i64*, i32, i64*) #1

declare dso_local i32 @ipport_unpack(%struct.TYPE_11__*, i64*, i32, i32) #1

declare dso_local i64 @sendpacket(i32, i64, i64*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
