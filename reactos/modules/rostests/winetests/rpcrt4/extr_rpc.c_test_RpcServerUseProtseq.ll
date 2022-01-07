; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/rpcrt4/extr_rpc.c_test_RpcServerUseProtseq.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/rpcrt4/extr_rpc.c_test_RpcServerUseProtseq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32* }

@test_RpcServerUseProtseq.iptcp = internal global [13 x i8] c"ncacn_ip_tcp\00", align 1
@test_RpcServerUseProtseq.np = internal global [9 x i8] c"ncacn_np\00", align 1
@test_RpcServerUseProtseq.ncalrpc = internal global [8 x i8] c"ncalrpc\00", align 1
@FALSE = common dso_local global i32 0, align 4
@RPC_S_NO_BINDINGS = common dso_local global i64 0, align 8
@RPC_S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"RpcServerInqBindings failed with status %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"RpcBindingToStringBinding failed with status %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"ncacn_ip_tcp\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"ncacn_np\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"ncalrpc\00", align 1
@RPC_S_INVALID_ENDPOINT_FORMAT = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [64 x i8] c"RpcServerUseProtseqEp with NULL endpoint failed with status %d\0A\00", align 1
@RPC_S_PROTSEQ_NOT_SUPPORTED = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [24 x i8] c"ncacn_np not supported\0A\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"RpcServerUseProtseq(ncacn_np) failed with status %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [57 x i8] c"RpcServerUseProtseq(ncacn_ip_tcp) failed with status %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"RpcServerUseProtseqEp(ncalrpc) failed with status %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [69 x i8] c"wrong binding count - before: %u, after %u, endpoints registered %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"string binding: %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [59 x i8] c"bindings should have been re-used - after1: %u after2: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_RpcServerUseProtseq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_RpcServerUseProtseq() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 0, i64* %7, align 8
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %10, align 4
  %16 = call i64 @RpcServerInqBindings(%struct.TYPE_4__** %2)
  store i64 %16, i64* %1, align 8
  %17 = load i64, i64* %1, align 8
  %18 = load i64, i64* @RPC_S_NO_BINDINGS, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %0
  store i64 0, i64* %4, align 8
  br label %90

21:                                               ; preds = %0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %4, align 8
  %25 = load i64, i64* %1, align 8
  %26 = load i64, i64* @RPC_S_OK, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i64, i64* %1, align 8
  %30 = call i32 (i32, i8*, i64, ...) @ok(i32 %28, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %29)
  store i64 0, i64* %3, align 8
  br label %31

31:                                               ; preds = %85, %21
  %32 = load i64, i64* %3, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ult i64 %32, %35
  br i1 %36, label %37, label %88

37:                                               ; preds = %31
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* %3, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @RpcBindingToStringBindingA(i32 %43, i64* %11)
  store i64 %44, i64* %1, align 8
  %45 = load i64, i64* %1, align 8
  %46 = load i64, i64* @RPC_S_OK, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = load i64, i64* %1, align 8
  %50 = call i32 (i32, i8*, i64, ...) @ok(i32 %48, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i64 %49)
  %51 = load i64, i64* %11, align 8
  %52 = inttoptr i64 %51 to i8*
  %53 = call i32 @lstrlenA(i8* %52)
  %54 = icmp sgt i32 %53, 12
  br i1 %54, label %55, label %61

55:                                               ; preds = %37
  %56 = load i64, i64* %11, align 8
  %57 = call i32 @memcmp(i64 %56, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 12)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* @TRUE, align 4
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %59, %55, %37
  %62 = load i64, i64* %11, align 8
  %63 = inttoptr i64 %62 to i8*
  %64 = call i32 @lstrlenA(i8* %63)
  %65 = icmp sgt i32 %64, 8
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load i64, i64* %11, align 8
  %68 = call i32 @memcmp(i64 %67, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 8)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %66
  %71 = load i32, i32* @TRUE, align 4
  store i32 %71, i32* %9, align 4
  br label %72

72:                                               ; preds = %70, %66, %61
  %73 = load i64, i64* %11, align 8
  %74 = inttoptr i64 %73 to i8*
  %75 = call i32 @lstrlenA(i8* %74)
  %76 = icmp sgt i32 %75, 7
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load i64, i64* %11, align 8
  %79 = call i32 @memcmp(i64 %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 7)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* @TRUE, align 4
  store i32 %82, i32* %10, align 4
  br label %83

83:                                               ; preds = %81, %77, %72
  %84 = call i32 @RpcStringFreeA(i64* %11)
  br label %85

85:                                               ; preds = %83
  %86 = load i64, i64* %3, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %3, align 8
  br label %31

88:                                               ; preds = %31
  %89 = call i32 @RpcBindingVectorFree(%struct.TYPE_4__** %2)
  br label %90

90:                                               ; preds = %88, %20
  %91 = call i64 @RpcServerUseProtseqEpA(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_RpcServerUseProtseq.ncalrpc, i64 0, i64 0), i32 0, i32* null, i32* null)
  store i64 %91, i64* %1, align 8
  %92 = load i64, i64* %1, align 8
  %93 = load i64, i64* @RPC_S_OK, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %102, label %95

