; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_olepicture.c_test_load_save_emf.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_olepicture.c_test_load_save_emf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i16, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i64 }

@.str = private unnamed_addr constant [27 x i8] c"CreateEnhMetaFileA failed\0A\00", align 1
@PICTYPE_ENHMETAFILE = common dso_local global i16 0, align 2
@.str.1 = private unnamed_addr constant [25 x i8] c"CloseEnhMetaFile failed\0A\00", align 1
@IID_IPicture = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"OleCreatePictureIndirect error %#x\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"get_Type error %#8x\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"expected PICTYPE_ENHMETAFILE, got %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"get_Handle error %#8x\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"get_Handle returned wrong handle %#x\0A\00", align 1
@GMEM_MOVEABLE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"createstreamonhglobal error %#x\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"IPicture_SaveasFile error %#x\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"expected 128, got %d\0A\00", align 1
@EMR_HEADER = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [18 x i8] c"wrong iType %04x\0A\00", align 1
@ENHMETA_SIGNATURE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [23 x i8] c"wrong dSignature %08x\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [26 x i8] c"expected E_FAIL, got %#x\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"expected -1, got %d\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [18 x i8] c"IStream_Seek %#x\0A\00", align 1
@IID_IPersistStream = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [26 x i8] c"QueryInterface error %#x\0A\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"Save error %#x\0A\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"lt\00\00\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"got wrong stream header %04x\0A\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"expected 128, got %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_load_save_emf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_load_save_emf() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_8__, align 8
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_9__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = call i64 @CreateEnhMetaFileA(i32 0, i32* null, i32* null, i32* null)
  store i64 %14, i64* %1, align 8
  %15 = load i64, i64* %1, align 8
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 (i32, i8*, ...) @ok(i32 %17, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  store i32 16, i32* %19, align 8
  %20 = load i16, i16* @PICTYPE_ENHMETAFILE, align 2
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  store i16 %20, i16* %21, align 4
  %22 = load i64, i64* %1, align 8
  %23 = call i64 @CloseEnhMetaFile(i64 %22)
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @FALSE, align 4
  %33 = bitcast i32** %2 to i8**
  %34 = call i32 @OleCreatePictureIndirect(%struct.TYPE_8__* %3, i32* @IID_IPicture, i32 %32, i8** %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @S_OK, align 4
  %37 = icmp eq i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* %12, align 4
  %40 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  store i16 -1, i16* %4, align 2
  %41 = load i32*, i32** %2, align 8
  %42 = call i32 @IPicture_get_Type(i32* %41, i16* %4)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* @S_OK, align 4
  %45 = icmp eq i32 %43, %44
  %46 = zext i1 %45 to i32
  %47 = load i32, i32* %12, align 4
  %48 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %47)
  %49 = load i16, i16* %4, align 2
  %50 = sext i16 %49 to i32
  %51 = load i16, i16* @PICTYPE_ENHMETAFILE, align 2
  %52 = sext i16 %51 to i32
  %53 = icmp eq i32 %50, %52
  %54 = zext i1 %53 to i32
  %55 = load i16, i16* %4, align 2
  %56 = sext i16 %55 to i32
  %57 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %56)
  %58 = load i32*, i32** %2, align 8
  %59 = call i32 @IPicture_get_Handle(i32* %58, i32* %5)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* @S_OK, align 4
  %62 = icmp eq i32 %60, %61
  %63 = zext i1 %62 to i32
  %64 = load i32, i32* %12, align 4
  %65 = call i32 (i32, i8*, ...) @ok(i32 %63, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %5, align 4
  %67 = call i64 @IntToPtr(i32 %66)
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %67, %70
  %72 = zext i1 %71 to i32
  %73 = load i32, i32* %5, align 4
  %74 = call i32 (i32, i8*, ...) @ok(i32 %72, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* @GMEM_MOVEABLE, align 4
  %76 = call i32 @GlobalAlloc(i32 %75, i32 0)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @FALSE, align 4
  %79 = call i32 @CreateStreamOnHGlobal(i32 %77, i32 %78, i32** %10)
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* @S_OK, align 4
  %82 = icmp eq i32 %80, %81
  %83 = zext i1 %82 to i32
  %84 = load i32, i32* %12, align 4
  %85 = call i32 (i32, i8*, ...) @ok(i32 %83, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %84)
  store i32 -1, i32* %13, align 4
  %86 = load i32*, i32** %2, align 8
  %87 = load i32*, i32** %10, align 8
  %88 = load i32, i32* @TRUE, align 4
  %89 = call i32 @IPicture_SaveAsFile(i32* %86, i32* %87, i32 %88, i32* %13)
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* @S_OK, align 4
  %92 = icmp eq i32 %90, %91
  %93 = zext i1 %92 to i32
  %94 = load i32, i32* %12, align 4
  %95 = call i32 (i32, i8*, ...) @ok(i32 %93, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* %13, align 4
  %97 = icmp eq i32 %96, 128
  %98 = zext i1 %97 to i32
  %99 = load i32, i32* %13, align 4
  %100 = call i32 (i32, i8*, ...) @ok(i32 %98, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* %6, align 4
  %102 = call i8* @GlobalLock(i32 %101)
  %103 = bitcast i8* %102 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %103, %struct.TYPE_10__** %8, align 8
  %104 = load i32, i32* %13, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %127

106:                                              ; preds = %0
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @EMR_HEADER, align 4
  %111 = icmp eq i32 %109, %110
  %112 = zext i1 %111 to i32
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (i32, i8*, ...) @ok(i32 %112, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 %115)
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @ENHMETA_SIGNATURE, align 4
  %121 = icmp eq i32 %119, %120
  %122 = zext i1 %121 to i32
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 (i32, i8*, ...) @ok(i32 %122, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i32 %125)
  br label %127

127:                                              ; preds = %106, %0
  %128 = load i32, i32* %6, align 4
  %129 = call i32 @GlobalUnlock(i32 %128)
  store i32 -1, i32* %13, align 4
  %130 = load i32*, i32** %2, align 8
  %131 = load i32*, i32** %10, align 8
  %132 = load i32, i32* @FALSE, align 4
  %133 = call i32 @IPicture_SaveAsFile(i32* %130, i32* %131, i32 %132, i32* %13)
  store i32 %133, i32* %12, align 4
  %134 = load i32, i32* %12, align 4
  %135 = load i32, i32* @E_FAIL, align 4
  %136 = icmp eq i32 %134, %135
  %137 = zext i1 %136 to i32
  %138 = load i32, i32* %12, align 4
  %139 = call i32 (i32, i8*, ...) @ok(i32 %137, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 %138)
  %140 = load i32, i32* %13, align 4
  %141 = icmp eq i32 %140, -1
  %142 = zext i1 %141 to i32
  %143 = load i32, i32* %13, align 4
  %144 = call i32 (i32, i8*, ...) @ok(i32 %142, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i32 %143)
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  store i64 0, i64* %145, align 8
  %146 = load i32*, i32** %10, align 8
  %147 = load i32, i32* @SEEK_SET, align 4
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = call i32 @IStream_Seek(i32* %146, i64 %149, i32 %147, i32* null)
  store i32 %150, i32* %12, align 4
  %151 = load i32, i32* %12, align 4
  %152 = load i32, i32* @S_OK, align 4
  %153 = icmp eq i32 %151, %152
  %154 = zext i1 %153 to i32
  %155 = load i32, i32* %12, align 4
  %156 = call i32 (i32, i8*, ...) @ok(i32 %154, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 %155)
  %157 = load i32*, i32** %2, align 8
  %158 = bitcast i32** %9 to i8**
  %159 = call i32 @IPicture_QueryInterface(i32* %157, i32* @IID_IPersistStream, i8** %158)
  store i32 %159, i32* %12, align 4
  %160 = load i32, i32* %12, align 4
  %161 = load i32, i32* @S_OK, align 4
  %162 = icmp eq i32 %160, %161
  %163 = zext i1 %162 to i32
  %164 = load i32, i32* %12, align 4
  %165 = call i32 (i32, i8*, ...) @ok(i32 %163, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0), i32 %164)
  %166 = load i32*, i32** %9, align 8
  %167 = load i32*, i32** %10, align 8
  %168 = load i32, i32* @TRUE, align 4
  %169 = call i32 @IPersistStream_Save(i32* %166, i32* %167, i32 %168)
  store i32 %169, i32* %12, align 4
  %170 = load i32, i32* %12, align 4
  %171 = load i32, i32* @S_OK, align 4
  %172 = icmp eq i32 %170, %171
  %173 = zext i1 %172 to i32
  %174 = load i32, i32* %12, align 4
  %175 = call i32 (i32, i8*, ...) @ok(i32 %173, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i32 %174)
  %176 = load i32*, i32** %9, align 8
  %177 = call i32 @IPersistStream_Release(i32* %176)
  %178 = load i32*, i32** %10, align 8
  %179 = call i32 @IStream_Release(i32* %178)
  %180 = load i32, i32* %6, align 4
  %181 = call i8* @GlobalLock(i32 %180)
  %182 = bitcast i8* %181 to i32*
  store i32* %182, i32** %7, align 8
  %183 = load i32*, i32** %7, align 8
  %184 = call i32 @memcmp(i32* %183, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i32 4)
  %185 = icmp ne i32 %184, 0
  %186 = xor i1 %185, true
  %187 = zext i1 %186 to i32
  %188 = load i32*, i32** %7, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 0
  %190 = load i32, i32* %189, align 4
  %191 = call i32 (i32, i8*, ...) @ok(i32 %187, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i64 0, i64 0), i32 %190)
  %192 = load i32*, i32** %7, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 1
  %194 = load i32, i32* %193, align 4
  %195 = icmp eq i32 %194, 128
  %196 = zext i1 %195 to i32
  %197 = load i32*, i32** %7, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 1
  %199 = load i32, i32* %198, align 4
  %200 = call i32 (i32, i8*, ...) @ok(i32 %196, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0), i32 %199)
  %201 = load i32*, i32** %7, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 2
  %203 = bitcast i32* %202 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %203, %struct.TYPE_10__** %8, align 8
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @EMR_HEADER, align 4
  %208 = icmp eq i32 %206, %207
  %209 = zext i1 %208 to i32
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = call i32 (i32, i8*, ...) @ok(i32 %209, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 %212)
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @ENHMETA_SIGNATURE, align 4
  %218 = icmp eq i32 %216, %217
  %219 = zext i1 %218 to i32
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = call i32 (i32, i8*, ...) @ok(i32 %219, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i32 %222)
  %224 = load i32, i32* %6, align 4
  %225 = call i32 @GlobalUnlock(i32 %224)
  %226 = load i32, i32* %6, align 4
  %227 = call i32 @GlobalFree(i32 %226)
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 2
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = call i32 @DeleteEnhMetaFile(i64 %230)
  %232 = load i32*, i32** %2, align 8
  %233 = call i32 @IPicture_Release(i32* %232)
  ret void
}

