; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_olepicture.c_test_load_save_empty_picture.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_olepicture.c_test_load_save_empty_picture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i16 }
%struct.TYPE_6__ = type { i64 }

@PICTYPE_NONE = common dso_local global i16 0, align 2
@IID_IPicture = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [36 x i8] c"OleCreatePictureIndirect error %#x\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"get_Type error %#x\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"expected picture type PICTYPE_NONE, got %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"get_Handle error %#8x\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"get_Handle returned wrong handle %#x\0A\00", align 1
@GMEM_ZEROINIT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"createstreamonhglobal error %#x\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"IPicture_SaveasFile error %#x\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"expected -1, got %d\0A\00", align 1
@IID_IPersistStream = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"QueryInterface error %#x\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"Save error %#x\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"lt\00\00\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"got wrong stream header %04x\0A\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"expected stream size 0, got %u\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [18 x i8] c"IStream_Seek %#x\0A\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"OleLoadPicture error %#x\0A\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"picture should not be not NULL\0A\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"get_Type error %#8x\0A\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"failed to create empty image stream\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_load_save_empty_picture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_load_save_empty_picture() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_5__, align 4
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca i16*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__, align 8
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  %13 = call i32 @memset(i32** %1, i32 0, i32 8)
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  store i32 8, i32* %14, align 4
  %15 = load i16, i16* @PICTYPE_NONE, align 2
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  store i16 %15, i16* %16, align 4
  %17 = load i32, i32* @FALSE, align 4
  %18 = bitcast i32** %1 to i8**
  %19 = call signext i16 @OleCreatePictureIndirect(%struct.TYPE_5__* %2, i32* @IID_IPicture, i32 %17, i8** %18)
  store i16 %19, i16* %11, align 2
  %20 = load i16, i16* %11, align 2
  %21 = sext i16 %20 to i32
  %22 = load i16, i16* @S_OK, align 2
  %23 = sext i16 %22 to i32
  %24 = icmp eq i32 %21, %23
  %25 = zext i1 %24 to i32
  %26 = load i16, i16* %11, align 2
  %27 = sext i16 %26 to i32
  %28 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %27)
  store i16 -1, i16* %3, align 2
  %29 = load i32*, i32** %1, align 8
  %30 = call signext i16 @IPicture_get_Type(i32* %29, i16* %3)
  store i16 %30, i16* %11, align 2
  %31 = load i16, i16* %11, align 2
  %32 = sext i16 %31 to i32
  %33 = load i16, i16* @S_OK, align 2
  %34 = sext i16 %33 to i32
  %35 = icmp eq i32 %32, %34
  %36 = zext i1 %35 to i32
  %37 = load i16, i16* %11, align 2
  %38 = sext i16 %37 to i32
  %39 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i16, i16* %3, align 2
  %41 = sext i16 %40 to i32
  %42 = load i16, i16* @PICTYPE_NONE, align 2
  %43 = sext i16 %42 to i32
  %44 = icmp eq i32 %41, %43
  %45 = zext i1 %44 to i32
  %46 = load i16, i16* %3, align 2
  %47 = sext i16 %46 to i32
  %48 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  store i16 -16657, i16* %4, align 2
  %49 = load i32*, i32** %1, align 8
  %50 = call signext i16 @IPicture_get_Handle(i32* %49, i16* %4)
  store i16 %50, i16* %11, align 2
  %51 = load i16, i16* %11, align 2
  %52 = sext i16 %51 to i32
  %53 = load i16, i16* @S_OK, align 2
  %54 = sext i16 %53 to i32
  %55 = icmp eq i32 %52, %54
  %56 = zext i1 %55 to i32
  %57 = load i16, i16* %11, align 2
  %58 = sext i16 %57 to i32
  %59 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  %60 = load i16, i16* %4, align 2
  %61 = icmp ne i16 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = load i16, i16* %4, align 2
  %65 = sext i16 %64 to i32
  %66 = call i32 (i32, i8*, ...) @ok(i32 %63, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @GMEM_ZEROINIT, align 4
  %68 = call i32 @GlobalAlloc(i32 %67, i32 4096)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @FALSE, align 4
  %71 = call signext i16 @CreateStreamOnHGlobal(i32 %69, i32 %70, i32** %8)
  store i16 %71, i16* %11, align 2
  %72 = load i16, i16* %11, align 2
  %73 = sext i16 %72 to i32
  %74 = load i16, i16* @S_OK, align 2
  %75 = sext i16 %74 to i32
  %76 = icmp eq i32 %73, %75
  %77 = zext i1 %76 to i32
  %78 = load i16, i16* %11, align 2
  %79 = sext i16 %78 to i32
  %80 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %79)
  store i32 -1, i32* %12, align 4
  %81 = load i32*, i32** %1, align 8
  %82 = load i32*, i32** %8, align 8
  %83 = load i32, i32* @TRUE, align 4
  %84 = call signext i16 @IPicture_SaveAsFile(i32* %81, i32* %82, i32 %83, i32* %12)
  store i16 %84, i16* %11, align 2
  %85 = load i16, i16* %11, align 2
  %86 = sext i16 %85 to i32
  %87 = load i16, i16* @S_OK, align 2
  %88 = sext i16 %87 to i32
  %89 = icmp eq i32 %86, %88
  %90 = zext i1 %89 to i32
  %91 = load i16, i16* %11, align 2
  %92 = sext i16 %91 to i32
  %93 = call i32 (i32, i8*, ...) @ok(i32 %90, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* %12, align 4
  %95 = icmp eq i32 %94, -1
  %96 = zext i1 %95 to i32
  %97 = load i32, i32* %12, align 4
  %98 = call i32 (i32, i8*, ...) @ok(i32 %96, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %97)
  store i32 -1, i32* %12, align 4
  %99 = load i32*, i32** %1, align 8
  %100 = load i32*, i32** %8, align 8
  %101 = load i32, i32* @FALSE, align 4
  %102 = call signext i16 @IPicture_SaveAsFile(i32* %99, i32* %100, i32 %101, i32* %12)
  store i16 %102, i16* %11, align 2
  %103 = load i16, i16* %11, align 2
  %104 = sext i16 %103 to i32
  %105 = load i16, i16* @S_OK, align 2
  %106 = sext i16 %105 to i32
  %107 = icmp eq i32 %104, %106
  %108 = zext i1 %107 to i32
  %109 = load i16, i16* %11, align 2
  %110 = sext i16 %109 to i32
  %111 = call i32 (i32, i8*, ...) @ok(i32 %108, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* %12, align 4
  %113 = icmp eq i32 %112, -1
  %114 = zext i1 %113 to i32
  %115 = load i32, i32* %12, align 4
  %116 = call i32 (i32, i8*, ...) @ok(i32 %114, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %115)
  %117 = load i32*, i32** %1, align 8
  %118 = bitcast i32** %7 to i8**
  %119 = call signext i16 @IPicture_QueryInterface(i32* %117, i32* @IID_IPersistStream, i8** %118)
  store i16 %119, i16* %11, align 2
  %120 = load i16, i16* %11, align 2
  %121 = sext i16 %120 to i32
  %122 = load i16, i16* @S_OK, align 2
  %123 = sext i16 %122 to i32
  %124 = icmp eq i32 %121, %123
  %125 = zext i1 %124 to i32
  %126 = load i16, i16* %11, align 2
  %127 = sext i16 %126 to i32
  %128 = call i32 (i32, i8*, ...) @ok(i32 %125, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %127)
  %129 = load i32*, i32** %7, align 8
  %130 = load i32*, i32** %8, align 8
  %131 = load i32, i32* @TRUE, align 4
  %132 = call signext i16 @IPersistStream_Save(i32* %129, i32* %130, i32 %131)
  store i16 %132, i16* %11, align 2
  %133 = load i16, i16* %11, align 2
  %134 = sext i16 %133 to i32
  %135 = load i16, i16* @S_OK, align 2
  %136 = sext i16 %135 to i32
  %137 = icmp eq i32 %134, %136
  %138 = zext i1 %137 to i32
  %139 = load i16, i16* %11, align 2
  %140 = sext i16 %139 to i32
  %141 = call i32 (i32, i8*, ...) @ok(i32 %138, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 %140)
  %142 = load i32, i32* %5, align 4
  %143 = call i16* @GlobalLock(i32 %142)
  store i16* %143, i16** %6, align 8
  %144 = load i16*, i16** %6, align 8
  %145 = call i32 @memcmp(i16* %144, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 4)
  %146 = icmp ne i32 %145, 0
  %147 = xor i1 %146, true
  %148 = zext i1 %147 to i32
  %149 = load i16*, i16** %6, align 8
  %150 = getelementptr inbounds i16, i16* %149, i64 0
  %151 = load i16, i16* %150, align 2
  %152 = sext i16 %151 to i32
  %153 = call i32 (i32, i8*, ...) @ok(i32 %148, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i32 %152)
  %154 = load i16*, i16** %6, align 8
  %155 = getelementptr inbounds i16, i16* %154, i64 1
  %156 = load i16, i16* %155, align 2
  %157 = sext i16 %156 to i32
  %158 = icmp eq i32 %157, 0
  %159 = zext i1 %158 to i32
  %160 = load i16*, i16** %6, align 8
  %161 = getelementptr inbounds i16, i16* %160, i64 1
  %162 = load i16, i16* %161, align 2
  %163 = sext i16 %162 to i32
  %164 = call i32 (i32, i8*, ...) @ok(i32 %159, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i32 %163)
  %165 = load i32, i32* %5, align 4
  %166 = call i32 @GlobalUnlock(i32 %165)
  %167 = load i32*, i32** %7, align 8
  %168 = call i32 @IPersistStream_Release(i32* %167)
  %169 = load i32*, i32** %1, align 8
  %170 = call i32 @IPicture_Release(i32* %169)
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store i64 0, i64* %171, align 8
  %172 = load i32*, i32** %8, align 8
  %173 = load i32, i32* @SEEK_SET, align 4
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = call signext i16 @IStream_Seek(i32* %172, i64 %175, i32 %173, i32* null)
  store i16 %176, i16* %11, align 2
  %177 = load i16, i16* %11, align 2
  %178 = sext i16 %177 to i32
  %179 = load i16, i16* @S_OK, align 2
  %180 = sext i16 %179 to i32
  %181 = icmp eq i32 %178, %180
  %182 = zext i1 %181 to i32
  %183 = load i16, i16* %11, align 2
  %184 = sext i16 %183 to i32
  %185 = call i32 (i32, i8*, ...) @ok(i32 %182, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i32 %184)
  store i32* null, i32** %1, align 8
  %186 = load i32*, i32** %8, align 8
  %187 = load i32, i32* @FALSE, align 4
  %188 = bitcast i32** %1 to i8**
  %189 = call signext i16 @pOleLoadPicture(i32* %186, i32 0, i32 %187, i32* @IID_IPicture, i8** %188)
  store i16 %189, i16* %11, align 2
  %190 = load i16, i16* %11, align 2
  %191 = sext i16 %190 to i32
  %192 = load i16, i16* @S_OK, align 2
  %193 = sext i16 %192 to i32
  %194 = icmp eq i32 %191, %193
  %195 = zext i1 %194 to i32
  %196 = load i16, i16* %11, align 2
  %197 = sext i16 %196 to i32
  %198 = call i32 (i32, i8*, ...) @ok(i32 %195, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), i32 %197)
  %199 = load i32*, i32** %1, align 8
  %200 = icmp ne i32* %199, null
  %201 = zext i1 %200 to i32
  %202 = call i32 (i32, i8*, ...) @ok(i32 %201, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0))
  %203 = load i32*, i32** %1, align 8
  %204 = icmp ne i32* %203, null
  br i1 %204, label %205, label %246

