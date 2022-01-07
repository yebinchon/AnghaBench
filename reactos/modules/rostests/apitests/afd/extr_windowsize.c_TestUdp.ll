; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/afd/extr_windowsize.c_TestUdp.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/afd/extr_windowsize.c_TestUdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"AfdCreateSocket failed with %lx\0A\00", align 1
@AFD_INFO_RECEIVE_WINDOW_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"AfdGetInformation failed with %lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Invalid size: %lu\0A\00", align 1
@AFD_INFO_SEND_WINDOW_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"AfdSetInformation failed with %lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Invalid size: %lu %lu\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"0.0.0.0\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"AfdBind failed with %lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @TestUdp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TestUdp() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockaddr_in, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load i32, i32* @AF_INET, align 4
  %9 = load i32, i32* @SOCK_DGRAM, align 4
  %10 = load i32, i32* @IPPROTO_UDP, align 4
  %11 = call i32 @AfdCreateSocket(i32* %2, i32 %8, i32 %9, i32 %10)
  store i32 %11, i32* %1, align 4
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @STATUS_SUCCESS, align 4
  %14 = icmp eq i32 %12, %13
  %15 = zext i1 %14 to i32
  %16 = load i32, i32* %1, align 4
  %17 = call i32 (i32, i8*, i32, ...) @ok(i32 %15, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @AFD_INFO_RECEIVE_WINDOW_SIZE, align 4
  %20 = call i32 @AfdGetInformation(i32 %18, i32 %19, i32* null, i32* %4, i32* null)
  store i32 %20, i32* %1, align 4
  %21 = load i32, i32* %1, align 4
  %22 = load i32, i32* @STATUS_SUCCESS, align 4
  %23 = icmp eq i32 %21, %22
  %24 = zext i1 %23 to i32
  %25 = load i32, i32* %1, align 4
  %26 = call i32 (i32, i8*, i32, ...) @ok(i32 %24, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %27, 4096
  br i1 %28, label %32, label %29

29:                                               ; preds = %0
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %30, 8192
  br label %32

32:                                               ; preds = %29, %0
  %33 = phi i1 [ true, %0 ], [ %31, %29 ]
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* %4, align 4
  %36 = call i32 (i32, i8*, i32, ...) @ok(i32 %34, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* @AFD_INFO_SEND_WINDOW_SIZE, align 4
  %39 = call i32 @AfdGetInformation(i32 %37, i32 %38, i32* null, i32* %5, i32* null)
  store i32 %39, i32* %1, align 4
  %40 = load i32, i32* %1, align 4
  %41 = load i32, i32* @STATUS_SUCCESS, align 4
  %42 = icmp eq i32 %40, %41
  %43 = zext i1 %42 to i32
  %44 = load i32, i32* %1, align 4
  %45 = call i32 (i32, i8*, i32, ...) @ok(i32 %43, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %5, align 4
  %47 = icmp eq i32 %46, 4096
  br i1 %47, label %51, label %48

48:                                               ; preds = %32
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %49, 8192
  br label %51

51:                                               ; preds = %48, %32
  %52 = phi i1 [ true, %32 ], [ %50, %48 ]
  %53 = zext i1 %52 to i32
  %54 = load i32, i32* %5, align 4
  %55 = call i32 (i32, i8*, i32, ...) @ok(i32 %53, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  store i32 0, i32* %6, align 4
  %56 = load i32, i32* %2, align 4
  %57 = load i32, i32* @AFD_INFO_RECEIVE_WINDOW_SIZE, align 4
  %58 = call i32 @AfdSetInformation(i32 %56, i32 %57, i32* null, i32* %6, i32* null)
  store i32 %58, i32* %1, align 4
  %59 = load i32, i32* %1, align 4
  %60 = load i32, i32* @STATUS_SUCCESS, align 4
  %61 = icmp eq i32 %59, %60
  %62 = zext i1 %61 to i32
  %63 = load i32, i32* %1, align 4
  %64 = call i32 (i32, i8*, i32, ...) @ok(i32 %62, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  store i32 0, i32* %7, align 4
  %65 = load i32, i32* %2, align 4
  %66 = load i32, i32* @AFD_INFO_SEND_WINDOW_SIZE, align 4
  %67 = call i32 @AfdSetInformation(i32 %65, i32 %66, i32* null, i32* %7, i32* null)
  store i32 %67, i32* %1, align 4
  %68 = load i32, i32* %1, align 4
  %69 = load i32, i32* @STATUS_SUCCESS, align 4
  %70 = icmp eq i32 %68, %69
  %71 = zext i1 %70 to i32
  %72 = load i32, i32* %1, align 4
  %73 = call i32 (i32, i8*, i32, ...) @ok(i32 %71, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %2, align 4
  %75 = load i32, i32* @AFD_INFO_RECEIVE_WINDOW_SIZE, align 4
  %76 = call i32 @AfdGetInformation(i32 %74, i32 %75, i32* null, i32* %6, i32* null)
  store i32 %76, i32* %1, align 4
  %77 = load i32, i32* %1, align 4
  %78 = load i32, i32* @STATUS_SUCCESS, align 4
  %79 = icmp eq i32 %77, %78
  %80 = zext i1 %79 to i32
  %81 = load i32, i32* %1, align 4
  %82 = call i32 (i32, i8*, i32, ...) @ok(i32 %80, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %4, align 4
  %85 = icmp eq i32 %83, %84
  %86 = zext i1 %85 to i32
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %4, align 4
  %89 = call i32 (i32, i8*, i32, ...) @ok(i32 %86, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %87, i32 %88)
  %90 = load i32, i32* %2, align 4
  %91 = load i32, i32* @AFD_INFO_SEND_WINDOW_SIZE, align 4
  %92 = call i32 @AfdGetInformation(i32 %90, i32 %91, i32* null, i32* %7, i32* null)
  store i32 %92, i32* %1, align 4
  %93 = load i32, i32* %1, align 4
  %94 = load i32, i32* @STATUS_SUCCESS, align 4
  %95 = icmp eq i32 %93, %94
  %96 = zext i1 %95 to i32
  %97 = load i32, i32* %1, align 4
  %98 = call i32 (i32, i8*, i32, ...) @ok(i32 %96, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* %5, align 4
  %101 = icmp eq i32 %99, %100
  %102 = zext i1 %101 to i32
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %5, align 4
  %105 = call i32 (i32, i8*, i32, ...) @ok(i32 %102, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %103, i32 %104)
  store i32 -1, i32* %6, align 4
  %106 = load i32, i32* %2, align 4
  %107 = load i32, i32* @AFD_INFO_RECEIVE_WINDOW_SIZE, align 4
  %108 = call i32 @AfdSetInformation(i32 %106, i32 %107, i32* null, i32* %6, i32* null)
  store i32 %108, i32* %1, align 4
  %109 = load i32, i32* %1, align 4
  %110 = load i32, i32* @STATUS_SUCCESS, align 4
  %111 = icmp eq i32 %109, %110
  %112 = zext i1 %111 to i32
  %113 = load i32, i32* %1, align 4
  %114 = call i32 (i32, i8*, i32, ...) @ok(i32 %112, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %113)
  store i32 -1, i32* %7, align 4
  %115 = load i32, i32* %2, align 4
  %116 = load i32, i32* @AFD_INFO_SEND_WINDOW_SIZE, align 4
  %117 = call i32 @AfdSetInformation(i32 %115, i32 %116, i32* null, i32* %7, i32* null)
  store i32 %117, i32* %1, align 4
  %118 = load i32, i32* %1, align 4
  %119 = load i32, i32* @STATUS_SUCCESS, align 4
  %120 = icmp eq i32 %118, %119
  %121 = zext i1 %120 to i32
  %122 = load i32, i32* %1, align 4
  %123 = call i32 (i32, i8*, i32, ...) @ok(i32 %121, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %122)
  %124 = load i32, i32* %2, align 4
  %125 = load i32, i32* @AFD_INFO_RECEIVE_WINDOW_SIZE, align 4
  %126 = call i32 @AfdGetInformation(i32 %124, i32 %125, i32* null, i32* %6, i32* null)
  store i32 %126, i32* %1, align 4
  %127 = load i32, i32* %1, align 4
  %128 = load i32, i32* @STATUS_SUCCESS, align 4
  %129 = icmp eq i32 %127, %128
  %130 = zext i1 %129 to i32
  %131 = load i32, i32* %1, align 4
  %132 = call i32 (i32, i8*, i32, ...) @ok(i32 %130, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* %6, align 4
  %134 = load i32, i32* %4, align 4
  %135 = icmp eq i32 %133, %134
  %136 = zext i1 %135 to i32
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* %4, align 4
  %139 = call i32 (i32, i8*, i32, ...) @ok(i32 %136, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %137, i32 %138)
  %140 = load i32, i32* %2, align 4
  %141 = load i32, i32* @AFD_INFO_SEND_WINDOW_SIZE, align 4
  %142 = call i32 @AfdGetInformation(i32 %140, i32 %141, i32* null, i32* %7, i32* null)
  store i32 %142, i32* %1, align 4
  %143 = load i32, i32* %1, align 4
  %144 = load i32, i32* @STATUS_SUCCESS, align 4
  %145 = icmp eq i32 %143, %144
  %146 = zext i1 %145 to i32
  %147 = load i32, i32* %1, align 4
  %148 = call i32 (i32, i8*, i32, ...) @ok(i32 %146, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %147)
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* %5, align 4
  %151 = icmp eq i32 %149, %150
  %152 = zext i1 %151 to i32
  %153 = load i32, i32* %7, align 4
  %154 = load i32, i32* %5, align 4
  %155 = call i32 (i32, i8*, i32, ...) @ok(i32 %152, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %153, i32 %154)
  %156 = load i32, i32* %4, align 4
  store i32 %156, i32* %6, align 4
  %157 = load i32, i32* %2, align 4
  %158 = load i32, i32* @AFD_INFO_RECEIVE_WINDOW_SIZE, align 4
  %159 = call i32 @AfdSetInformation(i32 %157, i32 %158, i32* null, i32* %6, i32* null)
  store i32 %159, i32* %1, align 4
  %160 = load i32, i32* %1, align 4
  %161 = load i32, i32* @STATUS_SUCCESS, align 4
  %162 = icmp eq i32 %160, %161
  %163 = zext i1 %162 to i32
  %164 = load i32, i32* %1, align 4
  %165 = call i32 (i32, i8*, i32, ...) @ok(i32 %163, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %164)
  %166 = load i32, i32* %5, align 4
  store i32 %166, i32* %7, align 4
  %167 = load i32, i32* %2, align 4
  %168 = load i32, i32* @AFD_INFO_SEND_WINDOW_SIZE, align 4
  %169 = call i32 @AfdSetInformation(i32 %167, i32 %168, i32* null, i32* %7, i32* null)
  store i32 %169, i32* %1, align 4
  %170 = load i32, i32* %1, align 4
  %171 = load i32, i32* @STATUS_SUCCESS, align 4
  %172 = icmp eq i32 %170, %171
  %173 = zext i1 %172 to i32
  %174 = load i32, i32* %1, align 4
  %175 = call i32 (i32, i8*, i32, ...) @ok(i32 %173, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %174)
  %176 = call i32 @memset(%struct.sockaddr_in* %3, i32 0, i32 12)
  %177 = load i32, i32* @AF_INET, align 4
  %178 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  store i32 %177, i32* %178, align 4
  %179 = call i32 @inet_addr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %180 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 0
  store i32 %179, i32* %181, align 4
  %182 = call i32 @htons(i32 0)
  %183 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 0
  store i32 %182, i32* %183, align 4
  %184 = load i32, i32* %2, align 4
  %185 = bitcast %struct.sockaddr_in* %3 to %struct.sockaddr*
  %186 = call i32 @AfdBind(i32 %184, %struct.sockaddr* %185, i32 12)
  store i32 %186, i32* %1, align 4
  %187 = load i32, i32* %1, align 4
  %188 = load i32, i32* @STATUS_SUCCESS, align 4
  %189 = icmp eq i32 %187, %188
  %190 = zext i1 %189 to i32
  %191 = load i32, i32* %1, align 4
  %192 = call i32 (i32, i8*, i32, ...) @ok(i32 %190, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %191)
  %193 = load i32, i32* %2, align 4
  %194 = load i32, i32* @AFD_INFO_RECEIVE_WINDOW_SIZE, align 4
  %195 = call i32 @AfdGetInformation(i32 %193, i32 %194, i32* null, i32* %6, i32* null)
  store i32 %195, i32* %1, align 4
  %196 = load i32, i32* %1, align 4
  %197 = load i32, i32* @STATUS_SUCCESS, align 4
  %198 = icmp eq i32 %196, %197
  %199 = zext i1 %198 to i32
  %200 = load i32, i32* %1, align 4
  %201 = call i32 (i32, i8*, i32, ...) @ok(i32 %199, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %200)
  %202 = load i32, i32* %6, align 4
  %203 = load i32, i32* %4, align 4
  %204 = icmp eq i32 %202, %203
  %205 = zext i1 %204 to i32
  %206 = load i32, i32* %6, align 4
  %207 = load i32, i32* %4, align 4
  %208 = call i32 (i32, i8*, i32, ...) @ok(i32 %205, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %206, i32 %207)
  %209 = load i32, i32* %2, align 4
  %210 = load i32, i32* @AFD_INFO_SEND_WINDOW_SIZE, align 4
  %211 = call i32 @AfdGetInformation(i32 %209, i32 %210, i32* null, i32* %7, i32* null)
  store i32 %211, i32* %1, align 4
  %212 = load i32, i32* %1, align 4
  %213 = load i32, i32* @STATUS_SUCCESS, align 4
  %214 = icmp eq i32 %212, %213
  %215 = zext i1 %214 to i32
  %216 = load i32, i32* %1, align 4
  %217 = call i32 (i32, i8*, i32, ...) @ok(i32 %215, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %216)
  %218 = load i32, i32* %7, align 4
  %219 = load i32, i32* %5, align 4
  %220 = icmp eq i32 %218, %219
  %221 = zext i1 %220 to i32
  %222 = load i32, i32* %7, align 4
  %223 = load i32, i32* %5, align 4
  %224 = call i32 (i32, i8*, i32, ...) @ok(i32 %221, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %222, i32 %223)
  store i32 0, i32* %6, align 4
  %225 = load i32, i32* %2, align 4
  %226 = load i32, i32* @AFD_INFO_RECEIVE_WINDOW_SIZE, align 4
  %227 = call i32 @AfdSetInformation(i32 %225, i32 %226, i32* null, i32* %6, i32* null)
  store i32 %227, i32* %1, align 4
  %228 = load i32, i32* %1, align 4
  %229 = load i32, i32* @STATUS_SUCCESS, align 4
  %230 = icmp eq i32 %228, %229
  %231 = zext i1 %230 to i32
  %232 = load i32, i32* %1, align 4
  %233 = call i32 (i32, i8*, i32, ...) @ok(i32 %231, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %232)
  store i32 0, i32* %7, align 4
  %234 = load i32, i32* %2, align 4
  %235 = load i32, i32* @AFD_INFO_SEND_WINDOW_SIZE, align 4
  %236 = call i32 @AfdSetInformation(i32 %234, i32 %235, i32* null, i32* %7, i32* null)
  store i32 %236, i32* %1, align 4
  %237 = load i32, i32* %1, align 4
  %238 = load i32, i32* @STATUS_SUCCESS, align 4
  %239 = icmp eq i32 %237, %238
  %240 = zext i1 %239 to i32
  %241 = load i32, i32* %1, align 4
  %242 = call i32 (i32, i8*, i32, ...) @ok(i32 %240, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %241)
  %243 = load i32, i32* %2, align 4
  %244 = load i32, i32* @AFD_INFO_RECEIVE_WINDOW_SIZE, align 4
  %245 = call i32 @AfdGetInformation(i32 %243, i32 %244, i32* null, i32* %6, i32* null)
  store i32 %245, i32* %1, align 4
  %246 = load i32, i32* %1, align 4
  %247 = load i32, i32* @STATUS_SUCCESS, align 4
  %248 = icmp eq i32 %246, %247
  %249 = zext i1 %248 to i32
  %250 = load i32, i32* %1, align 4
  %251 = call i32 (i32, i8*, i32, ...) @ok(i32 %249, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %250)
  %252 = load i32, i32* %6, align 4
  %253 = load i32, i32* %4, align 4
  %254 = icmp eq i32 %252, %253
  %255 = zext i1 %254 to i32
  %256 = load i32, i32* %6, align 4
  %257 = load i32, i32* %4, align 4
  %258 = call i32 (i32, i8*, i32, ...) @ok(i32 %255, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %256, i32 %257)
  %259 = load i32, i32* %2, align 4
  %260 = load i32, i32* @AFD_INFO_SEND_WINDOW_SIZE, align 4
  %261 = call i32 @AfdGetInformation(i32 %259, i32 %260, i32* null, i32* %7, i32* null)
  store i32 %261, i32* %1, align 4
  %262 = load i32, i32* %1, align 4
  %263 = load i32, i32* @STATUS_SUCCESS, align 4
  %264 = icmp eq i32 %262, %263
  %265 = zext i1 %264 to i32
  %266 = load i32, i32* %1, align 4
  %267 = call i32 (i32, i8*, i32, ...) @ok(i32 %265, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %266)
  %268 = load i32, i32* %7, align 4
  %269 = load i32, i32* %5, align 4
  %270 = icmp eq i32 %268, %269
  %271 = zext i1 %270 to i32
  %272 = load i32, i32* %7, align 4
  %273 = load i32, i32* %5, align 4
  %274 = call i32 (i32, i8*, i32, ...) @ok(i32 %271, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %272, i32 %273)
  store i32 -1, i32* %6, align 4
  %275 = load i32, i32* %2, align 4
  %276 = load i32, i32* @AFD_INFO_RECEIVE_WINDOW_SIZE, align 4
  %277 = call i32 @AfdSetInformation(i32 %275, i32 %276, i32* null, i32* %6, i32* null)
  store i32 %277, i32* %1, align 4
  %278 = load i32, i32* %1, align 4
  %279 = load i32, i32* @STATUS_SUCCESS, align 4
  %280 = icmp eq i32 %278, %279
  %281 = zext i1 %280 to i32
  %282 = load i32, i32* %1, align 4
  %283 = call i32 (i32, i8*, i32, ...) @ok(i32 %281, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %282)
  store i32 -1, i32* %7, align 4
  %284 = load i32, i32* %2, align 4
  %285 = load i32, i32* @AFD_INFO_SEND_WINDOW_SIZE, align 4
  %286 = call i32 @AfdSetInformation(i32 %284, i32 %285, i32* null, i32* %7, i32* null)
  store i32 %286, i32* %1, align 4
  %287 = load i32, i32* %1, align 4
  %288 = load i32, i32* @STATUS_SUCCESS, align 4
  %289 = icmp eq i32 %287, %288
  %290 = zext i1 %289 to i32
  %291 = load i32, i32* %1, align 4
  %292 = call i32 (i32, i8*, i32, ...) @ok(i32 %290, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %291)
  %293 = load i32, i32* %2, align 4
  %294 = load i32, i32* @AFD_INFO_RECEIVE_WINDOW_SIZE, align 4
  %295 = call i32 @AfdGetInformation(i32 %293, i32 %294, i32* null, i32* %6, i32* null)
  store i32 %295, i32* %1, align 4
  %296 = load i32, i32* %1, align 4
  %297 = load i32, i32* @STATUS_SUCCESS, align 4
  %298 = icmp eq i32 %296, %297
  %299 = zext i1 %298 to i32
  %300 = load i32, i32* %1, align 4
  %301 = call i32 (i32, i8*, i32, ...) @ok(i32 %299, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %300)
  %302 = load i32, i32* %6, align 4
  %303 = load i32, i32* %4, align 4
  %304 = icmp eq i32 %302, %303
  %305 = zext i1 %304 to i32
  %306 = load i32, i32* %6, align 4
  %307 = load i32, i32* %4, align 4
  %308 = call i32 (i32, i8*, i32, ...) @ok(i32 %305, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %306, i32 %307)
  %309 = load i32, i32* %2, align 4
  %310 = load i32, i32* @AFD_INFO_SEND_WINDOW_SIZE, align 4
  %311 = call i32 @AfdGetInformation(i32 %309, i32 %310, i32* null, i32* %7, i32* null)
  store i32 %311, i32* %1, align 4
  %312 = load i32, i32* %1, align 4
  %313 = load i32, i32* @STATUS_SUCCESS, align 4
  %314 = icmp eq i32 %312, %313
  %315 = zext i1 %314 to i32
  %316 = load i32, i32* %1, align 4
  %317 = call i32 (i32, i8*, i32, ...) @ok(i32 %315, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %316)
  %318 = load i32, i32* %7, align 4
  %319 = load i32, i32* %5, align 4
  %320 = icmp eq i32 %318, %319
  %321 = zext i1 %320 to i32
  %322 = load i32, i32* %7, align 4
  %323 = load i32, i32* %5, align 4
  %324 = call i32 (i32, i8*, i32, ...) @ok(i32 %321, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %322, i32 %323)
  %325 = load i32, i32* %4, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %6, align 4
  %327 = load i32, i32* %2, align 4
  %328 = load i32, i32* @AFD_INFO_RECEIVE_WINDOW_SIZE, align 4
  %329 = call i32 @AfdSetInformation(i32 %327, i32 %328, i32* null, i32* %6, i32* null)
  store i32 %329, i32* %1, align 4
  %330 = load i32, i32* %1, align 4
  %331 = load i32, i32* @STATUS_SUCCESS, align 4
  %332 = icmp eq i32 %330, %331
  %333 = zext i1 %332 to i32
  %334 = load i32, i32* %1, align 4
  %335 = call i32 (i32, i8*, i32, ...) @ok(i32 %333, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %334)
  %336 = load i32, i32* %5, align 4
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %7, align 4
  %338 = load i32, i32* %2, align 4
  %339 = load i32, i32* @AFD_INFO_SEND_WINDOW_SIZE, align 4
  %340 = call i32 @AfdSetInformation(i32 %338, i32 %339, i32* null, i32* %7, i32* null)
  store i32 %340, i32* %1, align 4
  %341 = load i32, i32* %1, align 4
  %342 = load i32, i32* @STATUS_SUCCESS, align 4
  %343 = icmp eq i32 %341, %342
  %344 = zext i1 %343 to i32
  %345 = load i32, i32* %1, align 4
  %346 = call i32 (i32, i8*, i32, ...) @ok(i32 %344, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %345)
  %347 = load i32, i32* %2, align 4
  %348 = load i32, i32* @AFD_INFO_RECEIVE_WINDOW_SIZE, align 4
  %349 = call i32 @AfdGetInformation(i32 %347, i32 %348, i32* null, i32* %6, i32* null)
  store i32 %349, i32* %1, align 4
  %350 = load i32, i32* %1, align 4
  %351 = load i32, i32* @STATUS_SUCCESS, align 4
  %352 = icmp eq i32 %350, %351
  %353 = zext i1 %352 to i32
  %354 = load i32, i32* %1, align 4
  %355 = call i32 (i32, i8*, i32, ...) @ok(i32 %353, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %354)
  %356 = load i32, i32* %6, align 4
  %357 = load i32, i32* %4, align 4
  %358 = icmp eq i32 %356, %357
  %359 = zext i1 %358 to i32
  %360 = load i32, i32* %6, align 4
  %361 = load i32, i32* %4, align 4
  %362 = call i32 (i32, i8*, i32, ...) @ok(i32 %359, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %360, i32 %361)
  %363 = load i32, i32* %2, align 4
  %364 = load i32, i32* @AFD_INFO_SEND_WINDOW_SIZE, align 4
  %365 = call i32 @AfdGetInformation(i32 %363, i32 %364, i32* null, i32* %7, i32* null)
  store i32 %365, i32* %1, align 4
  %366 = load i32, i32* %1, align 4
  %367 = load i32, i32* @STATUS_SUCCESS, align 4
  %368 = icmp eq i32 %366, %367
  %369 = zext i1 %368 to i32
  %370 = load i32, i32* %1, align 4
  %371 = call i32 (i32, i8*, i32, ...) @ok(i32 %369, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %370)
  %372 = load i32, i32* %7, align 4
  %373 = load i32, i32* %5, align 4
  %374 = icmp eq i32 %372, %373
  %375 = zext i1 %374 to i32
  %376 = load i32, i32* %7, align 4
  %377 = load i32, i32* %5, align 4
  %378 = call i32 (i32, i8*, i32, ...) @ok(i32 %375, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %376, i32 %377)
  %379 = load i32, i32* %4, align 4
  %380 = sub nsw i32 %379, 1
  store i32 %380, i32* %6, align 4
  %381 = load i32, i32* %2, align 4
  %382 = load i32, i32* @AFD_INFO_RECEIVE_WINDOW_SIZE, align 4
  %383 = call i32 @AfdSetInformation(i32 %381, i32 %382, i32* null, i32* %6, i32* null)
  store i32 %383, i32* %1, align 4
  %384 = load i32, i32* %1, align 4
  %385 = load i32, i32* @STATUS_SUCCESS, align 4
  %386 = icmp eq i32 %384, %385
  %387 = zext i1 %386 to i32
  %388 = load i32, i32* %1, align 4
  %389 = call i32 (i32, i8*, i32, ...) @ok(i32 %387, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %388)
  %390 = load i32, i32* %5, align 4
  %391 = sub nsw i32 %390, 1
  store i32 %391, i32* %7, align 4
  %392 = load i32, i32* %2, align 4
  %393 = load i32, i32* @AFD_INFO_SEND_WINDOW_SIZE, align 4
  %394 = call i32 @AfdSetInformation(i32 %392, i32 %393, i32* null, i32* %7, i32* null)
  store i32 %394, i32* %1, align 4
  %395 = load i32, i32* %1, align 4
  %396 = load i32, i32* @STATUS_SUCCESS, align 4
  %397 = icmp eq i32 %395, %396
  %398 = zext i1 %397 to i32
  %399 = load i32, i32* %1, align 4
  %400 = call i32 (i32, i8*, i32, ...) @ok(i32 %398, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %399)
  %401 = load i32, i32* %2, align 4
  %402 = load i32, i32* @AFD_INFO_RECEIVE_WINDOW_SIZE, align 4
  %403 = call i32 @AfdGetInformation(i32 %401, i32 %402, i32* null, i32* %6, i32* null)
  store i32 %403, i32* %1, align 4
  %404 = load i32, i32* %1, align 4
  %405 = load i32, i32* @STATUS_SUCCESS, align 4
  %406 = icmp eq i32 %404, %405
  %407 = zext i1 %406 to i32
  %408 = load i32, i32* %1, align 4
  %409 = call i32 (i32, i8*, i32, ...) @ok(i32 %407, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %408)
  %410 = load i32, i32* %6, align 4
  %411 = load i32, i32* %4, align 4
  %412 = icmp eq i32 %410, %411
  %413 = zext i1 %412 to i32
  %414 = load i32, i32* %6, align 4
  %415 = load i32, i32* %4, align 4
  %416 = call i32 (i32, i8*, i32, ...) @ok(i32 %413, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %414, i32 %415)
  %417 = load i32, i32* %2, align 4
  %418 = load i32, i32* @AFD_INFO_SEND_WINDOW_SIZE, align 4
  %419 = call i32 @AfdGetInformation(i32 %417, i32 %418, i32* null, i32* %7, i32* null)
  store i32 %419, i32* %1, align 4
  %420 = load i32, i32* %1, align 4
  %421 = load i32, i32* @STATUS_SUCCESS, align 4
  %422 = icmp eq i32 %420, %421
  %423 = zext i1 %422 to i32
  %424 = load i32, i32* %1, align 4
  %425 = call i32 (i32, i8*, i32, ...) @ok(i32 %423, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %424)
  %426 = load i32, i32* %7, align 4
  %427 = load i32, i32* %5, align 4
  %428 = icmp eq i32 %426, %427
  %429 = zext i1 %428 to i32
  %430 = load i32, i32* %7, align 4
  %431 = load i32, i32* %5, align 4
  %432 = call i32 (i32, i8*, i32, ...) @ok(i32 %429, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %430, i32 %431)
  %433 = load i32, i32* %2, align 4
  %434 = call i32 @NtClose(i32 %433)
  ret void
}

declare dso_local i32 @AfdCreateSocket(i32*, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @AfdGetInformation(i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @AfdSetInformation(i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i32 @inet_addr(i8*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @AfdBind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @NtClose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
