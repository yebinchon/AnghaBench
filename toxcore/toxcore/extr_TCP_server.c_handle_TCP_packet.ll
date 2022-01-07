; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_TCP_server.c_handle_TCP_packet.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_TCP_server.c_handle_TCP_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_18__*, i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i32, i64, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i64*, i32* }

@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@NUM_RESERVED_PORTS = common dso_local global i32 0, align 4
@crypto_box_NONCEBYTES = common dso_local global i32 0, align 4
@ONION_SEND_BASE = common dso_local global i32 0, align 4
@TCP_ONION_FAMILY = common dso_local global i32 0, align 4
@NUM_CLIENT_CONNECTIONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i64, i32*, i64)* @handle_TCP_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_TCP_packet(%struct.TYPE_17__* %0, i64 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca [5 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_19__, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %259

24:                                               ; preds = %4
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %28 = load i64, i64* %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i64 %28
  store %struct.TYPE_18__* %29, %struct.TYPE_18__** %10, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %179 [
    i32 128, label %33
    i32 135, label %46
    i32 134, label %51
    i32 130, label %64
    i32 129, label %78
    i32 131, label %99
    i32 133, label %122
    i32 132, label %178
  ]

33:                                               ; preds = %24
  %34 = load i64, i64* %9, align 8
  %35 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %36 = add nsw i32 1, %35
  %37 = sext i32 %36 to i64
  %38 = icmp ne i64 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 -1, i32* %5, align 4
  br label %259

40:                                               ; preds = %33
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = call i32 @handle_TCP_routing_req(%struct.TYPE_17__* %41, i64 %42, i32* %44)
  store i32 %45, i32* %5, align 4
  br label %259

46:                                               ; preds = %24
  %47 = load i64, i64* %9, align 8
  %48 = icmp ne i64 %47, 2
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 -1, i32* %5, align 4
  br label %259

50:                                               ; preds = %46
  br label %258

51:                                               ; preds = %24
  %52 = load i64, i64* %9, align 8
  %53 = icmp ne i64 %52, 2
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 -1, i32* %5, align 4
  br label %259

55:                                               ; preds = %51
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @NUM_RESERVED_PORTS, align 4
  %62 = sub nsw i32 %60, %61
  %63 = call i32 @rm_connection_index(%struct.TYPE_17__* %56, %struct.TYPE_18__* %57, i32 %62)
  store i32 %63, i32* %5, align 4
  br label %259

64:                                               ; preds = %24
  %65 = load i64, i64* %9, align 8
  %66 = icmp ne i64 %65, 5
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i32 -1, i32* %5, align 4
  br label %259

68:                                               ; preds = %64
  %69 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 0
  store i32 129, i32* %69, align 16
  %70 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 0
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32*, i32** %8, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = call i32 @memcpy(i32* %71, i32* %73, i64 4)
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %76 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 0
  %77 = call i32 @write_packet_TCP_secure_connection(%struct.TYPE_18__* %75, i32* %76, i64 20, i32 1)
  store i32 0, i32* %5, align 4
  br label %259

78:                                               ; preds = %24
  %79 = load i64, i64* %9, align 8
  %80 = icmp ne i64 %79, 5
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i32 -1, i32* %5, align 4
  br label %259

82:                                               ; preds = %78
  %83 = load i32*, i32** %8, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = call i32 @memcpy(i32* %12, i32* %84, i64 4)
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %82
  %89 = load i32, i32* %12, align 4
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %89, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 0
  store i32 0, i32* %96, align 8
  br label %97

97:                                               ; preds = %94, %88
  store i32 0, i32* %5, align 4
  br label %259

98:                                               ; preds = %82
  store i32 -1, i32* %5, align 4
  br label %259

99:                                               ; preds = %24
  %100 = load i64, i64* %9, align 8
  %101 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %102 = add nsw i32 1, %101
  %103 = sext i32 %102 to i64
  %104 = icmp sle i64 %100, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  store i32 -1, i32* %5, align 4
  br label %259

106:                                              ; preds = %99
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %108 = load i64, i64* %7, align 8
  %109 = load i32*, i32** %8, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  %111 = load i32*, i32** %8, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  %113 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i64, i64* %9, align 8
  %117 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %118 = add nsw i32 1, %117
  %119 = sext i32 %118 to i64
  %120 = sub nsw i64 %116, %119
  %121 = call i32 @handle_TCP_oob_send(%struct.TYPE_17__* %107, i64 %108, i32* %110, i32* %115, i64 %120)
  store i32 %121, i32* %5, align 4
  br label %259

122:                                              ; preds = %24
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %177

127:                                              ; preds = %122
  %128 = load i64, i64* %9, align 8
  %129 = load i32, i32* @crypto_box_NONCEBYTES, align 4
  %130 = add nsw i32 1, %129
  %131 = load i32, i32* @ONION_SEND_BASE, align 4
  %132 = mul nsw i32 %131, 2
  %133 = add nsw i32 %130, %132
  %134 = sext i32 %133 to i64
  %135 = icmp sle i64 %128, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %127
  store i32 -1, i32* %5, align 4
  br label %259

137:                                              ; preds = %127
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 1
  store i32 0, i32* %138, align 8
  %139 = load i32, i32* @TCP_ONION_FAMILY, align 4
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 8
  %142 = load i64, i64* %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 0
  %146 = load i64*, i64** %145, align 8
  %147 = getelementptr inbounds i64, i64* %146, i64 0
  store i64 %142, i64* %147, align 8
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 0
  %151 = load i64*, i64** %150, align 8
  %152 = getelementptr inbounds i64, i64* %151, i64 1
  store i64 0, i64* %152, align 8
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 1
  store i32 %155, i32* %160, align 4
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = load i32*, i32** %8, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 1
  %166 = load i32, i32* @crypto_box_NONCEBYTES, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load i64, i64* %9, align 8
  %170 = load i32, i32* @crypto_box_NONCEBYTES, align 4
  %171 = add nsw i32 1, %170
  %172 = sext i32 %171 to i64
  %173 = sub nsw i64 %169, %172
  %174 = load i32*, i32** %8, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 1
  %176 = call i32 @onion_send_1(i32 %163, i32* %168, i64 %173, %struct.TYPE_19__* byval(%struct.TYPE_19__) align 8 %13, i32* %175)
  br label %177

177:                                              ; preds = %137, %122
  store i32 0, i32* %5, align 4
  br label %259

178:                                              ; preds = %24
  store i32 -1, i32* %5, align 4
  br label %259

179:                                              ; preds = %24
  %180 = load i32*, i32** %8, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 0
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @NUM_RESERVED_PORTS, align 4
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %179
  store i32 -1, i32* %5, align 4
  br label %259

186:                                              ; preds = %179
  %187 = load i32*, i32** %8, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @NUM_RESERVED_PORTS, align 4
  %191 = sub nsw i32 %189, %190
  store i32 %191, i32* %14, align 4
  %192 = load i32, i32* %14, align 4
  %193 = load i32, i32* @NUM_CLIENT_CONNECTIONS, align 4
  %194 = icmp sge i32 %192, %193
  br i1 %194, label %195, label %196

195:                                              ; preds = %186
  store i32 -1, i32* %5, align 4
  br label %259

196:                                              ; preds = %186
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 1
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %198, align 8
  %200 = load i32, i32* %14, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %196
  store i32 -1, i32* %5, align 4
  br label %259

207:                                              ; preds = %196
  %208 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %209 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %208, i32 0, i32 1
  %210 = load %struct.TYPE_16__*, %struct.TYPE_16__** %209, align 8
  %211 = load i32, i32* %14, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = icmp ne i32 %215, 2
  br i1 %216, label %217, label %218

217:                                              ; preds = %207
  store i32 0, i32* %5, align 4
  br label %259

218:                                              ; preds = %207
  %219 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %220 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %219, i32 0, i32 1
  %221 = load %struct.TYPE_16__*, %struct.TYPE_16__** %220, align 8
  %222 = load i32, i32* %14, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  store i64 %226, i64* %15, align 8
  %227 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %228 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %227, i32 0, i32 1
  %229 = load %struct.TYPE_16__*, %struct.TYPE_16__** %228, align 8
  %230 = load i32, i32* %14, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* @NUM_RESERVED_PORTS, align 4
  %236 = add nsw i32 %234, %235
  store i32 %236, i32* %16, align 4
  %237 = load i64, i64* %9, align 8
  %238 = call i8* @llvm.stacksave()
  store i8* %238, i8** %17, align 8
  %239 = alloca i32, i64 %237, align 16
  store i64 %237, i64* %18, align 8
  %240 = load i32*, i32** %8, align 8
  %241 = load i64, i64* %9, align 8
  %242 = call i32 @memcpy(i32* %239, i32* %240, i64 %241)
  %243 = load i32, i32* %16, align 4
  %244 = getelementptr inbounds i32, i32* %239, i64 0
  store i32 %243, i32* %244, align 16
  %245 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %245, i32 0, i32 0
  %247 = load %struct.TYPE_18__*, %struct.TYPE_18__** %246, align 8
  %248 = load i64, i64* %15, align 8
  %249 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %247, i64 %248
  %250 = load i64, i64* %9, align 8
  %251 = call i32 @write_packet_TCP_secure_connection(%struct.TYPE_18__* %249, i32* %239, i64 %250, i32 0)
  store i32 %251, i32* %19, align 4
  %252 = load i32, i32* %19, align 4
  %253 = icmp eq i32 %252, -1
  br i1 %253, label %254, label %255

254:                                              ; preds = %218
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %256

255:                                              ; preds = %218
  store i32 0, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %256

256:                                              ; preds = %255, %254
  %257 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %257)
  br label %259

258:                                              ; preds = %50
  store i32 0, i32* %5, align 4
  br label %259

259:                                              ; preds = %258, %256, %217, %206, %195, %185, %178, %177, %136, %106, %105, %98, %97, %81, %68, %67, %55, %54, %49, %40, %39, %23
  %260 = load i32, i32* %5, align 4
  ret i32 %260
}

declare dso_local i32 @handle_TCP_routing_req(%struct.TYPE_17__*, i64, i32*) #1

declare dso_local i32 @rm_connection_index(%struct.TYPE_17__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @write_packet_TCP_secure_connection(%struct.TYPE_18__*, i32*, i64, i32) #1

declare dso_local i32 @handle_TCP_oob_send(%struct.TYPE_17__*, i64, i32*, i32*, i64) #1

declare dso_local i32 @onion_send_1(i32, i32*, i64, %struct.TYPE_19__* byval(%struct.TYPE_19__) align 8, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
