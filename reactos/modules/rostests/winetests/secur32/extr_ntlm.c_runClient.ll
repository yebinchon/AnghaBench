; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/secur32/extr_ntlm.c_runClient.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/secur32/extr_ntlm.c_runClient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32, %struct.TYPE_10__*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64, i32* }

@.str = private unnamed_addr constant [33 x i8] c"Running the client the %s time.\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"first\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"second\00", align 1
@SEC_E_BUFFER_TOO_SMALL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"expected SEC_E_BUFFER_TOO_SMALL, got %s\0A\00", align 1
@SEC_E_INTERNAL_ERROR = common dso_local global i64 0, align 8
@SEC_I_CONTINUE_NEEDED = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [64 x i8] c"expected SEC_E_INTERNAL_ERROR or SEC_I_CONTINUE_NEEDED, got %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"InitializeSecurityContext set buffer size to %u\0A\00", align 1
@SECBUFFER_DATA = common dso_local global i64 0, align 8
@SECBUFFER_TOKEN = common dso_local global i64 0, align 8
@SEC_I_COMPLETE_AND_CONTINUE = common dso_local global i64 0, align 8
@SEC_I_COMPLETE_NEEDED = common dso_local global i64 0, align 8
@SEC_E_OK = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [52 x i8] c"buffer type was changed from SECBUFFER_TOKEN to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_9__*, i64, i32)* @runClient to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @runClient(%struct.TYPE_9__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 4
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %11, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %12, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sge i32 %22, 1
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp sge i32 %46, 1
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i64 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  %68 = load i64, i64* %5, align 8
  %69 = icmp ne i64 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %72 = call i32 @trace(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %71)
  %73 = load i64, i64* %5, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %200

75:                                               ; preds = %3
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 2
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  %82 = call i64 @pInitializeSecurityContextA(i32* %77, i32* null, i32* null, i32 %78, i32 0, i32 %79, %struct.TYPE_10__* null, i32 0, i32* %81, %struct.TYPE_10__* null, i32* %9, i32* %10)
  store i64 %82, i64* %7, align 8
  %83 = load i64, i64* %7, align 8
  %84 = load i64, i64* @SEC_E_BUFFER_TOO_SMALL, align 8
  %85 = icmp eq i64 %83, %84
  %86 = zext i1 %85 to i32
  %87 = load i64, i64* %7, align 8
  %88 = call i64 @getSecError(i64 %87)
  %89 = call i32 @ok(i32 %86, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i64 %88)
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i64 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = bitcast i32* %95 to i8*
  store i8* %96, i8** %13, align 8
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i64 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 2
  store i32* null, i32** %101, align 8
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 2
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* %6, align 4
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %109 = call i64 @pInitializeSecurityContextA(i32* %103, i32* null, i32* null, i32 %104, i32 0, i32 %105, %struct.TYPE_10__* null, i32 0, i32* %107, %struct.TYPE_10__* %108, i32* %9, i32* %10)
  store i64 %109, i64* %7, align 8
  %110 = load i64, i64* %7, align 8
  %111 = load i64, i64* @SEC_E_INTERNAL_ERROR, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %117, label %113

113:                                              ; preds = %75
  %114 = load i64, i64* %7, align 8
  %115 = load i64, i64* @SEC_I_CONTINUE_NEEDED, align 8
  %116 = icmp eq i64 %114, %115
  br label %117

117:                                              ; preds = %113, %75
  %118 = phi i1 [ true, %75 ], [ %116, %113 ]
  %119 = zext i1 %118 to i32
  %120 = load i64, i64* %7, align 8
  %121 = call i64 @getSecError(i64 %120)
  %122 = call i32 @ok(i32 %119, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0), i64 %121)
  %123 = load i8*, i8** %13, align 8
  %124 = bitcast i8* %123 to i32*
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i64 0
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 2
  store i32* %124, i32** %129, align 8
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i64 0
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  store i64 0, i64* %134, align 8
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 2
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* %6, align 4
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %142 = call i64 @pInitializeSecurityContextA(i32* %136, i32* null, i32* null, i32 %137, i32 0, i32 %138, %struct.TYPE_10__* null, i32 0, i32* %140, %struct.TYPE_10__* %141, i32* %9, i32* %10)
  store i64 %142, i64* %7, align 8
  %143 = load i64, i64* %7, align 8
  %144 = load i64, i64* @SEC_E_BUFFER_TOO_SMALL, align 8
  %145 = icmp eq i64 %143, %144
  %146 = zext i1 %145 to i32
  %147 = load i64, i64* %7, align 8
  %148 = call i64 @getSecError(i64 %147)
  %149 = call i32 @ok(i32 %146, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i64 %148)
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i64 0
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = icmp eq i64 %155, 0
  %157 = zext i1 %156 to i32
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i64 0
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = call i32 @ok(i32 %157, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i64 %163)
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i64 0
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  store i64 %167, i64* %172, align 8
  %173 = load i64, i64* @SECBUFFER_DATA, align 8
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 1
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i64 0
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 1
  store i64 %173, i64* %178, align 8
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 2
  %181 = load i32, i32* %8, align 4
  %182 = load i32, i32* %6, align 4
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 1
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %186 = call i64 @pInitializeSecurityContextA(i32* %180, i32* null, i32* null, i32 %181, i32 0, i32 %182, %struct.TYPE_10__* null, i32 0, i32* %184, %struct.TYPE_10__* %185, i32* %9, i32* %10)
  store i64 %186, i64* %7, align 8
  %187 = load i64, i64* %7, align 8
  %188 = load i64, i64* @SEC_E_BUFFER_TOO_SMALL, align 8
  %189 = icmp eq i64 %187, %188
  %190 = zext i1 %189 to i32
  %191 = load i64, i64* %7, align 8
  %192 = call i64 @getSecError(i64 %191)
  %193 = call i32 @ok(i32 %190, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i64 %192)
  %194 = load i64, i64* @SECBUFFER_TOKEN, align 8
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 1
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i64 0
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 1
  store i64 %194, i64* %199, align 8
  br label %200

