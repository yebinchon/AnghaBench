; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_misc.c_test_internet_features_registry.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_misc.c_test_internet_features_registry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@test_internet_features_registry.szFeatureBehaviorsKey = internal global i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [18 x i8] c"FEATURE_BEHAVIORS\00", align 1
@test_internet_features_registry.szFeatureZoneElevationKey = internal global i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"FEATURE_ZONE_ELEVATION\00", align 1
@pIEInstallScope = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [60 x i8] c"Skipping internet feature registry tests, IE is too old...\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"GetModuleFileName failed: %d\0A\00", align 1
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@szFeatureControlKey = common dso_local global i8* null, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"RegCreateKey failed: %d\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@REG_DWORD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"RegSetValueEx failed: %d\0A\00", align 1
@FEATURE_BEHAVIORS = common dso_local global i32 0, align 4
@GET_FEATURE_FROM_PROCESS = common dso_local global i32 0, align 4
@S_FALSE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [60 x i8] c"CoInternetIsFeatureEnabled returned %08x, expected S_FALSE\0A\00", align 1
@SET_FEATURE_ON_PROCESS = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [42 x i8] c"CoInternetSetFeatureEnabled failed: %08x\0A\00", align 1
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c"RegOpenKey failed: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@ERROR_ACCESS_DENIED = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [38 x i8] c"Not allowed to modify zone elevation\0A\00", align 1
@FEATURE_ZONE_ELEVATION = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [57 x i8] c"CoInternetIsFeatureEnabled returned %08x, expected S_OK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_internet_features_registry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_internet_features_registry() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = load i32, i32* @MAX_PATH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %3, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %4, align 8
  %16 = load i64, i64* @TRUE, align 8
  store i64 %16, i64* %10, align 8
  %17 = load i32, i32* @pIEInstallScope, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %0
  %20 = call i32 @win_skip(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %190

21:                                               ; preds = %0
  %22 = trunc i64 %13 to i32
  %23 = call i64 @GetModuleFileNameA(i32* null, i8* %15, i32 %22)
  store i64 %23, i64* %2, align 8
  %24 = load i64, i64* %2, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i64 (...) @GetLastError()
  %27 = call i32 @ok(i32 %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i64 %26)
  %28 = call i8* @strrchr(i8* %15, i8 signext 92)
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  store i8* %29, i8** %5, align 8
  %30 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %31 = load i8*, i8** @szFeatureControlKey, align 8
  %32 = call i64 @RegOpenKeyA(i32 %30, i8* %31, i32* %6)
  store i64 %32, i64* %2, align 8
  %33 = load i64, i64* %2, align 8
  %34 = load i64, i64* @ERROR_SUCCESS, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = load i64, i64* %2, align 8
  %38 = call i32 @ok(i32 %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i64 %37)
  %39 = load i32, i32* %6, align 4
  %40 = load i8*, i8** @test_internet_features_registry.szFeatureBehaviorsKey, align 8
  %41 = call i64 @RegOpenKeyA(i32 %39, i8* %40, i32* %7)
  store i64 %41, i64* %2, align 8
  %42 = load i64, i64* %2, align 8
  %43 = load i64, i64* @ERROR_SUCCESS, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %21
  %46 = load i64, i64* @FALSE, align 8
  store i64 %46, i64* %10, align 8
  br label %57

47:                                               ; preds = %21
  %48 = load i32, i32* %6, align 4
  %49 = load i8*, i8** @test_internet_features_registry.szFeatureBehaviorsKey, align 8
  %50 = call i64 @RegCreateKeyA(i32 %48, i8* %49, i32* %7)
  store i64 %50, i64* %2, align 8
  %51 = load i64, i64* %2, align 8
  %52 = load i64, i64* @ERROR_SUCCESS, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = load i64, i64* %2, align 8
  %56 = call i32 @ok(i32 %54, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i64 %55)
  br label %57

57:                                               ; preds = %47, %45
  store i64 0, i64* %8, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i8*, i8** %5, align 8
  %60 = load i32, i32* @REG_DWORD, align 4
  %61 = bitcast i64* %8 to i32*
  %62 = call i64 @RegSetValueExA(i32 %58, i8* %59, i32 0, i32 %60, i32* %61, i32 8)
  store i64 %62, i64* %2, align 8
  %63 = load i64, i64* %2, align 8
  %64 = load i64, i64* @ERROR_SUCCESS, align 8
  %65 = icmp eq i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = load i64, i64* %2, align 8
  %68 = call i32 @ok(i32 %66, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i64 %67)
  %69 = load i32, i32* @FEATURE_BEHAVIORS, align 4
  %70 = load i32, i32* @GET_FEATURE_FROM_PROCESS, align 4
  %71 = call i64 @pCoInternetIsFeatureEnabled(i32 %69, i32 %70)
  store i64 %71, i64* %1, align 8
  %72 = load i64, i64* %1, align 8
  %73 = load i64, i64* @S_FALSE, align 8
  %74 = icmp eq i64 %72, %73
  %75 = zext i1 %74 to i32
  %76 = load i64, i64* %1, align 8
  %77 = call i32 @ok(i32 %75, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i64 0, i64 0), i64 %76)
  %78 = load i64, i64* %10, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %57
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @RegCloseKey(i32 %81)
  %83 = load i32, i32* %6, align 4
  %84 = load i8*, i8** @test_internet_features_registry.szFeatureBehaviorsKey, align 8
  %85 = call i32 @RegDeleteKeyA(i32 %83, i8* %84)
  br label %92

