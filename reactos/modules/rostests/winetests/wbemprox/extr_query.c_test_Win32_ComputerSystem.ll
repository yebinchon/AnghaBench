; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wbemprox/extr_query.c_test_Win32_ComputerSystem.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wbemprox/extr_query.c_test_Win32_ComputerSystem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_Win32_ComputerSystem.backslashW = internal constant [2 x i8] c"\\\00", align 1
@test_Win32_ComputerSystem.memorytypeW = internal constant [11 x i8] c"MemoryType\00", align 1
@test_Win32_ComputerSystem.modelW = internal constant [6 x i8] c"Model\00", align 1
@test_Win32_ComputerSystem.nameW = internal constant [5 x i8] c"Name\00", align 1
@test_Win32_ComputerSystem.usernameW = internal constant [9 x i8] c"UserName\00", align 1
@test_Win32_ComputerSystem.queryW = internal constant [35 x i8] c"SELECT * FROM Win32_ComputerSystem\00", align 16
@wqlW = common dso_local global i8* null, align 8
@MAX_COMPUTERNAME_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to get user or computer name\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Win32_ComputerSystem not available\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"got %08x\0A\00", align 1
@WBEM_E_NOT_FOUND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"failed to get model %08x\0A\00", align 1
@VT_BSTR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"unexpected variant type 0x%x\0A\00", align 1
@CIM_STRING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"unexpected type 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"model: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"failed to get computer name %08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"got %s, expected %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_Win32_ComputerSystem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_Win32_ComputerSystem(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca [128 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %15 = load i8*, i8** @wqlW, align 8
  %16 = call i32 @SysAllocString(i8* %15)
  store i32 %16, i32* %3, align 4
  %17 = call i32 @SysAllocString(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @test_Win32_ComputerSystem.queryW, i64 0, i64 0))
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @MAX_COMPUTERNAME_LENGTH, align 4
  %19 = add nsw i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %10, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %11, align 8
  %23 = call i32 @ARRAY_SIZE(i8* %22)
  store i32 %23, i32* %13, align 4
  %24 = call i32 @GetComputerNameW(i8* %22, i32* %13)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %1
  %27 = getelementptr inbounds i8, i8* %22, i64 0
  store i8 0, i8* %27, align 16
  br label %28

28:                                               ; preds = %26, %1
  %29 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %30 = call i32 @lstrcpyW(i8* %29, i8* %22)
  %31 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %32 = call i32 @lstrcatW(i8* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_Win32_ComputerSystem.backslashW, i64 0, i64 0))
  %33 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %34 = call i32 @ARRAY_SIZE(i8* %33)
  %35 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %36 = call i32 @lstrlenW(i8* %35)
  %37 = sub nsw i32 %34, %36
  store i32 %37, i32* %13, align 4
  %38 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %39 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %40 = call i32 @lstrlenW(i8* %39)
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %38, i64 %41
  %43 = call i32 @GetUserNameW(i8* %42, i32* %13)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %28
  %46 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  store i8 0, i8* %46, align 16
  br label %47

