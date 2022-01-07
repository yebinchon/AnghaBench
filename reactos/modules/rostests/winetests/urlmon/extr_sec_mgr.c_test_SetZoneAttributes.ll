; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_sec_mgr.c_test_SetZoneAttributes.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_sec_mgr.c_test_SetZoneAttributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"testing SetZoneAttributes...\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"CoInternetCreateZoneManager result: 0x%x\0A\00", align 1
@URLZONE_LOCAL_MACHINE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"got 0x%x (expected S_OK)\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"%s\\Zones\\%d\00", align 1
@szInternetSettingsKey = common dso_local global i8* null, align 8
@URLZONE_CUSTOM = common dso_local global i32 0, align 4
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [33 x i8] c"got %d (expected ERROR_SUCCESS)\0A\00", align 1
@E_INVALIDARG = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [34 x i8] c"got 0x%x (expected E_INVALIDARG)\0A\00", align 1
@E_FAIL = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [45 x i8] c"SetZoneAttributes not supported: IE too old\0A\00", align 1
@.str.7 = private unnamed_addr constant [69 x i8] c"got 0x%x for sizeof(ZONEATTRIBUTES) + sizeof(DWORD) (expected S_OK)\0A\00", align 1
@.str.8 = private unnamed_addr constant [69 x i8] c"got 0x%x for sizeof(ZONEATTRIBUTES) - sizeof(DWORD) (expected S_OK)\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"got 0x%x for size 0 (expected S_OK)\0A\00", align 1
@ERROR_FILE_NOT_FOUND = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [58 x i8] c"got %u with %p (expected ERROR_FILE_NOT_FOUND with NULL)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SetZoneAttributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SetZoneAttributes() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [20 x i32], align 16
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32* null, i32** %1, align 8
  %10 = getelementptr inbounds [20 x i32], [20 x i32]* %2, i64 0, i64 0
  %11 = bitcast i32* %10 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %3, align 8
  %12 = load i32, i32* @MAX_PATH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %4, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %5, align 8
  %16 = call i32 @trace(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %17 = call i64 @pCoInternetCreateZoneManager(i32* null, i32** %1, i32 0)
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @S_OK, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i64, i64* %7, align 8
  %23 = call i32 (i32, i8*, i64, ...) @ok(i32 %21, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %22)
  %24 = load i64, i64* %7, align 8
  %25 = call i64 @FAILED(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %0
  store i32 1, i32* %9, align 4
  br label %174

28:                                               ; preds = %0
  %29 = getelementptr inbounds [20 x i32], [20 x i32]* %2, i64 0, i64 0
  %30 = call i32 @memset(i32* %29, i32 -1, i32 80)
  %31 = load i32*, i32** %1, align 8
  %32 = load i32, i32* @URLZONE_LOCAL_MACHINE, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %34 = call i64 @IInternetZoneManager_GetZoneAttributes(i32* %31, i32 %32, %struct.TYPE_4__* %33)
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* @S_OK, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = load i64, i64* %7, align 8
  %40 = call i32 (i32, i8*, i64, ...) @ok(i32 %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %39)
  %41 = load i8*, i8** @szInternetSettingsKey, align 8
  %42 = load i32, i32* @URLZONE_CUSTOM, align 4
  %43 = call i32 @sprintf(i32* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %41, i32 %42)
  %44 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %45 = call i64 @RegCreateKeyA(i32 %44, i32* %15, i32** %6)
  store i64 %45, i64* %8, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @RegCloseKey(i32* %46)
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* @ERROR_SUCCESS, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i64, i64* %8, align 8
  %53 = call i32 (i32, i8*, i64, ...) @ok(i32 %51, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i64 %52)
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* @ERROR_SUCCESS, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %28
  br label %163

58:                                               ; preds = %28
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i32 4, i32* %60, align 4
  %61 = load i32*, i32** %1, align 8
  %62 = load i32, i32* @URLZONE_CUSTOM, align 4
  %63 = call i64 @IInternetZoneManager_SetZoneAttributes(i32* %61, i32 %62, %struct.TYPE_4__* null)
  store i64 %63, i64* %7, align 8
  %64 = load i64, i64* %7, align 8
  %65 = load i64, i64* @E_INVALIDARG, align 8
  %66 = icmp eq i64 %64, %65
  %67 = zext i1 %66 to i32
  %68 = load i64, i64* %7, align 8
  %69 = call i32 (i32, i8*, i64, ...) @ok(i32 %67, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i64 %68)
  %70 = load i32*, i32** %1, align 8
  %71 = load i32, i32* @URLZONE_CUSTOM, align 4
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %73 = call i64 @IInternetZoneManager_SetZoneAttributes(i32* %70, i32 %71, %struct.TYPE_4__* %72)
  store i64 %73, i64* %7, align 8
  %74 = load i64, i64* %7, align 8
  %75 = load i64, i64* @E_FAIL, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %58
  %78 = call i32 @win_skip(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  br label %163

79:                                               ; preds = %58
  %80 = load i64, i64* %7, align 8
  %81 = load i64, i64* @S_OK, align 8
  %82 = icmp eq i64 %80, %81
  %83 = zext i1 %82 to i32
  %84 = load i64, i64* %7, align 8
  %85 = call i32 (i32, i8*, i64, ...) @ok(i32 %83, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %84)
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  store i32 12, i32* %87, align 4
  %88 = load i32*, i32** %1, align 8
  %89 = load i32, i32* @URLZONE_CUSTOM, align 4
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %91 = call i64 @IInternetZoneManager_SetZoneAttributes(i32* %88, i32 %89, %struct.TYPE_4__* %90)
  store i64 %91, i64* %7, align 8
  %92 = load i64, i64* %7, align 8
  %93 = load i64, i64* @S_OK, align 8
  %94 = icmp eq i64 %92, %93
  %95 = zext i1 %94 to i32
  %96 = load i64, i64* %7, align 8
  %97 = call i32 (i32, i8*, i64, ...) @ok(i32 %95, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.7, i64 0, i64 0), i64 %96)
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  store i32 -4, i32* %99, align 4
  %100 = load i32*, i32** %1, align 8
  %101 = load i32, i32* @URLZONE_CUSTOM, align 4
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %103 = call i64 @IInternetZoneManager_SetZoneAttributes(i32* %100, i32 %101, %struct.TYPE_4__* %102)
  store i64 %103, i64* %7, align 8
  %104 = load i64, i64* %7, align 8
  %105 = load i64, i64* @S_OK, align 8
  %106 = icmp eq i64 %104, %105
  %107 = zext i1 %106 to i32
  %108 = load i64, i64* %7, align 8
  %109 = call i32 (i32, i8*, i64, ...) @ok(i32 %107, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.8, i64 0, i64 0), i64 %108)
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  store i32 0, i32* %111, align 4
  %112 = load i32*, i32** %1, align 8
  %113 = load i32, i32* @URLZONE_CUSTOM, align 4
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %115 = call i64 @IInternetZoneManager_SetZoneAttributes(i32* %112, i32 %113, %struct.TYPE_4__* %114)
  store i64 %115, i64* %7, align 8
  %116 = load i64, i64* %7, align 8
  %117 = load i64, i64* @S_OK, align 8
  %118 = icmp eq i64 %116, %117
  %119 = zext i1 %118 to i32
  %120 = load i64, i64* %7, align 8
  %121 = call i32 (i32, i8*, i64, ...) @ok(i32 %119, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i64 %120)
  %122 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %123 = call i32 @myRegDeleteTreeA(i32 %122, i32* %15)
  %124 = load i32*, i32** %1, align 8
  %125 = load i32, i32* @URLZONE_CUSTOM, align 4
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %127 = call i64 @IInternetZoneManager_SetZoneAttributes(i32* %124, i32 %125, %struct.TYPE_4__* %126)
  store i64 %127, i64* %7, align 8
  %128 = load i64, i64* %7, align 8
  %129 = load i64, i64* @S_OK, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %138, label %131

131:                                              ; preds = %79
  %132 = load i64, i64* %7, align 8
  %133 = load i64, i64* @E_FAIL, align 8
  %134 = icmp eq i64 %132, %133
  %135 = zext i1 %134 to i32
  %136 = call i64 @broken(i32 %135)
  %137 = icmp ne i64 %136, 0
  br label %138

138:                                              ; preds = %131, %79
  %139 = phi i1 [ true, %79 ], [ %137, %131 ]
  %140 = zext i1 %139 to i32
  %141 = load i64, i64* %7, align 8
  %142 = call i32 (i32, i8*, i64, ...) @ok(i32 %140, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %141)
  %143 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %144 = call i64 @RegOpenKeyA(i32 %143, i32* %15, i32** %6)
  store i64 %144, i64* %8, align 8
  %145 = load i64, i64* %8, align 8
  %146 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %138
  %149 = load i32*, i32** %6, align 8
  %150 = icmp eq i32* %149, null
  br label %151

151:                                              ; preds = %148, %138
  %152 = phi i1 [ false, %138 ], [ %150, %148 ]
  %153 = zext i1 %152 to i32
  %154 = load i64, i64* %8, align 8
  %155 = load i32*, i32** %6, align 8
  %156 = call i32 (i32, i8*, i64, ...) @ok(i32 %153, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.10, i64 0, i64 0), i64 %154, i32* %155)
  %157 = load i32*, i32** %6, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %159, label %162