205:                                              ; preds = %0
  store i16 -1, i16* %3, align 2
  %206 = load i32*, i32** %1, align 8
  %207 = call signext i16 @IPicture_get_Type(i32* %206, i16* %3)
  store i16 %207, i16* %11, align 2
  %208 = load i16, i16* %11, align 2
  %209 = sext i16 %208 to i32
  %210 = load i16, i16* @S_OK, align 2
  %211 = sext i16 %210 to i32
  %212 = icmp eq i32 %209, %211
  %213 = zext i1 %212 to i32
  %214 = load i16, i16* %11, align 2
  %215 = sext i16 %214 to i32
  %216 = call i32 (i32, i8*, ...) @ok(i32 %213, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i32 %215)
  %217 = load i16, i16* %3, align 2
  %218 = sext i16 %217 to i32
  %219 = load i16, i16* @PICTYPE_NONE, align 2
  %220 = sext i16 %219 to i32
  %221 = icmp eq i32 %218, %220
  %222 = zext i1 %221 to i32
  %223 = load i16, i16* %3, align 2
  %224 = sext i16 %223 to i32
  %225 = call i32 (i32, i8*, ...) @ok(i32 %222, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %224)
  store i16 -16657, i16* %4, align 2
  %226 = load i32*, i32** %1, align 8
  %227 = call signext i16 @IPicture_get_Handle(i32* %226, i16* %4)
  store i16 %227, i16* %11, align 2
  %228 = load i16, i16* %11, align 2
  %229 = sext i16 %228 to i32
  %230 = load i16, i16* @S_OK, align 2
  %231 = sext i16 %230 to i32
  %232 = icmp eq i32 %229, %231
  %233 = zext i1 %232 to i32
  %234 = load i16, i16* %11, align 2
  %235 = sext i16 %234 to i32
  %236 = call i32 (i32, i8*, ...) @ok(i32 %233, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %235)
  %237 = load i16, i16* %4, align 2
  %238 = icmp ne i16 %237, 0
  %239 = xor i1 %238, true
  %240 = zext i1 %239 to i32
  %241 = load i16, i16* %4, align 2
  %242 = sext i16 %241 to i32
  %243 = call i32 (i32, i8*, ...) @ok(i32 %240, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %242)
  %244 = load i32*, i32** %1, align 8
  %245 = call i32 @IPicture_Release(i32* %244)
  br label %246

