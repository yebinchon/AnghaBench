; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wbemprox/extr_query.c_test_SystemSecurity.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wbemprox/extr_query.c_test_SystemSecurity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64 }

@test_SystemSecurity.systemsecurityW = internal constant [17 x i8] c"__SystemSecurity\00", align 16
@test_SystemSecurity.getsdW = internal constant [6 x i8] c"GetSD\00", align 1
@test_SystemSecurity.returnvalueW = internal constant [12 x i8] c"ReturnValue\00", align 1
@test_SystemSecurity.sdW = internal constant [3 x i8] c"SD\00", align 1
@SECURITY_MAX_SID_SIZE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"__SystemSecurity not available\0A\00", align 1
@WinBuiltinAdministratorsSid = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"CreateWellKnownSid failed\0A\00", align 1
@WBEM_E_ACCESS_DENIED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"failed to execute method %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"failed to get return value %08x\0A\00", align 1
@VT_I4 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"unexpected variant type 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"unexpected error %u\0A\00", align 1
@CIM_UINT32 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"unexpected type 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"failed to get names %08x\0A\00", align 1
@VT_UI1 = common dso_local global i32 0, align 4
@VT_ARRAY = common dso_local global i32 0, align 4
@CIM_UINT8 = common dso_local global i32 0, align 4
@CIM_FLAG_ARRAY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"SafeArrayAccessData failed %x\0A\00", align 1
@SE_SELF_RELATIVE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [21 x i8] c"relative flag unset\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"no owner SID\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"unexpected owner SID\0A\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"unexpected group SID\0A\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"SafeArrayUnaccessData failed %x\0A\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"insufficient privs to test __SystemSecurity\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_SystemSecurity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SystemSecurity(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %19 = call i32 @SysAllocString(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @test_SystemSecurity.systemsecurityW, i64 0, i64 0))
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* @SECURITY_MAX_SID_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %13, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %14, align 8
  store i32* %23, i32** %15, align 8
  %24 = load i32*, i32** %2, align 8
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @IWbemServices_GetObject(i32* %24, i32 %25, i32 0, i32* null, i32** %5, i32* null)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* @S_OK, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = call i32 @win_skip(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %18, align 4
  br label %194

32:                                               ; preds = %1
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @IWbemClassObject_Release(i32* %33)
  %35 = mul nuw i64 4, %21
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* @WinBuiltinAdministratorsSid, align 4
  %38 = load i32*, i32** %15, align 8
  %39 = call i32 @CreateWellKnownSid(i32 %37, i32* null, i32* %38, i32* %16)
  store i32 %39, i32* %17, align 4
  %40 = load i32, i32* %17, align 4
  %41 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %6, align 8
  %42 = call i32 @SysAllocString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_SystemSecurity.getsdW, i64 0, i64 0))
  store i32 %42, i32* %4, align 4
  %43 = load i32*, i32** %2, align 8
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @IWbemServices_ExecMethod(i32* %43, i32 %44, i32 %45, i32 0, i32* null, i32* null, i32** %6, i32* null)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* @S_OK, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %32
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* @WBEM_E_ACCESS_DENIED, align 4
  %53 = icmp eq i32 %51, %52
  br label %54

