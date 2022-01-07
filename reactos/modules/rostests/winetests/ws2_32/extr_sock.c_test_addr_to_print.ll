; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ws2_32/extr_sock.c_test_addr_to_print.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ws2_32/extr_sock.c_test_addr_to_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }
%struct.in6_addr = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"0.0.0.0\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"21.16.32.32\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"::fffe:cc98:bd74\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"2030:a4b1::\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"::204.152.189.116\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"inet_ntoa failed %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"Address %s != %s\0A\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"InetNtop failed %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"The pointer should not be returned (%p)\0A\00", align 1
@WSAEAFNOSUPPORT = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [27 x i8] c"Should be WSAEAFNOSUPPORT\0A\00", align 1
@STATUS_INVALID_PARAMETER = common dso_local global i8* null, align 8
@WSAEINVAL = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [58 x i8] c"Should be STATUS_INVALID_PARAMETER or WSAEINVAL not 0x%x\0A\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"The pointer should  be returned (%p)\0A\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [37 x i8] c"The pointer should be returned (%p)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_addr_to_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_addr_to_print() #0 {
  %1 = alloca [16 x i8], align 16
  %2 = alloca [64 x i8], align 16
  %3 = alloca i8*, align 8
  %4 = alloca %struct.in_addr, align 8
  %5 = alloca %struct.in6_addr, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [16 x i32], align 16
  %11 = alloca i8*, align 8
  %12 = alloca [16 x i32], align 16
  %13 = alloca i8*, align 8
  %14 = alloca [16 x i32], align 16
  %15 = alloca i8*, align 8
  store i8* null, i8** %6, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  store i8* inttoptr (i64 538972181 to i8*), i8** %8, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  %16 = bitcast [16 x i32]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 64, i1 false)
  %17 = bitcast i8* %16 to [16 x i32]*
  %18 = getelementptr inbounds [16 x i32], [16 x i32]* %17, i32 0, i32 10
  store i32 255, i32* %18, align 8
  %19 = getelementptr inbounds [16 x i32], [16 x i32]* %17, i32 0, i32 11
  store i32 254, i32* %19, align 4
  %20 = getelementptr inbounds [16 x i32], [16 x i32]* %17, i32 0, i32 12
  store i32 204, i32* %20, align 16
  %21 = getelementptr inbounds [16 x i32], [16 x i32]* %17, i32 0, i32 13
  store i32 152, i32* %21, align 4
  %22 = getelementptr inbounds [16 x i32], [16 x i32]* %17, i32 0, i32 14
  store i32 189, i32* %22, align 8
  %23 = getelementptr inbounds [16 x i32], [16 x i32]* %17, i32 0, i32 15
  store i32 116, i32* %23, align 4
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  %24 = bitcast [16 x i32]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %24, i8 0, i64 64, i1 false)
  %25 = bitcast i8* %24 to <{ i32, i32, i32, i32, [12 x i32] }>*
  %26 = getelementptr inbounds <{ i32, i32, i32, i32, [12 x i32] }>, <{ i32, i32, i32, i32, [12 x i32] }>* %25, i32 0, i32 0
  store i32 32, i32* %26, align 16
  %27 = getelementptr inbounds <{ i32, i32, i32, i32, [12 x i32] }>, <{ i32, i32, i32, i32, [12 x i32] }>* %25, i32 0, i32 1
  store i32 48, i32* %27, align 4
  %28 = getelementptr inbounds <{ i32, i32, i32, i32, [12 x i32] }>, <{ i32, i32, i32, i32, [12 x i32] }>* %25, i32 0, i32 2
  store i32 164, i32* %28, align 8
  %29 = getelementptr inbounds <{ i32, i32, i32, i32, [12 x i32] }>, <{ i32, i32, i32, i32, [12 x i32] }>* %25, i32 0, i32 3
  store i32 177, i32* %29, align 4
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** %13, align 8
  %30 = bitcast [16 x i32]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %30, i8 0, i64 64, i1 false)
  %31 = bitcast i8* %30 to [16 x i32]*
  %32 = getelementptr inbounds [16 x i32], [16 x i32]* %31, i32 0, i32 12
  store i32 204, i32* %32, align 16
  %33 = getelementptr inbounds [16 x i32], [16 x i32]* %31, i32 0, i32 13
  store i32 152, i32* %33, align 4
  %34 = getelementptr inbounds [16 x i32], [16 x i32]* %31, i32 0, i32 14
  store i32 189, i32* %34, align 8
  %35 = getelementptr inbounds [16 x i32], [16 x i32]* %31, i32 0, i32 15
  store i32 116, i32* %35, align 4
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8** %15, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %4, i32 0, i32 0
  store i8* %36, i8** %37, align 8
  %38 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %4, i32 0, i32 0
  %39 = bitcast i8** %38 to %struct.in_addr*
  %40 = bitcast %struct.in_addr* %39 to { i8*, i8* }*
  %41 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %40, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = call i8* @inet_ntoa(i8* %42, i8* %44)
  store i8* %45, i8** %3, align 8
  %46 = load i8*, i8** %3, align 8
  %47 = icmp ne i8* %46, null
  %48 = zext i1 %47 to i32
  %49 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %50 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %49)
  %51 = load i8*, i8** %3, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 @strcmp(i8* %51, i8* %52)
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = load i8*, i8** %3, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* %57, i8* %58)
  %60 = load i8*, i8** %8, align 8
  %61 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %4, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  %63 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %4, i32 0, i32 0
  %64 = bitcast i8** %63 to %struct.in_addr*
  %65 = bitcast %struct.in_addr* %64 to { i8*, i8* }*
  %66 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %65, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = call i8* @inet_ntoa(i8* %67, i8* %69)
  store i8* %70, i8** %3, align 8
  %71 = load i8*, i8** %3, align 8
  %72 = icmp ne i8* %71, null
  %73 = zext i1 %72 to i32
  %74 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %75 = call i32 (i32, i8*, ...) @ok(i32 %73, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %74)
  %76 = load i8*, i8** %3, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = call i32 @strcmp(i8* %76, i8* %77)
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = load i8*, i8** %3, align 8
  %83 = load i8*, i8** %9, align 8
  %84 = call i32 (i32, i8*, ...) @ok(i32 %81, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* %82, i8* %83)
  %85 = load i32, i32* @AF_INET, align 4
  %86 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %4, i32 0, i32 0
  %87 = bitcast i8** %86 to i8*
  %88 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %89 = call i8* @pInetNtop(i32 %85, i8* %87, i8* %88, i32 16)
  store i8* %89, i8** %3, align 8
  %90 = load i8*, i8** %3, align 8
  %91 = icmp ne i8* %90, null
  %92 = zext i1 %91 to i32
  %93 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %94 = call i32 (i32, i8*, ...) @ok(i32 %92, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* %93)
  %95 = load i8*, i8** %3, align 8
  %96 = load i8*, i8** %9, align 8
  %97 = call i32 @strcmp(i8* %95, i8* %96)
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  %101 = load i8*, i8** %3, align 8
  %102 = load i8*, i8** %9, align 8
  %103 = call i32 (i32, i8*, ...) @ok(i32 %100, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* %101, i8* %102)
  %104 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %4, i32 0, i32 0
  %105 = bitcast i8** %104 to i8*
  %106 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %107 = call i8* @pInetNtop(i32 1, i8* %105, i8* %106, i32 16)
  store i8* %107, i8** %3, align 8
  %108 = load i8*, i8** %3, align 8
  %109 = icmp eq i8* %108, null
  %110 = zext i1 %109 to i32
  %111 = load i8*, i8** %3, align 8
  %112 = call i32 (i32, i8*, ...) @ok(i32 %110, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i8* %111)
  %113 = call i8* (...) @WSAGetLastError()
  %114 = load i8*, i8** @WSAEAFNOSUPPORT, align 8
  %115 = icmp eq i8* %113, %114
  %116 = zext i1 %115 to i32
  %117 = call i32 (i32, i8*, ...) @ok(i32 %116, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  store i8* null, i8** %3, align 8
  %118 = load i32, i32* @AF_INET, align 4
  %119 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %4, i32 0, i32 0
  %120 = bitcast i8** %119 to i8*
  %121 = call i8* @pInetNtop(i32 %118, i8* %120, i8* null, i32 16)
  store i8* %121, i8** %3, align 8
  %122 = load i8*, i8** %3, align 8
  %123 = icmp eq i8* %122, null
  %124 = zext i1 %123 to i32
  %125 = load i8*, i8** %3, align 8
  %126 = call i32 (i32, i8*, ...) @ok(i32 %124, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i8* %125)
  %127 = call i8* (...) @WSAGetLastError()
  %128 = load i8*, i8** @STATUS_INVALID_PARAMETER, align 8
  %129 = icmp eq i8* %127, %128
  br i1 %129, label %134, label %130

130:                                              ; preds = %0
  %131 = call i8* (...) @WSAGetLastError()
  %132 = load i8*, i8** @WSAEINVAL, align 8
  %133 = icmp eq i8* %131, %132
  br label %134

134:                                              ; preds = %130, %0
  %135 = phi i1 [ true, %0 ], [ %133, %130 ]
  %136 = zext i1 %135 to i32
  %137 = call i8* (...) @WSAGetLastError()
  %138 = call i32 (i32, i8*, ...) @ok(i32 %136, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.10, i64 0, i64 0), i8* %137)
  %139 = call i32 @WSASetLastError(i32 0)
  store i8* null, i8** %3, align 8
  %140 = load i32, i32* @AF_INET, align 4
  %141 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %4, i32 0, i32 0
  %142 = bitcast i8** %141 to i8*
  %143 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %144 = call i8* @pInetNtop(i32 %140, i8* %142, i8* %143, i32 0)
  store i8* %144, i8** %3, align 8
  %145 = load i8*, i8** %3, align 8
  %146 = icmp eq i8* %145, null
  %147 = zext i1 %146 to i32
  %148 = load i8*, i8** %3, align 8
  %149 = call i32 (i32, i8*, ...) @ok(i32 %147, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i8* %148)
  %150 = call i8* (...) @WSAGetLastError()
  %151 = load i8*, i8** @STATUS_INVALID_PARAMETER, align 8
  %152 = icmp eq i8* %150, %151
  br i1 %152, label %157, label %153

