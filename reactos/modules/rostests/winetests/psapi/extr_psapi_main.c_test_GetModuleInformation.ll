; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/psapi/extr_psapi_main.c_test_GetModuleInformation.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/psapi/extr_psapi_main.c_test_GetModuleInformation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@ERROR_INVALID_HANDLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"expected error=ERROR_INVALID_HANDLE but got %d\0A\00", align 1
@hpQI = common dso_local global i32* null, align 8
@ERROR_ACCESS_DENIED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"expected error=ERROR_ACCESS_DENIED but got %d\0A\00", align 1
@hpQV = common dso_local global i32* null, align 8
@hBad = common dso_local global i32* null, align 8
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [53 x i8] c"expected error=ERROR_INSUFFICIENT_BUFFER but got %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"failed with %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"lpBaseOfDll=%p hMod=%p\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"shell32.dll\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Failed to load shell32.dll, error: %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"xor of shell32: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetModuleInformation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetModuleInformation() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__, align 8
  %5 = alloca i32, align 4
  %6 = call i32* @GetModuleHandleA(i32* null)
  store i32* %6, i32** %1, align 8
  store i32 0, i32* %3, align 4
  %7 = call i32 @SetLastError(i32 -559038737)
  %8 = load i32*, i32** %1, align 8
  %9 = call i32 @GetModuleInformation(i32* null, i32* %8, %struct.TYPE_3__* %4, i32 16)
  %10 = call i64 (...) @GetLastError()
  %11 = load i64, i64* @ERROR_INVALID_HANDLE, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i64 (...) @GetLastError()
  %15 = call i32 (i32, i8*, i64, ...) @ok(i32 %13, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = call i32 @SetLastError(i32 -559038737)
  %17 = load i32*, i32** @hpQI, align 8
  %18 = load i32*, i32** %1, align 8
  %19 = call i32 @GetModuleInformation(i32* %17, i32* %18, %struct.TYPE_3__* %4, i32 16)
  %20 = call i64 (...) @GetLastError()
  %21 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 (...) @GetLastError()
  %25 = call i32 (i32, i8*, i64, ...) @ok(i32 %23, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %24)
  %26 = call i32 @SetLastError(i32 -559038737)
  %27 = load i32*, i32** @hpQV, align 8
  %28 = load i32*, i32** @hBad, align 8
  %29 = call i32 @GetModuleInformation(i32* %27, i32* %28, %struct.TYPE_3__* %4, i32 16)
  %30 = call i64 (...) @GetLastError()
  %31 = load i64, i64* @ERROR_INVALID_HANDLE, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i64 (...) @GetLastError()
  %35 = call i32 (i32, i8*, i64, ...) @ok(i32 %33, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %34)
  %36 = call i32 @SetLastError(i32 -559038737)
  %37 = load i32*, i32** @hpQV, align 8
  %38 = load i32*, i32** %1, align 8
  %39 = call i32 @GetModuleInformation(i32* %37, i32* %38, %struct.TYPE_3__* %4, i32 15)
  %40 = call i64 (...) @GetLastError()
  %41 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i64 (...) @GetLastError()
  %45 = call i32 (i32, i8*, i64, ...) @ok(i32 %43, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i64 %44)
  %46 = load i32*, i32** @hpQV, align 8
  %47 = load i32*, i32** %1, align 8
  %48 = call i32 @GetModuleInformation(i32* %46, i32* %47, %struct.TYPE_3__* %4, i32 16)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %49, 1
  %51 = zext i1 %50 to i32
  %52 = call i64 (...) @GetLastError()
  %53 = call i32 (i32, i8*, i64, ...) @ok(i32 %51, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i64 %52)
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32*, i32** %1, align 8
  %57 = icmp eq i32* %55, %56
  %58 = zext i1 %57 to i32
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = ptrtoint i32* %60 to i64
  %62 = load i32*, i32** %1, align 8
  %63 = call i32 (i32, i8*, i64, ...) @ok(i32 %58, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i64 %61, i32* %62)
  %64 = call i32* @LoadLibraryA(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  store i32* %64, i32** %1, align 8
  %65 = load i32*, i32** %1, align 8
  %66 = icmp ne i32* %65, null
  %67 = zext i1 %66 to i32
  %68 = call i64 (...) @GetLastError()
  %69 = call i32 (i32, i8*, i64, ...) @ok(i32 %67, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i64 %68)
  %70 = load i32*, i32** @hpQV, align 8
  %71 = load i32*, i32** %1, align 8
  %72 = call i32 @GetModuleInformation(i32* %70, i32* %71, %struct.TYPE_3__* %4, i32 16)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp eq i32 %73, 1
  %75 = zext i1 %74 to i32
  %76 = call i64 (...) @GetLastError()
  %77 = call i32 (i32, i8*, i64, ...) @ok(i32 %75, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i64 %76)
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = udiv i64 %80, 4
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %78, align 8
  %83 = load i32*, i32** %1, align 8
  store i32* %83, i32** %2, align 8
  br label %84

84:                                               ; preds = %94, %0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %84
  %89 = load i32*, i32** %2, align 8
  %90 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %90, i32** %2, align 8
  %91 = load i32, i32* %89, align 4
  %92 = load i32, i32* %3, align 4
  %93 = xor i32 %92, %91
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %95, align 8
  br label %84

98:                                               ; preds = %84
  %99 = load i32, i32* %3, align 4
  %100 = call i32 @trace(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %99)
  %101 = load i32*, i32** %1, align 8
  %102 = call i32 @FreeLibrary(i32* %101)
  ret void
}

declare dso_local i32* @GetModuleHandleA(i32*) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @GetModuleInformation(i32*, i32*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @ok(i32, i8*, i64, ...) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32* @LoadLibraryA(i8*) #1

declare dso_local i32 @trace(i8*, i32) #1

declare dso_local i32 @FreeLibrary(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
