; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/devenum/extr_devenum.c_test_moniker_isequal.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/devenum/extr_devenum.c_test_moniker_isequal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLSID_SystemDeviceEnum = common dso_local global i32 0, align 4
@CLSCTX_INPROC = common dso_local global i32 0, align 4
@IID_ICreateDevEnum = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Cannot create SystemDeviceEnum object (%x)\0A\00", align 1
@CLSID_LegacyAmFilterCategory = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Cannot create enum moniker (res = %x)\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@S_FALSE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"IMoniker_IsEqual should fail (res = %x)\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Cannot get moniker for testing.\0A\00", align 1
@CLSID_AudioRendererCategory = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"IMoniker_IsEqual should failed (res = %x)\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"IMoniker_IsEqual failed (res = %x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_moniker_isequal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_moniker_isequal() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %7 = load i32, i32* @CLSCTX_INPROC, align 4
  %8 = bitcast i32** %2 to i32*
  %9 = call i64 @CoCreateInstance(i32* @CLSID_SystemDeviceEnum, i32* null, i32 %7, i32* @IID_ICreateDevEnum, i32* %8)
  store i64 %9, i64* %1, align 8
  %10 = load i64, i64* %1, align 8
  %11 = call i64 @FAILED(i64 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %0
  %14 = load i64, i64* %1, align 8
  %15 = call i32 (i8*, ...) @skip(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %14)
  br label %179

16:                                               ; preds = %0
  %17 = load i32*, i32** %2, align 8
  %18 = call i64 @ICreateDevEnum_CreateClassEnumerator(i32* %17, i32* @CLSID_LegacyAmFilterCategory, i32** %3, i32 0)
  store i64 %18, i64* %1, align 8
  %19 = load i64, i64* %1, align 8
  %20 = call i32 @SUCCEEDED(i64 %19)
  %21 = load i64, i64* %1, align 8
  %22 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %21)
  %23 = load i64, i64* %1, align 8
  %24 = call i32 @SUCCEEDED(i64 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %62

26:                                               ; preds = %16
  %27 = load i32*, i32** %3, align 8
  %28 = call i64 @IEnumMoniker_Next(i32* %27, i32 1, i32** %5, i32* null)
  %29 = load i64, i64* @S_OK, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %59

31:                                               ; preds = %26
  %32 = load i32*, i32** %3, align 8
  %33 = call i64 @IEnumMoniker_Next(i32* %32, i32 1, i32** %6, i32* null)
  %34 = load i64, i64* @S_OK, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %59

36:                                               ; preds = %31
  %37 = load i32*, i32** %5, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = call i64 @IMoniker_IsEqual(i32* %37, i32* %38)
  store i64 %39, i64* %1, align 8
  %40 = load i64, i64* %1, align 8
  %41 = load i64, i64* @S_FALSE, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = load i64, i64* %1, align 8
  %45 = call i32 @ok(i32 %43, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i64 %44)
  %46 = load i32*, i32** %6, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = call i64 @IMoniker_IsEqual(i32* %46, i32* %47)
  store i64 %48, i64* %1, align 8
  %49 = load i64, i64* %1, align 8
  %50 = load i64, i64* @S_FALSE, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = load i64, i64* %1, align 8
  %54 = call i32 @ok(i32 %52, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i64 %53)
  %55 = load i32*, i32** %5, align 8
  %56 = call i32 @IMoniker_Release(i32* %55)
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 @IMoniker_Release(i32* %57)
  br label %61

59:                                               ; preds = %31, %26
  %60 = call i32 (i8*, ...) @skip(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %36
  br label %62

62:                                               ; preds = %61, %16
  %63 = load i32*, i32** %3, align 8
  %64 = call i32 @IEnumMoniker_Release(i32* %63)
  %65 = load i32*, i32** %2, align 8
  %66 = call i64 @ICreateDevEnum_CreateClassEnumerator(i32* %65, i32* @CLSID_LegacyAmFilterCategory, i32** %3, i32 0)
  store i64 %66, i64* %1, align 8
  %67 = load i64, i64* %1, align 8
  %68 = call i32 @SUCCEEDED(i64 %67)
  %69 = load i64, i64* %1, align 8
  %70 = call i32 @ok(i32 %68, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %69)
  %71 = load i32*, i32** %2, align 8
  %72 = call i64 @ICreateDevEnum_CreateClassEnumerator(i32* %71, i32* @CLSID_AudioRendererCategory, i32** %4, i32 0)
  store i64 %72, i64* %1, align 8
  %73 = load i64, i64* %1, align 8
  %74 = call i32 @SUCCEEDED(i64 %73)
  %75 = load i64, i64* %1, align 8
  %76 = call i32 @ok(i32 %74, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %75)
  %77 = load i64, i64* %1, align 8
  %78 = call i32 @SUCCEEDED(i64 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %116

80:                                               ; preds = %62
  %81 = load i32*, i32** %3, align 8
  %82 = call i64 @IEnumMoniker_Next(i32* %81, i32 1, i32** %5, i32* null)
  %83 = load i64, i64* @S_OK, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %113

85:                                               ; preds = %80
  %86 = load i32*, i32** %4, align 8
  %87 = call i64 @IEnumMoniker_Next(i32* %86, i32 1, i32** %6, i32* null)
  %88 = load i64, i64* @S_OK, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %113

90:                                               ; preds = %85
  %91 = load i32*, i32** %5, align 8
  %92 = load i32*, i32** %6, align 8
  %93 = call i64 @IMoniker_IsEqual(i32* %91, i32* %92)
  store i64 %93, i64* %1, align 8
  %94 = load i64, i64* %1, align 8
  %95 = load i64, i64* @S_FALSE, align 8
  %96 = icmp eq i64 %94, %95
  %97 = zext i1 %96 to i32
  %98 = load i64, i64* %1, align 8
  %99 = call i32 @ok(i32 %97, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i64 %98)
  %100 = load i32*, i32** %6, align 8
  %101 = load i32*, i32** %5, align 8
  %102 = call i64 @IMoniker_IsEqual(i32* %100, i32* %101)
  store i64 %102, i64* %1, align 8
  %103 = load i64, i64* %1, align 8
  %104 = load i64, i64* @S_FALSE, align 8
  %105 = icmp eq i64 %103, %104
  %106 = zext i1 %105 to i32
  %107 = load i64, i64* %1, align 8
  %108 = call i32 @ok(i32 %106, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i64 %107)
  %109 = load i32*, i32** %5, align 8
  %110 = call i32 @IMoniker_Release(i32* %109)
  %111 = load i32*, i32** %6, align 8
  %112 = call i32 @IMoniker_Release(i32* %111)
  br label %115

113:                                              ; preds = %85, %80
  %114 = call i32 (i8*, ...) @skip(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %115

115:                                              ; preds = %113, %90
  br label %116

116:                                              ; preds = %115, %62
  %117 = load i32*, i32** %3, align 8
  %118 = call i32 @IEnumMoniker_Release(i32* %117)
  %119 = load i32*, i32** %4, align 8
  %120 = call i32 @IEnumMoniker_Release(i32* %119)
  %121 = load i32*, i32** %2, align 8
  %122 = call i64 @ICreateDevEnum_CreateClassEnumerator(i32* %121, i32* @CLSID_LegacyAmFilterCategory, i32** %3, i32 0)
  store i64 %122, i64* %1, align 8
  %123 = load i64, i64* %1, align 8
  %124 = call i32 @SUCCEEDED(i64 %123)
  %125 = load i64, i64* %1, align 8
  %126 = call i32 @ok(i32 %124, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %125)
  %127 = load i32*, i32** %2, align 8
  %128 = call i64 @ICreateDevEnum_CreateClassEnumerator(i32* %127, i32* @CLSID_LegacyAmFilterCategory, i32** %4, i32 0)
  store i64 %128, i64* %1, align 8
  %129 = load i64, i64* %1, align 8
  %130 = call i32 @SUCCEEDED(i64 %129)
  %131 = load i64, i64* %1, align 8
  %132 = call i32 @ok(i32 %130, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %131)
  %133 = load i64, i64* %1, align 8
  %134 = call i32 @SUCCEEDED(i64 %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %172

136:                                              ; preds = %116
  %137 = load i32*, i32** %3, align 8
  %138 = call i64 @IEnumMoniker_Next(i32* %137, i32 1, i32** %5, i32* null)
  %139 = load i64, i64* @S_OK, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %169

141:                                              ; preds = %136
  %142 = load i32*, i32** %4, align 8
  %143 = call i64 @IEnumMoniker_Next(i32* %142, i32 1, i32** %6, i32* null)
  %144 = load i64, i64* @S_OK, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %169

146:                                              ; preds = %141
  %147 = load i32*, i32** %5, align 8
  %148 = load i32*, i32** %6, align 8
  %149 = call i64 @IMoniker_IsEqual(i32* %147, i32* %148)
  store i64 %149, i64* %1, align 8
  %150 = load i64, i64* %1, align 8
  %151 = load i64, i64* @S_OK, align 8
  %152 = icmp eq i64 %150, %151
  %153 = zext i1 %152 to i32
  %154 = load i64, i64* %1, align 8
  %155 = call i32 @ok(i32 %153, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i64 %154)
  %156 = load i32*, i32** %6, align 8
  %157 = load i32*, i32** %5, align 8
  %158 = call i64 @IMoniker_IsEqual(i32* %156, i32* %157)
  store i64 %158, i64* %1, align 8
  %159 = load i64, i64* %1, align 8
  %160 = load i64, i64* @S_OK, align 8
  %161 = icmp eq i64 %159, %160
  %162 = zext i1 %161 to i32
  %163 = load i64, i64* %1, align 8
  %164 = call i32 @ok(i32 %162, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i64 %163)
  %165 = load i32*, i32** %5, align 8
  %166 = call i32 @IMoniker_Release(i32* %165)
  %167 = load i32*, i32** %6, align 8
  %168 = call i32 @IMoniker_Release(i32* %167)
  br label %171

169:                                              ; preds = %141, %136
  %170 = call i32 (i8*, ...) @skip(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %171

171:                                              ; preds = %169, %146
  br label %172

172:                                              ; preds = %171, %116
  %173 = load i32*, i32** %3, align 8
  %174 = call i32 @IEnumMoniker_Release(i32* %173)
  %175 = load i32*, i32** %4, align 8
  %176 = call i32 @IEnumMoniker_Release(i32* %175)
  %177 = load i32*, i32** %2, align 8
  %178 = call i32 @ICreateDevEnum_Release(i32* %177)
  br label %179

179:                                              ; preds = %172, %13
  ret void
}

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @skip(i8*, ...) #1

declare dso_local i64 @ICreateDevEnum_CreateClassEnumerator(i32*, i32*, i32**, i32) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @SUCCEEDED(i64) #1

declare dso_local i64 @IEnumMoniker_Next(i32*, i32, i32**, i32*) #1

declare dso_local i64 @IMoniker_IsEqual(i32*, i32*) #1

declare dso_local i32 @IMoniker_Release(i32*) #1

declare dso_local i32 @IEnumMoniker_Release(i32*) #1

declare dso_local i32 @ICreateDevEnum_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