153:                                              ; preds = %134
  %154 = call i8* (...) @WSAGetLastError()
  %155 = load i8*, i8** @WSAEINVAL, align 8
  %156 = icmp eq i8* %154, %155
  br label %157

157:                                              ; preds = %153, %134
  %158 = phi i1 [ true, %134 ], [ %156, %153 ]
  %159 = zext i1 %158 to i32
  %160 = call i8* (...) @WSAGetLastError()
  %161 = call i32 (i32, i8*, ...) @ok(i32 %159, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.10, i64 0, i64 0), i8* %160)
  %162 = call i32 @WSASetLastError(i32 0)
  store i8* null, i8** %3, align 8
  %163 = load i32, i32* @AF_INET, align 4
  %164 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %4, i32 0, i32 0
  %165 = bitcast i8** %164 to i8*
  %166 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %167 = call i8* @pInetNtop(i32 %163, i8* %165, i8* %166, i32 6)
  store i8* %167, i8** %3, align 8
  %168 = load i8*, i8** %3, align 8
  %169 = icmp eq i8* %168, null
  %170 = zext i1 %169 to i32
  %171 = load i8*, i8** %3, align 8
  %172 = call i32 (i32, i8*, ...) @ok(i32 %170, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i8* %171)
  %173 = call i8* (...) @WSAGetLastError()
  %174 = load i8*, i8** @STATUS_INVALID_PARAMETER, align 8
  %175 = icmp eq i8* %173, %174
  br i1 %175, label %180, label %176

