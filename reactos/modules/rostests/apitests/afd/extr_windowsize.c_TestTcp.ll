; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/afd/extr_windowsize.c_TestTcp.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/afd/extr_windowsize.c_TestTcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i8*, %struct.TYPE_2__, i8* }
%struct.TYPE_2__ = type { i8* }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i8* null, align 8
@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"AfdCreateSocket failed with %lx\0A\00", align 1
@AFD_INFO_RECEIVE_WINDOW_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"AfdGetInformation failed with %lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Invalid size: %lu\0A\00", align 1
@AFD_INFO_SEND_WINDOW_SIZE = common dso_local global i32 0, align 4
@STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"AfdSetInformation failed with %lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Invalid size: %lu %lu\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"0.0.0.0\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"AfdBind failed with %lx\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"8.8.8.8\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"AfdConnect failed with %lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @TestTcp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TestTcp() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockaddr_in, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load i8*, i8** @AF_INET, align 8
  %9 = load i32, i32* @SOCK_STREAM, align 4
  %10 = load i32, i32* @IPPROTO_TCP, align 4
  %11 = call i32 @AfdCreateSocket(i32* %2, i8* %8, i32 %9, i32 %10)
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
  %60 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
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
  %69 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  %70 = icmp eq i32 %68, %69
  %71 = zext i1 %70 to i32
  %72 = load i32, i32* %1, align 4
  %73 = call i32 (i32, i8*, i32, ...) @ok(i32 %71, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  store i32 -1, i32* %6, align 4
  %74 = load i32, i32* %2, align 4
  %75 = load i32, i32* @AFD_INFO_RECEIVE_WINDOW_SIZE, align 4
  %76 = call i32 @AfdSetInformation(i32 %74, i32 %75, i32* null, i32* %6, i32* null)
  store i32 %76, i32* %1, align 4
  %77 = load i32, i32* %1, align 4
  %78 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  %79 = icmp eq i32 %77, %78
  %80 = zext i1 %79 to i32
  %81 = load i32, i32* %1, align 4
  %82 = call i32 (i32, i8*, i32, ...) @ok(i32 %80, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %81)
  store i32 -1, i32* %7, align 4
  %83 = load i32, i32* %2, align 4
  %84 = load i32, i32* @AFD_INFO_SEND_WINDOW_SIZE, align 4
  %85 = call i32 @AfdSetInformation(i32 %83, i32 %84, i32* null, i32* %7, i32* null)
  store i32 %85, i32* %1, align 4
  %86 = load i32, i32* %1, align 4
  %87 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  %88 = icmp eq i32 %86, %87
  %89 = zext i1 %88 to i32
  %90 = load i32, i32* %1, align 4
  %91 = call i32 (i32, i8*, i32, ...) @ok(i32 %89, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* %2, align 4
  %93 = load i32, i32* @AFD_INFO_RECEIVE_WINDOW_SIZE, align 4
  %94 = call i32 @AfdGetInformation(i32 %92, i32 %93, i32* null, i32* %6, i32* null)
  store i32 %94, i32* %1, align 4
  %95 = load i32, i32* %1, align 4
  %96 = load i32, i32* @STATUS_SUCCESS, align 4
  %97 = icmp eq i32 %95, %96
  %98 = zext i1 %97 to i32
  %99 = load i32, i32* %1, align 4
  %100 = call i32 (i32, i8*, i32, ...) @ok(i32 %98, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %4, align 4
  %103 = icmp eq i32 %101, %102
  %104 = zext i1 %103 to i32
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* %4, align 4
  %107 = call i32 (i32, i8*, i32, ...) @ok(i32 %104, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %105, i32 %106)
  %108 = load i32, i32* %2, align 4
  %109 = load i32, i32* @AFD_INFO_SEND_WINDOW_SIZE, align 4
  %110 = call i32 @AfdGetInformation(i32 %108, i32 %109, i32* null, i32* %7, i32* null)
  store i32 %110, i32* %1, align 4
  %111 = load i32, i32* %1, align 4
  %112 = load i32, i32* @STATUS_SUCCESS, align 4
  %113 = icmp eq i32 %111, %112
  %114 = zext i1 %113 to i32
  %115 = load i32, i32* %1, align 4
  %116 = call i32 (i32, i8*, i32, ...) @ok(i32 %114, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* %5, align 4
  %119 = icmp eq i32 %117, %118
  %120 = zext i1 %119 to i32
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* %5, align 4
  %123 = call i32 (i32, i8*, i32, ...) @ok(i32 %120, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %121, i32 %122)
  %124 = load i32, i32* %4, align 4
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* %2, align 4
  %126 = load i32, i32* @AFD_INFO_RECEIVE_WINDOW_SIZE, align 4
  %127 = call i32 @AfdSetInformation(i32 %125, i32 %126, i32* null, i32* %6, i32* null)
  store i32 %127, i32* %1, align 4
  %128 = load i32, i32* %1, align 4
  %129 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  %130 = icmp eq i32 %128, %129
  %131 = zext i1 %130 to i32
  %132 = load i32, i32* %1, align 4
  %133 = call i32 (i32, i8*, i32, ...) @ok(i32 %131, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %132)
  %134 = load i32, i32* %5, align 4
  store i32 %134, i32* %7, align 4
  %135 = load i32, i32* %2, align 4
  %136 = load i32, i32* @AFD_INFO_SEND_WINDOW_SIZE, align 4
  %137 = call i32 @AfdSetInformation(i32 %135, i32 %136, i32* null, i32* %7, i32* null)
  store i32 %137, i32* %1, align 4
  %138 = load i32, i32* %1, align 4
  %139 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  %140 = icmp eq i32 %138, %139
  %141 = zext i1 %140 to i32
  %142 = load i32, i32* %1, align 4
  %143 = call i32 (i32, i8*, i32, ...) @ok(i32 %141, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %142)
  %144 = call i32 @memset(%struct.sockaddr_in* %3, i32 0, i32 24)
  %145 = load i8*, i8** @AF_INET, align 8
  %146 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  store i8* %145, i8** %146, align 8
  %147 = call i8* @inet_addr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %148 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  store i8* %147, i8** %149, align 8
  %150 = call i8* @htons(i32 0)
  %151 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 0
  store i8* %150, i8** %151, align 8
  %152 = load i32, i32* %2, align 4
  %153 = bitcast %struct.sockaddr_in* %3 to %struct.sockaddr*
  %154 = call i32 @AfdBind(i32 %152, %struct.sockaddr* %153, i32 24)
  store i32 %154, i32* %1, align 4
  %155 = load i32, i32* %1, align 4
  %156 = load i32, i32* @STATUS_SUCCESS, align 4
  %157 = icmp eq i32 %155, %156
  %158 = zext i1 %157 to i32
  %159 = load i32, i32* %1, align 4
  %160 = call i32 (i32, i8*, i32, ...) @ok(i32 %158, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %159)
  %161 = load i32, i32* %2, align 4
  %162 = load i32, i32* @AFD_INFO_RECEIVE_WINDOW_SIZE, align 4
  %163 = call i32 @AfdGetInformation(i32 %161, i32 %162, i32* null, i32* %6, i32* null)
  store i32 %163, i32* %1, align 4
  %164 = load i32, i32* %1, align 4
  %165 = load i32, i32* @STATUS_SUCCESS, align 4
  %166 = icmp eq i32 %164, %165
  %167 = zext i1 %166 to i32
  %168 = load i32, i32* %1, align 4
  %169 = call i32 (i32, i8*, i32, ...) @ok(i32 %167, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %168)
  %170 = load i32, i32* %6, align 4
  %171 = load i32, i32* %4, align 4
  %172 = icmp eq i32 %170, %171
  %173 = zext i1 %172 to i32
  %174 = load i32, i32* %6, align 4
  %175 = load i32, i32* %4, align 4
  %176 = call i32 (i32, i8*, i32, ...) @ok(i32 %173, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %174, i32 %175)
  %177 = load i32, i32* %2, align 4
  %178 = load i32, i32* @AFD_INFO_SEND_WINDOW_SIZE, align 4
  %179 = call i32 @AfdGetInformation(i32 %177, i32 %178, i32* null, i32* %7, i32* null)
  store i32 %179, i32* %1, align 4
  %180 = load i32, i32* %1, align 4
  %181 = load i32, i32* @STATUS_SUCCESS, align 4
  %182 = icmp eq i32 %180, %181
  %183 = zext i1 %182 to i32
  %184 = load i32, i32* %1, align 4
  %185 = call i32 (i32, i8*, i32, ...) @ok(i32 %183, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %184)
  %186 = load i32, i32* %7, align 4
  %187 = load i32, i32* %5, align 4
  %188 = icmp eq i32 %186, %187
  %189 = zext i1 %188 to i32
  %190 = load i32, i32* %7, align 4
  %191 = load i32, i32* %5, align 4
  %192 = call i32 (i32, i8*, i32, ...) @ok(i32 %189, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %190, i32 %191)
  store i32 0, i32* %6, align 4
  %193 = load i32, i32* %2, align 4
  %194 = load i32, i32* @AFD_INFO_RECEIVE_WINDOW_SIZE, align 4
  %195 = call i32 @AfdSetInformation(i32 %193, i32 %194, i32* null, i32* %6, i32* null)
  store i32 %195, i32* %1, align 4
  %196 = load i32, i32* %1, align 4
  %197 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  %198 = icmp eq i32 %196, %197
  %199 = zext i1 %198 to i32
  %200 = load i32, i32* %1, align 4
  %201 = call i32 (i32, i8*, i32, ...) @ok(i32 %199, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %200)
  store i32 0, i32* %7, align 4
  %202 = load i32, i32* %2, align 4
  %203 = load i32, i32* @AFD_INFO_SEND_WINDOW_SIZE, align 4
  %204 = call i32 @AfdSetInformation(i32 %202, i32 %203, i32* null, i32* %7, i32* null)
  store i32 %204, i32* %1, align 4
  %205 = load i32, i32* %1, align 4
  %206 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  %207 = icmp eq i32 %205, %206
  %208 = zext i1 %207 to i32
  %209 = load i32, i32* %1, align 4
  %210 = call i32 (i32, i8*, i32, ...) @ok(i32 %208, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %209)
  store i32 -1, i32* %6, align 4
  %211 = load i32, i32* %2, align 4
  %212 = load i32, i32* @AFD_INFO_RECEIVE_WINDOW_SIZE, align 4
  %213 = call i32 @AfdSetInformation(i32 %211, i32 %212, i32* null, i32* %6, i32* null)
  store i32 %213, i32* %1, align 4
  %214 = load i32, i32* %1, align 4
  %215 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  %216 = icmp eq i32 %214, %215
  %217 = zext i1 %216 to i32
  %218 = load i32, i32* %1, align 4
  %219 = call i32 (i32, i8*, i32, ...) @ok(i32 %217, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %218)
  store i32 -1, i32* %7, align 4
  %220 = load i32, i32* %2, align 4
  %221 = load i32, i32* @AFD_INFO_SEND_WINDOW_SIZE, align 4
  %222 = call i32 @AfdSetInformation(i32 %220, i32 %221, i32* null, i32* %7, i32* null)
  store i32 %222, i32* %1, align 4
  %223 = load i32, i32* %1, align 4
  %224 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  %225 = icmp eq i32 %223, %224
  %226 = zext i1 %225 to i32
  %227 = load i32, i32* %1, align 4
  %228 = call i32 (i32, i8*, i32, ...) @ok(i32 %226, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %227)
  %229 = load i32, i32* %2, align 4
  %230 = load i32, i32* @AFD_INFO_RECEIVE_WINDOW_SIZE, align 4
  %231 = call i32 @AfdGetInformation(i32 %229, i32 %230, i32* null, i32* %6, i32* null)
  store i32 %231, i32* %1, align 4
  %232 = load i32, i32* %1, align 4
  %233 = load i32, i32* @STATUS_SUCCESS, align 4
  %234 = icmp eq i32 %232, %233
  %235 = zext i1 %234 to i32
  %236 = load i32, i32* %1, align 4
  %237 = call i32 (i32, i8*, i32, ...) @ok(i32 %235, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %236)
  %238 = load i32, i32* %6, align 4
  %239 = load i32, i32* %4, align 4
  %240 = icmp eq i32 %238, %239
  %241 = zext i1 %240 to i32
  %242 = load i32, i32* %6, align 4
  %243 = load i32, i32* %4, align 4
  %244 = call i32 (i32, i8*, i32, ...) @ok(i32 %241, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %242, i32 %243)
  %245 = load i32, i32* %2, align 4
  %246 = load i32, i32* @AFD_INFO_SEND_WINDOW_SIZE, align 4
  %247 = call i32 @AfdGetInformation(i32 %245, i32 %246, i32* null, i32* %7, i32* null)
  store i32 %247, i32* %1, align 4
  %248 = load i32, i32* %1, align 4
  %249 = load i32, i32* @STATUS_SUCCESS, align 4
  %250 = icmp eq i32 %248, %249
  %251 = zext i1 %250 to i32
  %252 = load i32, i32* %1, align 4
  %253 = call i32 (i32, i8*, i32, ...) @ok(i32 %251, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %252)
  %254 = load i32, i32* %7, align 4
  %255 = load i32, i32* %5, align 4
  %256 = icmp eq i32 %254, %255
  %257 = zext i1 %256 to i32
  %258 = load i32, i32* %7, align 4
  %259 = load i32, i32* %5, align 4
  %260 = call i32 (i32, i8*, i32, ...) @ok(i32 %257, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %258, i32 %259)
  %261 = load i32, i32* %4, align 4
  store i32 %261, i32* %6, align 4
  %262 = load i32, i32* %2, align 4
  %263 = load i32, i32* @AFD_INFO_RECEIVE_WINDOW_SIZE, align 4
  %264 = call i32 @AfdSetInformation(i32 %262, i32 %263, i32* null, i32* %6, i32* null)
  store i32 %264, i32* %1, align 4
  %265 = load i32, i32* %1, align 4
  %266 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  %267 = icmp eq i32 %265, %266
  %268 = zext i1 %267 to i32
  %269 = load i32, i32* %1, align 4
  %270 = call i32 (i32, i8*, i32, ...) @ok(i32 %268, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %269)
  %271 = load i32, i32* %5, align 4
  store i32 %271, i32* %7, align 4
  %272 = load i32, i32* %2, align 4
  %273 = load i32, i32* @AFD_INFO_SEND_WINDOW_SIZE, align 4
  %274 = call i32 @AfdSetInformation(i32 %272, i32 %273, i32* null, i32* %7, i32* null)
  store i32 %274, i32* %1, align 4
  %275 = load i32, i32* %1, align 4
  %276 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  %277 = icmp eq i32 %275, %276
  %278 = zext i1 %277 to i32
  %279 = load i32, i32* %1, align 4
  %280 = call i32 (i32, i8*, i32, ...) @ok(i32 %278, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %279)
  %281 = call i32 @memset(%struct.sockaddr_in* %3, i32 0, i32 24)
  %282 = load i8*, i8** @AF_INET, align 8
  %283 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  store i8* %282, i8** %283, align 8
  %284 = call i8* @inet_addr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %285 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %285, i32 0, i32 0
  store i8* %284, i8** %286, align 8
  %287 = call i8* @htons(i32 53)
  %288 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 0
  store i8* %287, i8** %288, align 8
  %289 = load i32, i32* %2, align 4
  %290 = bitcast %struct.sockaddr_in* %3 to %struct.sockaddr*
  %291 = call i32 @AfdConnect(i32 %289, %struct.sockaddr* %290, i32 24)
  store i32 %291, i32* %1, align 4
  %292 = load i32, i32* %1, align 4
  %293 = load i32, i32* @STATUS_SUCCESS, align 4
  %294 = icmp eq i32 %292, %293
  %295 = zext i1 %294 to i32
  %296 = load i32, i32* %1, align 4
  %297 = call i32 (i32, i8*, i32, ...) @ok(i32 %295, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %296)
  %298 = load i32, i32* %2, align 4
  %299 = load i32, i32* @AFD_INFO_RECEIVE_WINDOW_SIZE, align 4
  %300 = call i32 @AfdGetInformation(i32 %298, i32 %299, i32* null, i32* %6, i32* null)
  store i32 %300, i32* %1, align 4
  %301 = load i32, i32* %1, align 4
  %302 = load i32, i32* @STATUS_SUCCESS, align 4
  %303 = icmp eq i32 %301, %302
  %304 = zext i1 %303 to i32
  %305 = load i32, i32* %1, align 4
  %306 = call i32 (i32, i8*, i32, ...) @ok(i32 %304, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %305)
  %307 = load i32, i32* %6, align 4
  %308 = load i32, i32* %4, align 4
  %309 = icmp eq i32 %307, %308
  %310 = zext i1 %309 to i32
  %311 = load i32, i32* %6, align 4
  %312 = load i32, i32* %4, align 4
  %313 = call i32 (i32, i8*, i32, ...) @ok(i32 %310, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %311, i32 %312)
  %314 = load i32, i32* %2, align 4
  %315 = load i32, i32* @AFD_INFO_SEND_WINDOW_SIZE, align 4
  %316 = call i32 @AfdGetInformation(i32 %314, i32 %315, i32* null, i32* %7, i32* null)
  store i32 %316, i32* %1, align 4
  %317 = load i32, i32* %1, align 4
  %318 = load i32, i32* @STATUS_SUCCESS, align 4
  %319 = icmp eq i32 %317, %318
  %320 = zext i1 %319 to i32
  %321 = load i32, i32* %1, align 4
  %322 = call i32 (i32, i8*, i32, ...) @ok(i32 %320, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %321)
  %323 = load i32, i32* %7, align 4
  %324 = load i32, i32* %5, align 4
  %325 = icmp eq i32 %323, %324
  %326 = zext i1 %325 to i32
  %327 = load i32, i32* %7, align 4
  %328 = load i32, i32* %5, align 4
  %329 = call i32 (i32, i8*, i32, ...) @ok(i32 %326, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %327, i32 %328)
  store i32 0, i32* %6, align 4
  %330 = load i32, i32* %2, align 4
  %331 = load i32, i32* @AFD_INFO_RECEIVE_WINDOW_SIZE, align 4
  %332 = call i32 @AfdSetInformation(i32 %330, i32 %331, i32* null, i32* %6, i32* null)
  store i32 %332, i32* %1, align 4
  %333 = load i32, i32* %1, align 4
  %334 = load i32, i32* @STATUS_SUCCESS, align 4
  %335 = icmp eq i32 %333, %334
  %336 = zext i1 %335 to i32
  %337 = load i32, i32* %1, align 4
  %338 = call i32 (i32, i8*, i32, ...) @ok(i32 %336, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %337)
  store i32 0, i32* %7, align 4
  %339 = load i32, i32* %2, align 4
  %340 = load i32, i32* @AFD_INFO_SEND_WINDOW_SIZE, align 4
  %341 = call i32 @AfdSetInformation(i32 %339, i32 %340, i32* null, i32* %7, i32* null)
  store i32 %341, i32* %1, align 4
  %342 = load i32, i32* %1, align 4
  %343 = load i32, i32* @STATUS_SUCCESS, align 4
  %344 = icmp eq i32 %342, %343
  %345 = zext i1 %344 to i32
  %346 = load i32, i32* %1, align 4
  %347 = call i32 (i32, i8*, i32, ...) @ok(i32 %345, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %346)
  %348 = load i32, i32* %2, align 4
  %349 = load i32, i32* @AFD_INFO_RECEIVE_WINDOW_SIZE, align 4
  %350 = call i32 @AfdGetInformation(i32 %348, i32 %349, i32* null, i32* %6, i32* null)
  store i32 %350, i32* %1, align 4
  %351 = load i32, i32* %1, align 4
  %352 = load i32, i32* @STATUS_SUCCESS, align 4
  %353 = icmp eq i32 %351, %352
  %354 = zext i1 %353 to i32
  %355 = load i32, i32* %1, align 4
  %356 = call i32 (i32, i8*, i32, ...) @ok(i32 %354, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %355)
  %357 = load i32, i32* %6, align 4
  %358 = load i32, i32* %4, align 4
  %359 = icmp eq i32 %357, %358
  %360 = zext i1 %359 to i32
  %361 = load i32, i32* %6, align 4
  %362 = load i32, i32* %4, align 4
  %363 = call i32 (i32, i8*, i32, ...) @ok(i32 %360, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %361, i32 %362)
  %364 = load i32, i32* %2, align 4
  %365 = load i32, i32* @AFD_INFO_SEND_WINDOW_SIZE, align 4
  %366 = call i32 @AfdGetInformation(i32 %364, i32 %365, i32* null, i32* %7, i32* null)
  store i32 %366, i32* %1, align 4
  %367 = load i32, i32* %1, align 4
  %368 = load i32, i32* @STATUS_SUCCESS, align 4
  %369 = icmp eq i32 %367, %368
  %370 = zext i1 %369 to i32
  %371 = load i32, i32* %1, align 4
  %372 = call i32 (i32, i8*, i32, ...) @ok(i32 %370, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %371)
  %373 = load i32, i32* %7, align 4
  %374 = load i32, i32* %5, align 4
  %375 = icmp eq i32 %373, %374
  %376 = zext i1 %375 to i32
  %377 = load i32, i32* %7, align 4
  %378 = load i32, i32* %5, align 4
  %379 = call i32 (i32, i8*, i32, ...) @ok(i32 %376, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %377, i32 %378)
  store i32 -1, i32* %6, align 4
  %380 = load i32, i32* %2, align 4
  %381 = load i32, i32* @AFD_INFO_RECEIVE_WINDOW_SIZE, align 4
  %382 = call i32 @AfdSetInformation(i32 %380, i32 %381, i32* null, i32* %6, i32* null)
  store i32 %382, i32* %1, align 4
  %383 = load i32, i32* %1, align 4
  %384 = load i32, i32* @STATUS_SUCCESS, align 4
  %385 = icmp eq i32 %383, %384
  %386 = zext i1 %385 to i32
  %387 = load i32, i32* %1, align 4
  %388 = call i32 (i32, i8*, i32, ...) @ok(i32 %386, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %387)
  store i32 -1, i32* %7, align 4
  %389 = load i32, i32* %2, align 4
  %390 = load i32, i32* @AFD_INFO_SEND_WINDOW_SIZE, align 4
  %391 = call i32 @AfdSetInformation(i32 %389, i32 %390, i32* null, i32* %7, i32* null)
  store i32 %391, i32* %1, align 4
  %392 = load i32, i32* %1, align 4
  %393 = load i32, i32* @STATUS_SUCCESS, align 4
  %394 = icmp eq i32 %392, %393
  %395 = zext i1 %394 to i32
  %396 = load i32, i32* %1, align 4
  %397 = call i32 (i32, i8*, i32, ...) @ok(i32 %395, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %396)
  %398 = load i32, i32* %2, align 4
  %399 = load i32, i32* @AFD_INFO_RECEIVE_WINDOW_SIZE, align 4
  %400 = call i32 @AfdGetInformation(i32 %398, i32 %399, i32* null, i32* %6, i32* null)
  store i32 %400, i32* %1, align 4
  %401 = load i32, i32* %1, align 4
  %402 = load i32, i32* @STATUS_SUCCESS, align 4
  %403 = icmp eq i32 %401, %402
  %404 = zext i1 %403 to i32
  %405 = load i32, i32* %1, align 4
  %406 = call i32 (i32, i8*, i32, ...) @ok(i32 %404, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %405)
  %407 = load i32, i32* %6, align 4
  %408 = load i32, i32* %4, align 4
  %409 = icmp eq i32 %407, %408
  %410 = zext i1 %409 to i32
  %411 = load i32, i32* %6, align 4
  %412 = load i32, i32* %4, align 4
  %413 = call i32 (i32, i8*, i32, ...) @ok(i32 %410, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %411, i32 %412)
  %414 = load i32, i32* %2, align 4
  %415 = load i32, i32* @AFD_INFO_SEND_WINDOW_SIZE, align 4
  %416 = call i32 @AfdGetInformation(i32 %414, i32 %415, i32* null, i32* %7, i32* null)
  store i32 %416, i32* %1, align 4
  %417 = load i32, i32* %1, align 4
  %418 = load i32, i32* @STATUS_SUCCESS, align 4
  %419 = icmp eq i32 %417, %418
  %420 = zext i1 %419 to i32
  %421 = load i32, i32* %1, align 4
  %422 = call i32 (i32, i8*, i32, ...) @ok(i32 %420, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %421)
  %423 = load i32, i32* %7, align 4
  %424 = load i32, i32* %5, align 4
  %425 = icmp eq i32 %423, %424
  %426 = zext i1 %425 to i32
  %427 = load i32, i32* %7, align 4
  %428 = load i32, i32* %5, align 4
  %429 = call i32 (i32, i8*, i32, ...) @ok(i32 %426, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %427, i32 %428)
  %430 = load i32, i32* %4, align 4
  %431 = add nsw i32 %430, 1
  store i32 %431, i32* %6, align 4
  %432 = load i32, i32* %2, align 4
  %433 = load i32, i32* @AFD_INFO_RECEIVE_WINDOW_SIZE, align 4
  %434 = call i32 @AfdSetInformation(i32 %432, i32 %433, i32* null, i32* %6, i32* null)
  store i32 %434, i32* %1, align 4
  %435 = load i32, i32* %1, align 4
  %436 = load i32, i32* @STATUS_SUCCESS, align 4
  %437 = icmp eq i32 %435, %436
  %438 = zext i1 %437 to i32
  %439 = load i32, i32* %1, align 4
  %440 = call i32 (i32, i8*, i32, ...) @ok(i32 %438, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %439)
  %441 = load i32, i32* %5, align 4
  %442 = add nsw i32 %441, 1
  store i32 %442, i32* %7, align 4
  %443 = load i32, i32* %2, align 4
  %444 = load i32, i32* @AFD_INFO_SEND_WINDOW_SIZE, align 4
  %445 = call i32 @AfdSetInformation(i32 %443, i32 %444, i32* null, i32* %7, i32* null)
  store i32 %445, i32* %1, align 4
  %446 = load i32, i32* %1, align 4
  %447 = load i32, i32* @STATUS_SUCCESS, align 4
  %448 = icmp eq i32 %446, %447
  %449 = zext i1 %448 to i32
  %450 = load i32, i32* %1, align 4
  %451 = call i32 (i32, i8*, i32, ...) @ok(i32 %449, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %450)
  %452 = load i32, i32* %2, align 4
  %453 = load i32, i32* @AFD_INFO_RECEIVE_WINDOW_SIZE, align 4
  %454 = call i32 @AfdGetInformation(i32 %452, i32 %453, i32* null, i32* %6, i32* null)
  store i32 %454, i32* %1, align 4
  %455 = load i32, i32* %1, align 4
  %456 = load i32, i32* @STATUS_SUCCESS, align 4
  %457 = icmp eq i32 %455, %456
  %458 = zext i1 %457 to i32
  %459 = load i32, i32* %1, align 4
  %460 = call i32 (i32, i8*, i32, ...) @ok(i32 %458, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %459)
  %461 = load i32, i32* %6, align 4
  %462 = load i32, i32* %4, align 4
  %463 = icmp eq i32 %461, %462
  %464 = zext i1 %463 to i32
  %465 = load i32, i32* %6, align 4
  %466 = load i32, i32* %4, align 4
  %467 = call i32 (i32, i8*, i32, ...) @ok(i32 %464, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %465, i32 %466)
  %468 = load i32, i32* %2, align 4
  %469 = load i32, i32* @AFD_INFO_SEND_WINDOW_SIZE, align 4
  %470 = call i32 @AfdGetInformation(i32 %468, i32 %469, i32* null, i32* %7, i32* null)
  store i32 %470, i32* %1, align 4
  %471 = load i32, i32* %1, align 4
  %472 = load i32, i32* @STATUS_SUCCESS, align 4
  %473 = icmp eq i32 %471, %472
  %474 = zext i1 %473 to i32
  %475 = load i32, i32* %1, align 4
  %476 = call i32 (i32, i8*, i32, ...) @ok(i32 %474, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %475)
  %477 = load i32, i32* %7, align 4
  %478 = load i32, i32* %5, align 4
  %479 = icmp eq i32 %477, %478
  %480 = zext i1 %479 to i32
  %481 = load i32, i32* %7, align 4
  %482 = load i32, i32* %5, align 4
  %483 = call i32 (i32, i8*, i32, ...) @ok(i32 %480, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %481, i32 %482)
  %484 = load i32, i32* %4, align 4
  %485 = sub nsw i32 %484, 1
  store i32 %485, i32* %6, align 4
  %486 = load i32, i32* %2, align 4
  %487 = load i32, i32* @AFD_INFO_RECEIVE_WINDOW_SIZE, align 4
  %488 = call i32 @AfdSetInformation(i32 %486, i32 %487, i32* null, i32* %6, i32* null)
  store i32 %488, i32* %1, align 4
  %489 = load i32, i32* %1, align 4
  %490 = load i32, i32* @STATUS_SUCCESS, align 4
  %491 = icmp eq i32 %489, %490
  %492 = zext i1 %491 to i32
  %493 = load i32, i32* %1, align 4
  %494 = call i32 (i32, i8*, i32, ...) @ok(i32 %492, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %493)
  %495 = load i32, i32* %5, align 4
  %496 = sub nsw i32 %495, 1
  store i32 %496, i32* %7, align 4
  %497 = load i32, i32* %2, align 4
  %498 = load i32, i32* @AFD_INFO_SEND_WINDOW_SIZE, align 4
  %499 = call i32 @AfdSetInformation(i32 %497, i32 %498, i32* null, i32* %7, i32* null)
  store i32 %499, i32* %1, align 4
  %500 = load i32, i32* %1, align 4
  %501 = load i32, i32* @STATUS_SUCCESS, align 4
  %502 = icmp eq i32 %500, %501
  %503 = zext i1 %502 to i32
  %504 = load i32, i32* %1, align 4
  %505 = call i32 (i32, i8*, i32, ...) @ok(i32 %503, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %504)
  %506 = load i32, i32* %2, align 4
  %507 = load i32, i32* @AFD_INFO_RECEIVE_WINDOW_SIZE, align 4
  %508 = call i32 @AfdGetInformation(i32 %506, i32 %507, i32* null, i32* %6, i32* null)
  store i32 %508, i32* %1, align 4
  %509 = load i32, i32* %1, align 4
  %510 = load i32, i32* @STATUS_SUCCESS, align 4
  %511 = icmp eq i32 %509, %510
  %512 = zext i1 %511 to i32
  %513 = load i32, i32* %1, align 4
  %514 = call i32 (i32, i8*, i32, ...) @ok(i32 %512, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %513)
  %515 = load i32, i32* %6, align 4
  %516 = load i32, i32* %4, align 4
  %517 = icmp eq i32 %515, %516
  %518 = zext i1 %517 to i32
  %519 = load i32, i32* %6, align 4
  %520 = load i32, i32* %4, align 4
  %521 = call i32 (i32, i8*, i32, ...) @ok(i32 %518, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %519, i32 %520)
  %522 = load i32, i32* %2, align 4
  %523 = load i32, i32* @AFD_INFO_SEND_WINDOW_SIZE, align 4
  %524 = call i32 @AfdGetInformation(i32 %522, i32 %523, i32* null, i32* %7, i32* null)
  store i32 %524, i32* %1, align 4
  %525 = load i32, i32* %1, align 4
  %526 = load i32, i32* @STATUS_SUCCESS, align 4
  %527 = icmp eq i32 %525, %526
  %528 = zext i1 %527 to i32
  %529 = load i32, i32* %1, align 4
  %530 = call i32 (i32, i8*, i32, ...) @ok(i32 %528, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %529)
  %531 = load i32, i32* %7, align 4
  %532 = load i32, i32* %5, align 4
  %533 = icmp eq i32 %531, %532
  %534 = zext i1 %533 to i32
  %535 = load i32, i32* %7, align 4
  %536 = load i32, i32* %5, align 4
  %537 = call i32 (i32, i8*, i32, ...) @ok(i32 %534, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %535, i32 %536)
  %538 = load i32, i32* %2, align 4
  %539 = call i32 @NtClose(i32 %538)
  ret void
}

declare dso_local i32 @AfdCreateSocket(i32*, i8*, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @AfdGetInformation(i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @AfdSetInformation(i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i8* @inet_addr(i8*) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @AfdBind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @AfdConnect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @NtClose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