246:                                              ; preds = %205, %0
  %247 = load i32*, i32** %8, align 8
  %248 = call i32 @IStream_Release(i32* %247)
  %249 = load i32, i32* %5, align 4
  %250 = call i32* @NoStatStream_Construct(i32 %249)
  store i32* %250, i32** %9, align 8
  %251 = load i32*, i32** %9, align 8
  %252 = icmp ne i32* %251, null
  %253 = zext i1 %252 to i32
  %254 = call i32 (i32, i8*, ...) @ok(i32 %253, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i64 0, i64 0))
  store i32* null, i32** %1, align 8
  %255 = load i32*, i32** %9, align 8
  %256 = load i32, i32* @FALSE, align 4
  %257 = bitcast i32** %1 to i8**
  %258 = call signext i16 @pOleLoadPicture(i32* %255, i32 0, i32 %256, i32* @IID_IPicture, i8** %257)
  store i16 %258, i16* %11, align 2
  %259 = load i16, i16* %11, align 2
  %260 = sext i16 %259 to i32
  %261 = load i16, i16* @S_OK, align 2
  %262 = sext i16 %261 to i32
  %263 = icmp eq i32 %260, %262
  %264 = zext i1 %263 to i32
  %265 = load i16, i16* %11, align 2
  %266 = sext i16 %265 to i32
  %267 = call i32 (i32, i8*, ...) @ok(i32 %264, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), i32 %266)
  %268 = load i32*, i32** %1, align 8
  %269 = icmp ne i32* %268, null
  %270 = zext i1 %269 to i32
  %271 = call i32 (i32, i8*, ...) @ok(i32 %270, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0))
  %272 = load i32*, i32** %1, align 8
  %273 = icmp ne i32* %272, null
  br i1 %273, label %274, label %315

