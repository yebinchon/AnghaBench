; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_rist.c_rtcp_input.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_rist.c_rtcp_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i8*, i32, i32 }
%struct.rist_flow = type { i8, i32, i32 }
%struct.sockaddr = type opaque

@MAX_CNAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Rist rtcp packet must have at least 4 bytes, we have %d\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Malformed rtcp packet starting with %02x, ignoring.\00", align 1
@.str.2 = private unnamed_addr constant [97 x i8] c"Malformed rtcp packet, wrong len %d, expecting %u bytes in the packet, got a buffer of %u bytes.\00", align 1
@.str.3 = private unnamed_addr constant [69 x i8] c"Malformed SDES packet, wrong cname len %d, got a buffer of %u bytes.\00", align 1
@RTCP_SDES_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Peer Name: %s\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"Peer Name change detected: old Name: %s, new Name: %s\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"   Unrecognized RTCP packet with PTYPE=%02x!!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.rist_flow*, i32*, i64, %struct.sockaddr*, i32)* @rtcp_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtcp_input(%struct.TYPE_8__* %0, %struct.rist_flow* %1, i32* %2, i64 %3, %struct.sockaddr* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.rist_flow*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.sockaddr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store %struct.rist_flow* %1, %struct.rist_flow** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.sockaddr* %4, %struct.sockaddr** %11, align 8
  store i32 %5, i32* %12, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %13, align 8
  store i64 0, i64* %15, align 8
  %29 = load i32, i32* @MAX_CNAME, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %17, align 8
  %32 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %18, align 8
  br label %33

33:                                               ; preds = %235, %6
  %34 = load i64, i64* %15, align 8
  %35 = load i64, i64* %10, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %241

37:                                               ; preds = %33
  %38 = load i32*, i32** %9, align 8
  %39 = load i64, i64* %15, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  store i32* %40, i32** %19, align 8
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* %15, align 8
  %43 = sub i64 %41, %42
  %44 = add i64 %43, 1
  store i64 %44, i64* %20, align 8
  %45 = load i64, i64* %20, align 8
  %46 = icmp ult i64 %45, 4
  br i1 %46, label %47, label %52

47:                                               ; preds = %37
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %49 = load i64, i64* %20, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i32 (%struct.TYPE_8__*, i8*, i32, ...) @msg_Err(%struct.TYPE_8__* %48, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %50)
  store i32 1, i32* %21, align 4
  br label %242

52:                                               ; preds = %37
  %53 = load i32*, i32** %19, align 8
  %54 = call i32 @rtp_check_hdr(i32* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %52
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %58 = load i32*, i32** %19, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (%struct.TYPE_8__*, i8*, i32, ...) @msg_Err(%struct.TYPE_8__* %57, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  store i32 1, i32* %21, align 4
  br label %242

62:                                               ; preds = %52
  br label %63

63:                                               ; preds = %62
  %64 = load i32*, i32** %19, align 8
  %65 = call i32 @rtcp_get_pt(i32* %64)
  store i32 %65, i32* %14, align 4
  %66 = load i32*, i32** %19, align 8
  %67 = call i64 @rtcp_get_length(i32* %66)
  store i64 %67, i64* %16, align 8
  %68 = load i64, i64* %16, align 8
  %69 = add i64 1, %68
  %70 = mul i64 4, %69
  store i64 %70, i64* %22, align 8
  %71 = load i64, i64* %22, align 8
  %72 = load i64, i64* %20, align 8
  %73 = icmp ugt i64 %71, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %63
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %76 = load i32*, i32** %19, align 8
  %77 = call i64 @rtcp_get_length(i32* %76)
  %78 = trunc i64 %77 to i32
  %79 = load i64, i64* %22, align 8
  %80 = load i64, i64* %20, align 8
  %81 = call i32 (%struct.TYPE_8__*, i8*, i32, ...) @msg_Err(%struct.TYPE_8__* %75, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.2, i64 0, i64 0), i32 %78, i64 %79, i64 %80)
  store i32 1, i32* %21, align 4
  br label %242

82:                                               ; preds = %63
  %83 = load i32, i32* %14, align 4
  switch i32 %83, label %231 [
    i32 130, label %84
    i32 131, label %84
    i32 132, label %85
    i32 129, label %86
    i32 128, label %216
  ]

84:                                               ; preds = %82, %82
  br label %235

85:                                               ; preds = %82
  br label %235

86:                                               ; preds = %82
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  store i32 1, i32* %93, align 8
  br label %94

94:                                               ; preds = %91, %86
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  store i32 1, i32* %21, align 4
  br label %242

100:                                              ; preds = %94
  %101 = load i32*, i32** %19, align 8
  %102 = call i64 @rtcp_sdes_get_name_length(i32* %101)
  store i64 %102, i64* %23, align 8
  %103 = load i64, i64* %23, align 8
  %104 = load i64, i64* %20, align 8
  %105 = icmp ugt i64 %103, %104
  br i1 %105, label %112, label %106

106:                                              ; preds = %100
  %107 = load i64, i64* %23, align 8
  %108 = icmp ule i64 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %106
  %110 = load i64, i64* %23, align 8
  %111 = icmp ugt i64 %110, %30
  br i1 %111, label %112, label %118

112:                                              ; preds = %109, %106, %100
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %114 = load i64, i64* %23, align 8
  %115 = trunc i64 %114 to i32
  %116 = load i64, i64* %20, align 8
  %117 = call i32 (%struct.TYPE_8__*, i8*, i32, ...) @msg_Err(%struct.TYPE_8__* %113, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0), i32 %115, i64 %116)
  store i32 1, i32* %21, align 4
  br label %242

118:                                              ; preds = %109
  store i32 0, i32* %24, align 4
  %119 = load %struct.rist_flow*, %struct.rist_flow** %8, align 8
  %120 = getelementptr inbounds %struct.rist_flow, %struct.rist_flow* %119, i32 0, i32 0
  %121 = bitcast i8* %120 to %struct.sockaddr*
  %122 = bitcast %struct.sockaddr* %121 to i32*
  %123 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %124 = bitcast %struct.sockaddr* %123 to i32*
  %125 = call i32 @sockaddr_cmp(i32* %122, i32* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %161

127:                                              ; preds = %118
  store i32 1, i32* %24, align 4
  %128 = load %struct.rist_flow*, %struct.rist_flow** %8, align 8
  %129 = getelementptr inbounds %struct.rist_flow, %struct.rist_flow* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %127
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %134 = load %struct.rist_flow*, %struct.rist_flow** %8, align 8
  %135 = getelementptr inbounds %struct.rist_flow, %struct.rist_flow* %134, i32 0, i32 0
  %136 = bitcast i8* %135 to %struct.sockaddr*
  %137 = bitcast %struct.sockaddr* %136 to i32*
  %138 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %139 = bitcast %struct.sockaddr* %138 to i32*
  %140 = call i32 @print_sockaddr_info_change(%struct.TYPE_8__* %133, i32* %137, i32* %139)
  br label %146

141:                                              ; preds = %127
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %143 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %144 = bitcast %struct.sockaddr* %143 to i32*
  %145 = call i32 @print_sockaddr_info(%struct.TYPE_8__* %142, i32* %144)
  br label %146

146:                                              ; preds = %141, %132
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 3
  %149 = call i32 @vlc_mutex_lock(i32* %148)
  %150 = load %struct.rist_flow*, %struct.rist_flow** %8, align 8
  %151 = getelementptr inbounds %struct.rist_flow, %struct.rist_flow* %150, i32 0, i32 0
  %152 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %153 = bitcast %struct.sockaddr* %152 to i32*
  %154 = call i32 @memcpy(i8* %151, i32* %153, i64 4)
  %155 = load i32, i32* %12, align 4
  %156 = load %struct.rist_flow*, %struct.rist_flow** %8, align 8
  %157 = getelementptr inbounds %struct.rist_flow, %struct.rist_flow* %156, i32 0, i32 2
  store i32 %155, i32* %157, align 4
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 3
  %160 = call i32 @vlc_mutex_unlock(i32* %159)
  br label %161

161:                                              ; preds = %146, %118
  store i32 0, i32* %25, align 4
  %162 = load i32, i32* @MAX_CNAME, align 4
  %163 = call i32 @memset(i8* %32, i32 0, i32 %162)
  %164 = load i32*, i32** %19, align 8
  %165 = load i32, i32* @RTCP_SDES_SIZE, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i64, i64* %23, align 8
  %169 = call i32 @memcpy(i8* %32, i32* %167, i64 %168)
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 1
  %172 = load i8*, i8** %171, align 8
  %173 = load i64, i64* %23, align 8
  %174 = call i32 @memcmp(i8* %32, i8* %172, i64 %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %206

176:                                              ; preds = %161
  store i32 1, i32* %25, align 4
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 1
  %179 = load i8*, i8** %178, align 8
  %180 = call i32 @strcmp(i8* %179, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %176
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %184 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @msg_Info(%struct.TYPE_8__* %183, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* %32)
  br label %191

185:                                              ; preds = %176
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 1
  %189 = load i8*, i8** %188, align 8
  %190 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @msg_Info(%struct.TYPE_8__* %186, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i8* %189, i8* %32)
  br label %191

191:                                              ; preds = %185, %182
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 1
  %194 = load i8*, i8** %193, align 8
  %195 = load i32, i32* @MAX_CNAME, align 4
  %196 = call i32 @memset(i8* %194, i32 0, i32 %195)
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 1
  %199 = load i8*, i8** %198, align 8
  %200 = load i32*, i32** %19, align 8
  %201 = load i32, i32* @RTCP_SDES_SIZE, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i64, i64* %23, align 8
  %205 = call i32 @memcpy(i8* %199, i32* %203, i64 %204)
  br label %206

206:                                              ; preds = %191, %161
  %207 = load i32, i32* %25, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %212, label %209

209:                                              ; preds = %206
  %210 = load i32, i32* %24, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %209, %206
  %213 = load %struct.rist_flow*, %struct.rist_flow** %8, align 8
  %214 = getelementptr inbounds %struct.rist_flow, %struct.rist_flow* %213, i32 0, i32 1
  store i32 1, i32* %214, align 4
  br label %215

215:                                              ; preds = %212, %209
  br label %235

216:                                              ; preds = %82
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %216
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 0
  store i32 1, i32* %223, align 8
  br label %224

224:                                              ; preds = %221, %216
  %225 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %224
  store i32 1, i32* %21, align 4
  br label %242

230:                                              ; preds = %224
  br label %235

231:                                              ; preds = %82
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %233 = load i32, i32* %14, align 4
  %234 = call i32 (%struct.TYPE_8__*, i8*, i32, ...) @msg_Err(%struct.TYPE_8__* %232, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i32 %233)
  br label %235

235:                                              ; preds = %231, %230, %215, %85, %84
  %236 = load i64, i64* %16, align 8
  %237 = add i64 1, %236
  %238 = mul i64 4, %237
  %239 = load i64, i64* %15, align 8
  %240 = add i64 %239, %238
  store i64 %240, i64* %15, align 8
  br label %33

241:                                              ; preds = %33
  store i32 0, i32* %21, align 4
  br label %242

242:                                              ; preds = %241, %229, %112, %99, %74, %56, %47
  %243 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %243)
  %244 = load i32, i32* %21, align 4
  switch i32 %244, label %246 [
    i32 0, label %245
    i32 1, label %245
  ]

245:                                              ; preds = %242, %242
  ret void

246:                                              ; preds = %242
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @msg_Err(%struct.TYPE_8__*, i8*, i32, ...) #2

declare dso_local i32 @rtp_check_hdr(i32*) #2

declare dso_local i32 @rtcp_get_pt(i32*) #2

declare dso_local i64 @rtcp_get_length(i32*) #2

declare dso_local i64 @rtcp_sdes_get_name_length(i32*) #2

declare dso_local i32 @sockaddr_cmp(i32*, i32*) #2

declare dso_local i32 @print_sockaddr_info_change(%struct.TYPE_8__*, i32*, i32*) #2

declare dso_local i32 @print_sockaddr_info(%struct.TYPE_8__*, i32*) #2

declare dso_local i32 @vlc_mutex_lock(i32*) #2

declare dso_local i32 @memcpy(i8*, i32*, i64) #2

declare dso_local i32 @vlc_mutex_unlock(i32*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @memcmp(i8*, i8*, i64) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @msg_Info(%struct.TYPE_8__*, i8*, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
