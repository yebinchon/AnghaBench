; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_onion_client.c_send_onion_data.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_onion_client.c_send_onion_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_9__*, i32, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i64, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@DATA_IN_RESPONSE_MIN_SIZE = common dso_local global i64 0, align 8
@MAX_DATA_REQUEST_SIZE = common dso_local global i64 0, align 8
@MAX_ONION_CLIENTS = common dso_local global i32 0, align 4
@ONION_NODE_TIMEOUT = common dso_local global i32 0, align 4
@crypto_box_NONCEBYTES = common dso_local global i32 0, align 4
@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@ONION_MAX_PACKET_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @send_onion_data(%struct.TYPE_11__* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sge i64 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %212

31:                                               ; preds = %4
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* @DATA_IN_RESPONSE_MIN_SIZE, align 8
  %34 = add nsw i64 %32, %33
  %35 = load i64, i64* @MAX_DATA_REQUEST_SIZE, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 -1, i32* %5, align 4
  br label %212

38:                                               ; preds = %31
  %39 = load i64, i64* %9, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 -1, i32* %5, align 4
  br label %212

42:                                               ; preds = %38
  %43 = load i32, i32* @MAX_ONION_CLIENTS, align 4
  %44 = zext i32 %43 to i64
  %45 = call i8* @llvm.stacksave()
  store i8* %45, i8** %11, align 8
  %46 = alloca i32, i64 %44, align 16
  store i64 %44, i64* %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  store %struct.TYPE_10__* %54, %struct.TYPE_10__** %15, align 8
  store i32 0, i32* %10, align 4
  br label %55

55:                                               ; preds = %88, %42
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @MAX_ONION_CLIENTS, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %59, label %91

59:                                               ; preds = %55
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %61 = load i32, i32* %10, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @ONION_NODE_TIMEOUT, align 4
  %67 = call i64 @is_timeout(i32 %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %59
  br label %88

70:                                               ; preds = %59
  %71 = load i32, i32* %14, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %14, align 4
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %74 = load i32, i32* %10, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %70
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %13, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %46, i64 %83
  store i32 %81, i32* %84, align 4
  %85 = load i32, i32* %13, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %13, align 4
  br label %87

87:                                               ; preds = %80, %70
  br label %88

88:                                               ; preds = %87, %69
  %89 = load i32, i32* %10, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %10, align 4
  br label %55

91:                                               ; preds = %55
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %14, align 4
  %94 = udiv i32 %93, 4
  %95 = add i32 %94, 1
  %96 = icmp ult i32 %92, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %210

98:                                               ; preds = %91
  %99 = load i32, i32* @crypto_box_NONCEBYTES, align 4
  %100 = zext i32 %99 to i64
  %101 = alloca i32, i64 %100, align 16
  store i64 %100, i64* %17, align 8
  %102 = call i32 @random_nonce(i32* %101)
  %103 = load i64, i64* @DATA_IN_RESPONSE_MIN_SIZE, align 8
  %104 = load i64, i64* %9, align 8
  %105 = add nsw i64 %103, %104
  %106 = alloca i32, i64 %105, align 16
  store i64 %105, i64* %18, align 8
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 3
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %113 = call i32 @memcpy(i32* %106, i32 %111, i32 %112)
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %115, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 3
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32*, i32** %8, align 8
  %128 = load i64, i64* %9, align 8
  %129 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %106, i64 %130
  %132 = call i32 @encrypt_data(i32 %121, i32 %126, i32* %101, i32* %127, i64 %128, i32* %131)
  store i32 %132, i32* %19, align 4
  %133 = load i32, i32* %19, align 4
  %134 = sext i32 %133 to i64
  %135 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %136 = sext i32 %135 to i64
  %137 = add nsw i64 %134, %136
  %138 = mul nuw i64 4, %105
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %98
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %210

141:                                              ; preds = %98
  store i32 0, i32* %20, align 4
  store i32 0, i32* %10, align 4
  br label %142

142:                                              ; preds = %205, %141
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* %13, align 4
  %145 = icmp ult i32 %143, %144
  br i1 %145, label %146, label %208

146:                                              ; preds = %142
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 2
  %150 = call i32 @random_path(%struct.TYPE_11__* %147, i32* %149, i32 -1, i32* %21)
  %151 = icmp eq i32 %150, -1
  br i1 %151, label %152, label %153

152:                                              ; preds = %146
  br label %205

153:                                              ; preds = %146
  %154 = load i32, i32* @ONION_MAX_PACKET_SIZE, align 4
  %155 = zext i32 %154 to i64
  %156 = call i8* @llvm.stacksave()
  store i8* %156, i8** %22, align 8
  %157 = alloca i32, i64 %155, align 16
  store i64 %155, i64* %23, align 8
  %158 = mul nuw i64 4, %155
  %159 = trunc i64 %158 to i32
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %161, align 8
  %163 = load i32, i32* %7, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %169 = load i32, i32* %10, align 4
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %46, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = mul nuw i64 4, %105
  %178 = trunc i64 %177 to i32
  %179 = call i32 @create_data_request(i32* %157, i32 %159, i32 %167, i32 %176, i32* %101, i32* %106, i32 %178)
  store i32 %179, i32* %19, align 4
  %180 = load i32, i32* %19, align 4
  %181 = icmp eq i32 %180, -1
  br i1 %181, label %182, label %183

182:                                              ; preds = %153
  store i32 7, i32* %16, align 4
  br label %201

183:                                              ; preds = %153
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %186 = load i32, i32* %10, align 4
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %46, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* %19, align 4
  %195 = call i64 @send_onion_packet_tcp_udp(%struct.TYPE_11__* %184, i32* %21, i32 %193, i32* %157, i32 %194)
  %196 = icmp eq i64 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %183
  %198 = load i32, i32* %20, align 4
  %199 = add i32 %198, 1
  store i32 %199, i32* %20, align 4
  br label %200

200:                                              ; preds = %197, %183
  store i32 0, i32* %16, align 4
  br label %201

201:                                              ; preds = %200, %182
  %202 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %202)
  %203 = load i32, i32* %16, align 4
  switch i32 %203, label %214 [
    i32 0, label %204
    i32 7, label %205
  ]

204:                                              ; preds = %201
  br label %205

205:                                              ; preds = %204, %201, %152
  %206 = load i32, i32* %10, align 4
  %207 = add i32 %206, 1
  store i32 %207, i32* %10, align 4
  br label %142

208:                                              ; preds = %142
  %209 = load i32, i32* %20, align 4
  store i32 %209, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %210

210:                                              ; preds = %208, %140, %97
  %211 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %211)
  br label %212

212:                                              ; preds = %210, %41, %37, %30
  %213 = load i32, i32* %5, align 4
  ret i32 %213

214:                                              ; preds = %201
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @is_timeout(i32, i32) #2

declare dso_local i32 @random_nonce(i32*) #2

declare dso_local i32 @memcpy(i32*, i32, i32) #2

declare dso_local i32 @encrypt_data(i32, i32, i32*, i32*, i64, i32*) #2

declare dso_local i32 @random_path(%struct.TYPE_11__*, i32*, i32, i32*) #2

declare dso_local i32 @create_data_request(i32*, i32, i32, i32, i32*, i32*, i32) #2

declare dso_local i64 @send_onion_packet_tcp_udp(%struct.TYPE_11__*, i32*, i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