200:                                              ; preds = %117, %3
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 1
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i64 0
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 0
  store i64 %203, i64* %208, align 8
  %209 = load i64, i64* %5, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %200
  %212 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 2
  br label %215

214:                                              ; preds = %200
  br label %215

215:                                              ; preds = %214, %211
  %216 = phi i32* [ %213, %211 ], [ null, %214 ]
  %217 = load i64, i64* %5, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %215
  br label %223

220:                                              ; preds = %215
  %221 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 1
  br label %223

223:                                              ; preds = %220, %219
  %224 = phi i32* [ null, %219 ], [ %222, %220 ]
  %225 = load i32, i32* %8, align 4
  %226 = load i32, i32* %6, align 4
  %227 = load i64, i64* %5, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %223
  br label %232

230:                                              ; preds = %223
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  br label %232

232:                                              ; preds = %230, %229
  %233 = phi %struct.TYPE_10__* [ null, %229 ], [ %231, %230 ]
  %234 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 1
  %236 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %237 = call i64 @pInitializeSecurityContextA(i32* %216, i32* %224, i32* null, i32 %225, i32 0, i32 %226, %struct.TYPE_10__* %233, i32 0, i32* %235, %struct.TYPE_10__* %236, i32* %9, i32* %10)
  store i64 %237, i64* %7, align 8
  %238 = load i64, i64* %7, align 8
  %239 = load i64, i64* @SEC_I_COMPLETE_AND_CONTINUE, align 8
  %240 = icmp eq i64 %238, %239
  br i1 %240, label %245, label %241

241:                                              ; preds = %232
  %242 = load i64, i64* %7, align 8
  %243 = load i64, i64* @SEC_I_COMPLETE_NEEDED, align 8
  %244 = icmp eq i64 %242, %243
  br i1 %244, label %245, label %263

245:                                              ; preds = %241, %232
  %246 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 1
  %248 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %249 = call i32 @pCompleteAuthToken(i32* %247, %struct.TYPE_10__* %248)
  %250 = load i64, i64* %7, align 8
  %251 = load i64, i64* @SEC_I_COMPLETE_AND_CONTINUE, align 8
  %252 = icmp eq i64 %250, %251
  br i1 %252, label %253, label %255

253:                                              ; preds = %245
  %254 = load i64, i64* @SEC_I_CONTINUE_NEEDED, align 8
  store i64 %254, i64* %7, align 8
  br label %262

255:                                              ; preds = %245
  %256 = load i64, i64* %7, align 8
  %257 = load i64, i64* @SEC_I_COMPLETE_NEEDED, align 8
  %258 = icmp eq i64 %256, %257
  br i1 %258, label %259, label %261

259:                                              ; preds = %255
  %260 = load i64, i64* @SEC_E_OK, align 8
  store i64 %260, i64* %7, align 8
  br label %261

261:                                              ; preds = %259, %255
  br label %262

262:                                              ; preds = %261, %253
  br label %263

263:                                              ; preds = %262, %241
  %264 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %265 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %264, i32 0, i32 1
  %266 = load %struct.TYPE_8__*, %struct.TYPE_8__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i64 0
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 1
  %269 = load i64, i64* %268, align 8
  %270 = load i64, i64* @SECBUFFER_TOKEN, align 8
  %271 = icmp eq i64 %269, %270
  %272 = zext i1 %271 to i32
  %273 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %274 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %273, i32 0, i32 1
  %275 = load %struct.TYPE_8__*, %struct.TYPE_8__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %275, i64 0
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %276, i32 0, i32 1
  %278 = load i64, i64* %277, align 8
  %279 = call i32 @ok(i32 %272, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i64 %278)
  %280 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %281 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %280, i32 0, i32 1
  %282 = load %struct.TYPE_8__*, %struct.TYPE_8__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %282, i64 0
  %284 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %287 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = icmp slt i64 %285, %288
  %290 = zext i1 %289 to i32
  %291 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %292 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %291, i32 0, i32 1
  %293 = load %struct.TYPE_8__*, %struct.TYPE_8__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %293, i64 0
  %295 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = call i32 @ok(i32 %290, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i64 %296)
  %298 = load i64, i64* %7, align 8
  ret i64 %298
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @trace(i8*, i8*) #1

declare dso_local i64 @pInitializeSecurityContextA(i32*, i32*, i32*, i32, i32, i32, %struct.TYPE_10__*, i32, i32*, %struct.TYPE_10__*, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @getSecError(i64) #1

declare dso_local i32 @pCompleteAuthToken(i32*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
