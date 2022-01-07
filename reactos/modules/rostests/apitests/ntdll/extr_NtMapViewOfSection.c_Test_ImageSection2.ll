; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_NtMapViewOfSection.c_Test_ImageSection2.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_NtMapViewOfSection.c_Test_ImageSection2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [22 x i32] [i32 116, i32 101, i32 115, i32 116, i32 100, i32 97, i32 116, i32 97, i32 92, i32 110, i32 118, i32 111, i32 103, i32 108, i32 118, i32 51, i32 50, i32 46, i32 100, i32 108, i32 108, i32 0], align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"RtlDosPathNameToNtPathName_U failed\0A\00", align 1
@GENERIC_READ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@SYNCHRONIZE = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FILE_SYNCHRONOUS_IO_NONALERT = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Opened file with handle %p\0A\00", align 1
@SECTION_ALL_ACCESS = common dso_local global i32 0, align 4
@PAGE_READWRITE = common dso_local global i32 0, align 4
@SEC_IMAGE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Created image section with handle %p\0A\00", align 1
@ViewShare = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [56 x i8] c"Mapped image section at %p, value in text section: %lx\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"PAUSE\00", align 1
@MEM_RESERVE = common dso_local global i32 0, align 4
@MEM_COMMIT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"allocation status: %lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_ImageSection2() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__, align 4
  %11 = alloca %struct.TYPE_4__, align 4
  %12 = call i32 @RtlDosPathNameToNtPathName_U(i8* bitcast ([22 x i32]* @.str to i8*), i32* %1, i32* null, i32* null)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %0
  %15 = call i32 @ok(i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %71

16:                                               ; preds = %0
  %17 = call i32 @InitializeObjectAttributes(i32* %3, i32* %1, i32 0, i32* null, i32* null)
  %18 = load i32, i32* @GENERIC_READ, align 4
  %19 = load i32, i32* @GENERIC_WRITE, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @SYNCHRONIZE, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @FILE_SHARE_READ, align 4
  %24 = load i32, i32* @FILE_SYNCHRONOUS_IO_NONALERT, align 4
  %25 = call i32 @NtOpenFile(i32* %5, i32 %22, i32* %3, i32* %4, i32 %23, i32 %24)
  store i32 %25, i32* %2, align 4
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* @STATUS_SUCCESS, align 4
  %28 = call i32 @ok_ntstatus(i32 %26, i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 131072, i32* %31, align 4
  %32 = load i32, i32* @SECTION_ALL_ACCESS, align 4
  %33 = load i32, i32* @PAGE_READWRITE, align 4
  %34 = load i32, i32* @SEC_IMAGE, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @NtCreateSection(i32* %6, i32 %32, i32* null, %struct.TYPE_4__* %10, i32 %33, i32 %34, i32 %35)
  store i32 %36, i32* %2, align 4
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* @STATUS_SUCCESS, align 4
  %39 = call i32 @ok_ntstatus(i32 %37, i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %40)
  store i32* null, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i32 0, i32* %42, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 (...) @NtCurrentProcess()
  %45 = load i32, i32* @ViewShare, align 4
  %46 = load i32, i32* @PAGE_READWRITE, align 4
  %47 = call i32 @NtMapViewOfSection(i32 %43, i32 %44, i32** %7, i32 0, i32 0, %struct.TYPE_4__* %11, i32* %9, i32 %45, i32 0, i32 %46)
  store i32 %47, i32* %2, align 4
  %48 = load i32, i32* %2, align 4
  %49 = load i32, i32* @STATUS_SUCCESS, align 4
  %50 = call i32 @ok_ntstatus(i32 %48, i32 %49)
  %51 = load i32*, i32** %7, align 8
  %52 = ptrtoint i32* %51 to i32
  %53 = load i32*, i32** %7, align 8
  %54 = ptrtoint i32* %53 to i64
  %55 = add nsw i64 %54, 4502
  %56 = inttoptr i64 %55 to i32*
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i32 %52, i32 %57)
  %59 = call i32 @system(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %60 = load i32*, i32** %7, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 65536
  store i32* %61, i32** %8, align 8
  store i32 4096, i32* %9, align 4
  %62 = call i32 (...) @NtCurrentProcess()
  %63 = load i32, i32* @MEM_RESERVE, align 4
  %64 = load i32, i32* @MEM_COMMIT, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @PAGE_READWRITE, align 4
  %67 = call i32 @NtAllocateVirtualMemory(i32 %62, i32** %8, i32 0, i32* %9, i32 %65, i32 %66)
  store i32 %67, i32* %2, align 4
  %68 = load i32, i32* %2, align 4
  %69 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %68)
  %70 = call i32 @system(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %71

71:                                               ; preds = %16, %14
  ret void
}

declare dso_local i32 @RtlDosPathNameToNtPathName_U(i8*, i32*, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @InitializeObjectAttributes(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @NtOpenFile(i32*, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @ok_ntstatus(i32, i32) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @NtCreateSection(i32*, i32, i32*, %struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i32 @NtMapViewOfSection(i32, i32, i32**, i32, i32, %struct.TYPE_4__*, i32*, i32, i32, i32) #1

declare dso_local i32 @NtCurrentProcess(...) #1

declare dso_local i32 @system(i8*) #1

declare dso_local i32 @NtAllocateVirtualMemory(i32, i32**, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
