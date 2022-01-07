; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_oleaut.c_reg_get_typelib_module.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_oleaut.c_reg_get_typelib_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32* }

@KEY_WOW64_32KEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"Interface\\{%08x-%04x-%04x-%02x%02x-%02x%02x%02x%02x%02x%02x}\\Typelib\00", align 1
@HKEY_CLASSES_ROOT = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"No %s key found.\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Getting typelib guid failed.\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Version\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Could not get version value?\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Typelib\\%s\\%s\\0\\win%u\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Could not get typelib fn?\0A\00", align 1
@CP_ACP = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@KEY_WOW64_64KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32)* @reg_get_typelib_module to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reg_get_typelib_module(%struct.TYPE_3__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [200 x i8], align 16
  %10 = alloca [300 x i8], align 16
  %11 = alloca [300 x i8], align 16
  %12 = alloca [100 x i8], align 16
  %13 = alloca [260 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %21 = load i32, i32* @KEY_WOW64_32KEY, align 4
  store i32 %21, i32* %8, align 4
  %22 = getelementptr inbounds [300 x i8], [300 x i8]* %11, i64 0, i64 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 4
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 5
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 6
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 7
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i8*, i8*, ...) @sprintf(i8* %22, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28, i32 %31, i32 %36, i32 %41, i32 %46, i32 %51, i32 %56, i32 %61, i32 %66, i32 %71)
  %73 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %74 = getelementptr inbounds [300 x i8], [300 x i8]* %11, i64 0, i64 0
  %75 = load i32, i32* @KEY_READ, align 4
  %76 = call i32 @RegOpenKeyExA(i32 %73, i8* %74, i32 0, i32 %75, i32* %20)
  store i32 %76, i32* %18, align 4
  %77 = load i32, i32* %18, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %97

79:                                               ; preds = %3
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @KEY_WOW64_32KEY, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %90, label %83

83:                                               ; preds = %79
  %84 = call i32 (...) @GetCurrentProcess()
  %85 = call i64 @IsWow64Process(i32 %84, i64* %19)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %83
  %88 = load i64, i64* %19, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %87, %79
  %91 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %92 = getelementptr inbounds [300 x i8], [300 x i8]* %11, i64 0, i64 0
  %93 = load i32, i32* @KEY_READ, align 4
  %94 = load i32, i32* %8, align 4
  %95 = or i32 %93, %94
  %96 = call i32 @RegOpenKeyExA(i32 %91, i8* %92, i32 0, i32 %95, i32* %20)
  store i32 %96, i32* %18, align 4
  br label %97

97:                                               ; preds = %90, %87, %83, %3
  %98 = load i32, i32* %18, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = getelementptr inbounds [300 x i8], [300 x i8]* %11, i64 0, i64 0
  %102 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %101)
  %103 = load i32, i32* @E_FAIL, align 4
  store i32 %103, i32* %4, align 4
  br label %148

104:                                              ; preds = %97
  store i32 200, i32* %14, align 4
  %105 = load i32, i32* %20, align 4
  %106 = getelementptr inbounds [200 x i8], [200 x i8]* %9, i64 0, i64 0
  %107 = bitcast i8* %106 to i32*
  %108 = call i64 @RegQueryValueExA(i32 %105, i8* null, i32* null, i32* %16, i32* %107, i32* %14)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %104
  %111 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %112 = load i32, i32* %20, align 4
  %113 = call i32 @RegCloseKey(i32 %112)
  %114 = load i32, i32* @E_FAIL, align 4
  store i32 %114, i32* %4, align 4
  br label %148

115:                                              ; preds = %104
  store i32 100, i32* %15, align 4
  %116 = load i32, i32* %20, align 4
  %117 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %118 = bitcast i8* %117 to i32*
  %119 = call i64 @RegQueryValueExA(i32 %116, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32* null, i32* %16, i32* %118, i32* %15)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %115
  %122 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %123 = load i32, i32* %20, align 4
  %124 = call i32 @RegCloseKey(i32 %123)
  %125 = load i32, i32* @E_FAIL, align 4
  store i32 %125, i32* %4, align 4
  br label %148

126:                                              ; preds = %115
  %127 = load i32, i32* %20, align 4
  %128 = call i32 @RegCloseKey(i32 %127)
  %129 = getelementptr inbounds [300 x i8], [300 x i8]* %10, i64 0, i64 0
  %130 = getelementptr inbounds [200 x i8], [200 x i8]* %9, i64 0, i64 0
  %131 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %132 = call i32 (i8*, i8*, ...) @sprintf(i8* %129, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %130, i8* %131, i32 64)
  store i32 260, i32* %17, align 4
  %133 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %134 = getelementptr inbounds [300 x i8], [300 x i8]* %10, i64 0, i64 0
  %135 = getelementptr inbounds [260 x i8], [260 x i8]* %13, i64 0, i64 0
  %136 = call i64 @RegQueryValueA(i32 %133, i8* %134, i8* %135, i32* %17)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %126
  %139 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %140 = load i32, i32* @E_FAIL, align 4
  store i32 %140, i32* %4, align 4
  br label %148

141:                                              ; preds = %126
  %142 = load i32, i32* @CP_ACP, align 4
  %143 = getelementptr inbounds [260 x i8], [260 x i8]* %13, i64 0, i64 0
  %144 = load i32*, i32** %6, align 8
  %145 = load i32, i32* %7, align 4
  %146 = call i32 @MultiByteToWideChar(i32 %142, i32 0, i8* %143, i32 -1, i32* %144, i32 %145)
  %147 = load i32, i32* @S_OK, align 4
  store i32 %147, i32* %4, align 4
  br label %148

148:                                              ; preds = %141, %138, %121, %110, %100
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @RegOpenKeyExA(i32, i8*, i32, i32, i32*) #1

declare dso_local i64 @IsWow64Process(i32, i64*) #1

declare dso_local i32 @GetCurrentProcess(...) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i64 @RegQueryValueExA(i32, i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i64 @RegQueryValueA(i32, i8*, i8*, i32*) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
