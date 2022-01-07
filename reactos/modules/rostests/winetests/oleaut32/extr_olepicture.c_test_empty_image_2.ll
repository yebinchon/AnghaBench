; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_olepicture.c_test_empty_image_2.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_olepicture.c_test_empty_image_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"lt\00\00\00", align 1
@TRUE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [55 x i8] c"CreatestreamOnHGlobal failed? doubt it... hres 0x%08x\0A\00", align 1
@SEEK_CUR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"istream seek failed? doubt it... hres 0x%08x\0A\00", align 1
@IID_IPicture = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"empty picture not loaded, hres 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"empty picture not loaded, pic is NULL\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"empty picture get type failed with hres 0x%08x\0A\00", align 1
@PICTYPE_NONE = common dso_local global i16 0, align 2
@.str.6 = private unnamed_addr constant [43 x i8] c"type is %d, but should be PICTYPE_NONE(0)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_empty_image_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_empty_image_2() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__, align 4
  %9 = alloca i16, align 2
  store i32* null, i32** %3, align 8
  store i32* null, i32** %5, align 8
  %10 = call i32 @GlobalAlloc(i32 0, i32 200)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i64 @GlobalLock(i32 %11)
  store i64 %12, i64* %1, align 8
  %13 = load i64, i64* %1, align 8
  %14 = add nsw i64 %13, 42
  store i64 %14, i64* %1, align 8
  %15 = load i64, i64* %1, align 8
  %16 = call i32 @memcpy(i64 %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %17 = load i64, i64* %1, align 8
  %18 = inttoptr i64 %17 to i64*
  %19 = getelementptr inbounds i64, i64* %18, i64 1
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @TRUE, align 4
  %22 = call i64 @CreateStreamOnHGlobal(i32 %20, i32 %21, i32* %2)
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @S_OK, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i64, i64* %4, align 8
  %28 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i64 %27)
  %29 = call i32 @memset(%struct.TYPE_6__* %8, i32 0, i32 4)
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store i32 42, i32* %31, align 4
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* @SEEK_CUR, align 4
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @IStream_Seek(i32 %32, i32 %36, i32 %33, i32* %7)
  store i64 %37, i64* %4, align 8
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* @S_OK, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = load i64, i64* %4, align 8
  %43 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i64 %42)
  store i32* null, i32** %5, align 8
  %44 = load i32, i32* %2, align 4
  %45 = load i32, i32* @TRUE, align 4
  %46 = call i64 @pOleLoadPicture(i32 %44, i32 8, i32 %45, i32* @IID_IPicture, i32** %5)
  store i64 %46, i64* %4, align 8
  %47 = load i32*, i32** %5, align 8
  store i32* %47, i32** %3, align 8
  %48 = load i64, i64* %4, align 8
  %49 = load i64, i64* @S_OK, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i64, i64* %4, align 8
  %53 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i64 %52)
  %54 = load i32*, i32** %3, align 8
  %55 = icmp ne i32* %54, null
  %56 = zext i1 %55 to i32
  %57 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %58 = load i32*, i32** %3, align 8
  %59 = call i64 @IPicture_get_Type(i32* %58, i16* %9)
  store i64 %59, i64* %4, align 8
  %60 = load i64, i64* %4, align 8
  %61 = load i64, i64* @S_OK, align 8
  %62 = icmp eq i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = load i64, i64* %4, align 8
  %65 = call i32 (i32, i8*, ...) @ok(i32 %63, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i64 %64)
  %66 = load i16, i16* %9, align 2
  %67 = sext i16 %66 to i32
  %68 = load i16, i16* @PICTYPE_NONE, align 2
  %69 = sext i16 %68 to i32
  %70 = icmp eq i32 %67, %69
  %71 = zext i1 %70 to i32
  %72 = load i16, i16* %9, align 2
  %73 = sext i16 %72 to i32
  %74 = call i32 (i32, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %73)
  %75 = load i32*, i32** %3, align 8
  %76 = call i32 @IPicture_Release(i32* %75)
  %77 = load i32, i32* %2, align 4
  %78 = call i32 @IStream_Release(i32 %77)
  ret void
}

declare dso_local i32 @GlobalAlloc(i32, i32) #1

declare dso_local i64 @GlobalLock(i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i64 @CreateStreamOnHGlobal(i32, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i64 @IStream_Seek(i32, i32, i32, i32*) #1

declare dso_local i64 @pOleLoadPicture(i32, i32, i32, i32*, i32**) #1

declare dso_local i64 @IPicture_get_Type(i32*, i16*) #1

declare dso_local i32 @IPicture_Release(i32*) #1

declare dso_local i32 @IStream_Release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