274:                                              ; preds = %246
  store i16 -1, i16* %3, align 2
  %275 = load i32*, i32** %1, align 8
  %276 = call signext i16 @IPicture_get_Type(i32* %275, i16* %3)
  store i16 %276, i16* %11, align 2
  %277 = load i16, i16* %11, align 2
  %278 = sext i16 %277 to i32
  %279 = load i16, i16* @S_OK, align 2
  %280 = sext i16 %279 to i32
  %281 = icmp eq i32 %278, %280
  %282 = zext i1 %281 to i32
  %283 = load i16, i16* %11, align 2
  %284 = sext i16 %283 to i32
  %285 = call i32 (i32, i8*, ...) @ok(i32 %282, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i32 %284)
  %286 = load i16, i16* %3, align 2
  %287 = sext i16 %286 to i32
  %288 = load i16, i16* @PICTYPE_NONE, align 2
  %289 = sext i16 %288 to i32
  %290 = icmp eq i32 %287, %289
  %291 = zext i1 %290 to i32
  %292 = load i16, i16* %3, align 2
  %293 = sext i16 %292 to i32
  %294 = call i32 (i32, i8*, ...) @ok(i32 %291, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %293)
  store i16 -16657, i16* %4, align 2
  %295 = load i32*, i32** %1, align 8
  %296 = call signext i16 @IPicture_get_Handle(i32* %295, i16* %4)
  store i16 %296, i16* %11, align 2
  %297 = load i16, i16* %11, align 2
  %298 = sext i16 %297 to i32
  %299 = load i16, i16* @S_OK, align 2
  %300 = sext i16 %299 to i32
  %301 = icmp eq i32 %298, %300
  %302 = zext i1 %301 to i32
  %303 = load i16, i16* %11, align 2
  %304 = sext i16 %303 to i32
  %305 = call i32 (i32, i8*, ...) @ok(i32 %302, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %304)
  %306 = load i16, i16* %4, align 2
  %307 = icmp ne i16 %306, 0
  %308 = xor i1 %307, true
  %309 = zext i1 %308 to i32
  %310 = load i16, i16* %4, align 2
  %311 = sext i16 %310 to i32
  %312 = call i32 (i32, i8*, ...) @ok(i32 %309, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %311)
  %313 = load i32*, i32** %1, align 8
  %314 = call i32 @IPicture_Release(i32* %313)
  br label %315

