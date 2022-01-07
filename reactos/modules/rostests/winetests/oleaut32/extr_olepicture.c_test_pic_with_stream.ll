; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_olepicture.c_test_pic_with_stream.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_olepicture.c_test_pic_with_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@TRUE = common dso_local global i32 0, align 4
@IID_IPicture = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"OLP (NULL,..) does not return 0, but 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"OLP (NULL,..) returns NULL, instead of !NULL\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"IPicture_QI does not return S_OK, but 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"IPicture_QI does return NULL, instead of a ptr\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"IPicture_get_Handle does not return S_OK, but 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [70 x i8] c"IPicture_get_Handle returns a NULL handle, but it should be non NULL\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"not a dib\0A\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"IPicture_get_Width does not return S_OK, but 0x%08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [55 x i8] c"IPicture_get_Width returns 0, but it should not be 0.\0A\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"IPicture_get_Height does not return S_OK, but 0x%08x\0A\00", align 1
@.str.10 = private unnamed_addr constant [56 x i8] c"IPicture_get_Height returns 0, but it should not be 0.\0A\00", align 1
@.str.11 = private unnamed_addr constant [52 x i8] c"IPicture_get_Type does not return S_OK, but 0x%08x\0A\00", align 1
@PICTYPE_BITMAP = common dso_local global i16 0, align 2
@.str.12 = private unnamed_addr constant [68 x i8] c"IPicture_get_Type returns %d, but it should be PICTYPE_BITMAP(%d).\0A\00", align 1
@.str.13 = private unnamed_addr constant [58 x i8] c"IPicture_get_Attributes does not return S_OK, but 0x%08x\0A\00", align 1
@.str.14 = private unnamed_addr constant [57 x i8] c"IPicture_get_Attributes returns %d, but it should be 0.\0A\00", align 1
@.str.15 = private unnamed_addr constant [52 x i8] c"IPicture_get_hPal does not return S_OK, but 0x%08x\0A\00", align 1
@.str.16 = private unnamed_addr constant [51 x i8] c"IPicture_get_hPal returns %d, but it should be 0.\0A\00", align 1
@.str.17 = private unnamed_addr constant [48 x i8] c"refcount after release is %d, but should be 0?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @test_pic_with_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_pic_with_stream(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i16, align 2
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_3__, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32* null, i32** %5, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %7, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @TRUE, align 4
  %19 = call i64 @pOleLoadPicture(i32 %16, i32 %17, i32 %18, i32* @IID_IPicture, i32** %7)
  store i64 %19, i64* %6, align 8
  %20 = load i32*, i32** %7, align 8
  store i32* %20, i32** %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @S_OK, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = load i64, i64* %6, align 8
  %26 = call i32 (i32, i8*, ...) @ok(i32 %24, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %25)
  %27 = load i32*, i32** %5, align 8
  %28 = icmp ne i32* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i32 (i32, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32*, i32** %5, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %2
  br label %149

34:                                               ; preds = %2
  store i32* null, i32** %7, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = call i64 @IPicture_QueryInterface(i32* %35, i32* @IID_IPicture, i32** %7)
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @S_OK, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = load i64, i64* %6, align 8
  %42 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i64 %41)
  %43 = load i32*, i32** %7, align 8
  %44 = icmp ne i32* %43, null
  %45 = zext i1 %44 to i32
  %46 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  %47 = load i32*, i32** %7, align 8
  %48 = call i64 @IPicture_Release(i32* %47)
  store i64 0, i64* %8, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = call i64 @IPicture_get_Handle(i32* %49, i64* %8)
  store i64 %50, i64* %6, align 8
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* @S_OK, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = load i64, i64* %6, align 8
  %56 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i64 %55)
  %57 = load i64, i64* %8, align 8
  %58 = icmp ne i64 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i32 (i32, i8*, ...) @ok(i32 %59, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.5, i64 0, i64 0))
  %61 = load i64, i64* %8, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %34
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @UlongToHandle(i64 %64)
  %66 = call i32 @GetObjectA(i32 %65, i32 8, %struct.TYPE_3__* %15)
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  %70 = zext i1 %69 to i32
  %71 = call i32 (i32, i8*, ...) @ok(i32 %70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  br label %72

72:                                               ; preds = %63, %34
  store i64 0, i64* %10, align 8
  %73 = load i32*, i32** %5, align 8
  %74 = call i64 @IPicture_get_Width(i32* %73, i64* %10)
  store i64 %74, i64* %6, align 8
  %75 = load i64, i64* %6, align 8
  %76 = load i64, i64* @S_OK, align 8
  %77 = icmp eq i64 %75, %76
  %78 = zext i1 %77 to i32
  %79 = load i64, i64* %6, align 8
  %80 = call i32 (i32, i8*, ...) @ok(i32 %78, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i64 %79)
  %81 = load i64, i64* %10, align 8
  %82 = icmp ne i64 %81, 0
  %83 = zext i1 %82 to i32
  %84 = call i32 (i32, i8*, ...) @ok(i32 %83, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.8, i64 0, i64 0))
  store i64 0, i64* %11, align 8
  %85 = load i32*, i32** %5, align 8
  %86 = call i64 @IPicture_get_Height(i32* %85, i64* %11)
  store i64 %86, i64* %6, align 8
  %87 = load i64, i64* %6, align 8
  %88 = load i64, i64* @S_OK, align 8
  %89 = icmp eq i64 %87, %88
  %90 = zext i1 %89 to i32
  %91 = load i64, i64* %6, align 8
  %92 = call i32 (i32, i8*, ...) @ok(i32 %90, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0), i64 %91)
  %93 = load i64, i64* %11, align 8
  %94 = icmp ne i64 %93, 0
  %95 = zext i1 %94 to i32
  %96 = call i32 (i32, i8*, ...) @ok(i32 %95, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.10, i64 0, i64 0))
  store i16 0, i16* %12, align 2
  %97 = load i32*, i32** %5, align 8
  %98 = call i64 @IPicture_get_Type(i32* %97, i16* %12)
  store i64 %98, i64* %6, align 8
  %99 = load i64, i64* %6, align 8
  %100 = load i64, i64* @S_OK, align 8
  %101 = icmp eq i64 %99, %100
  %102 = zext i1 %101 to i32
  %103 = load i64, i64* %6, align 8
  %104 = call i32 (i32, i8*, ...) @ok(i32 %102, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.11, i64 0, i64 0), i64 %103)
  %105 = load i16, i16* %12, align 2
  %106 = sext i16 %105 to i32
  %107 = load i16, i16* @PICTYPE_BITMAP, align 2
  %108 = sext i16 %107 to i32
  %109 = icmp eq i32 %106, %108
  %110 = zext i1 %109 to i32
  %111 = load i16, i16* %12, align 2
  %112 = sext i16 %111 to i32
  %113 = load i16, i16* @PICTYPE_BITMAP, align 2
  %114 = sext i16 %113 to i32
  %115 = call i32 (i32, i8*, ...) @ok(i32 %110, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.12, i64 0, i64 0), i32 %112, i32 %114)
  store i64 0, i64* %13, align 8
  %116 = load i32*, i32** %5, align 8
  %117 = call i64 @IPicture_get_Attributes(i32* %116, i64* %13)
  store i64 %117, i64* %6, align 8
  %118 = load i64, i64* %6, align 8
  %119 = load i64, i64* @S_OK, align 8
  %120 = icmp eq i64 %118, %119
  %121 = zext i1 %120 to i32
  %122 = load i64, i64* %6, align 8
  %123 = call i32 (i32, i8*, ...) @ok(i32 %121, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.13, i64 0, i64 0), i64 %122)
  %124 = load i64, i64* %13, align 8
  %125 = icmp eq i64 %124, 0
  %126 = zext i1 %125 to i32
  %127 = load i64, i64* %13, align 8
  %128 = call i32 (i32, i8*, ...) @ok(i32 %126, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.14, i64 0, i64 0), i64 %127)
  store i64 0, i64* %9, align 8
  %129 = load i32*, i32** %5, align 8
  %130 = call i64 @IPicture_get_hPal(i32* %129, i64* %9)
  store i64 %130, i64* %6, align 8
  %131 = load i64, i64* %6, align 8
  %132 = load i64, i64* @S_OK, align 8
  %133 = icmp eq i64 %131, %132
  %134 = zext i1 %133 to i32
  %135 = load i64, i64* %6, align 8
  %136 = call i32 (i32, i8*, ...) @ok(i32 %134, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15, i64 0, i64 0), i64 %135)
  %137 = load i64, i64* %9, align 8
  %138 = icmp eq i64 %137, 0
  %139 = zext i1 %138 to i32
  %140 = load i64, i64* %9, align 8
  %141 = call i32 (i32, i8*, ...) @ok(i32 %139, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.16, i64 0, i64 0), i64 %140)
  %142 = load i32*, i32** %5, align 8
  %143 = call i64 @IPicture_Release(i32* %142)
  store i64 %143, i64* %14, align 8
  %144 = load i64, i64* %14, align 8
  %145 = icmp eq i64 %144, 0
  %146 = zext i1 %145 to i32
  %147 = load i64, i64* %14, align 8
  %148 = call i32 (i32, i8*, ...) @ok(i32 %146, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.17, i64 0, i64 0), i64 %147)
  br label %149

149:                                              ; preds = %72, %33
  ret void
}

declare dso_local i64 @pOleLoadPicture(i32, i32, i32, i32*, i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @IPicture_QueryInterface(i32*, i32*, i32**) #1

declare dso_local i64 @IPicture_Release(i32*) #1

declare dso_local i64 @IPicture_get_Handle(i32*, i64*) #1

declare dso_local i32 @GetObjectA(i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @UlongToHandle(i64) #1

declare dso_local i64 @IPicture_get_Width(i32*, i64*) #1

declare dso_local i64 @IPicture_get_Height(i32*, i64*) #1

declare dso_local i64 @IPicture_get_Type(i32*, i16*) #1

declare dso_local i64 @IPicture_get_Attributes(i32*, i64*) #1

declare dso_local i64 @IPicture_get_hPal(i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
