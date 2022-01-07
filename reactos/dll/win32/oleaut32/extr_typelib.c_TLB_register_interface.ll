; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_typelib.c_TLB_register_interface.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_typelib.c_TLB_register_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@TLB_register_interface.PSOA = internal constant [39 x i8] c"{00020424-0000-0000-C000-000000000046}\00", align 16
@HKEY_CLASSES_ROOT = common dso_local global i32 0, align 4
@KEY_WRITE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@REG_SZ = common dso_local global i32 0, align 4
@ProxyStubClsidW = common dso_local global i8* null, align 8
@ProxyStubClsid32W = common dso_local global i8* null, align 8
@TypeLibW = common dso_local global i8* null, align 8
@TLB_register_interface.fmtver = internal constant [6 x i8] c"%x.%x\00", align 1
@TLB_register_interface.VersionW = internal constant [8 x i8] c"Version\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i8*, %struct.TYPE_5__*, i32)* @TLB_register_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TLB_register_interface(%struct.TYPE_6__* %0, i8* %1, %struct.TYPE_5__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [60 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [40 x i8], align 16
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds [60 x i8], [60 x i8]* %9, i64 0, i64 0
  %16 = call i32 @get_interface_key(i32* %14, i8* %15)
  %17 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %18 = getelementptr inbounds [60 x i8], [60 x i8]* %9, i64 0, i64 0
  %19 = load i32, i32* @KEY_WRITE, align 4
  %20 = load i32, i32* %8, align 4
  %21 = or i32 %19, %20
  %22 = call i64 @RegCreateKeyExW(i32 %17, i8* %18, i32 0, i32* null, i32 0, i32 %21, i32* null, i32* %10, i32* null)
  %23 = load i64, i64* @ERROR_SUCCESS, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %119

25:                                               ; preds = %4
  %26 = load i8*, i8** %6, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %40

28:                                               ; preds = %25
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @REG_SZ, align 4
  %31 = load i8*, i8** %6, align 8
  %32 = bitcast i8* %31 to i32*
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @strlenW(i8* %33)
  %35 = add nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 4
  %38 = trunc i64 %37 to i32
  %39 = call i32 @RegSetValueExW(i32 %29, i8* null, i32 0, i32 %30, i32* %32, i32 %38)
  br label %40

40:                                               ; preds = %28, %25
  %41 = load i32, i32* %10, align 4
  %42 = load i8*, i8** @ProxyStubClsidW, align 8
  %43 = load i32, i32* @KEY_WRITE, align 4
  %44 = load i32, i32* %8, align 4
  %45 = or i32 %43, %44
  %46 = call i64 @RegCreateKeyExW(i32 %41, i8* %42, i32 0, i32* null, i32 0, i32 %45, i32* null, i32* %11, i32* null)
  %47 = load i64, i64* @ERROR_SUCCESS, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %40
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @REG_SZ, align 4
  %52 = call i32 @RegSetValueExW(i32 %50, i8* null, i32 0, i32 %51, i32* bitcast ([39 x i8]* @TLB_register_interface.PSOA to i32*), i32 39)
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @RegCloseKey(i32 %53)
  br label %55

55:                                               ; preds = %49, %40
  %56 = load i32, i32* %10, align 4
  %57 = load i8*, i8** @ProxyStubClsid32W, align 8
  %58 = load i32, i32* @KEY_WRITE, align 4
  %59 = load i32, i32* %8, align 4
  %60 = or i32 %58, %59
  %61 = call i64 @RegCreateKeyExW(i32 %56, i8* %57, i32 0, i32* null, i32 0, i32 %60, i32* null, i32* %11, i32* null)
  %62 = load i64, i64* @ERROR_SUCCESS, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %55
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @REG_SZ, align 4
  %67 = call i32 @RegSetValueExW(i32 %65, i8* null, i32 0, i32 %66, i32* bitcast ([39 x i8]* @TLB_register_interface.PSOA to i32*), i32 39)
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @RegCloseKey(i32 %68)
  br label %70

70:                                               ; preds = %64, %55
  %71 = load i32, i32* %10, align 4
  %72 = load i8*, i8** @TypeLibW, align 8
  %73 = load i32, i32* @KEY_WRITE, align 4
  %74 = load i32, i32* %8, align 4
  %75 = or i32 %73, %74
  %76 = call i64 @RegCreateKeyExW(i32 %71, i8* %72, i32 0, i32* null, i32 0, i32 %75, i32* null, i32* %11, i32* null)
  %77 = load i64, i64* @ERROR_SUCCESS, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %116

79:                                               ; preds = %70
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 2
  %82 = getelementptr inbounds [40 x i8], [40 x i8]* %12, i64 0, i64 0
  %83 = call i32 @StringFromGUID2(i32* %81, i8* %82, i32 40)
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* @REG_SZ, align 4
  %86 = getelementptr inbounds [40 x i8], [40 x i8]* %12, i64 0, i64 0
  %87 = bitcast i8* %86 to i32*
  %88 = getelementptr inbounds [40 x i8], [40 x i8]* %12, i64 0, i64 0
  %89 = call i32 @strlenW(i8* %88)
  %90 = add nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = mul i64 %91, 1
  %93 = trunc i64 %92 to i32
  %94 = call i32 @RegSetValueExW(i32 %84, i8* null, i32 0, i32 %85, i32* %87, i32 %93)
  %95 = getelementptr inbounds [40 x i8], [40 x i8]* %12, i64 0, i64 0
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @sprintfW(i8* %95, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @TLB_register_interface.fmtver, i64 0, i64 0), i32 %98, i32 %101)
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* @REG_SZ, align 4
  %105 = getelementptr inbounds [40 x i8], [40 x i8]* %12, i64 0, i64 0
  %106 = bitcast i8* %105 to i32*
  %107 = getelementptr inbounds [40 x i8], [40 x i8]* %12, i64 0, i64 0
  %108 = call i32 @strlenW(i8* %107)
  %109 = add nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = mul i64 %110, 1
  %112 = trunc i64 %111 to i32
  %113 = call i32 @RegSetValueExW(i32 %103, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @TLB_register_interface.VersionW, i64 0, i64 0), i32 0, i32 %104, i32* %106, i32 %112)
  %114 = load i32, i32* %11, align 4
  %115 = call i32 @RegCloseKey(i32 %114)
  br label %116

116:                                              ; preds = %79, %70
  %117 = load i32, i32* %10, align 4
  %118 = call i32 @RegCloseKey(i32 %117)
  br label %119

119:                                              ; preds = %116, %4
  ret void
}

declare dso_local i32 @get_interface_key(i32*, i8*) #1

declare dso_local i64 @RegCreateKeyExW(i32, i8*, i32, i32*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @RegSetValueExW(i32, i8*, i32, i32, i32*, i32) #1

declare dso_local i32 @strlenW(i8*) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i32 @StringFromGUID2(i32*, i8*, i32) #1

declare dso_local i32 @sprintfW(i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
