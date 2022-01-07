; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_msi.c_test_MsiEnumComponents.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_msi.c_test_MsiEnumComponents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@KEY_ALL_ACCESS = common dso_local global i32 0, align 4
@is_wow64 = common dso_local global i64 0, align 8
@KEY_WOW64_64KEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"Software\\Microsoft\\Windows\\CurrentVersion\\Installer\\UserData\\\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"S-1-5-18\\Components\\\00", align 1
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@ERROR_ACCESS_DENIED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"insufficient rights\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"got %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"\\Components\\\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8 0, align 1
@TRUE = common dso_local global i8 0, align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"empty guid\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"comp1 not found\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"comp2 not found\0A\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_MsiEnumComponents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_MsiEnumComponents() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i64, align 8
  %5 = alloca [39 x i8], align 16
  %6 = alloca [39 x i8], align 16
  %7 = alloca [39 x i8], align 16
  %8 = alloca [33 x i8], align 16
  %9 = alloca [33 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = load i32, i32* @MAX_PATH, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %10, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  %21 = load i32, i32* @MAX_PATH, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %12, align 8
  %24 = load i32, i32* @KEY_ALL_ACCESS, align 4
  store i32 %24, i32* %13, align 4
  %25 = call i8* (...) @get_user_sid()
  store i8* %25, i8** %14, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  %26 = getelementptr inbounds [39 x i8], [39 x i8]* %5, i64 0, i64 0
  %27 = getelementptr inbounds [33 x i8], [33 x i8]* %8, i64 0, i64 0
  %28 = call i32 @create_test_guid(i8* %26, i8* %27)
  %29 = getelementptr inbounds [39 x i8], [39 x i8]* %6, i64 0, i64 0
  %30 = getelementptr inbounds [33 x i8], [33 x i8]* %9, i64 0, i64 0
  %31 = call i32 @create_test_guid(i8* %29, i8* %30)
  %32 = load i64, i64* @is_wow64, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %0
  %35 = load i32, i32* @KEY_WOW64_64KEY, align 4
  %36 = load i32, i32* %13, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %13, align 4
  br label %38

38:                                               ; preds = %34, %0
  %39 = call i32 @strcpy(i8* %20, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %40 = call i32 @strcat(i8* %20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %41 = getelementptr inbounds [33 x i8], [33 x i8]* %8, i64 0, i64 0
  %42 = call i32 @strcat(i8* %20, i8* %41)
  %43 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %44 = load i32, i32* %13, align 4
  %45 = call i64 @RegCreateKeyExA(i32 %43, i8* %20, i32 0, i32* null, i32 0, i32 %44, i32* null, i32** %15, i32* null)
  store i64 %45, i64* %1, align 8
  %46 = load i64, i64* %1, align 8
  %47 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %38
  %50 = call i32 @skip(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %116

51:                                               ; preds = %38
  %52 = load i64, i64* %1, align 8
  %53 = load i64, i64* @ERROR_SUCCESS, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = trunc i32 %55 to i8
  %57 = load i64, i64* %1, align 8
  %58 = call i32 (i8, i8*, ...) @ok(i8 signext %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i64 %57)
  %59 = call i32 @strcpy(i8* %23, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %60 = load i8*, i8** %14, align 8
  %61 = call i32 @strcat(i8* %23, i8* %60)
  %62 = call i32 @strcat(i8* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %63 = getelementptr inbounds [33 x i8], [33 x i8]* %9, i64 0, i64 0
  %64 = call i32 @strcat(i8* %23, i8* %63)
  %65 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %66 = load i32, i32* %13, align 4
  %67 = call i64 @RegCreateKeyExA(i32 %65, i8* %23, i32 0, i32* null, i32 0, i32 %66, i32* null, i32** %16, i32* null)
  store i64 %67, i64* %1, align 8
  %68 = load i64, i64* %1, align 8
  %69 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %51
  %72 = call i32 @skip(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %116

73:                                               ; preds = %51
  %74 = call i64 @MsiEnumComponentsA(i64 0, i8* null)
  store i64 %74, i64* %1, align 8
  %75 = load i64, i64* %1, align 8
  %76 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %77 = icmp eq i64 %75, %76
  %78 = zext i1 %77 to i32
  %79 = trunc i32 %78 to i8
  %80 = load i64, i64* %1, align 8
  %81 = call i32 (i8, i8*, ...) @ok(i8 signext %79, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i64 %80)
  store i64 0, i64* %4, align 8
  %82 = getelementptr inbounds [39 x i8], [39 x i8]* %7, i64 0, i64 0
  store i8 0, i8* %82, align 16
  %83 = load i8, i8* @FALSE, align 1
  store i8 %83, i8* %3, align 1
  store i8 %83, i8* %2, align 1
  br label %84

84:                                               ; preds = %104, %73
  %85 = load i64, i64* %4, align 8
  %86 = getelementptr inbounds [39 x i8], [39 x i8]* %7, i64 0, i64 0
  %87 = call i64 @MsiEnumComponentsA(i64 %85, i8* %86)
  %88 = icmp ne i64 %87, 0
  %89 = xor i1 %88, true
  br i1 %89, label %90, label %111

90:                                               ; preds = %84
  %91 = getelementptr inbounds [39 x i8], [39 x i8]* %7, i64 0, i64 0
  %92 = getelementptr inbounds [39 x i8], [39 x i8]* %5, i64 0, i64 0
  %93 = call i32 @strcmp(i8* %91, i8* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %90
  %96 = load i8, i8* @TRUE, align 1
  store i8 %96, i8* %2, align 1
  br label %97

97:                                               ; preds = %95, %90
  %98 = getelementptr inbounds [39 x i8], [39 x i8]* %7, i64 0, i64 0
  %99 = getelementptr inbounds [39 x i8], [39 x i8]* %6, i64 0, i64 0
  %100 = call i32 @strcmp(i8* %98, i8* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %97
  %103 = load i8, i8* @TRUE, align 1
  store i8 %103, i8* %3, align 1
  br label %104

104:                                              ; preds = %102, %97
  %105 = getelementptr inbounds [39 x i8], [39 x i8]* %7, i64 0, i64 0
  %106 = load i8, i8* %105, align 16
  %107 = call i32 (i8, i8*, ...) @ok(i8 signext %106, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %108 = getelementptr inbounds [39 x i8], [39 x i8]* %7, i64 0, i64 0
  store i8 0, i8* %108, align 16
  %109 = load i64, i64* %4, align 8
  %110 = add nsw i64 %109, 1
  store i64 %110, i64* %4, align 8
  br label %84

111:                                              ; preds = %84
  %112 = load i8, i8* %2, align 1
  %113 = call i32 (i8, i8*, ...) @ok(i8 signext %112, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %114 = load i8, i8* %3, align 1
  %115 = call i32 (i8, i8*, ...) @ok(i8 signext %114, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  br label %116

116:                                              ; preds = %111, %71, %49
  %117 = load i32*, i32** %15, align 8
  %118 = load i32, i32* %13, align 4
  %119 = call i32 @delete_key(i32* %117, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i32 %118)
  %120 = load i32*, i32** %16, align 8
  %121 = load i32, i32* %13, align 4
  %122 = call i32 @delete_key(i32* %120, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i32 %121)
  %123 = load i32*, i32** %15, align 8
  %124 = call i32 @RegCloseKey(i32* %123)
  %125 = load i32*, i32** %16, align 8
  %126 = call i32 @RegCloseKey(i32* %125)
  %127 = load i8*, i8** %14, align 8
  %128 = call i32 @LocalFree(i8* %127)
  %129 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %129)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @get_user_sid(...) #2

declare dso_local i32 @create_test_guid(i8*, i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i64 @RegCreateKeyExA(i32, i8*, i32, i32*, i32, i32, i32*, i32**, i32*) #2

declare dso_local i32 @skip(i8*) #2

declare dso_local i32 @ok(i8 signext, i8*, ...) #2

declare dso_local i64 @MsiEnumComponentsA(i64, i8*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @delete_key(i32*, i8*, i32) #2

declare dso_local i32 @RegCloseKey(i32*) #2

declare dso_local i32 @LocalFree(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
