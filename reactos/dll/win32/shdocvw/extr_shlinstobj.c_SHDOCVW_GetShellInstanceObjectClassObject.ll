; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/shdocvw/extr_shlinstobj.c_SHDOCVW_GetShellInstanceObjectClassObject.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/shdocvw/extr_shlinstobj.c_SHDOCVW_GetShellInstanceObjectClassObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.SHDOCVW_GetShellInstanceObjectClassObject.wszInstanceKey = private unnamed_addr constant [54 x i8] c"CLSID\\{00000000-0000-0000-0000-000000000000}\\Instance\00", align 16
@SHDOCVW_GetShellInstanceObjectClassObject.wszCLSID = internal constant [6 x i8] c"CLSID\00", align 1
@SHDOCVW_GetShellInstanceObjectClassObject.wszInitPropertyBag = internal constant [16 x i8] c"InitPropertyBag\00", align 16
@CHARS_IN_GUID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"(rclsid=%s, riid=%s, ppvClassObject=%p)\0A\00", align 1
@CLASS_E_CLASSNOTAVAILABLE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@HKEY_CLASSES_ROOT = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to infer instance CLSID! %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"No InitPropertyBag key found!\0A\00", align 1
@IID_IPropertyBag = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SHDOCVW_GetShellInstanceObjectClassObject(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca [54 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %20 = bitcast [54 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %20, i8* align 16 getelementptr inbounds ([54 x i8], [54 x i8]* @__const.SHDOCVW_GetShellInstanceObjectClassObject.wszInstanceKey, i32 0, i32 0), i64 54, i1 false)
  %21 = load i32, i32* @CHARS_IN_GUID, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %9, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %10, align 8
  %25 = trunc i64 %22 to i32
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @debugstr_guid(i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @debugstr_guid(i32 %28)
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %29, i32* %30)
  %32 = load i32, i32* %5, align 4
  %33 = getelementptr inbounds [54 x i8], [54 x i8]* %8, i64 0, i64 0
  %34 = getelementptr inbounds i8, i8* %33, i64 6
  %35 = load i32, i32* @CHARS_IN_GUID, align 4
  %36 = call i32 @StringFromGUID2(i32 %32, i8* %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %3
  %39 = load i32, i32* @CLASS_E_CLASSNOTAVAILABLE, align 4
  store i32 %39, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %100

40:                                               ; preds = %3
  %41 = load i32, i32* @CHARS_IN_GUID, align 4
  %42 = add nsw i32 5, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [54 x i8], [54 x i8]* %8, i64 0, i64 %43
  store i8 92, i8* %44, align 1
  %45 = load i64, i64* @ERROR_SUCCESS, align 8
  %46 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %47 = getelementptr inbounds [54 x i8], [54 x i8]* %8, i64 0, i64 0
  %48 = load i32, i32* @KEY_READ, align 4
  %49 = call i64 @RegOpenKeyExW(i32 %46, i8* %47, i32 0, i32 %48, i32* %12)
  %50 = icmp ne i64 %45, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %40
  %52 = load i32, i32* @CLASS_E_CLASSNOTAVAILABLE, align 4
  store i32 %52, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %100

53:                                               ; preds = %40
  %54 = load i64, i64* @ERROR_SUCCESS, align 8
  %55 = load i32, i32* %12, align 4
  %56 = ptrtoint i8* %24 to i32
  %57 = call i64 @RegQueryValueExW(i32 %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @SHDOCVW_GetShellInstanceObjectClassObject.wszCLSID, i64 0, i64 0), i32* null, i32* %14, i32 %56, i32* %15)
  %58 = icmp ne i64 %54, %57
  br i1 %58, label %63, label %59

59:                                               ; preds = %53
  %60 = call i32 @CLSIDFromString(i8* %24, i32* %11)
  %61 = call i64 @FAILED(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %59, %53
  %64 = call i32 @debugstr_w(i8* %24)
  %65 = call i32 @FIXME(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @RegCloseKey(i32 %66)
  %68 = load i32, i32* @CLASS_E_CLASSNOTAVAILABLE, align 4
  store i32 %68, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %100

69:                                               ; preds = %59
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* @KEY_READ, align 4
  %72 = call i64 @RegOpenKeyExW(i32 %70, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @SHDOCVW_GetShellInstanceObjectClassObject.wszInitPropertyBag, i64 0, i64 0), i32 0, i32 %71, i32* %13)
  store i64 %72, i64* %18, align 8
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @RegCloseKey(i32 %73)
  %75 = load i64, i64* %18, align 8
  %76 = load i64, i64* @ERROR_SUCCESS, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %69
  %79 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %80 = load i32, i32* @CLASS_E_CLASSNOTAVAILABLE, align 4
  store i32 %80, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %100

81:                                               ; preds = %69
  %82 = load i32, i32* %13, align 4
  %83 = bitcast i32** %16 to i32*
  %84 = call i32 @RegistryPropertyBag_Constructor(i32 %82, i32* @IID_IPropertyBag, i32* %83)
  store i32 %84, i32* %17, align 4
  %85 = load i32, i32* %17, align 4
  %86 = call i64 @FAILED(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %81
  %89 = load i32, i32* %13, align 4
  %90 = call i32 @RegCloseKey(i32 %89)
  %91 = load i32, i32* %17, align 4
  store i32 %91, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %100

92:                                               ; preds = %81
  %93 = load i32*, i32** %16, align 8
  %94 = load i32, i32* %6, align 4
  %95 = load i32*, i32** %7, align 8
  %96 = call i32 @InstanceObjectFactory_Constructor(i32* %11, i32* %93, i32 %94, i32* %95)
  store i32 %96, i32* %17, align 4
  %97 = load i32*, i32** %16, align 8
  %98 = call i32 @IPropertyBag_Release(i32* %97)
  %99 = load i32, i32* %17, align 4
  store i32 %99, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %100

100:                                              ; preds = %92, %88, %78, %63, %51, %38
  %101 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %101)
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @TRACE(i8*, ...) #3

declare dso_local i32 @debugstr_guid(i32) #3

declare dso_local i32 @StringFromGUID2(i32, i8*, i32) #3

declare dso_local i64 @RegOpenKeyExW(i32, i8*, i32, i32, i32*) #3

declare dso_local i64 @RegQueryValueExW(i32, i8*, i32*, i32*, i32, i32*) #3

declare dso_local i64 @FAILED(i32) #3

declare dso_local i32 @CLSIDFromString(i8*, i32*) #3

declare dso_local i32 @FIXME(i8*, i32) #3

declare dso_local i32 @debugstr_w(i8*) #3

declare dso_local i32 @RegCloseKey(i32) #3

declare dso_local i32 @RegistryPropertyBag_Constructor(i32, i32*, i32*) #3

declare dso_local i32 @InstanceObjectFactory_Constructor(i32*, i32*, i32, i32*) #3

declare dso_local i32 @IPropertyBag_Release(i32*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
