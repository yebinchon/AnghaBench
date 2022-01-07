; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_NtMapViewOfSection.c_Test_BasedSection.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_NtMapViewOfSection.c_Test_BasedSection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@SECTION_ALL_ACCESS = common dso_local global i32 0, align 4
@PAGE_READWRITE = common dso_local global i32 0, align 4
@SEC_COMMIT = common dso_local global i32 0, align 4
@SEC_BASED = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@ViewShare = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Invalid addresses: BaseAddress1=%p, BaseAddress2=%p\0A\00", align 1
@STATUS_CONFLICTING_ADDRESSES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_BasedSection() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__, align 4
  %5 = alloca %struct.TYPE_4__, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i32 4096, i32* %9, align 4
  %10 = load i32, i32* @SECTION_ALL_ACCESS, align 4
  %11 = load i32, i32* @PAGE_READWRITE, align 4
  %12 = load i32, i32* @SEC_COMMIT, align 4
  %13 = load i32, i32* @SEC_BASED, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @NtCreateSection(i32* %2, i32 %10, i32* null, %struct.TYPE_4__* %4, i32 %11, i32 %14, i32* null)
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* %1, align 4
  %17 = load i32, i32* @STATUS_SUCCESS, align 4
  %18 = call i32 @ok_ntstatus(i32 %16, i32 %17)
  store i32* null, i32** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store i32 0, i32* %19, align 4
  store i64 0, i64* %8, align 8
  %20 = load i32, i32* %2, align 4
  %21 = call i32 (...) @NtCurrentProcess()
  %22 = load i32, i32* @ViewShare, align 4
  %23 = load i32, i32* @PAGE_READWRITE, align 4
  %24 = call i32 @NtMapViewOfSection(i32 %20, i32 %21, i32** %6, i32 0, i32 0, %struct.TYPE_4__* %5, i64* %8, i32 %22, i32 0, i32 %23)
  store i32 %24, i32* %1, align 4
  %25 = load i32, i32* %1, align 4
  %26 = load i32, i32* @STATUS_SUCCESS, align 4
  %27 = call i32 @ok_ntstatus(i32 %25, i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i32 4096, i32* %28, align 4
  %29 = load i32, i32* @SECTION_ALL_ACCESS, align 4
  %30 = load i32, i32* @PAGE_READWRITE, align 4
  %31 = load i32, i32* @SEC_COMMIT, align 4
  %32 = load i32, i32* @SEC_BASED, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @NtCreateSection(i32* %3, i32 %29, i32* null, %struct.TYPE_4__* %4, i32 %30, i32 %33, i32* null)
  store i32 %34, i32* %1, align 4
  %35 = load i32, i32* %1, align 4
  %36 = load i32, i32* @STATUS_SUCCESS, align 4
  %37 = call i32 @ok_ntstatus(i32 %35, i32 %36)
  store i32* null, i32** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store i32 0, i32* %38, align 4
  store i64 0, i64* %8, align 8
  %39 = load i32, i32* %3, align 4
  %40 = call i32 (...) @NtCurrentProcess()
  %41 = load i32, i32* @ViewShare, align 4
  %42 = load i32, i32* @PAGE_READWRITE, align 4
  %43 = call i32 @NtMapViewOfSection(i32 %39, i32 %40, i32** %7, i32 0, i32 0, %struct.TYPE_4__* %5, i64* %8, i32 %41, i32 0, i32 %42)
  store i32 %43, i32* %1, align 4
  %44 = load i32, i32* %1, align 4
  %45 = load i32, i32* @STATUS_SUCCESS, align 4
  %46 = call i32 @ok_ntstatus(i32 %44, i32 %45)
  %47 = load i32*, i32** %7, align 8
  %48 = ptrtoint i32* %47 to i64
  %49 = load i32*, i32** %6, align 8
  %50 = ptrtoint i32* %49 to i64
  %51 = icmp slt i64 %48, %50
  %52 = zext i1 %51 to i32
  %53 = load i32*, i32** %6, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @ok(i32 %52, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32* %53, i32* %54)
  %56 = load i32*, i32** %6, align 8
  %57 = ptrtoint i32* %56 to i64
  %58 = load i32*, i32** %7, align 8
  %59 = ptrtoint i32* %58 to i64
  %60 = sub nsw i64 %57, %59
  %61 = icmp eq i64 %60, 65536
  %62 = zext i1 %61 to i32
  %63 = load i32*, i32** %6, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = call i32 @ok(i32 %62, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32* %63, i32* %64)
  ret void
}

declare dso_local i32 @NtCreateSection(i32*, i32, i32*, %struct.TYPE_4__*, i32, i32, i32*) #1

declare dso_local i32 @ok_ntstatus(i32, i32) #1

declare dso_local i32 @NtMapViewOfSection(i32, i32, i32**, i32, i32, %struct.TYPE_4__*, i64*, i32, i32, i32) #1

declare dso_local i32 @NtCurrentProcess(...) #1

declare dso_local i32 @ok(i32, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
