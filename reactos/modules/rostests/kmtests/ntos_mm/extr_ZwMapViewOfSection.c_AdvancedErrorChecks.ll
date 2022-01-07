; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/kmtests/ntos_mm/extr_ZwMapViewOfSection.c_AdvancedErrorChecks.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/kmtests/ntos_mm/extr_ZwMapViewOfSection.c_AdvancedErrorChecks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }

@TestStringSize = common dso_local global i8* null, align 8
@SECTION_ALL_ACCESS = common dso_local global i32 0, align 4
@PAGE_READWRITE = common dso_local global i32 0, align 4
@SEC_COMMIT = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STANDARD_RIGHTS_ALL = common dso_local global i32 0, align 4
@KernelMode = common dso_local global i32 0, align 4
@ViewUnmap = common dso_local global i32 0, align 4
@MEM_RESERVE = common dso_local global i32 0, align 4
@STATUS_INVALID_VIEW_SIZE = common dso_local global i32 0, align 4
@IGNORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @AdvancedErrorChecks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AdvancedErrorChecks(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__, align 8
  %10 = alloca %struct.TYPE_4__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %11, align 4
  %13 = load i8*, i8** @TestStringSize, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i8* %13, i8** %14, align 8
  %15 = load i32, i32* @SECTION_ALL_ACCESS, align 4
  %16 = load i32, i32* @PAGE_READWRITE, align 4
  %17 = load i32, i32* @SEC_COMMIT, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @ZwCreateSection(i32* %8, i32 %15, i32* null, %struct.TYPE_4__* %10, i32 %16, i32 %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @STATUS_SUCCESS, align 4
  %22 = call i32 @ok_eq_hex(i32 %20, i32 %21)
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @STANDARD_RIGHTS_ALL, align 4
  %25 = load i32, i32* @KernelMode, align 4
  %26 = call i32 @ObReferenceObjectByHandle(i32 %23, i32 %24, i32* null, i32 %25, i32* %12, i32* null)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @STATUS_SUCCESS, align 4
  %29 = call i32 @ok_eq_hex(i32 %27, i32 %28)
  store i32 -1, i32* %11, align 4
  %30 = load i32, i32* %12, align 4
  %31 = call i32 (...) @PsGetCurrentProcess()
  %32 = load i8*, i8** @TestStringSize, align 8
  %33 = load i32, i32* @ViewUnmap, align 4
  %34 = load i32, i32* @MEM_RESERVE, align 4
  %35 = load i32, i32* @PAGE_READWRITE, align 4
  %36 = load i32, i32* @STATUS_INVALID_VIEW_SIZE, align 4
  %37 = load i32, i32* @IGNORE, align 4
  %38 = call i32 @MmTestMapView(i32 %30, i32 %31, i32* %7, i32 0, i8* %32, %struct.TYPE_4__* %9, i32* %11, i32 %33, i32 %34, i32 %35, i32 %36, i32 %37)
  store i32 1, i32* %11, align 4
  %39 = load i8*, i8** @TestStringSize, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i8* %39, i8** %40, align 8
  %41 = load i32, i32* %12, align 4
  %42 = call i32 (...) @PsGetCurrentProcess()
  %43 = load i8*, i8** @TestStringSize, align 8
  %44 = load i32, i32* @ViewUnmap, align 4
  %45 = load i32, i32* @PAGE_READWRITE, align 4
  %46 = load i32, i32* @STATUS_INVALID_VIEW_SIZE, align 4
  %47 = load i32, i32* @IGNORE, align 4
  %48 = call i32 @MmTestMapView(i32 %41, i32 %42, i32* %7, i32 0, i8* %43, %struct.TYPE_4__* %9, i32* %11, i32 %44, i32 0, i32 %45, i32 %46, i32 %47)
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @ObDereferenceObject(i32 %49)
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @ZwClose(i32 %51)
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @ZwCreateSection(i32*, i32, i32*, %struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i32 @ok_eq_hex(i32, i32) #1

declare dso_local i32 @ObReferenceObjectByHandle(i32, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @MmTestMapView(i32, i32, i32*, i32, i8*, %struct.TYPE_4__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PsGetCurrentProcess(...) #1

declare dso_local i32 @ObDereferenceObject(i32) #1

declare dso_local i32 @ZwClose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
