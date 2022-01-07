; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_olepicture.c_test_empty_image.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_olepicture.c_test_empty_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"lt\00\00\00", align 1
@TRUE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i16 0, align 2
@.str.1 = private unnamed_addr constant [55 x i8] c"CreatestreamOnHGlobal failed? doubt it... hres 0x%08x\0A\00", align 1
@SEEK_CUR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"istream seek failed? doubt it... hres 0x%08x\0A\00", align 1
@IID_IPicture = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"empty picture not loaded, hres 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"empty picture not loaded, pic is NULL\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"empty picture get type failed with hres 0x%08x\0A\00", align 1
@PICTYPE_NONE = common dso_local global i16 0, align 2
@.str.6 = private unnamed_addr constant [43 x i8] c"type is %d, but should be PICTYPE_NONE(0)\0A\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"empty picture get attributes failed with hres 0x%08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"attr is %d, but should be 0\0A\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"empty picture get handle failed with hres 0x%08x\0A\00", align 1
@.str.10 = private unnamed_addr constant [55 x i8] c"empty picture get handle did not return 0, but 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_empty_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_empty_image() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  store i32* null, i32** %3, align 8
  store i32* null, i32** %5, align 8
  %12 = call i32 @GlobalAlloc(i32 0, i32 8)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @GlobalLock(i32 %13)
  store i64 %14, i64* %1, align 8
  %15 = load i64, i64* %1, align 8
  %16 = call i32 @memcpy(i64 %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %17 = load i64, i64* %1, align 8
  %18 = inttoptr i64 %17 to i16*
  %19 = getelementptr inbounds i16, i16* %18, i64 1
  store i16 0, i16* %19, align 2
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @TRUE, align 4
  %22 = call signext i16 @CreateStreamOnHGlobal(i32 %20, i32 %21, i32* %2)
  store i16 %22, i16* %4, align 2
  %23 = load i16, i16* %4, align 2
  %24 = sext i16 %23 to i32
  %25 = load i16, i16* @S_OK, align 2
  %26 = sext i16 %25 to i32
  %27 = icmp eq i32 %24, %26
  %28 = zext i1 %27 to i32
  %29 = load i16, i16* %4, align 2
  %30 = sext i16 %29 to i32
  %31 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = call i32 @memset(i32* %9, i32 0, i32 4)
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @SEEK_CUR, align 4
  %36 = call signext i16 @IStream_Seek(i32 %33, i32 %34, i32 %35, i32* %8)
  store i16 %36, i16* %4, align 2
  %37 = load i16, i16* %4, align 2
  %38 = sext i16 %37 to i32
  %39 = load i16, i16* @S_OK, align 2
  %40 = sext i16 %39 to i32
  %41 = icmp eq i32 %38, %40
  %42 = zext i1 %41 to i32
  %43 = load i16, i16* %4, align 2
  %44 = sext i16 %43 to i32
  %45 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  store i32* null, i32** %5, align 8
  %46 = load i32, i32* %2, align 4
  %47 = load i32, i32* @TRUE, align 4
  %48 = call signext i16 @pOleLoadPicture(i32 %46, i32 8, i32 %47, i32* @IID_IPicture, i32** %5)
  store i16 %48, i16* %4, align 2
  %49 = load i32*, i32** %5, align 8
  store i32* %49, i32** %3, align 8
  %50 = load i16, i16* %4, align 2
  %51 = sext i16 %50 to i32
  %52 = load i16, i16* @S_OK, align 2
  %53 = sext i16 %52 to i32
  %54 = icmp eq i32 %51, %53
  %55 = zext i1 %54 to i32
  %56 = load i16, i16* %4, align 2
  %57 = sext i16 %56 to i32
  %58 = call i32 (i32, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  %59 = load i32*, i32** %3, align 8
  %60 = icmp ne i32* %59, null
  %61 = zext i1 %60 to i32
  %62 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %63 = load i32*, i32** %3, align 8
  %64 = call signext i16 @IPicture_get_Type(i32* %63, i16* %10)
  store i16 %64, i16* %4, align 2
  %65 = load i16, i16* %4, align 2
  %66 = sext i16 %65 to i32
  %67 = load i16, i16* @S_OK, align 2
  %68 = sext i16 %67 to i32
  %69 = icmp eq i32 %66, %68
  %70 = zext i1 %69 to i32
  %71 = load i16, i16* %4, align 2
  %72 = sext i16 %71 to i32
  %73 = call i32 (i32, i8*, ...) @ok(i32 %70, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 %72)
  %74 = load i16, i16* %10, align 2
  %75 = sext i16 %74 to i32
  %76 = load i16, i16* @PICTYPE_NONE, align 2
  %77 = sext i16 %76 to i32
  %78 = icmp eq i32 %75, %77
  %79 = zext i1 %78 to i32
  %80 = load i16, i16* %10, align 2
  %81 = sext i16 %80 to i32
  %82 = call i32 (i32, i8*, ...) @ok(i32 %79, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %81)
  store i16 -16657, i16* %11, align 2
  %83 = load i32*, i32** %3, align 8
  %84 = call signext i16 @IPicture_get_Attributes(i32* %83, i16* %11)
  store i16 %84, i16* %4, align 2
  %85 = load i16, i16* %4, align 2
  %86 = sext i16 %85 to i32
  %87 = load i16, i16* @S_OK, align 2
  %88 = sext i16 %87 to i32
  %89 = icmp eq i32 %86, %88
  %90 = zext i1 %89 to i32
  %91 = load i16, i16* %4, align 2
  %92 = sext i16 %91 to i32
  %93 = call i32 (i32, i8*, ...) @ok(i32 %90, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0), i32 %92)
  %94 = load i16, i16* %11, align 2
  %95 = sext i16 %94 to i32
  %96 = icmp eq i32 %95, 0
  %97 = zext i1 %96 to i32
  %98 = load i16, i16* %11, align 2
  %99 = sext i16 %98 to i32
  %100 = call i32 (i32, i8*, ...) @ok(i32 %97, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %99)
  %101 = load i32*, i32** %3, align 8
  %102 = call signext i16 @IPicture_get_Handle(i32* %101, i16* %7)
  store i16 %102, i16* %4, align 2
  %103 = load i16, i16* %4, align 2
  %104 = sext i16 %103 to i32
  %105 = load i16, i16* @S_OK, align 2
  %106 = sext i16 %105 to i32
  %107 = icmp eq i32 %104, %106
  %108 = zext i1 %107 to i32
  %109 = load i16, i16* %4, align 2
  %110 = sext i16 %109 to i32
  %111 = call i32 (i32, i8*, ...) @ok(i32 %108, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i64 0, i64 0), i32 %110)
  %112 = load i16, i16* %7, align 2
  %113 = sext i16 %112 to i32
  %114 = icmp eq i32 %113, 0
  %115 = zext i1 %114 to i32
  %116 = load i16, i16* %7, align 2
  %117 = sext i16 %116 to i32
  %118 = call i32 (i32, i8*, ...) @ok(i32 %115, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.10, i64 0, i64 0), i32 %117)
  %119 = load i32*, i32** %3, align 8
  %120 = call i32 @IPicture_Release(i32* %119)
  %121 = load i32, i32* %2, align 4
  %122 = call i32 @IStream_Release(i32 %121)
  ret void
}

declare dso_local i32 @GlobalAlloc(i32, i32) #1

declare dso_local i64 @GlobalLock(i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local signext i16 @CreateStreamOnHGlobal(i32, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local signext i16 @IStream_Seek(i32, i32, i32, i32*) #1

declare dso_local signext i16 @pOleLoadPicture(i32, i32, i32, i32*, i32**) #1

declare dso_local signext i16 @IPicture_get_Type(i32*, i16*) #1

declare dso_local signext i16 @IPicture_get_Attributes(i32*, i16*) #1

declare dso_local signext i16 @IPicture_get_Handle(i32*, i16*) #1

declare dso_local i32 @IPicture_Release(i32*) #1

declare dso_local i32 @IStream_Release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
