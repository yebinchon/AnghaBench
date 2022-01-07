; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_usrmarshal.c_test_marshal_HMETAFILEPICT.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_usrmarshal.c_test_marshal_HMETAFILEPICT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i64 }

@GMEM_MOVEABLE = common dso_local global i32 0, align 4
@MM_ISOTROPIC = common dso_local global i32 0, align 4
@MSHCTX_DIFFERENTMACHINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"size should be at least 24 bytes, not %d\0A\00", align 1
@WDT_REMOTE_CALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"wirestgm + 0x0 should be WDT_REMOTE_CALL instead of 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"wirestgm + 0x4 should be hmf instead of 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"wirestgm + 0x8 should be MM_ISOTROPIC instead of 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"wirestgm + 0xc should be 1 instead of 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"wirestgm + 0x10 should be 2 instead of 0x%08x\0A\00", align 1
@USER_MARSHAL_PTR_PREFIX = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [52 x i8] c"wirestgm + 0x14 should be \22User\22 instead of 0x%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"wirestgm + 0x18 should be WDT_REMOTE_CALL instead of 0x%08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [55 x i8] c"wirestgm + 0x1c should be pmfp->hMF instead of 0x%08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [57 x i8] c"wirestgm + 0x20 should be size - 0x34 instead of 0x%08x\0A\00", align 1
@.str.10 = private unnamed_addr constant [57 x i8] c"wirestgm + 0x24 should be size - 0x34 instead of 0x%08x\0A\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"wirehmfp + 0x28 should be 1 instead of 0x%08x\0A\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"HMETAFILEPICT didn't unmarshal\0A\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"size should be 12 bytes, not %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"got %p buffer %p\0A\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"NULL HMETAFILE didn't unmarshal\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_marshal_HMETAFILEPICT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_marshal_HMETAFILEPICT() #0 {
  %1 = alloca %struct.TYPE_5__, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i8*, align 8
  store i32* null, i32** %8, align 8
  %11 = load i32, i32* @GMEM_MOVEABLE, align 4
  %12 = call i32* @GlobalAlloc(i32 %11, i32 24)
  store i32* %12, i32** %7, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call %struct.TYPE_6__* @GlobalLock(i32* %13)
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %9, align 8
  %15 = load i32, i32* @MM_ISOTROPIC, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  store i32 1, i32* %19, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  store i32 2, i32* %21, align 8
  %22 = call i64 (...) @create_mf()
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 3
  store i64 %22, i64* %24, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @GlobalUnlock(i32* %25)
  %27 = load i32, i32* @MSHCTX_DIFFERENTMACHINE, align 4
  %28 = call i32 @init_user_marshal_cb(%struct.TYPE_5__* %1, i32* %2, i32* %3, i8* null, i32 0, i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %30 = call i32 @HMETAFILEPICT_UserSize(i32* %29, i32 1, i32** %7)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp sgt i32 %31, 24
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* %6, align 4
  %35 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = call i32 (...) @GetProcessHeap()
  %37 = load i32, i32* %6, align 4
  %38 = call i8* @HeapAlloc(i32 %36, i32 0, i32 %37)
  store i8* %38, i8** %4, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @MSHCTX_DIFFERENTMACHINE, align 4
  %42 = call i32 @init_user_marshal_cb(%struct.TYPE_5__* %1, i32* %2, i32* %3, i8* %39, i32 %40, i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %44 = load i8*, i8** %4, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = call i8* @HMETAFILEPICT_UserMarshal(i32* %43, i8* %45, i32** %7)
  store i8* %46, i8** %5, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 4
  store i8* %48, i8** %10, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = bitcast i8* %49 to i32*
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @WDT_REMOTE_CALL, align 4
  %53 = icmp eq i32 %51, %52
  %54 = zext i1 %53 to i32
  %55 = load i8*, i8** %10, align 8
  %56 = bitcast i8* %55 to i32*
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i8*, i8** %10, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 4
  store i8* %60, i8** %10, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = bitcast i8* %61 to i32*
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %7, align 8
  %65 = ptrtoint i32* %64 to i64
  %66 = trunc i64 %65 to i32
  %67 = icmp eq i32 %63, %66
  %68 = zext i1 %67 to i32
  %69 = load i8*, i8** %10, align 8
  %70 = bitcast i8* %69 to i32*
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i32, i8*, ...) @ok(i32 %68, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  %73 = load i8*, i8** %10, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 4
  store i8* %74, i8** %10, align 8
  %75 = load i8*, i8** %10, align 8
  %76 = bitcast i8* %75 to i32*
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @MM_ISOTROPIC, align 4
  %79 = icmp eq i32 %77, %78
  %80 = zext i1 %79 to i32
  %81 = load i8*, i8** %10, align 8
  %82 = bitcast i8* %81 to i32*
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (i32, i8*, ...) @ok(i32 %80, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 %83)
  %85 = load i8*, i8** %10, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 4
  store i8* %86, i8** %10, align 8
  %87 = load i8*, i8** %10, align 8
  %88 = bitcast i8* %87 to i32*
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 1
  %91 = zext i1 %90 to i32
  %92 = load i8*, i8** %10, align 8
  %93 = bitcast i8* %92 to i32*
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i32, i8*, ...) @ok(i32 %91, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %94)
  %96 = load i8*, i8** %10, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 4
  store i8* %97, i8** %10, align 8
  %98 = load i8*, i8** %10, align 8
  %99 = bitcast i8* %98 to i32*
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, 2
  %102 = zext i1 %101 to i32
  %103 = load i8*, i8** %10, align 8
  %104 = bitcast i8* %103 to i32*
  %105 = load i32, i32* %104, align 4
  %106 = call i32 (i32, i8*, ...) @ok(i32 %102, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %105)
  %107 = load i8*, i8** %10, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 4
  store i8* %108, i8** %10, align 8
  %109 = load i8*, i8** %10, align 8
  %110 = bitcast i8* %109 to i32*
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @USER_MARSHAL_PTR_PREFIX, align 4
  %113 = icmp eq i32 %111, %112
  %114 = zext i1 %113 to i32
  %115 = load i8*, i8** %10, align 8
  %116 = bitcast i8* %115 to i32*
  %117 = load i32, i32* %116, align 4
  %118 = call i32 (i32, i8*, ...) @ok(i32 %114, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i32 %117)
  %119 = load i8*, i8** %10, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 4
  store i8* %120, i8** %10, align 8
  %121 = load i8*, i8** %10, align 8
  %122 = bitcast i8* %121 to i32*
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @WDT_REMOTE_CALL, align 4
  %125 = icmp eq i32 %123, %124
  %126 = zext i1 %125 to i32
  %127 = load i8*, i8** %10, align 8
  %128 = bitcast i8* %127 to i32*
  %129 = load i32, i32* %128, align 4
  %130 = call i32 (i32, i8*, ...) @ok(i32 %126, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0), i32 %129)
  %131 = load i8*, i8** %10, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 4
  store i8* %132, i8** %10, align 8
  %133 = load i32*, i32** %7, align 8
  %134 = call %struct.TYPE_6__* @GlobalLock(i32* %133)
  store %struct.TYPE_6__* %134, %struct.TYPE_6__** %9, align 8
  %135 = load i8*, i8** %10, align 8
  %136 = bitcast i8* %135 to i32*
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = trunc i64 %140 to i32
  %142 = icmp eq i32 %137, %141
  %143 = zext i1 %142 to i32
  %144 = load i8*, i8** %10, align 8
  %145 = bitcast i8* %144 to i32*
  %146 = load i32, i32* %145, align 4
  %147 = call i32 (i32, i8*, ...) @ok(i32 %143, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.8, i64 0, i64 0), i32 %146)
  %148 = load i32*, i32** %7, align 8
  %149 = call i32 @GlobalUnlock(i32* %148)
  %150 = load i8*, i8** %10, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 4
  store i8* %151, i8** %10, align 8
  %152 = load i8*, i8** %10, align 8
  %153 = bitcast i8* %152 to i32*
  %154 = load i32, i32* %153, align 4
  %155 = sext i32 %154 to i64
  %156 = load i8*, i8** %5, align 8
  %157 = load i8*, i8** %4, align 8
  %158 = ptrtoint i8* %156 to i64
  %159 = ptrtoint i8* %157 to i64
  %160 = sub i64 %158, %159
  %161 = sub nsw i64 %160, 44
  %162 = icmp eq i64 %155, %161
  %163 = zext i1 %162 to i32
  %164 = load i8*, i8** %10, align 8
  %165 = bitcast i8* %164 to i32*
  %166 = load i32, i32* %165, align 4
  %167 = call i32 (i32, i8*, ...) @ok(i32 %163, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.9, i64 0, i64 0), i32 %166)
  %168 = load i8*, i8** %10, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 4
  store i8* %169, i8** %10, align 8
  %170 = load i8*, i8** %10, align 8
  %171 = bitcast i8* %170 to i32*
  %172 = load i32, i32* %171, align 4
  %173 = sext i32 %172 to i64
  %174 = load i8*, i8** %5, align 8
  %175 = load i8*, i8** %4, align 8
  %176 = ptrtoint i8* %174 to i64
  %177 = ptrtoint i8* %175 to i64
  %178 = sub i64 %176, %177
  %179 = sub nsw i64 %178, 44
  %180 = icmp eq i64 %173, %179
  %181 = zext i1 %180 to i32
  %182 = load i8*, i8** %10, align 8
  %183 = bitcast i8* %182 to i32*
  %184 = load i32, i32* %183, align 4
  %185 = call i32 (i32, i8*, ...) @ok(i32 %181, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.10, i64 0, i64 0), i32 %184)
  %186 = load i8*, i8** %10, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 4
  store i8* %187, i8** %10, align 8
  %188 = load i8*, i8** %10, align 8
  %189 = bitcast i8* %188 to i32*
  %190 = load i32, i32* %189, align 4
  %191 = icmp eq i32 %190, 1
  %192 = zext i1 %191 to i32
  %193 = load i8*, i8** %10, align 8
  %194 = bitcast i8* %193 to i32*
  %195 = load i32, i32* %194, align 4
  %196 = call i32 (i32, i8*, ...) @ok(i32 %192, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0), i32 %195)
  %197 = load i8*, i8** %4, align 8
  %198 = load i32, i32* %6, align 4
  %199 = load i32, i32* @MSHCTX_DIFFERENTMACHINE, align 4
  %200 = call i32 @init_user_marshal_cb(%struct.TYPE_5__* %1, i32* %2, i32* %3, i8* %197, i32 %198, i32 %199)
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %202 = load i8*, i8** %4, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 1
  %204 = call i8* @HMETAFILEPICT_UserUnmarshal(i32* %201, i8* %203, i32** %8)
  %205 = load i32*, i32** %8, align 8
  %206 = icmp ne i32* %205, null
  %207 = zext i1 %206 to i32
  %208 = call i32 (i32, i8*, ...) @ok(i32 %207, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0))
  %209 = call i32 (...) @GetProcessHeap()
  %210 = load i8*, i8** %4, align 8
  %211 = call i32 @HeapFree(i32 %209, i32 0, i8* %210)
  %212 = load i32, i32* @MSHCTX_DIFFERENTMACHINE, align 4
  %213 = call i32 @init_user_marshal_cb(%struct.TYPE_5__* %1, i32* %2, i32* %3, i8* null, i32 0, i32 %212)
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %215 = call i32 @HMETAFILEPICT_UserFree(i32* %214, i32** %8)
  %216 = load i32*, i32** %7, align 8
  %217 = call %struct.TYPE_6__* @GlobalLock(i32* %216)
  store %struct.TYPE_6__* %217, %struct.TYPE_6__** %9, align 8
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 3
  %220 = load i64, i64* %219, align 8
  %221 = call i32 @DeleteMetaFile(i64 %220)
  %222 = load i32*, i32** %7, align 8
  %223 = call i32 @GlobalUnlock(i32* %222)
  %224 = load i32*, i32** %7, align 8
  %225 = call i32 @GlobalFree(i32* %224)
  store i32* null, i32** %7, align 8
  %226 = load i32, i32* @MSHCTX_DIFFERENTMACHINE, align 4
  %227 = call i32 @init_user_marshal_cb(%struct.TYPE_5__* %1, i32* %2, i32* %3, i8* null, i32 0, i32 %226)
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %229 = call i32 @HMETAFILEPICT_UserSize(i32* %228, i32 1, i32** %7)
  store i32 %229, i32* %6, align 4
  %230 = load i32, i32* %6, align 4
  %231 = icmp eq i32 %230, 12
  %232 = zext i1 %231 to i32
  %233 = load i32, i32* %6, align 4
  %234 = call i32 (i32, i8*, ...) @ok(i32 %232, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0), i32 %233)
  %235 = call i32 (...) @GetProcessHeap()
  %236 = load i32, i32* %6, align 4
  %237 = call i8* @HeapAlloc(i32 %235, i32 0, i32 %236)
  store i8* %237, i8** %4, align 8
  %238 = load i8*, i8** %4, align 8
  %239 = load i32, i32* %6, align 4
  %240 = load i32, i32* @MSHCTX_DIFFERENTMACHINE, align 4
  %241 = call i32 @init_user_marshal_cb(%struct.TYPE_5__* %1, i32* %2, i32* %3, i8* %238, i32 %239, i32 %240)
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %243 = load i8*, i8** %4, align 8
  %244 = getelementptr inbounds i8, i8* %243, i64 1
  %245 = call i8* @HMETAFILEPICT_UserMarshal(i32* %242, i8* %244, i32** %7)
  store i8* %245, i8** %5, align 8
  %246 = load i8*, i8** %5, align 8
  %247 = load i8*, i8** %4, align 8
  %248 = load i32, i32* %6, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i8, i8* %247, i64 %249
  %251 = icmp eq i8* %246, %250
  %252 = zext i1 %251 to i32
  %253 = load i8*, i8** %5, align 8
  %254 = load i8*, i8** %4, align 8
  %255 = call i32 (i32, i8*, ...) @ok(i32 %252, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i8* %253, i8* %254)
  %256 = load i8*, i8** %4, align 8
  %257 = getelementptr inbounds i8, i8* %256, i64 4
  store i8* %257, i8** %10, align 8
  %258 = load i8*, i8** %10, align 8
  %259 = bitcast i8* %258 to i32*
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* @WDT_REMOTE_CALL, align 4
  %262 = icmp eq i32 %260, %261
  %263 = zext i1 %262 to i32
  %264 = load i8*, i8** %10, align 8
  %265 = bitcast i8* %264 to i32*
  %266 = load i32, i32* %265, align 4
  %267 = call i32 (i32, i8*, ...) @ok(i32 %263, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %266)
  %268 = load i8*, i8** %10, align 8
  %269 = getelementptr inbounds i8, i8* %268, i64 4
  store i8* %269, i8** %10, align 8
  %270 = load i8*, i8** %10, align 8
  %271 = bitcast i8* %270 to i32*
  %272 = load i32, i32* %271, align 4
  %273 = load i32*, i32** %7, align 8
  %274 = ptrtoint i32* %273 to i64
  %275 = trunc i64 %274 to i32
  %276 = icmp eq i32 %272, %275
  %277 = zext i1 %276 to i32
  %278 = load i8*, i8** %10, align 8
  %279 = bitcast i8* %278 to i32*
  %280 = load i32, i32* %279, align 4
  %281 = call i32 (i32, i8*, ...) @ok(i32 %277, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %280)
  %282 = load i8*, i8** %10, align 8
  %283 = getelementptr inbounds i8, i8* %282, i64 4
  store i8* %283, i8** %10, align 8
  store i32* null, i32** %8, align 8
  %284 = load i8*, i8** %4, align 8
  %285 = load i32, i32* %6, align 4
  %286 = load i32, i32* @MSHCTX_DIFFERENTMACHINE, align 4
  %287 = call i32 @init_user_marshal_cb(%struct.TYPE_5__* %1, i32* %2, i32* %3, i8* %284, i32 %285, i32 %286)
  %288 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %289 = load i8*, i8** %4, align 8
  %290 = getelementptr inbounds i8, i8* %289, i64 1
  %291 = call i8* @HMETAFILEPICT_UserUnmarshal(i32* %288, i8* %290, i32** %8)
  store i8* %291, i8** %5, align 8
  %292 = load i8*, i8** %5, align 8
  %293 = load i8*, i8** %4, align 8
  %294 = load i32, i32* %6, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i8, i8* %293, i64 %295
  %297 = icmp eq i8* %292, %296
  %298 = zext i1 %297 to i32
  %299 = load i8*, i8** %5, align 8
  %300 = load i8*, i8** %4, align 8
  %301 = call i32 (i32, i8*, ...) @ok(i32 %298, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i8* %299, i8* %300)
  %302 = load i32*, i32** %8, align 8
  %303 = icmp eq i32* %302, null
  %304 = zext i1 %303 to i32
  %305 = call i32 (i32, i8*, ...) @ok(i32 %304, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0))
  %306 = call i32 (...) @GetProcessHeap()
  %307 = load i8*, i8** %4, align 8
  %308 = call i32 @HeapFree(i32 %306, i32 0, i8* %307)
  %309 = load i32, i32* @MSHCTX_DIFFERENTMACHINE, align 4
  %310 = call i32 @init_user_marshal_cb(%struct.TYPE_5__* %1, i32* %2, i32* %3, i8* null, i32 0, i32 %309)
  %311 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %312 = call i32 @HMETAFILEPICT_UserFree(i32* %311, i32** %8)
  ret void
}

declare dso_local i32* @GlobalAlloc(i32, i32) #1

declare dso_local %struct.TYPE_6__* @GlobalLock(i32*) #1

declare dso_local i64 @create_mf(...) #1

declare dso_local i32 @GlobalUnlock(i32*) #1

declare dso_local i32 @init_user_marshal_cb(%struct.TYPE_5__*, i32*, i32*, i8*, i32, i32) #1

declare dso_local i32 @HMETAFILEPICT_UserSize(i32*, i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i8* @HMETAFILEPICT_UserMarshal(i32*, i8*, i32**) #1

declare dso_local i8* @HMETAFILEPICT_UserUnmarshal(i32*, i8*, i32**) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

declare dso_local i32 @HMETAFILEPICT_UserFree(i32*, i32**) #1

declare dso_local i32 @DeleteMetaFile(i64) #1

declare dso_local i32 @GlobalFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