47:                                               ; preds = %45, %28
  %48 = getelementptr inbounds i8, i8* %22, i64 0
  %49 = load i8, i8* %48, align 16
  %50 = icmp ne i8 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %53 = load i8, i8* %52, align 16
  %54 = icmp ne i8 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %51, %47
  %56 = call i32 @skip(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %178

57:                                               ; preds = %51
  %58 = load i32*, i32** %2, align 8
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @IWbemServices_ExecQuery(i32* %58, i32 %59, i32 %60, i32 0, i32* null, i32** %5)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @S_OK, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = call i32 @win_skip(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %178

67:                                               ; preds = %57
  %68 = load i32*, i32** %5, align 8
  %69 = call i32 @IEnumWbemClassObject_Next(i32* %68, i32 10000, i32 1, i32** %6, i32* %14)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @S_OK, align 4
  %72 = icmp eq i32 %70, %71
  %73 = zext i1 %72 to i32
  %74 = load i32, i32* %9, align 4
  %75 = call i32 (i32, i8*, i32, ...) @ok(i32 %73, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  store i32 -559038737, i32* %8, align 4
  %76 = call i32 @VariantInit(i32* %7)
  %77 = load i32*, i32** %6, align 8
  %78 = call i32 @IWbemClassObject_Get(i32* %77, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_Win32_ComputerSystem.memorytypeW, i64 0, i64 0), i32 0, i32* %7, i32* %8, i32* null)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @WBEM_E_NOT_FOUND, align 4
  %81 = icmp eq i32 %79, %80
  %82 = zext i1 %81 to i32
  %83 = load i32, i32* %9, align 4
  %84 = call i32 (i32, i8*, i32, ...) @ok(i32 %82, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  store i32 -559038737, i32* %8, align 4
  %85 = call i32 @VariantInit(i32* %7)
  %86 = load i32*, i32** %6, align 8
  %87 = call i32 @IWbemClassObject_Get(i32* %86, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_Win32_ComputerSystem.modelW, i64 0, i64 0), i32 0, i32* %7, i32* %8, i32* null)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @S_OK, align 4
  %90 = icmp eq i32 %88, %89
  %91 = zext i1 %90 to i32
  %92 = load i32, i32* %9, align 4
  %93 = call i32 (i32, i8*, i32, ...) @ok(i32 %91, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %92)
  %94 = call i32 @V_VT(i32* %7)
  %95 = load i32, i32* @VT_BSTR, align 4
  %96 = icmp eq i32 %94, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 @V_VT(i32* %7)
  %99 = call i32 (i32, i8*, i32, ...) @ok(i32 %97, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* @CIM_STRING, align 4
  %102 = icmp eq i32 %100, %101
  %103 = zext i1 %102 to i32
  %104 = load i32, i32* %8, align 4
  %105 = call i32 (i32, i8*, i32, ...) @ok(i32 %103, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %104)
  %106 = call i8* @V_BSTR(i32* %7)
  %107 = call i32 @wine_dbgstr_w(i8* %106)
  %108 = call i32 @trace(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %107)
  %109 = call i32 @VariantClear(i32* %7)
  store i32 -559038737, i32* %8, align 4
  %110 = call i32 @VariantInit(i32* %7)
  %111 = load i32*, i32** %6, align 8
  %112 = call i32 @IWbemClassObject_Get(i32* %111, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_Win32_ComputerSystem.nameW, i64 0, i64 0), i32 0, i32* %7, i32* %8, i32* null)
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* @S_OK, align 4
  %115 = icmp eq i32 %113, %114
  %116 = zext i1 %115 to i32
  %117 = load i32, i32* %9, align 4
  %118 = call i32 (i32, i8*, i32, ...) @ok(i32 %116, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %117)
  %119 = call i32 @V_VT(i32* %7)
  %120 = load i32, i32* @VT_BSTR, align 4
  %121 = icmp eq i32 %119, %120
  %122 = zext i1 %121 to i32
  %123 = call i32 @V_VT(i32* %7)
  %124 = call i32 (i32, i8*, i32, ...) @ok(i32 %122, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* @CIM_STRING, align 4
  %127 = icmp eq i32 %125, %126
  %128 = zext i1 %127 to i32
  %129 = load i32, i32* %8, align 4
  %130 = call i32 (i32, i8*, i32, ...) @ok(i32 %128, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %129)
  %131 = call i8* @V_BSTR(i32* %7)
  %132 = call i32 @lstrcmpiW(i8* %131, i8* %22)
  %133 = icmp ne i32 %132, 0
  %134 = xor i1 %133, true
  %135 = zext i1 %134 to i32
  %136 = call i8* @V_BSTR(i32* %7)
  %137 = call i32 @wine_dbgstr_w(i8* %136)
  %138 = call i32 @wine_dbgstr_w(i8* %22)
  %139 = call i32 (i32, i8*, i32, ...) @ok(i32 %135, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %137, i32 %138)
  %140 = call i32 @VariantClear(i32* %7)
  store i32 -559038737, i32* %8, align 4
  %141 = call i32 @VariantInit(i32* %7)
  %142 = load i32*, i32** %6, align 8
  %143 = call i32 @IWbemClassObject_Get(i32* %142, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_Win32_ComputerSystem.usernameW, i64 0, i64 0), i32 0, i32* %7, i32* %8, i32* null)
  store i32 %143, i32* %9, align 4
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* @S_OK, align 4
  %146 = icmp eq i32 %144, %145
  %147 = zext i1 %146 to i32
  %148 = load i32, i32* %9, align 4
  %149 = call i32 (i32, i8*, i32, ...) @ok(i32 %147, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %148)
  %150 = call i32 @V_VT(i32* %7)
  %151 = load i32, i32* @VT_BSTR, align 4
  %152 = icmp eq i32 %150, %151
  %153 = zext i1 %152 to i32
  %154 = call i32 @V_VT(i32* %7)
  %155 = call i32 (i32, i8*, i32, ...) @ok(i32 %153, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %154)
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* @CIM_STRING, align 4
  %158 = icmp eq i32 %156, %157
  %159 = zext i1 %158 to i32
  %160 = load i32, i32* %8, align 4
  %161 = call i32 (i32, i8*, i32, ...) @ok(i32 %159, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %160)
  %162 = call i8* @V_BSTR(i32* %7)
  %163 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %164 = call i32 @lstrcmpiW(i8* %162, i8* %163)
  %165 = icmp ne i32 %164, 0
  %166 = xor i1 %165, true
  %167 = zext i1 %166 to i32
  %168 = call i8* @V_BSTR(i32* %7)
  %169 = call i32 @wine_dbgstr_w(i8* %168)
  %170 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %171 = call i32 @wine_dbgstr_w(i8* %170)
  %172 = call i32 (i32, i8*, i32, ...) @ok(i32 %167, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %169, i32 %171)
  %173 = call i32 @VariantClear(i32* %7)
  %174 = load i32*, i32** %6, align 8
  %175 = call i32 @IWbemClassObject_Release(i32* %174)
  %176 = load i32*, i32** %5, align 8
  %177 = call i32 @IEnumWbemClassObject_Release(i32* %176)
  br label %178

178:                                              ; preds = %67, %65, %55
  %179 = load i32, i32* %4, align 4
  %180 = call i32 @SysFreeString(i32 %179)
  %181 = load i32, i32* %3, align 4
  %182 = call i32 @SysFreeString(i32 %181)
  %183 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %183)
  ret void
}

declare dso_local i32 @SysAllocString(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @GetComputerNameW(i8*, i32*) #1

declare dso_local i32 @lstrcpyW(i8*, i8*) #1

declare dso_local i32 @lstrcatW(i8*, i8*) #1

declare dso_local i32 @lstrlenW(i8*) #1

declare dso_local i32 @GetUserNameW(i8*, i32*) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @IWbemServices_ExecQuery(i32*, i32, i32, i32, i32*, i32**) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @IEnumWbemClassObject_Next(i32*, i32, i32, i32**, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @VariantInit(i32*) #1

declare dso_local i32 @IWbemClassObject_Get(i32*, i8*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @V_VT(i32*) #1

declare dso_local i32 @trace(i8*, i32) #1

declare dso_local i32 @wine_dbgstr_w(i8*) #1

declare dso_local i8* @V_BSTR(i32*) #1

declare dso_local i32 @VariantClear(i32*) #1

declare dso_local i32 @lstrcmpiW(i8*, i8*) #1

declare dso_local i32 @IWbemClassObject_Release(i32*) #1

declare dso_local i32 @IEnumWbemClassObject_Release(i32*) #1

declare dso_local i32 @SysFreeString(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
