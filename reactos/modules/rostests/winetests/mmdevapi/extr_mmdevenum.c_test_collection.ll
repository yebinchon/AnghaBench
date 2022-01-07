; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mmdevapi/extr_mmdevenum.c_test_collection.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mmdevapi/extr_mmdevenum.c_test_collection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [33 x i8] c"Reference count on parent is %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Invalid reference count %u on collection\0A\00", align 1
@IID_IUnknown = common dso_local global i32 0, align 4
@E_POINTER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Null ppv returns %08x\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Cannot query for IID_IUnknown: 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Pointers are not identical %p/%p/%p\0A\00", align 1
@IID_IMMDeviceCollection = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [50 x i8] c"Cannot query for IID_IMMDeviceCollection: 0x%08x\0A\00", align 1
@IID_IMMDeviceEnumerator = common dso_local global i32 0, align 4
@E_NOINTERFACE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [52 x i8] c"Query for IID_IMMDeviceEnumerator returned: 0x%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"GetCount returned 0x%08x\0A\00", align 1
@E_INVALIDARG = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [44 x i8] c"Asking for too high device returned 0x%08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Returned non-null device\0A\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"Query with null pointer returned 0x%08x\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"Valid Item returned 0x%08x\0A\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"Device is null!\0A\00", align 1
@CP_ACP = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [18 x i8] c"Device found: %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"GetDevice failed: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @test_collection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_collection(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca [128 x i8], align 16
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @IMMDeviceEnumerator_AddRef(i32* %15)
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @IMMDeviceEnumerator_Release(i32* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp eq i32 %19, 2
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* %9, align 4
  %23 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @IMMDeviceCollection_AddRef(i32* %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @IMMDeviceCollection_Release(i32* %26)
  %28 = load i32, i32* %9, align 4
  %29 = icmp eq i32 %28, 2
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* %9, align 4
  %32 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @IMMDeviceCollection_QueryInterface(i32* %33, i32* @IID_IUnknown, i8** null)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @E_POINTER, align 4
  %37 = icmp eq i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* %8, align 4
  %40 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  %41 = load i32*, i32** %4, align 8
  %42 = bitcast i32** %7 to i8**
  %43 = call i32 @IMMDeviceCollection_QueryInterface(i32* %41, i32* @IID_IUnknown, i8** %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @S_OK, align 4
  %46 = icmp eq i32 %44, %45
  %47 = zext i1 %46 to i32
  %48 = load i32, i32* %8, align 4
  %49 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @S_OK, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %2
  %54 = load i32*, i32** %4, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = icmp eq i32* %54, %55
  %57 = zext i1 %56 to i32
  %58 = load i32*, i32** %4, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 (i32, i8*, ...) @ok(i32 %57, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32* %58, i32* %59, i32* %60)
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @IUnknown_Release(i32* %62)
  br label %64

64:                                               ; preds = %53, %2
  %65 = load i32*, i32** %4, align 8
  %66 = bitcast i32** %5 to i8**
  %67 = call i32 @IMMDeviceCollection_QueryInterface(i32* %65, i32* @IID_IMMDeviceCollection, i8** %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @S_OK, align 4
  %70 = icmp eq i32 %68, %69
  %71 = zext i1 %70 to i32
  %72 = load i32, i32* %8, align 4
  %73 = call i32 (i32, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @S_OK, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %64
  %78 = load i32*, i32** %5, align 8
  %79 = call i32 @IMMDeviceCollection_Release(i32* %78)
  br label %80

80:                                               ; preds = %77, %64
  %81 = load i32*, i32** %4, align 8
  %82 = bitcast i32** %6 to i8**
  %83 = call i32 @IMMDeviceCollection_QueryInterface(i32* %81, i32* @IID_IMMDeviceEnumerator, i8** %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @E_NOINTERFACE, align 4
  %86 = icmp eq i32 %84, %85
  %87 = zext i1 %86 to i32
  %88 = load i32, i32* %8, align 4
  %89 = call i32 (i32, i8*, ...) @ok(i32 %87, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @S_OK, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %80
  %94 = load i32*, i32** %6, align 8
  %95 = call i32 @IMMDeviceEnumerator_Release(i32* %94)
  br label %96

96:                                               ; preds = %93, %80
  %97 = load i32*, i32** %4, align 8
  %98 = call i32 @IMMDeviceCollection_GetCount(i32* %97, i64* null)
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* @E_POINTER, align 4
  %101 = icmp eq i32 %99, %100
  %102 = zext i1 %101 to i32
  %103 = load i32, i32* %8, align 4
  %104 = call i32 (i32, i8*, ...) @ok(i32 %102, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %103)
  %105 = load i32*, i32** %4, align 8
  %106 = call i32 @IMMDeviceCollection_GetCount(i32* %105, i64* %10)
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* @S_OK, align 4
  %109 = icmp eq i32 %107, %108
  %110 = zext i1 %109 to i32
  %111 = load i32, i32* %8, align 4
  %112 = call i32 (i32, i8*, ...) @ok(i32 %110, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %111)
  store i32* inttoptr (i64 305419896 to i32*), i32** %11, align 8
  %113 = load i32*, i32** %4, align 8
  %114 = load i64, i64* %10, align 8
  %115 = call i32 @IMMDeviceCollection_Item(i32* %113, i64 %114, i32** %11)
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* @E_INVALIDARG, align 4
  %118 = icmp eq i32 %116, %117
  %119 = zext i1 %118 to i32
  %120 = load i32, i32* %8, align 4
  %121 = call i32 (i32, i8*, ...) @ok(i32 %119, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i32 %120)
  %122 = load i32*, i32** %11, align 8
  %123 = icmp eq i32* %122, null
  %124 = zext i1 %123 to i32
  %125 = call i32 (i32, i8*, ...) @ok(i32 %124, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  %126 = load i64, i64* %10, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %185

128:                                              ; preds = %96
  %129 = load i32*, i32** %4, align 8
  %130 = call i32 @IMMDeviceCollection_Item(i32* %129, i64 0, i32** null)
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* @E_POINTER, align 4
  %133 = icmp eq i32 %131, %132
  %134 = zext i1 %133 to i32
  %135 = load i32, i32* %8, align 4
  %136 = call i32 (i32, i8*, ...) @ok(i32 %134, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i32 %135)
  %137 = load i32*, i32** %4, align 8
  %138 = call i32 @IMMDeviceCollection_Item(i32* %137, i64 0, i32** %11)
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* @S_OK, align 4
  %141 = icmp eq i32 %139, %140
  %142 = zext i1 %141 to i32
  %143 = load i32, i32* %8, align 4
  %144 = call i32 (i32, i8*, ...) @ok(i32 %142, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i32 %143)
  %145 = load i32*, i32** %11, align 8
  %146 = icmp ne i32* %145, null
  %147 = zext i1 %146 to i32
  %148 = call i32 (i32, i8*, ...) @ok(i32 %147, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0))
  %149 = load i32*, i32** %11, align 8
  %150 = icmp ne i32* %149, null
  br i1 %150, label %151, label %178

151:                                              ; preds = %128
  store i32* null, i32** %13, align 8
  %152 = load i32*, i32** %11, align 8
  %153 = call i32 @IMMDevice_GetId(i32* %152, i32** %13)
  %154 = load i32, i32* @S_OK, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %177

156:                                              ; preds = %151
  %157 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 127
  store i8 0, i8* %157, align 1
  %158 = load i32, i32* @CP_ACP, align 4
  %159 = load i32*, i32** %13, align 8
  %160 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %161 = call i32 @WideCharToMultiByte(i32 %158, i32 0, i32* %159, i32 -1, i8* %160, i32 127, i32* null, i32* null)
  %162 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %163 = call i32 @trace(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i8* %162)
  %164 = load i32*, i32** %3, align 8
  %165 = load i32*, i32** %13, align 8
  %166 = call i32 @IMMDeviceEnumerator_GetDevice(i32* %164, i32* %165, i32** %14)
  store i32 %166, i32* %8, align 4
  %167 = load i32, i32* %8, align 4
  %168 = load i32, i32* @S_OK, align 4
  %169 = icmp eq i32 %167, %168
  %170 = zext i1 %169 to i32
  %171 = load i32, i32* %8, align 4
  %172 = call i32 (i32, i8*, ...) @ok(i32 %170, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 %171)
  %173 = load i32*, i32** %14, align 8
  %174 = call i32 @IMMDevice_Release(i32* %173)
  %175 = load i32*, i32** %13, align 8
  %176 = call i32 @CoTaskMemFree(i32* %175)
  br label %177

177:                                              ; preds = %156, %151
  br label %178

178:                                              ; preds = %177, %128
  %179 = load i32*, i32** %11, align 8
  %180 = icmp ne i32* %179, null
  br i1 %180, label %181, label %184

181:                                              ; preds = %178
  %182 = load i32*, i32** %11, align 8
  %183 = call i32 @IMMDevice_Release(i32* %182)
  br label %184

184:                                              ; preds = %181, %178
  br label %185

185:                                              ; preds = %184, %96
  %186 = load i32*, i32** %4, align 8
  %187 = call i32 @IMMDeviceCollection_Release(i32* %186)
  ret void
}

declare dso_local i32 @IMMDeviceEnumerator_AddRef(i32*) #1

declare dso_local i32 @IMMDeviceEnumerator_Release(i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @IMMDeviceCollection_AddRef(i32*) #1

declare dso_local i32 @IMMDeviceCollection_Release(i32*) #1

declare dso_local i32 @IMMDeviceCollection_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

declare dso_local i32 @IMMDeviceCollection_GetCount(i32*, i64*) #1

declare dso_local i32 @IMMDeviceCollection_Item(i32*, i64, i32**) #1

declare dso_local i32 @IMMDevice_GetId(i32*, i32**) #1

declare dso_local i32 @WideCharToMultiByte(i32, i32, i32*, i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @trace(i8*, i8*) #1

declare dso_local i32 @IMMDeviceEnumerator_GetDevice(i32*, i32*, i32**) #1

declare dso_local i32 @IMMDevice_Release(i32*) #1

declare dso_local i32 @CoTaskMemFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
