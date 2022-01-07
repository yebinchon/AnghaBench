; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/windowscodecs/extr_propertybag.c_test_propertybag_getpropertyinfo.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/windowscodecs/extr_propertybag.c_test_propertybag_getpropertyinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32 }

@WINCODEC_ERR_VALUEOUTOFRANGE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [62 x i8] c"GetPropertyInfo handled iProperty out of bounce wrong, hr=%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"GetPropertyInfo handled cProperty out of bounce wrong, hr=%x\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"GetPropertyInfo failed, hr=%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"GetPropertyInfo returned unexpected property count, %i != %i)\0A\00", align 1
@VT_UI1 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [35 x i8] c"Invalid variant type, pb[0].vt=%x\0A\00", align 1
@PROPBAG2_TYPE_DATA = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [39 x i8] c"Invalid variant type, pb[0].dwType=%x\0A\00", align 1
@wszTestProperty1 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [42 x i8] c"Invalid property name, pb[0].pstrName=%s\0A\00", align 1
@VT_R4 = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [35 x i8] c"Invalid variant type, pb[1].vt=%x\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"Invalid variant type, pb[1].dwType=%x\0A\00", align 1
@wszTestProperty2 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [42 x i8] c"Invalid property name, pb[1].pstrName=%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @test_propertybag_getpropertyinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_propertybag_getpropertyinfo(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca [2 x %struct.TYPE_3__], align 16
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load i64, i64* %4, align 8
  %10 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %6, i64 0, i64 0
  %11 = call i64 @IPropertyBag2_GetPropertyInfo(i32* %8, i64 %9, i64 1, %struct.TYPE_3__* %10, i64* %7)
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @WINCODEC_ERR_VALUEOUTOFRANGE, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = load i64, i64* %5, align 8
  %17 = call i32 (i32, i8*, i64, ...) @ok(i32 %15, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = load i32*, i32** %3, align 8
  %19 = load i64, i64* %4, align 8
  %20 = add nsw i64 %19, 1
  %21 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %6, i64 0, i64 0
  %22 = call i64 @IPropertyBag2_GetPropertyInfo(i32* %18, i64 0, i64 %20, %struct.TYPE_3__* %21, i64* %7)
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @WINCODEC_ERR_VALUEOUTOFRANGE, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i64, i64* %5, align 8
  %28 = call i32 (i32, i8*, i64, ...) @ok(i32 %26, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i64 %27)
  %29 = load i64, i64* %4, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  br label %131

32:                                               ; preds = %2
  %33 = load i32*, i32** %3, align 8
  %34 = load i64, i64* %4, align 8
  %35 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %6, i64 0, i64 0
  %36 = call i64 @IPropertyBag2_GetPropertyInfo(i32* %33, i64 0, i64 %34, %struct.TYPE_3__* %35, i64* %7)
  store i64 %36, i64* %5, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* @S_OK, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = load i64, i64* %5, align 8
  %42 = call i32 (i32, i8*, i64, ...) @ok(i32 %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %41)
  %43 = load i64, i64* %5, align 8
  %44 = call i64 @FAILED(i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %32
  br label %131

47:                                               ; preds = %32
  %48 = load i64, i64* %4, align 8
  %49 = load i64, i64* %7, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i64, i64* %4, align 8
  %53 = load i64, i64* %7, align 8
  %54 = call i32 (i32, i8*, i64, ...) @ok(i32 %51, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i64 %52, i64 %53)
  %55 = load i64, i64* %4, align 8
  %56 = icmp ne i64 %55, 2
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  br label %131

58:                                               ; preds = %47
  %59 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %6, i64 0, i64 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 16
  %62 = load i64, i64* @VT_UI1, align 8
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %6, i64 0, i64 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 16
  %68 = call i32 (i32, i8*, i64, ...) @ok(i32 %64, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i64 %67)
  %69 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %6, i64 0, i64 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @PROPBAG2_TYPE_DATA, align 8
  %73 = icmp eq i64 %71, %72
  %74 = zext i1 %73 to i32
  %75 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %6, i64 0, i64 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i32 (i32, i8*, i64, ...) @ok(i32 %74, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i64 %77)
  %79 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %6, i64 0, i64 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 16
  %82 = load i32, i32* @wszTestProperty1, align 4
  %83 = call i64 @lstrcmpW(i32 %81, i32 %82)
  %84 = icmp eq i64 %83, 0
  %85 = zext i1 %84 to i32
  %86 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %6, i64 0, i64 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 16
  %89 = call i64 @wine_dbgstr_w(i32 %88)
  %90 = call i32 (i32, i8*, i64, ...) @ok(i32 %85, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i64 %89)
  %91 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %6, i64 0, i64 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 16
  %94 = call i32 @CoTaskMemFree(i32 %93)
  %95 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %6, i64 0, i64 1
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @VT_R4, align 8
  %99 = icmp eq i64 %97, %98
  %100 = zext i1 %99 to i32
  %101 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %6, i64 0, i64 1
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = call i32 (i32, i8*, i64, ...) @ok(i32 %100, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i64 %103)
  %105 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %6, i64 0, i64 1
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @PROPBAG2_TYPE_DATA, align 8
  %109 = icmp eq i64 %107, %108
  %110 = zext i1 %109 to i32
  %111 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %6, i64 0, i64 1
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = call i32 (i32, i8*, i64, ...) @ok(i32 %110, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i64 %113)
  %115 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %6, i64 0, i64 1
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @wszTestProperty2, align 4
  %119 = call i64 @lstrcmpW(i32 %117, i32 %118)
  %120 = icmp eq i64 %119, 0
  %121 = zext i1 %120 to i32
  %122 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %6, i64 0, i64 1
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = call i64 @wine_dbgstr_w(i32 %124)
  %126 = call i32 (i32, i8*, i64, ...) @ok(i32 %121, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i64 %125)
  %127 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %6, i64 0, i64 1
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @CoTaskMemFree(i32 %129)
  br label %131

131:                                              ; preds = %58, %57, %46, %31
  ret void
}

declare dso_local i64 @IPropertyBag2_GetPropertyInfo(i32*, i64, i64, %struct.TYPE_3__*, i64*) #1

declare dso_local i32 @ok(i32, i8*, i64, ...) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i64 @lstrcmpW(i32, i32) #1

declare dso_local i64 @wine_dbgstr_w(i32) #1

declare dso_local i32 @CoTaskMemFree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