176:                                              ; preds = %157
  %177 = call i8* (...) @WSAGetLastError()
  %178 = load i8*, i8** @WSAEINVAL, align 8
  %179 = icmp eq i8* %177, %178
  br label %180

180:                                              ; preds = %176, %157
  %181 = phi i1 [ true, %157 ], [ %179, %176 ]
  %182 = zext i1 %181 to i32
  %183 = call i8* (...) @WSAGetLastError()
  %184 = call i32 (i32, i8*, ...) @ok(i32 %182, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.10, i64 0, i64 0), i8* %183)
  %185 = call i32 @WSASetLastError(i32 0)
  store i8* null, i8** %3, align 8
  %186 = load i32, i32* @AF_INET, align 4
  %187 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %4, i32 0, i32 0
  %188 = bitcast i8** %187 to i8*
  %189 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %190 = call i8* @pInetNtop(i32 %186, i8* %188, i8* %189, i32 17)
  store i8* %190, i8** %3, align 8
  %191 = load i8*, i8** %3, align 8
  %192 = icmp ne i8* %191, null
  %193 = zext i1 %192 to i32
  %194 = load i8*, i8** %3, align 8
  %195 = call i32 (i32, i8*, ...) @ok(i32 %193, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0), i8* %194)
  %196 = load i8*, i8** %3, align 8
  %197 = load i8*, i8** %9, align 8
  %198 = call i32 @strcmp(i8* %196, i8* %197)
  %199 = icmp ne i32 %198, 0
  %200 = xor i1 %199, true
  %201 = zext i1 %200 to i32
  %202 = load i8*, i8** %3, align 8
  %203 = load i8*, i8** %9, align 8
  %204 = call i32 (i32, i8*, ...) @ok(i32 %201, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* %202, i8* %203)
  %205 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %5, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %209 = call i32 @memcpy(i32 %207, i32* %208, i32 64)
  %210 = load i32, i32* @AF_INET6, align 4
  %211 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %5, i32 0, i32 0
  %212 = bitcast i32* %211 to i8*
  %213 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %214 = call i8* @pInetNtop(i32 %210, i8* %212, i8* %213, i32 64)
  store i8* %214, i8** %3, align 8
  %215 = load i8*, i8** %3, align 8
  %216 = icmp ne i8* %215, null
  %217 = zext i1 %216 to i32
  %218 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %219 = call i32 (i32, i8*, ...) @ok(i32 %217, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* %218)
  %220 = load i8*, i8** %3, align 8
  %221 = load i8*, i8** %11, align 8
  %222 = call i32 @strcmp(i8* %220, i8* %221)
  %223 = icmp ne i32 %222, 0
  %224 = xor i1 %223, true
  %225 = zext i1 %224 to i32
  %226 = load i8*, i8** %3, align 8
  %227 = load i8*, i8** %11, align 8
  %228 = call i32 (i32, i8*, ...) @ok(i32 %225, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* %226, i8* %227)
  %229 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %5, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %232 = call i32 @memcpy(i32 %230, i32* %231, i32 64)
  %233 = load i32, i32* @AF_INET6, align 4
  %234 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %5, i32 0, i32 0
  %235 = bitcast i32* %234 to i8*
  %236 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %237 = call i8* @pInetNtop(i32 %233, i8* %235, i8* %236, i32 64)
  store i8* %237, i8** %3, align 8
  %238 = load i8*, i8** %3, align 8
  %239 = icmp ne i8* %238, null
  %240 = zext i1 %239 to i32
  %241 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %242 = call i32 (i32, i8*, ...) @ok(i32 %240, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* %241)
  %243 = load i8*, i8** %3, align 8
  %244 = load i8*, i8** %13, align 8
  %245 = call i32 @strcmp(i8* %243, i8* %244)
  %246 = icmp ne i32 %245, 0
  %247 = xor i1 %246, true
  %248 = zext i1 %247 to i32
  %249 = load i8*, i8** %3, align 8
  %250 = load i8*, i8** %13, align 8
  %251 = call i32 (i32, i8*, ...) @ok(i32 %248, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* %249, i8* %250)
  %252 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %5, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 0
  %255 = call i32 @memcpy(i32 %253, i32* %254, i32 64)
  %256 = load i32, i32* @AF_INET6, align 4
  %257 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %5, i32 0, i32 0
  %258 = bitcast i32* %257 to i8*
  %259 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %260 = call i8* @pInetNtop(i32 %256, i8* %258, i8* %259, i32 64)
  store i8* %260, i8** %3, align 8
  %261 = load i8*, i8** %3, align 8
  %262 = icmp ne i8* %261, null
  %263 = zext i1 %262 to i32
  %264 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %265 = call i32 (i32, i8*, ...) @ok(i32 %263, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* %264)
  %266 = load i8*, i8** %3, align 8
  %267 = load i8*, i8** %15, align 8
  %268 = call i32 @strcmp(i8* %266, i8* %267)
  %269 = icmp ne i32 %268, 0
  %270 = xor i1 %269, true
  %271 = zext i1 %270 to i32
  %272 = load i8*, i8** %3, align 8
  %273 = load i8*, i8** %15, align 8
  %274 = call i32 (i32, i8*, ...) @ok(i32 %271, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* %272, i8* %273)
  %275 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %5, i32 0, i32 1
  %276 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %279 = call i32 @memcpy(i32 %277, i32* %278, i32 64)
  store i8* null, i8** %3, align 8
  %280 = load i32, i32* @AF_INET6, align 4
  %281 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %5, i32 0, i32 0
  %282 = bitcast i32* %281 to i8*
  %283 = call i8* @pInetNtop(i32 %280, i8* %282, i8* null, i32 64)
  store i8* %283, i8** %3, align 8
  %284 = load i8*, i8** %3, align 8
  %285 = icmp eq i8* %284, null
  %286 = zext i1 %285 to i32
  %287 = load i8*, i8** %3, align 8
  %288 = call i32 (i32, i8*, ...) @ok(i32 %286, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i8* %287)
  %289 = call i8* (...) @WSAGetLastError()
  %290 = load i8*, i8** @STATUS_INVALID_PARAMETER, align 8
  %291 = icmp eq i8* %289, %290
  br i1 %291, label %296, label %292

