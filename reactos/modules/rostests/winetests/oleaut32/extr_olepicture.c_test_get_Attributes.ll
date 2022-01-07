; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_olepicture.c_test_get_Attributes.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_olepicture.c_test_get_Attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IPicture = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Failed to create a picture, hr %#x.\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"IPicture_get_Type does not return S_OK, but 0x%08x\0A\00", align 1
@PICTYPE_UNINITIALIZED = common dso_local global i16 0, align 2
@.str.2 = private unnamed_addr constant [49 x i8] c"Expected type = PICTYPE_UNINITIALIZED, got = %d\0A\00", align 1
@E_POINTER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [61 x i8] c"IPicture_get_Attributes does not reset attr to zero, got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_get_Attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_get_Attributes() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = load i32, i32* @TRUE, align 4
  %6 = bitcast i32** %1 to i8**
  %7 = call i64 @OleCreatePictureIndirect(i32* null, i32* @IID_IPicture, i32 %5, i8** %6)
  store i64 %7, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = load i64, i64* @S_OK, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = load i64, i64* %2, align 8
  %13 = trunc i64 %12 to i16
  %14 = call i32 @ok(i32 %11, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i16 signext %13)
  %15 = load i32*, i32** %1, align 8
  %16 = call i64 @IPicture_get_Type(i32* %15, i16* %3)
  store i64 %16, i64* %2, align 8
  %17 = load i64, i64* %2, align 8
  %18 = load i64, i64* @S_OK, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = load i64, i64* %2, align 8
  %22 = trunc i64 %21 to i16
  %23 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i16 signext %22)
  %24 = load i16, i16* %3, align 2
  %25 = sext i16 %24 to i32
  %26 = load i16, i16* @PICTYPE_UNINITIALIZED, align 2
  %27 = sext i16 %26 to i32
  %28 = icmp eq i32 %25, %27
  %29 = zext i1 %28 to i32
  %30 = load i16, i16* %3, align 2
  %31 = call i32 @ok(i32 %29, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i16 signext %30)
  %32 = load i32*, i32** %1, align 8
  %33 = call i64 @IPicture_get_Attributes(i32* %32, i16* null)
  store i64 %33, i64* %2, align 8
  %34 = load i64, i64* %2, align 8
  %35 = load i64, i64* @E_POINTER, align 8
  %36 = call i32 @ole_expect(i64 %34, i64 %35)
  store i16 -16657, i16* %4, align 2
  %37 = load i32*, i32** %1, align 8
  %38 = call i64 @IPicture_get_Attributes(i32* %37, i16* %4)
  store i64 %38, i64* %2, align 8
  %39 = load i64, i64* %2, align 8
  %40 = load i64, i64* @S_OK, align 8
  %41 = call i32 @ole_expect(i64 %39, i64 %40)
  %42 = load i16, i16* %4, align 2
  %43 = sext i16 %42 to i32
  %44 = icmp eq i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = load i16, i16* %4, align 2
  %47 = call i32 @ok(i32 %45, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i16 signext %46)
  %48 = load i32*, i32** %1, align 8
  %49 = call i32 @IPicture_Release(i32* %48)
  ret void
}

declare dso_local i64 @OleCreatePictureIndirect(i32*, i32*, i32, i8**) #1

declare dso_local i32 @ok(i32, i8*, i16 signext) #1

declare dso_local i64 @IPicture_get_Type(i32*, i16*) #1

declare dso_local i64 @IPicture_get_Attributes(i32*, i16*) #1

declare dso_local i32 @ole_expect(i64, i64) #1

declare dso_local i32 @IPicture_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
