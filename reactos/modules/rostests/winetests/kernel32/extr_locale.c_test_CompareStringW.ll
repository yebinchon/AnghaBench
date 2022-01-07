; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_locale.c_test_CompareStringW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_locale.c_test_CompareStringW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@MEM_COMMIT = common dso_local global i32 0, align 4
@PAGE_READWRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"VirtualAlloc failed with %u\0A\00", align 1
@PAGE_NOACCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"VirtualProtect failed with %u\0A\00", align 1
@CP_ACP = common dso_local global i32 0, align 4
@CSTR_LESS_THAN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"expected CSTR_LESS_THAN, got %d\0A\00", align 1
@MEM_RELEASE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"VirtualFree failed with %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_CompareStringW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_CompareStringW() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = call i32 @GetSystemInfo(%struct.TYPE_3__* %3)
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = mul nsw i32 %10, 4
  %12 = load i32, i32* @MEM_COMMIT, align 4
  %13 = load i32, i32* @PAGE_READWRITE, align 4
  %14 = call i8* @VirtualAlloc(i32* null, i32 %11, i32 %12, i32 %13)
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 (...) @GetLastError()
  %19 = call i32 @ok(i32 %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i8*, i8** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %20, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @PAGE_NOACCESS, align 4
  %28 = call i32 @VirtualProtect(i8* %24, i32 %26, i32 %27, i32* %4)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 (...) @GetLastError()
  %31 = call i32 @ok(i32 %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 3, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %32, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @PAGE_NOACCESS, align 4
  %41 = call i32 @VirtualProtect(i8* %37, i32 %39, i32 %40, i32* %4)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 (...) @GetLastError()
  %44 = call i32 @ok(i32 %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %45, i64 %48
  %50 = getelementptr inbounds i8, i8* %49, i64 -1
  store i8* %50, i8** %1, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 3, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %51, i64 %55
  %57 = getelementptr inbounds i8, i8* %56, i64 -1
  store i8* %57, i8** %2, align 8
  %58 = load i8*, i8** %1, align 8
  store i8 65, i8* %58, align 1
  %59 = load i8*, i8** %2, align 8
  store i8 66, i8* %59, align 1
  %60 = load i32, i32* @CP_ACP, align 4
  %61 = load i8*, i8** %1, align 8
  %62 = load i8*, i8** %2, align 8
  %63 = call i32 @CompareStringW(i32 %60, i32 0, i8* %61, i32 100, i8* %62, i32 100)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @CSTR_LESS_THAN, align 4
  %66 = icmp eq i32 %64, %65
  %67 = zext i1 %66 to i32
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @ok(i32 %67, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  %70 = load i8*, i8** %6, align 8
  %71 = load i32, i32* @MEM_RELEASE, align 4
  %72 = call i32 @VirtualFree(i8* %70, i32 0, i32 %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 (...) @GetLastError()
  %75 = call i32 @ok(i32 %73, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  ret void
}

declare dso_local i32 @GetSystemInfo(%struct.TYPE_3__*) #1

declare dso_local i8* @VirtualAlloc(i32*, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @VirtualProtect(i8*, i32, i32, i32*) #1

declare dso_local i32 @CompareStringW(i32, i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @VirtualFree(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
