; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_olepicture.c_test_load_save_bmp.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_olepicture.c_test_load_save_bmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i16, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_8__ = type { i64 }

@PICTYPE_BITMAP = common dso_local global i16 0, align 2
@IID_IPicture = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"OleCreatePictureIndirect error %#x\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"get_Type error %#8x\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"expected picture type PICTYPE_BITMAP, got %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"get_Handle error %#8x\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"get_Handle returned wrong handle %#x\0A\00", align 1
@GMEM_ZEROINIT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"createstreamonhglobal error %#x\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"IPicture_SaveasFile error %#x\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"expected 66, got %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"BM\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"got wrong bmp header %04x\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [26 x i8] c"expected E_FAIL, got %#x\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"expected -1, got %d\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [18 x i8] c"IStream_Seek %#x\0A\00", align 1
@IID_IPersistStream = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [26 x i8] c"QueryInterface error %#x\0A\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"Save error %#x\0A\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"lt\00\00\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"got wrong stream header %04x\0A\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"expected stream size 66, got %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_load_save_bmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_load_save_bmp() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_7__, align 8
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  store i32 24, i32* %12, align 8
  %13 = load i16, i16* @PICTYPE_BITMAP, align 2
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  store i16 %13, i16* %14, align 4
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = call i64 @CreateBitmap(i32 1, i32 1, i32 1, i32 1, i32* null)
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load i32, i32* @FALSE, align 4
  %21 = bitcast i32** %1 to i8**
  %22 = call i32 @OleCreatePictureIndirect(%struct.TYPE_7__* %2, i32* @IID_IPicture, i32 %20, i8** %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @S_OK, align 4
  %25 = icmp eq i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %27)
  store i16 -1, i16* %3, align 2
  %29 = load i32*, i32** %1, align 8
  %30 = call i32 @IPicture_get_Type(i32* %29, i16* %3)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @S_OK, align 4
  %33 = icmp eq i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @ok(i32 %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i16, i16* %3, align 2
  %38 = sext i16 %37 to i32
  %39 = load i16, i16* @PICTYPE_BITMAP, align 2
  %40 = sext i16 %39 to i32
  %41 = icmp eq i32 %38, %40
  %42 = zext i1 %41 to i32
  %43 = load i16, i16* %3, align 2
  %44 = sext i16 %43 to i32
  %45 = call i32 @ok(i32 %42, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = load i32*, i32** %1, align 8
  %47 = call i32 @IPicture_get_Handle(i32* %46, i32* %4)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @S_OK, align 4
  %50 = icmp eq i32 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @ok(i32 %51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %4, align 4
  %55 = call i64 @IntToPtr(i32 %54)
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %55, %58
  %60 = zext i1 %59 to i32
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @ok(i32 %60, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @GMEM_ZEROINIT, align 4
  %64 = call i32 @GlobalAlloc(i32 %63, i32 4096)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @FALSE, align 4
  %67 = call i32 @CreateStreamOnHGlobal(i32 %65, i32 %66, i32** %8)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @S_OK, align 4
  %70 = icmp eq i32 %68, %69
  %71 = zext i1 %70 to i32
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @ok(i32 %71, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %72)
  store i32 -1, i32* %11, align 4
  %74 = load i32*, i32** %1, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = load i32, i32* @TRUE, align 4
  %77 = call i32 @IPicture_SaveAsFile(i32* %74, i32* %75, i32 %76, i32* %11)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @S_OK, align 4
  %80 = icmp eq i32 %78, %79
  %81 = zext i1 %80 to i32
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @ok(i32 %81, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* %11, align 4
  %85 = icmp eq i32 %84, 66
  %86 = zext i1 %85 to i32
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @ok(i32 %86, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* %5, align 4
  %90 = call i32* @GlobalLock(i32 %89)
  store i32* %90, i32** %6, align 8
  %91 = load i32*, i32** %6, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = call i32 @memcmp(i32* %92, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 2)
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  %97 = load i32*, i32** %6, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @ok(i32 %96, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @GlobalUnlock(i32 %101)
  store i32 -1, i32* %11, align 4
  %103 = load i32*, i32** %1, align 8
  %104 = load i32*, i32** %8, align 8
  %105 = load i32, i32* @FALSE, align 4
  %106 = call i32 @IPicture_SaveAsFile(i32* %103, i32* %104, i32 %105, i32* %11)
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @E_FAIL, align 4
  %109 = icmp eq i32 %107, %108
  %110 = zext i1 %109 to i32
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @ok(i32 %110, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* %11, align 4
  %114 = icmp eq i32 %113, -1
  %115 = zext i1 %114 to i32
  %116 = load i32, i32* %11, align 4
  %117 = call i32 @ok(i32 %115, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 %116)
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  store i64 0, i64* %118, align 8
  %119 = load i32*, i32** %8, align 8
  %120 = load i32, i32* @SEEK_SET, align 4
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @IStream_Seek(i32* %119, i64 %122, i32 %120, i32* null)
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* @S_OK, align 4
  %126 = icmp eq i32 %124, %125
  %127 = zext i1 %126 to i32
  %128 = load i32, i32* %10, align 4
  %129 = call i32 @ok(i32 %127, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i32 %128)
  %130 = load i32*, i32** %1, align 8
  %131 = bitcast i32** %7 to i8**
  %132 = call i32 @IPicture_QueryInterface(i32* %130, i32* @IID_IPersistStream, i8** %131)
  store i32 %132, i32* %10, align 4
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* @S_OK, align 4
  %135 = icmp eq i32 %133, %134
  %136 = zext i1 %135 to i32
  %137 = load i32, i32* %10, align 4
  %138 = call i32 @ok(i32 %136, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 %137)
  %139 = load i32*, i32** %7, align 8
  %140 = load i32*, i32** %8, align 8
  %141 = load i32, i32* @TRUE, align 4
  %142 = call i32 @IPersistStream_Save(i32* %139, i32* %140, i32 %141)
  store i32 %142, i32* %10, align 4
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* @S_OK, align 4
  %145 = icmp eq i32 %143, %144
  %146 = zext i1 %145 to i32
  %147 = load i32, i32* %10, align 4
  %148 = call i32 @ok(i32 %146, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 %147)
  %149 = load i32*, i32** %7, align 8
  %150 = call i32 @IPersistStream_Release(i32* %149)
  %151 = load i32*, i32** %8, align 8
  %152 = call i32 @IStream_Release(i32* %151)
  %153 = load i32, i32* %5, align 4
  %154 = call i32* @GlobalLock(i32 %153)
  store i32* %154, i32** %6, align 8
  %155 = load i32*, i32** %6, align 8
  %156 = call i32 @memcmp(i32* %155, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i32 4)
  %157 = icmp ne i32 %156, 0
  %158 = xor i1 %157, true
  %159 = zext i1 %158 to i32
  %160 = load i32*, i32** %6, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @ok(i32 %159, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0), i32 %162)
  %164 = load i32*, i32** %6, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 1
  %166 = load i32, i32* %165, align 4
  %167 = icmp eq i32 %166, 66
  %168 = zext i1 %167 to i32
  %169 = load i32*, i32** %6, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 1
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @ok(i32 %168, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0), i32 %171)
  %173 = load i32*, i32** %6, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 2
  %175 = call i32 @memcmp(i32* %174, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 2)
  %176 = icmp ne i32 %175, 0
  %177 = xor i1 %176, true
  %178 = zext i1 %177 to i32
  %179 = load i32*, i32** %6, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 2
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @ok(i32 %178, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 %181)
  %183 = load i32, i32* %5, align 4
  %184 = call i32 @GlobalUnlock(i32 %183)
  %185 = load i32, i32* %5, align 4
  %186 = call i32 @GlobalFree(i32 %185)
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = call i32 @DeleteObject(i64 %189)
  %191 = load i32*, i32** %1, align 8
  %192 = call i32 @IPicture_Release(i32* %191)
  ret void
}

declare dso_local i64 @CreateBitmap(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @OleCreatePictureIndirect(%struct.TYPE_7__*, i32*, i32, i8**) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @IPicture_get_Type(i32*, i16*) #1

declare dso_local i32 @IPicture_get_Handle(i32*, i32*) #1

declare dso_local i64 @IntToPtr(i32) #1

declare dso_local i32 @GlobalAlloc(i32, i32) #1

declare dso_local i32 @CreateStreamOnHGlobal(i32, i32, i32**) #1

declare dso_local i32 @IPicture_SaveAsFile(i32*, i32*, i32, i32*) #1

declare dso_local i32* @GlobalLock(i32) #1

declare dso_local i32 @memcmp(i32*, i8*, i32) #1

declare dso_local i32 @GlobalUnlock(i32) #1

declare dso_local i32 @IStream_Seek(i32*, i64, i32, i32*) #1

declare dso_local i32 @IPicture_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IPersistStream_Save(i32*, i32*, i32) #1

declare dso_local i32 @IPersistStream_Release(i32*) #1

declare dso_local i32 @IStream_Release(i32*) #1

declare dso_local i32 @GlobalFree(i32) #1

declare dso_local i32 @DeleteObject(i64) #1

declare dso_local i32 @IPicture_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