95:                                               ; preds = %90
  %96 = load i64, i64* %1, align 8
  %97 = load i64, i64* @RPC_S_INVALID_ENDPOINT_FORMAT, align 8
  %98 = icmp eq i64 %96, %97
  %99 = zext i1 %98 to i32
  %100 = call i64 @broken(i32 %99)
  %101 = icmp ne i64 %100, 0
  br label %102

102:                                              ; preds = %95, %90
  %103 = phi i1 [ true, %90 ], [ %101, %95 ]
  %104 = zext i1 %103 to i32
  %105 = load i64, i64* %1, align 8
  %106 = call i32 (i32, i8*, i64, ...) @ok(i32 %104, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0), i64 %105)
  %107 = call i64 @RpcServerUseProtseqA(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_RpcServerUseProtseq.np, i64 0, i64 0), i32 0, i32* null)
  store i64 %107, i64* %1, align 8
  %108 = load i64, i64* %1, align 8
  %109 = load i64, i64* @RPC_S_PROTSEQ_NOT_SUPPORTED, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %102
  %112 = call i32 @win_skip(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  br label %120

113:                                              ; preds = %102
  %114 = load i64, i64* %1, align 8
  %115 = load i64, i64* @RPC_S_OK, align 8
  %116 = icmp eq i64 %114, %115
  %117 = zext i1 %116 to i32
  %118 = load i64, i64* %1, align 8
  %119 = call i32 (i32, i8*, i64, ...) @ok(i32 %117, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i64 %118)
  br label %120

120:                                              ; preds = %113, %111
  %121 = load i64, i64* %1, align 8
  %122 = load i64, i64* @RPC_S_OK, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %130

124:                                              ; preds = %120
  %125 = load i32, i32* %9, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %124
  %128 = load i64, i64* %7, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* %7, align 8
  br label %130

130:                                              ; preds = %127, %124, %120
  %131 = call i64 @RpcServerUseProtseqA(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_RpcServerUseProtseq.iptcp, i64 0, i64 0), i32 0, i32* null)
  store i64 %131, i64* %1, align 8
  %132 = load i64, i64* %1, align 8
  %133 = load i64, i64* @RPC_S_OK, align 8
  %134 = icmp eq i64 %132, %133
  %135 = zext i1 %134 to i32
  %136 = load i64, i64* %1, align 8
  %137 = call i32 (i32, i8*, i64, ...) @ok(i32 %135, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i64 0, i64 0), i64 %136)
  %138 = load i64, i64* %1, align 8
  %139 = load i64, i64* @RPC_S_OK, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %147

141:                                              ; preds = %130
  %142 = load i32, i32* %8, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %141
  %145 = load i64, i64* %7, align 8
  %146 = add i64 %145, 1
  store i64 %146, i64* %7, align 8
  br label %147

147:                                              ; preds = %144, %141, %130
  %148 = call i64 @RpcServerUseProtseqA(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_RpcServerUseProtseq.ncalrpc, i64 0, i64 0), i32 0, i32* null)
  store i64 %148, i64* %1, align 8
  %149 = load i64, i64* %1, align 8
  %150 = load i64, i64* @RPC_S_OK, align 8
  %151 = icmp eq i64 %149, %150
  %152 = zext i1 %151 to i32
  %153 = load i64, i64* %1, align 8
  %154 = call i32 (i32, i8*, i64, ...) @ok(i32 %152, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0), i64 %153)
  %155 = load i64, i64* %1, align 8
  %156 = load i64, i64* @RPC_S_OK, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %164

158:                                              ; preds = %147
  %159 = load i32, i32* %10, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %158
  %162 = load i64, i64* %7, align 8
  %163 = add i64 %162, 1
  store i64 %163, i64* %7, align 8
  br label %164

164:                                              ; preds = %161, %158, %147
  %165 = call i64 @RpcServerInqBindings(%struct.TYPE_4__** %2)
  store i64 %165, i64* %1, align 8
  %166 = load i64, i64* %1, align 8
  %167 = load i64, i64* @RPC_S_OK, align 8
  %168 = icmp eq i64 %166, %167
  %169 = zext i1 %168 to i32
  %170 = load i64, i64* %1, align 8
  %171 = call i32 (i32, i8*, i64, ...) @ok(i32 %169, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %170)
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  store i64 %174, i64* %5, align 8
  %175 = load i64, i64* %5, align 8
  %176 = load i64, i64* %4, align 8
  %177 = load i64, i64* %7, align 8
  %178 = add i64 %176, %177
  %179 = icmp eq i64 %175, %178
  %180 = zext i1 %179 to i32
  %181 = load i64, i64* %4, align 8
  %182 = load i64, i64* %5, align 8
  %183 = load i64, i64* %7, align 8
  %184 = call i32 (i32, i8*, i64, ...) @ok(i32 %180, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.10, i64 0, i64 0), i64 %181, i64 %182, i64 %183)
  store i64 0, i64* %3, align 8
  br label %185

185:                                              ; preds = %208, %164
  %186 = load i64, i64* %3, align 8
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = icmp ult i64 %186, %189
  br i1 %190, label %191, label %211

