; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_typelib.c_test_dep.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_typelib.c_test_dep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@test_dep.ifacenameW = internal global [9 x i8] c"ITestDep\00", align 1
@test_dep.libguid = internal constant %struct.TYPE_8__ { i32 -534606042, i32 10566, i32 18316, %struct.TYPE_7__ { i32 182, i32 74, i32 147, i32 254, i32 239, i32 165, i32 5, i32 50 } }, align 4
@test_dep.ifaceguid = internal constant %struct.TYPE_8__ { i32 960722653, i32 15288, i32 18436, %struct.TYPE_7__ { i32 140, i32 204, i32 149, i32 89, i32 67, i32 64, i32 4, i32 243 } }, align 4
@.str = private unnamed_addr constant [35 x i8] c"Starting typelib dependency tests\0A\00", align 1
@CP_ACP = common dso_local global i32 0, align 4
@REGKIND_NONE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"got %08x\0A\00", align 1
@IID_ISimpleIface = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"tlb\00", align 1
@SYS_WIN64 = common dso_local global i32 0, align 4
@LOCALE_NEUTRAL = common dso_local global i32 0, align 4
@TKIND_INTERFACE = common dso_local global i32 0, align 4
@TYPEFLAG_FOLEAUTOMATION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"got: %x\0A\00", align 1
@TYPE_E_CANTLOADLIBRARY = common dso_local global i64 0, align 8
@SYS_WIN32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_dep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_dep() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = load i32, i32* @MAX_PATH, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %3, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %4, align 8
  %19 = load i32, i32* @MAX_PATH, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %7, align 8
  %22 = load i32, i32* @MAX_PATH, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %8, align 8
  store i32* null, i32** %13, align 8
  %25 = call i32 @trace(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %26 = call i8* @create_test_typelib(i32 2)
  store i8* %26, i8** %2, align 8
  %27 = load i32, i32* @CP_ACP, align 4
  %28 = load i8*, i8** %2, align 8
  %29 = load i32, i32* @MAX_PATH, align 4
  %30 = call i32 @MultiByteToWideChar(i32 %27, i32 0, i8* %28, i32 -1, i8* %18, i32 %29)
  %31 = load i32, i32* @REGKIND_NONE, align 4
  %32 = call i64 @LoadTypeLibEx(i8* %18, i32 %31, i32** %5)
  store i64 %32, i64* %1, align 8
  %33 = load i64, i64* %1, align 8
  %34 = load i64, i64* @S_OK, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = load i64, i64* %1, align 8
  %38 = call i32 @ok(i32 %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %37)
  %39 = load i32*, i32** %5, align 8
  %40 = call i64 @ITypeLib_GetTypeInfoOfGuid(i32* %39, %struct.TYPE_8__* @IID_ISimpleIface, i32** %6)
  store i64 %40, i64* %1, align 8
  %41 = load i64, i64* %1, align 8
  %42 = load i64, i64* @S_OK, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = load i64, i64* %1, align 8
  %46 = call i32 @ok(i32 %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %45)
  %47 = call i32 @GetTempFileNameA(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 0, i8* %21)
  %48 = load i32, i32* @CP_ACP, align 4
  %49 = load i32, i32* @MAX_PATH, align 4
  %50 = call i32 @MultiByteToWideChar(i32 %48, i32 0, i8* %21, i32 -1, i8* %24, i32 %49)
  %51 = load i32, i32* @SYS_WIN64, align 4
  %52 = call i64 @CreateTypeLib2(i32 %51, i8* %24, i32** %9)
  store i64 %52, i64* %1, align 8
  %53 = load i64, i64* %1, align 8
  %54 = load i64, i64* @S_OK, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = load i64, i64* %1, align 8
  %58 = call i32 @ok(i32 %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %57)
  %59 = load i32*, i32** %9, align 8
  %60 = call i64 @ICreateTypeLib2_SetGuid(i32* %59, %struct.TYPE_8__* @test_dep.libguid)
  store i64 %60, i64* %1, align 8
  %61 = load i64, i64* %1, align 8
  %62 = load i64, i64* @S_OK, align 8
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = load i64, i64* %1, align 8
  %66 = call i32 @ok(i32 %64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %65)
  %67 = load i32*, i32** %9, align 8
  %68 = load i32, i32* @LOCALE_NEUTRAL, align 4
  %69 = call i64 @ICreateTypeLib2_SetLcid(i32* %67, i32 %68)
  store i64 %69, i64* %1, align 8
  %70 = load i64, i64* %1, align 8
  %71 = load i64, i64* @S_OK, align 8
  %72 = icmp eq i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = load i64, i64* %1, align 8
  %75 = call i32 @ok(i32 %73, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %74)
  %76 = load i32*, i32** %9, align 8
  %77 = load i32, i32* @TKIND_INTERFACE, align 4
  %78 = call i64 @ICreateTypeLib2_CreateTypeInfo(i32* %76, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_dep.ifacenameW, i64 0, i64 0), i32 %77, i32** %10)
  store i64 %78, i64* %1, align 8
  %79 = load i64, i64* %1, align 8
  %80 = load i64, i64* @S_OK, align 8
  %81 = icmp eq i64 %79, %80
  %82 = zext i1 %81 to i32
  %83 = load i64, i64* %1, align 8
  %84 = call i32 @ok(i32 %82, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %83)
  %85 = load i32*, i32** %10, align 8
  %86 = call i64 @ICreateTypeInfo_SetGuid(i32* %85, %struct.TYPE_8__* @test_dep.ifaceguid)
  store i64 %86, i64* %1, align 8
  %87 = load i64, i64* %1, align 8
  %88 = load i64, i64* @S_OK, align 8
  %89 = icmp eq i64 %87, %88
  %90 = zext i1 %89 to i32
  %91 = load i64, i64* %1, align 8
  %92 = call i32 @ok(i32 %90, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %91)
  %93 = load i32*, i32** %10, align 8
  %94 = load i32, i32* @TYPEFLAG_FOLEAUTOMATION, align 4
  %95 = call i64 @ICreateTypeInfo_SetTypeFlags(i32* %93, i32 %94)
  store i64 %95, i64* %1, align 8
  %96 = load i64, i64* %1, align 8
  %97 = load i64, i64* @S_OK, align 8
  %98 = icmp eq i64 %96, %97
  %99 = zext i1 %98 to i32
  %100 = load i64, i64* %1, align 8
  %101 = call i32 @ok(i32 %99, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %100)
  %102 = load i32*, i32** %10, align 8
  %103 = load i32*, i32** %6, align 8
  %104 = call i64 @ICreateTypeInfo_AddRefTypeInfo(i32* %102, i32* %103, i32* %14)
  store i64 %104, i64* %1, align 8
  %105 = load i64, i64* %1, align 8
  %106 = load i64, i64* @S_OK, align 8
  %107 = icmp eq i64 %105, %106
  %108 = zext i1 %107 to i32
  %109 = load i64, i64* %1, align 8
  %110 = call i32 @ok(i32 %108, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %109)
  %111 = load i32*, i32** %10, align 8
  %112 = load i32, i32* %14, align 4
  %113 = call i64 @ICreateTypeInfo_AddImplType(i32* %111, i32 0, i32 %112)
  store i64 %113, i64* %1, align 8
  %114 = load i64, i64* %1, align 8
  %115 = load i64, i64* @S_OK, align 8
  %116 = icmp eq i64 %114, %115
  %117 = zext i1 %116 to i32
  %118 = load i64, i64* %1, align 8
  %119 = call i32 @ok(i32 %117, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %118)
  %120 = load i32*, i32** %10, align 8
  %121 = call i32 @ICreateTypeInfo_Release(i32* %120)
  %122 = load i32*, i32** %9, align 8
  %123 = call i64 @ICreateTypeLib2_SaveAllChanges(i32* %122)
  store i64 %123, i64* %1, align 8
  %124 = load i64, i64* %1, align 8
  %125 = load i64, i64* @S_OK, align 8
  %126 = icmp eq i64 %124, %125
  %127 = zext i1 %126 to i32
  %128 = load i64, i64* %1, align 8
  %129 = call i32 @ok(i32 %127, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %128)
  %130 = load i32*, i32** %9, align 8
  %131 = call i32 @ICreateTypeLib2_Release(i32* %130)
  %132 = load i32*, i32** %6, align 8
  %133 = call i32 @ITypeInfo_Release(i32* %132)
  %134 = load i32*, i32** %5, align 8
  %135 = call i32 @ITypeLib_Release(i32* %134)
  %136 = call i32 @DeleteFileW(i8* %18)
  %137 = load i32, i32* @REGKIND_NONE, align 4
  %138 = call i64 @LoadTypeLibEx(i8* %24, i32 %137, i32** %11)
  store i64 %138, i64* %1, align 8
  %139 = load i64, i64* %1, align 8
  %140 = load i64, i64* @S_OK, align 8
  %141 = icmp eq i64 %139, %140
  %142 = zext i1 %141 to i32
  %143 = load i64, i64* %1, align 8
  %144 = call i32 @ok(i32 %142, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i64 %143)
  %145 = load i32*, i32** %11, align 8
  %146 = call i64 @ITypeLib_GetTypeInfoOfGuid(i32* %145, %struct.TYPE_8__* @test_dep.ifaceguid, i32** %12)
  store i64 %146, i64* %1, align 8
  %147 = load i64, i64* %1, align 8
  %148 = load i64, i64* @S_OK, align 8
  %149 = icmp eq i64 %147, %148
  %150 = zext i1 %149 to i32
  %151 = load i64, i64* %1, align 8
  %152 = call i32 @ok(i32 %150, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i64 %151)
  %153 = load i32*, i32** %12, align 8
  %154 = call i64 @ITypeInfo_GetRefTypeOfImplType(i32* %153, i32 0, i32* %14)
  store i64 %154, i64* %1, align 8
  %155 = load i64, i64* %1, align 8
  %156 = load i64, i64* @S_OK, align 8
  %157 = icmp eq i64 %155, %156
  %158 = zext i1 %157 to i32
  %159 = load i64, i64* %1, align 8
  %160 = call i32 @ok(i32 %158, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i64 %159)
  %161 = load i32*, i32** %12, align 8
  %162 = load i32, i32* %14, align 4
  %163 = call i64 @ITypeInfo_GetRefTypeInfo(i32* %161, i32 %162, i32** %13)
  store i64 %163, i64* %1, align 8
  %164 = load i64, i64* %1, align 8
  %165 = load i64, i64* @S_OK, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %174, label %167

