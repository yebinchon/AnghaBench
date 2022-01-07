; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mscms/extr_profile.c_test_AssociateColorProfileWithDeviceA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mscms/extr_profile.c_test_AssociateColorProfileWithDeviceA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32* }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Can't get display info\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"machine\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"AssociateColorProfileWithDevice() succeeded\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [42 x i8] c"expected ERROR_INVALID_PARAMETER, got %u\0A\00", align 1
@ERROR_NOT_SUPPORTED = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [38 x i8] c"expected ERROR_NOT_SUPPORTED, got %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"InstallColorProfileA() failed (%u)\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"GetColorDirectoryA() failed (%d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"AssociateColorProfileWithDevice() failed (%u)\0A\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"DisassociateColorProfileFromDeviceA() succeeded\0A\00", align 1
@.str.10 = private unnamed_addr constant [51 x i8] c"DisassociateColorProfileFromDeviceA() failed (%u)\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [38 x i8] c"UninstallColorProfileA() failed (%d)\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"Unable to obtain monitor name\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_AssociateColorProfileWithDeviceA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_AssociateColorProfileWithDeviceA(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_3__, align 8
  %10 = alloca %struct.TYPE_3__, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %12 = load i32, i32* @MAX_PATH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %4, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %5, align 8
  %16 = load i32, i32* @MAX_PATH, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %6, align 8
  store i64 %13, i64* %8, align 8
  %19 = load i8*, i8** %2, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %161

21:                                               ; preds = %1
  br i1 true, label %22, label %161

22:                                               ; preds = %21
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store i32 24, i32* %23, align 8
  %24 = call i32 @pEnumDisplayDevicesA(i32* null, i32 0, %struct.TYPE_3__* %9, i32 0)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i32 24, i32* %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @pEnumDisplayDevicesA(i32* %29, i32 0, %struct.TYPE_3__* %10, i32 0)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %158

