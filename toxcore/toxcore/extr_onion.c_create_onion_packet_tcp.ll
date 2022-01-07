; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_onion.c_create_onion_packet_tcp.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_onion.c_create_onion_packet_tcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32, i32, i32*, i32 }

@crypto_box_NONCEBYTES = common dso_local global i64 0, align 8
@SIZE_IPPORT = common dso_local global i64 0, align 8
@SEND_BASE = common dso_local global i32 0, align 4
@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@crypto_box_MACBYTES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_onion_packet_tcp(i32* %0, i64 %1, %struct.TYPE_3__* %2, i32 %3, i32* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i64 %1, i64* %9, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  %20 = load i64, i64* @crypto_box_NONCEBYTES, align 8
  %21 = load i64, i64* @SIZE_IPPORT, align 8
  %22 = add nsw i64 %20, %21
  %23 = load i32, i32* @SEND_BASE, align 4
  %24 = mul nsw i32 %23, 2
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %22, %25
  %27 = load i64, i64* %13, align 8
  %28 = add nsw i64 %26, %27
  %29 = load i64, i64* %9, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %34, label %31

31:                                               ; preds = %6
  %32 = load i64, i64* %13, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31, %6
  store i32 -1, i32* %7, align 4
  br label %148

35:                                               ; preds = %31
  %36 = load i64, i64* @SIZE_IPPORT, align 8
  %37 = load i64, i64* %13, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i8* @llvm.stacksave()
  store i8* %39, i8** %14, align 8
  %40 = alloca i32, i64 %38, align 16
  store i64 %38, i64* %15, align 8
  %41 = call i32 @ipport_pack(i32* %40, i32* %11)
  %42 = load i64, i64* @SIZE_IPPORT, align 8
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32*, i32** %12, align 8
  %45 = load i64, i64* %13, align 8
  %46 = call i32 @memcpy(i32* %43, i32* %44, i64 %45)
  %47 = load i64, i64* @crypto_box_NONCEBYTES, align 8
  %48 = alloca i32, i64 %47, align 16
  store i64 %47, i64* %16, align 8
  %49 = call i32 @random_nonce(i32* %48)
  %50 = load i64, i64* @SIZE_IPPORT, align 8
  %51 = load i32, i32* @SEND_BASE, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %50, %52
  %54 = load i64, i64* %13, align 8
  %55 = add nsw i64 %53, %54
  %56 = alloca i32, i64 %55, align 16
  store i64 %55, i64* %17, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 5
  %59 = call i32 @ipport_pack(i32* %56, i32* %58)
  %60 = load i64, i64* @SIZE_IPPORT, align 8
  %61 = getelementptr inbounds i32, i32* %56, i64 %60
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 4
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %66 = sext i32 %65 to i64
  %67 = call i32 @memcpy(i32* %61, i32* %64, i64 %66)
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = mul nuw i64 4, %38
  %72 = trunc i64 %71 to i32
  %73 = load i64, i64* @SIZE_IPPORT, align 8
  %74 = getelementptr inbounds i32, i32* %56, i64 %73
  %75 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = call i32 @encrypt_data_symmetric(i32 %70, i32* %48, i32* %40, i32 %72, i32* %77)
  store i32 %78, i32* %18, align 4
  %79 = load i32, i32* %18, align 4
  %80 = sext i32 %79 to i64
  %81 = load i64, i64* @SIZE_IPPORT, align 8
  %82 = load i64, i64* %13, align 8
  %83 = add nsw i64 %81, %82
  %84 = load i64, i64* @crypto_box_MACBYTES, align 8
  %85 = add nsw i64 %83, %84
  %86 = icmp ne i64 %80, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %35
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %146

88:                                               ; preds = %35
  %89 = load i32*, i32** %8, align 8
  %90 = load i64, i64* @crypto_box_NONCEBYTES, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 2
  %94 = call i32 @ipport_pack(i32* %91, i32* %93)
  %95 = load i32*, i32** %8, align 8
  %96 = load i64, i64* @crypto_box_NONCEBYTES, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = load i64, i64* @SIZE_IPPORT, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %104 = sext i32 %103 to i64
  %105 = call i32 @memcpy(i32* %99, i32* %102, i64 %104)
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = mul nuw i64 4, %55
  %110 = trunc i64 %109 to i32
  %111 = load i32*, i32** %8, align 8
  %112 = load i64, i64* @crypto_box_NONCEBYTES, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = load i64, i64* @SIZE_IPPORT, align 8
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  %116 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = call i32 @encrypt_data_symmetric(i32 %108, i32* %48, i32* %56, i32 %110, i32* %118)
  store i32 %119, i32* %18, align 4
  %120 = load i32, i32* %18, align 4
  %121 = sext i32 %120 to i64
  %122 = load i64, i64* @SIZE_IPPORT, align 8
  %123 = load i32, i32* @SEND_BASE, align 4
  %124 = sext i32 %123 to i64
  %125 = add nsw i64 %122, %124
  %126 = load i64, i64* %13, align 8
  %127 = add nsw i64 %125, %126
  %128 = load i64, i64* @crypto_box_MACBYTES, align 8
  %129 = add nsw i64 %127, %128
  %130 = icmp ne i64 %121, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %88
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %146

132:                                              ; preds = %88
  %133 = load i32*, i32** %8, align 8
  %134 = load i64, i64* @crypto_box_NONCEBYTES, align 8
  %135 = call i32 @memcpy(i32* %133, i32* %48, i64 %134)
  %136 = load i64, i64* @crypto_box_NONCEBYTES, align 8
  %137 = load i64, i64* @SIZE_IPPORT, align 8
  %138 = add nsw i64 %136, %137
  %139 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %140 = sext i32 %139 to i64
  %141 = add nsw i64 %138, %140
  %142 = load i32, i32* %18, align 4
  %143 = sext i32 %142 to i64
  %144 = add nsw i64 %141, %143
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %146

146:                                              ; preds = %132, %131, %87
  %147 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %147)
  br label %148

148:                                              ; preds = %146, %34
  %149 = load i32, i32* %7, align 4
  ret i32 %149
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ipport_pack(i32*, i32*) #2

declare dso_local i32 @memcpy(i32*, i32*, i64) #2

declare dso_local i32 @random_nonce(i32*) #2

declare dso_local i32 @encrypt_data_symmetric(i32, i32*, i32*, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