86:                                               ; preds = %57
  %87 = load i32, i32* %7, align 4
  %88 = load i8*, i8** %5, align 8
  %89 = call i32 @RegDeleteValueA(i32 %87, i8* %88)
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @RegCloseKey(i32 %90)
  br label %92

92:                                               ; preds = %86, %80
  %93 = load i32, i32* @FEATURE_BEHAVIORS, align 4
  %94 = load i32, i32* @GET_FEATURE_FROM_PROCESS, align 4
  %95 = call i64 @pCoInternetIsFeatureEnabled(i32 %93, i32 %94)
  store i64 %95, i64* %1, align 8
  %96 = load i64, i64* %1, align 8
  %97 = load i64, i64* @S_FALSE, align 8
  %98 = icmp eq i64 %96, %97
  %99 = zext i1 %98 to i32
  %100 = load i64, i64* %1, align 8
  %101 = call i32 @ok(i32 %99, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i64 0, i64 0), i64 %100)
  %102 = load i32, i32* @FEATURE_BEHAVIORS, align 4
  %103 = load i32, i32* @SET_FEATURE_ON_PROCESS, align 4
  %104 = load i64, i64* @TRUE, align 8
  %105 = call i64 @pCoInternetSetFeatureEnabled(i32 %102, i32 %103, i64 %104)
  store i64 %105, i64* %1, align 8
  %106 = load i64, i64* %1, align 8
  %107 = load i64, i64* @S_OK, align 8
  %108 = icmp eq i64 %106, %107
  %109 = zext i1 %108 to i32
  %110 = load i64, i64* %1, align 8
  %111 = call i32 @ok(i32 %109, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i64 %110)
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @RegCloseKey(i32 %112)
  %114 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %115 = load i8*, i8** @szFeatureControlKey, align 8
  %116 = call i64 @RegOpenKeyA(i32 %114, i8* %115, i32* %6)
  store i64 %116, i64* %2, align 8
  %117 = load i64, i64* %2, align 8
  %118 = load i64, i64* @ERROR_SUCCESS, align 8
  %119 = icmp eq i64 %117, %118
  %120 = zext i1 %119 to i32
  %121 = load i64, i64* %2, align 8
  %122 = call i32 @ok(i32 %120, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i64 %121)
  %123 = load i32, i32* %6, align 4
  %124 = load i8*, i8** @test_internet_features_registry.szFeatureZoneElevationKey, align 8
  %125 = call i64 @RegOpenKeyA(i32 %123, i8* %124, i32* %7)
  store i64 %125, i64* %2, align 8
  %126 = load i64, i64* %2, align 8
  %127 = load i64, i64* @ERROR_SUCCESS, align 8
  %128 = icmp eq i64 %126, %127
  %129 = zext i1 %128 to i32
  %130 = load i64, i64* %2, align 8
  %131 = call i32 @ok(i32 %129, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i64 %130)
  store i64 1, i64* %8, align 8
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* @REG_DWORD, align 4
  %134 = bitcast i64* %8 to i32*
  %135 = call i64 @RegSetValueExA(i32 %132, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i32 0, i32 %133, i32* %134, i32 8)
  store i64 %135, i64* %2, align 8
  %136 = load i64, i64* %2, align 8
  %137 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %92
  %140 = call i32 @skip(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0))
  %141 = load i64, i64* @TRUE, align 8
  store i64 %141, i64* %9, align 8
  br label %159