292:                                              ; preds = %180
  %293 = call i8* (...) @WSAGetLastError()
  %294 = load i8*, i8** @WSAEINVAL, align 8
  %295 = icmp eq i8* %293, %294
  br label %296

296:                                              ; preds = %292, %180
  %297 = phi i1 [ true, %180 ], [ %295, %292 ]
  %298 = zext i1 %297 to i32
  %299 = call i8* (...) @WSAGetLastError()
  %300 = call i32 (i32, i8*, ...) @ok(i32 %298, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.10, i64 0, i64 0), i8* %299)
  %301 = call i32 @WSASetLastError(i32 0)
  store i8* null, i8** %3, align 8
  %302 = load i32, i32* @AF_INET6, align 4
  %303 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %5, i32 0, i32 0
  %304 = bitcast i32* %303 to i8*
  %305 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %306 = call i8* @pInetNtop(i32 %302, i8* %304, i8* %305, i32 0)
  store i8* %306, i8** %3, align 8
  %307 = load i8*, i8** %3, align 8
  %308 = icmp eq i8* %307, null
  %309 = zext i1 %308 to i32
  %310 = load i8*, i8** %3, align 8
  %311 = call i32 (i32, i8*, ...) @ok(i32 %309, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i8* %310)
  %312 = call i8* (...) @WSAGetLastError()
  %313 = load i8*, i8** @STATUS_INVALID_PARAMETER, align 8
  %314 = icmp eq i8* %312, %313
  br i1 %314, label %319, label %315