167:                                              ; preds = %0
  %168 = load i64, i64* %1, align 8
  %169 = load i64, i64* @TYPE_E_CANTLOADLIBRARY, align 8
  %170 = icmp eq i64 %168, %169
  %171 = zext i1 %170 to i32
  %172 = call i64 @broken(i32 %171)
  %173 = icmp ne i64 %172, 0
  br label %174

174:                                              ; preds = %167, %0
  %175 = phi i1 [ true, %0 ], [ %173, %167 ]
  %176 = zext i1 %175 to i32
  %177 = load i64, i64* %1, align 8
  %178 = call i32 @ok(i32 %176, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i64 %177)
  %179 = load i32*, i32** %12, align 8
  %180 = call i32 @ITypeInfo_Release(i32* %179)
  %181 = load i32*, i32** %13, align 8
  %182 = icmp ne i32* %181, null
  br i1 %182, label %183, label %186

183:                                              ; preds = %174
  %184 = load i32*, i32** %13, align 8
  %185 = call i32 @ITypeInfo_Release(i32* %184)
  br label %186

186:                                              ; preds = %183, %174
  %187 = load i32*, i32** %11, align 8
  %188 = call i32 @ITypeLib_Release(i32* %187)
  %189 = call i32 @DeleteFileW(i8* %24)
  %190 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %190)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trace(i8*) #2

