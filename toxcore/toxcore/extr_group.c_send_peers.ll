; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_group.c_send_peers.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_group.c_send_peers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32*, i32*, i32*, i32 }

@MAX_CRYPTO_DATA_SIZE = common dso_local global i32 0, align 4
@PEER_RESPONSE_ID = common dso_local global i32 0, align 4
@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@PACKET_ID_DIRECT_GROUPCHAT = common dso_local global i32 0, align 4
@PEER_TITLE_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32, i32, i32)* @send_peers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_peers(%struct.TYPE_9__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call %struct.TYPE_8__* @get_group_c(%struct.TYPE_9__* %20, i32 %21)
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %10, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %24 = icmp ne %struct.TYPE_8__* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %232

26:                                               ; preds = %4
  %27 = load i32, i32* @MAX_CRYPTO_DATA_SIZE, align 4
  %28 = sext i32 %27 to i64
  %29 = sub i64 %28, 5
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %11, align 8
  %31 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %12, align 8
  %32 = load i32, i32* @PEER_RESPONSE_ID, align 4
  %33 = getelementptr inbounds i32, i32* %31, i64 0
  store i32 %32, i32* %33, align 16
  %34 = getelementptr inbounds i32, i32* %31, i64 1
  store i32* %34, i32** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %35

35:                                               ; preds = %170, %26
  %36 = load i32, i32* %15, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ult i32 %36, %39
  br i1 %40, label %41, label %173

41:                                               ; preds = %35
  %42 = load i32*, i32** %13, align 8
  %43 = ptrtoint i32* %42 to i64
  %44 = ptrtoint i32* %31 to i64
  %45 = sub i64 %43, %44
  %46 = sdiv exact i64 %45, 4
  %47 = add i64 %46, 4
  %48 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %49 = mul nsw i32 %48, 2
  %50 = sext i32 %49 to i64
  %51 = add i64 %47, %50
  %52 = add i64 %51, 1
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 3
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = load i32, i32* %15, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = add i64 %52, %61
  %63 = mul nuw i64 4, %29
  %64 = icmp ugt i64 %62, %63
  br i1 %64, label %65, label %86

65:                                               ; preds = %41
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @PACKET_ID_DIRECT_GROUPCHAT, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load i32*, i32** %13, align 8
  %73 = ptrtoint i32* %72 to i64
  %74 = ptrtoint i32* %31 to i64
  %75 = sub i64 %73, %74
  %76 = sdiv exact i64 %75, 4
  %77 = trunc i64 %76 to i32
  %78 = call i64 @send_packet_group_peer(i32 %68, i32 %69, i32 %70, i32 %71, i32* %31, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %65
  %81 = load i32, i32* %15, align 4
  store i32 %81, i32* %14, align 4
  br label %84

82:                                               ; preds = %65
  %83 = load i32, i32* %14, align 4
  store i32 %83, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %230

84:                                               ; preds = %80
  %85 = getelementptr inbounds i32, i32* %31, i64 1
  store i32* %85, i32** %13, align 8
  br label %86

86:                                               ; preds = %84, %41
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 3
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = load i32, i32* %15, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @htons(i32 %94)
  store i32 %95, i32* %17, align 4
  %96 = load i32*, i32** %13, align 8
  %97 = call i32 @memcpy(i32* %96, i32* %17, i32 4)
  %98 = load i32*, i32** %13, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 4
  store i32* %99, i32** %13, align 8
  %100 = load i32*, i32** %13, align 8
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 3
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = load i32, i32* %15, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %110 = call i32 @memcpy(i32* %100, i32* %108, i32 %109)
  %111 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %112 = load i32*, i32** %13, align 8
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  store i32* %114, i32** %13, align 8
  %115 = load i32*, i32** %13, align 8
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 3
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = load i32, i32* %15, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %125 = call i32 @memcpy(i32* %115, i32* %123, i32 %124)
  %126 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %127 = load i32*, i32** %13, align 8
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  store i32* %129, i32** %13, align 8
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 3
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %131, align 8
  %133 = load i32, i32* %15, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32*, i32** %13, align 8
  store i32 %137, i32* %138, align 4
  %139 = load i32*, i32** %13, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 1
  store i32* %140, i32** %13, align 8
  %141 = load i32*, i32** %13, align 8
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 3
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %143, align 8
  %145 = load i32, i32* %15, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 3
  %149 = load i32*, i32** %148, align 8
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 3
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %151, align 8
  %153 = load i32, i32* %15, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @memcpy(i32* %141, i32* %149, i32 %157)
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 3
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %160, align 8
  %162 = load i32, i32* %15, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32*, i32** %13, align 8
  %168 = sext i32 %166 to i64
  %169 = getelementptr inbounds i32, i32* %167, i64 %168
  store i32* %169, i32** %13, align 8
  br label %170

170:                                              ; preds = %86
  %171 = load i32, i32* %15, align 4
  %172 = add i32 %171, 1
  store i32 %172, i32* %15, align 4
  br label %35

173:                                              ; preds = %35
  %174 = load i32, i32* %14, align 4
  %175 = load i32, i32* %15, align 4
  %176 = icmp ne i32 %174, %175
  br i1 %176, label %177, label %195

177:                                              ; preds = %173
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %8, align 4
  %182 = load i32, i32* @PACKET_ID_DIRECT_GROUPCHAT, align 4
  %183 = load i32, i32* %9, align 4
  %184 = load i32*, i32** %13, align 8
  %185 = ptrtoint i32* %184 to i64
  %186 = ptrtoint i32* %31 to i64
  %187 = sub i64 %185, %186
  %188 = sdiv exact i64 %187, 4
  %189 = trunc i64 %188 to i32
  %190 = call i64 @send_packet_group_peer(i32 %180, i32 %181, i32 %182, i32 %183, i32* %31, i32 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %177
  %193 = load i32, i32* %15, align 4
  store i32 %193, i32* %14, align 4
  br label %194

194:                                              ; preds = %192, %177
  br label %195

195:                                              ; preds = %194, %173
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %228

200:                                              ; preds = %195
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = add nsw i32 1, %203
  %205 = zext i32 %204 to i64
  %206 = call i8* @llvm.stacksave()
  store i8* %206, i8** %18, align 8
  %207 = alloca i32, i64 %205, align 16
  store i64 %205, i64* %19, align 8
  %208 = load i32, i32* @PEER_TITLE_ID, align 4
  %209 = getelementptr inbounds i32, i32* %207, i64 0
  store i32 %208, i32* %209, align 16
  %210 = getelementptr inbounds i32, i32* %207, i64 1
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 2
  %213 = load i32*, i32** %212, align 8
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @memcpy(i32* %210, i32* %213, i32 %216)
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* %8, align 4
  %222 = load i32, i32* @PACKET_ID_DIRECT_GROUPCHAT, align 4
  %223 = load i32, i32* %9, align 4
  %224 = mul nuw i64 4, %205
  %225 = trunc i64 %224 to i32
  %226 = call i64 @send_packet_group_peer(i32 %220, i32 %221, i32 %222, i32 %223, i32* %207, i32 %225)
  %227 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %227)
  br label %228

228:                                              ; preds = %200, %195
  %229 = load i32, i32* %14, align 4
  store i32 %229, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %230

230:                                              ; preds = %228, %82
  %231 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %231)
  br label %232

232:                                              ; preds = %230, %25
  %233 = load i32, i32* %5, align 4
  ret i32 %233
}

declare dso_local %struct.TYPE_8__* @get_group_c(%struct.TYPE_9__*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @send_packet_group_peer(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