159:                                              ; preds = %151
  %160 = load i32*, i32** %6, align 8
  %161 = call i32 @RegCloseKey(i32* %160)
  br label %162

162:                                              ; preds = %159, %151
  br label %163

163:                                              ; preds = %162, %77, %57
  %164 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %165 = call i32 @myRegDeleteTreeA(i32 %164, i32* %15)
  %166 = load i32*, i32** %1, align 8
  %167 = call i64 @IInternetZoneManager_Release(i32* %166)
  store i64 %167, i64* %7, align 8
  %168 = load i64, i64* %7, align 8
  %169 = load i64, i64* @S_OK, align 8
  %170 = icmp eq i64 %168, %169
  %171 = zext i1 %170 to i32
  %172 = load i64, i64* %7, align 8
  %173 = call i32 (i32, i8*, i64, ...) @ok(i32 %171, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %172)
  store i32 0, i32* %9, align 4
  br label %174

174:                                              ; preds = %163, %27
  %175 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %175)
  %176 = load i32, i32* %9, align 4
  switch i32 %176, label %178 [
    i32 0, label %177
    i32 1, label %177
  ]

177:                                              ; preds = %174, %174
  ret void

178:                                              ; preds = %174
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trace(i8*) #2

declare dso_local i64 @pCoInternetCreateZoneManager(i32*, i32**, i32) #2

declare dso_local i32 @ok(i32, i8*, i64, ...) #2

declare dso_local i64 @FAILED(i64) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i64 @IInternetZoneManager_GetZoneAttributes(i32*, i32, %struct.TYPE_4__*) #2

declare dso_local i32 @sprintf(i32*, i8*, i8*, i32) #2

declare dso_local i64 @RegCreateKeyA(i32, i32*, i32**) #2

declare dso_local i32 @RegCloseKey(i32*) #2

declare dso_local i64 @IInternetZoneManager_SetZoneAttributes(i32*, i32, %struct.TYPE_4__*) #2

declare dso_local i32 @win_skip(i8*) #2

declare dso_local i32 @myRegDeleteTreeA(i32, i32*) #2

declare dso_local i64 @broken(i32) #2

declare dso_local i64 @RegOpenKeyA(i32, i32*, i32**) #2

declare dso_local i64 @IInternetZoneManager_Release(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