315:                                              ; preds = %296
  %316 = call i8* (...) @WSAGetLastError()
  %317 = load i8*, i8** @WSAEINVAL, align 8
  %318 = icmp eq i8* %316, %317
  br label %319

319:                                              ; preds = %315, %296
  %320 = phi i1 [ true, %296 ], [ %318, %315 ]
  %321 = zext i1 %320 to i32
  %322 = call i8* (...) @WSAGetLastError()
  %323 = call i32 (i32, i8*, ...) @ok(i32 %321, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.10, i64 0, i64 0), i8* %322)
  %324 = call i32 @WSASetLastError(i32 0)
  store i8* null, i8** %3, align 8
  %325 = load i32, i32* @AF_INET6, align 4
  %326 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %5, i32 0, i32 0
  %327 = bitcast i32* %326 to i8*
  %328 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %329 = call i8* @pInetNtop(i32 %325, i8* %327, i8* %328, i32 16)
  store i8* %329, i8** %3, align 8
  %330 = load i8*, i8** %3, align 8
  %331 = icmp eq i8* %330, null
  %332 = zext i1 %331 to i32
  %333 = load i8*, i8** %3, align 8
  %334 = call i32 (i32, i8*, ...) @ok(i32 %332, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i8* %333)
  %335 = call i8* (...) @WSAGetLastError()
  %336 = load i8*, i8** @STATUS_INVALID_PARAMETER, align 8
  %337 = icmp eq i8* %335, %336
  br i1 %337, label %342, label %338

338:                                              ; preds = %319
  %339 = call i8* (...) @WSAGetLastError()
  %340 = load i8*, i8** @WSAEINVAL, align 8
  %341 = icmp eq i8* %339, %340
  br label %342

342:                                              ; preds = %338, %319
  %343 = phi i1 [ true, %319 ], [ %341, %338 ]
  %344 = zext i1 %343 to i32
  %345 = call i8* (...) @WSAGetLastError()
  %346 = call i32 (i32, i8*, ...) @ok(i32 %344, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.10, i64 0, i64 0), i8* %345)
  %347 = call i32 @WSASetLastError(i32 0)
  store i8* null, i8** %3, align 8
  %348 = load i32, i32* @AF_INET6, align 4
  %349 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %5, i32 0, i32 0
  %350 = bitcast i32* %349 to i8*
  %351 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %352 = call i8* @pInetNtop(i32 %348, i8* %350, i8* %351, i32 18)
  store i8* %352, i8** %3, align 8
  %353 = load i8*, i8** %3, align 8
  %354 = icmp ne i8* %353, null
  %355 = zext i1 %354 to i32
  %356 = load i8*, i8** %3, align 8
  %357 = call i32 (i32, i8*, ...) @ok(i32 %355, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0), i8* %356)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @inet_ntoa(i8*, i8*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i8* @pInetNtop(i32, i8*, i8*, i32) #2

declare dso_local i8* @WSAGetLastError(...) #2

declare dso_local i32 @WSASetLastError(i32) #2

declare dso_local i32 @memcpy(i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
