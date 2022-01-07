; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_net_crypto.c_handle_packet_connection.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_net_crypto.c_handle_packet_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32, i32, i32, i32 (i32, i32, i32*)*, i32, i32, i32, i32, i32, i32 }

@MAX_CRYPTO_PACKET_SIZE = common dso_local global i64 0, align 8
@CRYPTO_CONN_COOKIE_REQUESTING = common dso_local global i32 0, align 4
@COOKIE_LENGTH = common dso_local global i32 0, align 4
@CRYPTO_CONN_HANDSHAKE_SENT = common dso_local global i32 0, align 4
@CRYPTO_CONN_NOT_CONFIRMED = common dso_local global i32 0, align 4
@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@CRYPTO_CONN_ESTABLISHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i64, i1)* @handle_packet_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_packet_connection(i32* %0, i32 %1, i32* %2, i64 %3, i1 zeroext %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  %21 = zext i1 %4 to i8
  store i8 %21, i8* %11, align 1
  %22 = load i64, i64* %10, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %5
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* @MAX_CRYPTO_PACKET_SIZE, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %5
  store i32 -1, i32* %6, align 4
  br label %207

29:                                               ; preds = %24
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call %struct.TYPE_3__* @get_crypto_connection(i32* %30, i32 %31)
  store %struct.TYPE_3__* %32, %struct.TYPE_3__** %12, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %34 = icmp eq %struct.TYPE_3__* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 -1, i32* %6, align 4
  br label %207

36:                                               ; preds = %29
  %37 = load i32*, i32** %9, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %206 [
    i32 130, label %40
    i32 128, label %84
    i32 129, label %185
  ]

40:                                               ; preds = %36
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @CRYPTO_CONN_COOKIE_REQUESTING, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 -1, i32* %6, align 4
  br label %207

47:                                               ; preds = %40
  %48 = load i32, i32* @COOKIE_LENGTH, align 4
  %49 = zext i32 %48 to i64
  %50 = call i8* @llvm.stacksave()
  store i8* %50, i8** %13, align 8
  %51 = alloca i32, i64 %49, align 16
  store i64 %49, i64* %14, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = load i64, i64* %10, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @handle_cookie_response(i32* %51, i32* %15, i32* %52, i64 %53, i32 %56)
  %58 = sext i32 %57 to i64
  %59 = mul nuw i64 4, %49
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %47
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %82

62:                                               ; preds = %47
  %63 = load i32, i32* %15, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 10
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %63, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %82

69:                                               ; preds = %62
  %70 = load i32*, i32** %7, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @create_send_handshake(i32* %70, i32 %71, i32* %51, i32* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %82

78:                                               ; preds = %69
  %79 = load i32, i32* @CRYPTO_CONN_HANDSHAKE_SENT, align 4
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %82

82:                                               ; preds = %78, %77, %68, %61
  %83 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %83)
  br label %207

84:                                               ; preds = %36
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @CRYPTO_CONN_COOKIE_REQUESTING, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %102, label %90

90:                                               ; preds = %84
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @CRYPTO_CONN_HANDSHAKE_SENT, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %102, label %96

96:                                               ; preds = %90
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @CRYPTO_CONN_NOT_CONFIRMED, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %183

102:                                              ; preds = %96, %90, %84
  %103 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %104 = zext i32 %103 to i64
  %105 = call i8* @llvm.stacksave()
  store i8* %105, i8** %17, align 8
  %106 = alloca i32, i64 %104, align 16
  store i64 %104, i64* %18, align 8
  %107 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %108 = zext i32 %107 to i64
  %109 = alloca i32, i64 %108, align 16
  store i64 %108, i64* %19, align 8
  %110 = load i32, i32* @COOKIE_LENGTH, align 4
  %111 = zext i32 %110 to i64
  %112 = alloca i32, i64 %111, align 16
  store i64 %111, i64* %20, align 8
  %113 = load i32*, i32** %7, align 8
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 9
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 7
  %119 = load i32, i32* %118, align 8
  %120 = load i32*, i32** %9, align 8
  %121 = load i64, i64* %10, align 8
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 8
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @handle_crypto_handshake(i32* %113, i32 %116, i32 %119, i32* %106, i32* %109, i32* %112, i32* %120, i64 %121, i32 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %102
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %179

128:                                              ; preds = %102
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = call i32 @public_key_cmp(i32* %109, i32* %131)
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %161

134:                                              ; preds = %128
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 7
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 6
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @encrypt_precompute(i32 %137, i32 %140, i32 %143)
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @CRYPTO_CONN_COOKIE_REQUESTING, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %157

150:                                              ; preds = %134
  %151 = load i32*, i32** %7, align 8
  %152 = load i32, i32* %8, align 4
  %153 = call i32 @create_send_handshake(i32* %151, i32 %152, i32* %112, i32* %109)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %150
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %179

156:                                              ; preds = %150
  br label %157

157:                                              ; preds = %156, %134
  %158 = load i32, i32* @CRYPTO_CONN_NOT_CONFIRMED, align 4
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 1
  store i32 %158, i32* %160, align 8
  br label %178

161:                                              ; preds = %128
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 4
  %164 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %163, align 8
  %165 = icmp ne i32 (i32, i32, i32*)* %164, null
  br i1 %165, label %166, label %177

166:                                              ; preds = %161
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 4
  %169 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %168, align 8
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = call i32 %169(i32 %172, i32 %175, i32* %109)
  br label %177

177:                                              ; preds = %166, %161
  br label %178

178:                                              ; preds = %177, %157
  store i32 0, i32* %16, align 4
  br label %179

179:                                              ; preds = %178, %155, %127
  %180 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %180)
  %181 = load i32, i32* %16, align 4
  switch i32 %181, label %209 [
    i32 0, label %182
    i32 1, label %207
  ]

182:                                              ; preds = %179
  br label %184

183:                                              ; preds = %96
  store i32 -1, i32* %6, align 4
  br label %207

184:                                              ; preds = %182
  store i32 0, i32* %6, align 4
  br label %207

185:                                              ; preds = %36
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @CRYPTO_CONN_NOT_CONFIRMED, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %197, label %191

191:                                              ; preds = %185
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @CRYPTO_CONN_ESTABLISHED, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %205

197:                                              ; preds = %191, %185
  %198 = load i32*, i32** %7, align 8
  %199 = load i32, i32* %8, align 4
  %200 = load i32*, i32** %9, align 8
  %201 = load i64, i64* %10, align 8
  %202 = load i8, i8* %11, align 1
  %203 = trunc i8 %202 to i1
  %204 = call i32 @handle_data_packet_helper(i32* %198, i32 %199, i32* %200, i64 %201, i1 zeroext %203)
  store i32 %204, i32* %6, align 4
  br label %207

205:                                              ; preds = %191
  store i32 -1, i32* %6, align 4
  br label %207

206:                                              ; preds = %36
  store i32 -1, i32* %6, align 4
  br label %207

207:                                              ; preds = %206, %205, %197, %184, %183, %179, %82, %46, %35, %28
  %208 = load i32, i32* %6, align 4
  ret i32 %208

209:                                              ; preds = %179
  unreachable
}

declare dso_local %struct.TYPE_3__* @get_crypto_connection(i32*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @handle_cookie_response(i32*, i32*, i32*, i64, i32) #1

declare dso_local i32 @create_send_handshake(i32*, i32, i32*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @handle_crypto_handshake(i32*, i32, i32, i32*, i32*, i32*, i32*, i64, i32) #1

declare dso_local i32 @public_key_cmp(i32*, i32*) #1

declare dso_local i32 @encrypt_precompute(i32, i32, i32) #1

declare dso_local i32 @handle_data_packet_helper(i32*, i32, i32*, i64, i1 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