declare dso_local i8* @create_test_typelib(i32) #2

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i8*, i32) #2

declare dso_local i64 @LoadTypeLibEx(i8*, i32, i32**) #2

declare dso_local i32 @ok(i32, i8*, i64) #2

declare dso_local i64 @ITypeLib_GetTypeInfoOfGuid(i32*, %struct.TYPE_8__*, i32**) #2

declare dso_local i32 @GetTempFileNameA(i8*, i8*, i32, i8*) #2

declare dso_local i64 @CreateTypeLib2(i32, i8*, i32**) #2

declare dso_local i64 @ICreateTypeLib2_SetGuid(i32*, %struct.TYPE_8__*) #2

declare dso_local i64 @ICreateTypeLib2_SetLcid(i32*, i32) #2

declare dso_local i64 @ICreateTypeLib2_CreateTypeInfo(i32*, i8*, i32, i32**) #2

declare dso_local i64 @ICreateTypeInfo_SetGuid(i32*, %struct.TYPE_8__*) #2

declare dso_local i64 @ICreateTypeInfo_SetTypeFlags(i32*, i32) #2

declare dso_local i64 @ICreateTypeInfo_AddRefTypeInfo(i32*, i32*, i32*) #2

declare dso_local i64 @ICreateTypeInfo_AddImplType(i32*, i32, i32) #2

declare dso_local i32 @ICreateTypeInfo_Release(i32*) #2

declare dso_local i64 @ICreateTypeLib2_SaveAllChanges(i32*) #2

declare dso_local i32 @ICreateTypeLib2_Release(i32*) #2

declare dso_local i32 @ITypeInfo_Release(i32*) #2

declare dso_local i32 @ITypeLib_Release(i32*) #2

declare dso_local i32 @DeleteFileW(i8*) #2

declare dso_local i64 @ITypeInfo_GetRefTypeOfImplType(i32*, i32, i32*) #2

declare dso_local i64 @ITypeInfo_GetRefTypeInfo(i32*, i32, i32**) #2

declare dso_local i64 @broken(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