142:                                              ; preds = %92
  %143 = load i64, i64* @FALSE, align 8
  store i64 %143, i64* %9, align 8
  %144 = load i64, i64* %2, align 8
  %145 = load i64, i64* @ERROR_SUCCESS, align 8
  %146 = icmp eq i64 %144, %145
  %147 = zext i1 %146 to i32
  %148 = load i64, i64* %2, align 8
  %149 = call i32 @ok(i32 %147, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i64 %148)
  %150 = load i32, i32* @FEATURE_ZONE_ELEVATION, align 4
  %151 = load i32, i32* @GET_FEATURE_FROM_PROCESS, align 4
  %152 = call i64 @pCoInternetIsFeatureEnabled(i32 %150, i32 %151)
  store i64 %152, i64* %1, align 8
  %153 = load i64, i64* %1, align 8
  %154 = load i64, i64* @S_OK, align 8
  %155 = icmp eq i64 %153, %154
  %156 = zext i1 %155 to i32
  %157 = load i64, i64* %1, align 8
  %158 = call i32 @ok(i32 %156, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.11, i64 0, i64 0), i64 %157)
  br label %159

159:                                              ; preds = %142, %139
  %160 = load i32, i32* %7, align 4
  %161 = call i32 @RegDeleteValueA(i32 %160, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %162 = load i32, i32* %7, align 4
  %163 = call i32 @RegCloseKey(i32 %162)
  %164 = load i32, i32* %6, align 4
  %165 = call i32 @RegCloseKey(i32 %164)
  %166 = load i64, i64* %9, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %188, label %168

168:                                              ; preds = %159
  %169 = load i32, i32* @FEATURE_ZONE_ELEVATION, align 4
  %170 = load i32, i32* @GET_FEATURE_FROM_PROCESS, align 4
  %171 = call i64 @pCoInternetIsFeatureEnabled(i32 %169, i32 %170)
  store i64 %171, i64* %1, align 8
  %172 = load i64, i64* %1, align 8
  %173 = load i64, i64* @S_OK, align 8
  %174 = icmp eq i64 %172, %173
  %175 = zext i1 %174 to i32
  %176 = load i64, i64* %1, align 8
  %177 = call i32 @ok(i32 %175, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.11, i64 0, i64 0), i64 %176)
  %178 = load i32, i32* @FEATURE_ZONE_ELEVATION, align 4
  %179 = load i32, i32* @SET_FEATURE_ON_PROCESS, align 4
  %180 = load i64, i64* @FALSE, align 8
  %181 = call i64 @pCoInternetSetFeatureEnabled(i32 %178, i32 %179, i64 %180)
  store i64 %181, i64* %1, align 8
  %182 = load i64, i64* %1, align 8
  %183 = load i64, i64* @S_OK, align 8
  %184 = icmp eq i64 %182, %183
  %185 = zext i1 %184 to i32
  %186 = load i64, i64* %1, align 8
  %187 = call i32 @ok(i32 %185, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i64 %186)
  br label %188

188:                                              ; preds = %168, %159
  %189 = call i32 (...) @test_internet_feature_defaults()
  store i32 0, i32* %11, align 4
  br label %190

190:                                              ; preds = %188, %19
  %191 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %191)
  %192 = load i32, i32* %11, align 4
  switch i32 %192, label %194 [
    i32 0, label %193
    i32 1, label %193
  ]

193:                                              ; preds = %190, %190
  ret void

194:                                              ; preds = %190
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @win_skip(i8*) #2

declare dso_local i64 @GetModuleFileNameA(i32*, i8*, i32) #2

declare dso_local i32 @ok(i32, i8*, i64) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i64 @RegOpenKeyA(i32, i8*, i32*) #2

declare dso_local i64 @RegCreateKeyA(i32, i8*, i32*) #2

declare dso_local i64 @RegSetValueExA(i32, i8*, i32, i32, i32*, i32) #2

declare dso_local i64 @pCoInternetIsFeatureEnabled(i32, i32) #2

declare dso_local i32 @RegCloseKey(i32) #2

declare dso_local i32 @RegDeleteKeyA(i32, i8*) #2

declare dso_local i32 @RegDeleteValueA(i32, i8*) #2

declare dso_local i64 @pCoInternetSetFeatureEnabled(i32, i32, i64) #2

declare dso_local i32 @skip(i8*) #2

declare dso_local i32 @test_internet_feature_defaults(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