191:                                              ; preds = %185
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 1
  %194 = load i32*, i32** %193, align 8
  %195 = load i64, i64* %3, align 8
  %196 = getelementptr inbounds i32, i32* %194, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = call i64 @RpcBindingToStringBindingA(i32 %197, i64* %12)
  store i64 %198, i64* %1, align 8
  %199 = load i64, i64* %1, align 8
  %200 = load i64, i64* @RPC_S_OK, align 8
  %201 = icmp eq i64 %199, %200
  %202 = zext i1 %201 to i32
  %203 = load i64, i64* %1, align 8
  %204 = call i32 (i32, i8*, i64, ...) @ok(i32 %202, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i64 %203)
  %205 = load i64, i64* %12, align 8
  %206 = call i32 @trace(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i64 %205)
  %207 = call i32 @RpcStringFreeA(i64* %12)
  br label %208

208:                                              ; preds = %191
  %209 = load i64, i64* %3, align 8
  %210 = add i64 %209, 1
  store i64 %210, i64* %3, align 8
  br label %185

211:                                              ; preds = %185
  %212 = call i32 @RpcBindingVectorFree(%struct.TYPE_4__** %2)
  %213 = call i64 @RpcServerUseProtseqA(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_RpcServerUseProtseq.np, i64 0, i64 0), i32 0, i32* null)
  store i64 %213, i64* %1, align 8
  %214 = load i64, i64* %1, align 8
  %215 = load i64, i64* @RPC_S_PROTSEQ_NOT_SUPPORTED, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %219

217:                                              ; preds = %211
  %218 = call i32 @win_skip(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  br label %226

219:                                              ; preds = %211
  %220 = load i64, i64* %1, align 8
  %221 = load i64, i64* @RPC_S_OK, align 8
  %222 = icmp eq i64 %220, %221
  %223 = zext i1 %222 to i32
  %224 = load i64, i64* %1, align 8
  %225 = call i32 (i32, i8*, i64, ...) @ok(i32 %223, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i64 %224)
  br label %226

226:                                              ; preds = %219, %217
  %227 = call i64 @RpcServerUseProtseqA(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_RpcServerUseProtseq.iptcp, i64 0, i64 0), i32 0, i32* null)
  store i64 %227, i64* %1, align 8
  %228 = load i64, i64* %1, align 8
  %229 = load i64, i64* @RPC_S_OK, align 8
  %230 = icmp eq i64 %228, %229
  %231 = zext i1 %230 to i32
  %232 = load i64, i64* %1, align 8
  %233 = call i32 (i32, i8*, i64, ...) @ok(i32 %231, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i64 0, i64 0), i64 %232)
  %234 = call i64 @RpcServerUseProtseqA(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_RpcServerUseProtseq.ncalrpc, i64 0, i64 0), i32 0, i32* null)
  store i64 %234, i64* %1, align 8
  %235 = load i64, i64* %1, align 8
  %236 = load i64, i64* @RPC_S_OK, align 8
  %237 = icmp eq i64 %235, %236
  %238 = zext i1 %237 to i32
  %239 = load i64, i64* %1, align 8
  %240 = call i32 (i32, i8*, i64, ...) @ok(i32 %238, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0), i64 %239)
  %241 = call i64 @RpcServerInqBindings(%struct.TYPE_4__** %2)
  store i64 %241, i64* %1, align 8
  %242 = load i64, i64* %1, align 8
  %243 = load i64, i64* @RPC_S_OK, align 8
  %244 = icmp eq i64 %242, %243
  %245 = zext i1 %244 to i32
  %246 = load i64, i64* %1, align 8
  %247 = call i32 (i32, i8*, i64, ...) @ok(i32 %245, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %246)
  %248 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  store i64 %250, i64* %6, align 8
  %251 = load i64, i64* %6, align 8
  %252 = load i64, i64* %5, align 8
  %253 = icmp eq i64 %251, %252
  %254 = zext i1 %253 to i32
  %255 = load i64, i64* %5, align 8
  %256 = load i64, i64* %6, align 8
  %257 = call i32 (i32, i8*, i64, ...) @ok(i32 %254, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.12, i64 0, i64 0), i64 %255, i64 %256)
  %258 = call i32 @RpcBindingVectorFree(%struct.TYPE_4__** %2)
  ret void
}

declare dso_local i64 @RpcServerInqBindings(%struct.TYPE_4__**) #1

declare dso_local i32 @ok(i32, i8*, i64, ...) #1

declare dso_local i64 @RpcBindingToStringBindingA(i32, i64*) #1

declare dso_local i32 @lstrlenA(i8*) #1

declare dso_local i32 @memcmp(i64, i8*, i32) #1

declare dso_local i32 @RpcStringFreeA(i64*) #1

declare dso_local i32 @RpcBindingVectorFree(%struct.TYPE_4__**) #1

declare dso_local i64 @RpcServerUseProtseqEpA(i8*, i32, i32*, i32*) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i64 @RpcServerUseProtseqA(i8*, i32, i32*) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @trace(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