315:                                              ; preds = %274, %246
  %316 = load i32*, i32** %9, align 8
  %317 = call i32 @IStream_Release(i32* %316)
  ret void
}

declare dso_local i32 @memset(i32**, i32, i32) #1

declare dso_local signext i16 @OleCreatePictureIndirect(%struct.TYPE_5__*, i32*, i32, i8**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local signext i16 @IPicture_get_Type(i32*, i16*) #1

declare dso_local signext i16 @IPicture_get_Handle(i32*, i16*) #1

declare dso_local i32 @GlobalAlloc(i32, i32) #1

declare dso_local signext i16 @CreateStreamOnHGlobal(i32, i32, i32**) #1

declare dso_local signext i16 @IPicture_SaveAsFile(i32*, i32*, i32, i32*) #1

declare dso_local signext i16 @IPicture_QueryInterface(i32*, i32*, i8**) #1

declare dso_local signext i16 @IPersistStream_Save(i32*, i32*, i32) #1

declare dso_local i16* @GlobalLock(i32) #1

declare dso_local i32 @memcmp(i16*, i8*, i32) #1

declare dso_local i32 @GlobalUnlock(i32) #1

declare dso_local i32 @IPersistStream_Release(i32*) #1

declare dso_local i32 @IPicture_Release(i32*) #1

declare dso_local signext i16 @IStream_Seek(i32*, i64, i32, i32*) #1

declare dso_local signext i16 @pOleLoadPicture(i32*, i32, i32, i32*, i8**) #1

declare dso_local i32 @IStream_Release(i32*) #1

declare dso_local i32* @NoStatStream_Construct(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