54:                                               ; preds = %50, %32
  %55 = phi i1 [ true, %32 ], [ %53, %50 ]
  %56 = zext i1 %55 to i32
  %57 = load i32, i32* %12, align 4
  %58 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @SysFreeString(i32 %59)
  %61 = load i32, i32* %12, align 4
  %62 = call i64 @SUCCEEDED(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %184

64:                                               ; preds = %54
  store i32 -559038737, i32* %11, align 4
  %65 = call i32 @VariantInit(i32* %7)
  %66 = load i32*, i32** %6, align 8
  %67 = call i32 @IWbemClassObject_Get(i32* %66, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @test_SystemSecurity.returnvalueW, i64 0, i64 0), i32 0, i32* %7, i32* %11, i32* null)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* @S_OK, align 4
  %70 = icmp eq i32 %68, %69
  %71 = zext i1 %70 to i32
  %72 = load i32, i32* %12, align 4
  %73 = call i32 (i32, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  %74 = call i32 @V_VT(i32* %7)
  %75 = load i32, i32* @VT_I4, align 4
  %76 = icmp eq i32 %74, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @V_VT(i32* %7)
  %79 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %78)
  %80 = call i32 @V_I4(i32* %7)
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = call i32 @V_UI4(i32* %7)
  %85 = call i32 (i32, i8*, ...) @ok(i32 %83, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* @CIM_UINT32, align 4
  %88 = icmp eq i32 %86, %87
  %89 = zext i1 %88 to i32
  %90 = load i32, i32* %11, align 4
  %91 = call i32 (i32, i8*, ...) @ok(i32 %89, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %90)
  store i32 -559038737, i32* %11, align 4
  %92 = call i32 @VariantInit(i32* %8)
  %93 = load i32*, i32** %6, align 8
  %94 = call i32 @IWbemClassObject_Get(i32* %93, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @test_SystemSecurity.sdW, i64 0, i64 0), i32 0, i32* %8, i32* %11, i32* null)
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* @S_OK, align 4
  %97 = icmp eq i32 %95, %96
  %98 = zext i1 %97 to i32
  %99 = load i32, i32* %12, align 4
  %100 = call i32 (i32, i8*, ...) @ok(i32 %98, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %99)
  %101 = call i32 @V_VT(i32* %8)
  %102 = load i32, i32* @VT_UI1, align 4
  %103 = load i32, i32* @VT_ARRAY, align 4
  %104 = or i32 %102, %103
  %105 = icmp eq i32 %101, %104
  %106 = zext i1 %105 to i32
  %107 = call i32 @V_VT(i32* %8)
  %108 = call i32 (i32, i8*, ...) @ok(i32 %106, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* @CIM_UINT8, align 4
  %111 = load i32, i32* @CIM_FLAG_ARRAY, align 4
  %112 = or i32 %110, %111
  %113 = icmp eq i32 %109, %112
  %114 = zext i1 %113 to i32
  %115 = load i32, i32* %11, align 4
  %116 = call i32 (i32, i8*, ...) @ok(i32 %114, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %115)
  %117 = call i32 @V_ARRAY(i32* %8)
  %118 = call i32 @SafeArrayAccessData(i32 %117, i8** %9)
  store i32 %118, i32* %12, align 4
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* @S_OK, align 4
  %121 = icmp eq i32 %119, %120
  %122 = zext i1 %121 to i32
  %123 = load i32, i32* %12, align 4
  %124 = call i32 (i32, i8*, ...) @ok(i32 %122, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* %12, align 4
  %126 = call i64 @SUCCEEDED(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %180

128:                                              ; preds = %64
  %129 = load i8*, i8** %9, align 8
  %130 = bitcast i8* %129 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %130, %struct.TYPE_2__** %10, align 8
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @SE_SELF_RELATIVE, align 4
  %135 = and i32 %133, %134
  %136 = load i32, i32* @SE_SELF_RELATIVE, align 4
  %137 = icmp eq i32 %135, %136
  %138 = zext i1 %137 to i32
  %139 = call i32 (i32, i8*, ...) @ok(i32 %138, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  %144 = zext i1 %143 to i32
  %145 = call i32 (i32, i8*, ...) @ok(i32 %144, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  %150 = zext i1 %149 to i32
  %151 = call i32 (i32, i8*, ...) @ok(i32 %150, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %153 = ptrtoint %struct.TYPE_2__* %152 to i64
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = add nsw i64 %153, %156
  %158 = trunc i64 %157 to i32
  %159 = load i32*, i32** %15, align 8
  %160 = call i32 @EqualSid(i32 %158, i32* %159)
  %161 = call i32 (i32, i8*, ...) @ok(i32 %160, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %163 = ptrtoint %struct.TYPE_2__* %162 to i64
  %164 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = add nsw i64 %163, %166
  %168 = trunc i64 %167 to i32
  %169 = load i32*, i32** %15, align 8
  %170 = call i32 @EqualSid(i32 %168, i32* %169)
  %171 = call i32 (i32, i8*, ...) @ok(i32 %170, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0))
  %172 = call i32 @V_ARRAY(i32* %8)
  %173 = call i32 @SafeArrayUnaccessData(i32 %172)
  store i32 %173, i32* %12, align 4
  %174 = load i32, i32* %12, align 4
  %175 = load i32, i32* @S_OK, align 4
  %176 = icmp eq i32 %174, %175
  %177 = zext i1 %176 to i32
  %178 = load i32, i32* %12, align 4
  %179 = call i32 (i32, i8*, ...) @ok(i32 %177, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0), i32 %178)
  br label %180

180:                                              ; preds = %128, %64
  %181 = call i32 @VariantClear(i32* %8)
  %182 = load i32*, i32** %6, align 8
  %183 = call i32 @IWbemClassObject_Release(i32* %182)
  br label %191

184:                                              ; preds = %54
  %185 = load i32, i32* %12, align 4
  %186 = load i32, i32* @WBEM_E_ACCESS_DENIED, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %188, label %190

188:                                              ; preds = %184
  %189 = call i32 @win_skip(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i64 0, i64 0))
  br label %190

190:                                              ; preds = %188, %184
  br label %191

191:                                              ; preds = %190, %180
  %192 = load i32, i32* %3, align 4
  %193 = call i32 @SysFreeString(i32 %192)
  store i32 0, i32* %18, align 4
  br label %194

194:                                              ; preds = %191, %30
  %195 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %195)
  %196 = load i32, i32* %18, align 4
  switch i32 %196, label %198 [
    i32 0, label %197
    i32 1, label %197
  ]

197:                                              ; preds = %194, %194
  ret void

198:                                              ; preds = %194
  unreachable
}

declare dso_local i32 @SysAllocString(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @IWbemServices_GetObject(i32*, i32, i32, i32*, i32**, i32*) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @IWbemClassObject_Release(i32*) #1

declare dso_local i32 @CreateWellKnownSid(i32, i32*, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @IWbemServices_ExecMethod(i32*, i32, i32, i32, i32*, i32*, i32**, i32*) #1

declare dso_local i32 @SysFreeString(i32) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @VariantInit(i32*) #1

declare dso_local i32 @IWbemClassObject_Get(i32*, i8*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @V_VT(i32*) #1

declare dso_local i32 @V_I4(i32*) #1

declare dso_local i32 @V_UI4(i32*) #1

declare dso_local i32 @SafeArrayAccessData(i32, i8**) #1

declare dso_local i32 @V_ARRAY(i32*) #1

declare dso_local i32 @EqualSid(i32, i32*) #1

declare dso_local i32 @SafeArrayUnaccessData(i32) #1

declare dso_local i32 @VariantClear(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