33:                                               ; preds = %22
  %34 = call i32 @SetLastError(i32 -559038737)
  %35 = load i8*, i8** %2, align 8
  %36 = call i32 @pAssociateColorProfileWithDeviceA(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %35, i32* null)
  store i32 %36, i32* %3, align 4
  %37 = call i64 (...) @GetLastError()
  store i64 %37, i64* %7, align 8
  %38 = load i32, i32* %3, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = load i64, i64* %7, align 8
  %48 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i64 %47)
  %49 = call i32 @SetLastError(i32 -559038737)
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @pAssociateColorProfileWithDeviceA(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* null, i32* %51)
  store i32 %52, i32* %3, align 4
  %53 = call i64 (...) @GetLastError()
  store i64 %53, i64* %7, align 8
  %54 = load i32, i32* %3, align 4
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i32 (i32, i8*, ...) @ok(i32 %57, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = load i64, i64* %7, align 8
  %64 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i64 %63)
  %65 = call i32 @SetLastError(i32 -559038737)
  %66 = load i8*, i8** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @pAssociateColorProfileWithDeviceA(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %66, i32* %68)
  store i32 %69, i32* %3, align 4
  %70 = call i64 (...) @GetLastError()
  store i64 %70, i64* %7, align 8
  %71 = load i32, i32* %3, align 4
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %76 = load i64, i64* %7, align 8
  %77 = load i64, i64* @ERROR_NOT_SUPPORTED, align 8
  %78 = icmp eq i64 %76, %77
  %79 = zext i1 %78 to i32
  %80 = load i64, i64* %7, align 8
  %81 = call i32 (i32, i8*, ...) @ok(i32 %79, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i64 %80)
  %82 = load i8*, i8** %2, align 8
  %83 = call i32 @pInstallColorProfileA(i32* null, i8* %82)
  store i32 %83, i32* %3, align 4
  %84 = load i32, i32* %3, align 4
  %85 = call i64 (...) @GetLastError()
  %86 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i64 %85)
  %87 = call i32 @pGetColorDirectoryA(i32* null, i8* %15, i64* %8)
  store i32 %87, i32* %3, align 4
  %88 = load i32, i32* %3, align 4
  %89 = call i64 (...) @GetLastError()
  %90 = call i32 (i32, i8*, ...) @ok(i32 %88, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i64 %89)
  %91 = load i8*, i8** %2, align 8
  %92 = call i32 @MSCMS_basenameA(i8* %91, i8* %18)
  %93 = call i32 @lstrcatA(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %94 = call i32 @lstrcatA(i8* %15, i8* %18)
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @pAssociateColorProfileWithDeviceA(i8* null, i8* %15, i32* %96)
  store i32 %97, i32* %3, align 4
  %98 = load i32, i32* %3, align 4
  %99 = call i64 (...) @GetLastError()
  %100 = call i32 (i32, i8*, ...) @ok(i32 %98, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0), i64 %99)
  %101 = call i32 @SetLastError(i32 -559038737)
  %102 = call i32 @pDisassociateColorProfileFromDeviceA(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %15, i32* null)
  store i32 %102, i32* %3, align 4
  %103 = call i64 (...) @GetLastError()
  store i64 %103, i64* %7, align 8
  %104 = load i32, i32* %3, align 4
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  %108 = call i32 (i32, i8*, ...) @ok(i32 %107, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0))
  %109 = load i64, i64* %7, align 8
  %110 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %111 = icmp eq i64 %109, %110
  %112 = zext i1 %111 to i32
  %113 = load i64, i64* %7, align 8
  %114 = call i32 (i32, i8*, ...) @ok(i32 %112, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i64 %113)
  %115 = call i32 @SetLastError(i32 -559038737)
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = call i32 @pDisassociateColorProfileFromDeviceA(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* null, i32* %117)
  store i32 %118, i32* %3, align 4
  %119 = call i64 (...) @GetLastError()
  store i64 %119, i64* %7, align 8
  %120 = load i32, i32* %3, align 4
  %121 = icmp ne i32 %120, 0
  %122 = xor i1 %121, true
  %123 = zext i1 %122 to i32
  %124 = call i32 (i32, i8*, ...) @ok(i32 %123, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0))
  %125 = load i64, i64* %7, align 8
  %126 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %127 = icmp eq i64 %125, %126
  %128 = zext i1 %127 to i32
  %129 = load i64, i64* %7, align 8
  %130 = call i32 (i32, i8*, ...) @ok(i32 %128, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i64 %129)
  %131 = call i32 @SetLastError(i32 -559038737)
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = call i32 @pDisassociateColorProfileFromDeviceA(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %15, i32* %133)
  store i32 %134, i32* %3, align 4
  %135 = call i64 (...) @GetLastError()
  store i64 %135, i64* %7, align 8
  %136 = load i32, i32* %3, align 4
  %137 = icmp ne i32 %136, 0
  %138 = xor i1 %137, true
  %139 = zext i1 %138 to i32
  %140 = call i32 (i32, i8*, ...) @ok(i32 %139, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0))
  %141 = load i64, i64* %7, align 8
  %142 = load i64, i64* @ERROR_NOT_SUPPORTED, align 8
  %143 = icmp eq i64 %141, %142
  %144 = zext i1 %143 to i32
  %145 = load i64, i64* %7, align 8
  %146 = call i32 (i32, i8*, ...) @ok(i32 %144, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i64 %145)
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = call i32 @pDisassociateColorProfileFromDeviceA(i8* null, i8* %15, i32* %148)
  store i32 %149, i32* %3, align 4
  %150 = load i32, i32* %3, align 4
  %151 = call i64 (...) @GetLastError()
  %152 = call i32 (i32, i8*, ...) @ok(i32 %150, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i64 0, i64 0), i64 %151)
  %153 = load i32, i32* @TRUE, align 4
  %154 = call i32 @pUninstallColorProfileA(i32* null, i8* %15, i32 %153)
  store i32 %154, i32* %3, align 4
  %155 = load i32, i32* %3, align 4
  %156 = call i64 (...) @GetLastError()
  %157 = call i32 (i32, i8*, ...) @ok(i32 %155, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0), i64 %156)
  br label %160

158:                                              ; preds = %22
  %159 = call i32 @skip(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0))
  br label %160

160:                                              ; preds = %158, %33
  br label %161

161:                                              ; preds = %160, %21, %1
  %162 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %162)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pEnumDisplayDevicesA(i32*, i32, %struct.TYPE_3__*, i32) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32 @pAssociateColorProfileWithDeviceA(i8*, i8*, i32*) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i32 @pInstallColorProfileA(i32*, i8*) #2

declare dso_local i32 @pGetColorDirectoryA(i32*, i8*, i64*) #2

declare dso_local i32 @MSCMS_basenameA(i8*, i8*) #2

declare dso_local i32 @lstrcatA(i8*, i8*) #2

declare dso_local i32 @pDisassociateColorProfileFromDeviceA(i8*, i8*, i32*) #2

declare dso_local i32 @pUninstallColorProfileA(i32*, i8*, i32) #2

declare dso_local i32 @skip(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