declare dso_local i64 @CreateEnhMetaFileA(i32, i32*, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @CloseEnhMetaFile(i64) #1

declare dso_local i32 @OleCreatePictureIndirect(%struct.TYPE_8__*, i32*, i32, i8**) #1

declare dso_local i32 @IPicture_get_Type(i32*, i16*) #1

declare dso_local i32 @IPicture_get_Handle(i32*, i32*) #1

declare dso_local i64 @IntToPtr(i32) #1

declare dso_local i32 @GlobalAlloc(i32, i32) #1

declare dso_local i32 @CreateStreamOnHGlobal(i32, i32, i32**) #1

declare dso_local i32 @IPicture_SaveAsFile(i32*, i32*, i32, i32*) #1

declare dso_local i8* @GlobalLock(i32) #1

declare dso_local i32 @GlobalUnlock(i32) #1

declare dso_local i32 @IStream_Seek(i32*, i64, i32, i32*) #1

declare dso_local i32 @IPicture_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IPersistStream_Save(i32*, i32*, i32) #1

declare dso_local i32 @IPersistStream_Release(i32*) #1

declare dso_local i32 @IStream_Release(i32*) #1

declare dso_local i32 @memcmp(i32*, i8*, i32) #1

declare dso_local i32 @GlobalFree(i32) #1

declare dso_local i32 @DeleteEnhMetaFile(i64) #1

declare dso_local i32 @IPicture_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
