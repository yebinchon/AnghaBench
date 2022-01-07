; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/kmtests/ntos_mm/extr_ZwCreateSection.c_BasicBehaviorChecks.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/kmtests/ntos_mm/extr_ZwCreateSection.c_BasicBehaviorChecks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }
%struct.TYPE_6__ = type { i8* }

@TestStringSize = common dso_local global i8* null, align 8
@STANDARD_RIGHTS_ALL = common dso_local global i32 0, align 4
@IoFileObjectType = common dso_local global i32* null, align 8
@KernelMode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Cannot reference object by handle\0A\00", align 1
@SECTION_ALL_ACCESS = common dso_local global i32 0, align 4
@PAGE_READONLY = common dso_local global i32 0, align 4
@SEC_COMMIT = common dso_local global i32 0, align 4
@STATUS_INVALID_FILE_FOR_SECTION = common dso_local global i32 0, align 4
@IGNORE = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@NO_HANDLE_CLOSE = common dso_local global i32 0, align 4
@SEC_FILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @BasicBehaviorChecks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BasicBehaviorChecks(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_6__, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* null, i32** %5, align 8
  %9 = load i8*, i8** @TestStringSize, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store i8* %9, i8** %10, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* @STANDARD_RIGHTS_ALL, align 4
  %13 = load i32*, i32** @IoFileObjectType, align 8
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @KernelMode, align 4
  %16 = bitcast %struct.TYPE_5__** %6 to i32*
  %17 = call i32 @ObReferenceObjectByHandle(i32* %11, i32 %12, i32 %14, i32 %15, i32* %16, i32* null)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @NT_SUCCESS(i32 %18)
  %20 = call i32 @skip(i32 %19, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %43, label %22

22:                                               ; preds = %1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %8, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* @SECTION_ALL_ACCESS, align 4
  %30 = load i32, i32* @PAGE_READONLY, align 4
  %31 = load i32, i32* @SEC_COMMIT, align 4
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* @STATUS_INVALID_FILE_FOR_SECTION, align 4
  %34 = load i32, i32* @IGNORE, align 4
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @CREATE_SECTION(i32* %28, i32 %29, i32* null, i8* %36, i32 %30, i32 %31, i32* %32, i32 %33, i32 %34)
  %38 = load i32*, i32** %8, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i32* %38, i32** %40, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %42 = call i32 @ObDereferenceObject(%struct.TYPE_5__* %41)
  br label %43

43:                                               ; preds = %22, %1
  %44 = load i8*, i8** @TestStringSize, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store i8* %44, i8** %45, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* @SECTION_ALL_ACCESS, align 4
  %48 = load i32, i32* @PAGE_READONLY, align 4
  %49 = load i32, i32* @SEC_COMMIT, align 4
  %50 = load i32*, i32** %3, align 8
  %51 = load i32, i32* @STATUS_SUCCESS, align 4
  %52 = load i32, i32* @NO_HANDLE_CLOSE, align 4
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @CREATE_SECTION(i32* %46, i32 %47, i32* null, i8* %54, i32 %48, i32 %49, i32* %50, i32 %51, i32 %52)
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @CheckObject(i32* %56, i32 2, i32 1)
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* @SEC_FILE, align 4
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load i32, i32* @STATUS_SUCCESS, align 4
  %63 = call i32 @CheckSection(i32* %58, i32 %59, i8* %61, i32 %62)
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @ZwClose(i32* %64)
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store i8* null, i8** %66, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = load i32, i32* @SECTION_ALL_ACCESS, align 4
  %69 = load i32, i32* @PAGE_READONLY, align 4
  %70 = load i32, i32* @SEC_COMMIT, align 4
  %71 = load i32*, i32** %3, align 8
  %72 = load i32, i32* @STATUS_SUCCESS, align 4
  %73 = load i32, i32* @NO_HANDLE_CLOSE, align 4
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @CREATE_SECTION(i32* %67, i32 %68, i32* null, i8* %75, i32 %69, i32 %70, i32* %71, i32 %72, i32 %73)
  %77 = load i32*, i32** %5, align 8
  %78 = load i32, i32* @SEC_FILE, align 4
  %79 = load i8*, i8** @TestStringSize, align 8
  %80 = load i32, i32* @STATUS_SUCCESS, align 4
  %81 = call i32 @CheckSection(i32* %77, i32 %78, i8* %79, i32 %80)
  %82 = load i32*, i32** %5, align 8
  %83 = call i32 @ZwClose(i32* %82)
  %84 = load i8*, i8** @TestStringSize, align 8
  %85 = getelementptr i8, i8* %84, i64 -100
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store i8* %85, i8** %86, align 8
  %87 = load i32*, i32** %5, align 8
  %88 = load i32, i32* @SECTION_ALL_ACCESS, align 4
  %89 = load i32, i32* @PAGE_READONLY, align 4
  %90 = load i32, i32* @SEC_COMMIT, align 4
  %91 = load i32*, i32** %3, align 8
  %92 = load i32, i32* @STATUS_SUCCESS, align 4
  %93 = load i32, i32* @NO_HANDLE_CLOSE, align 4
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @CREATE_SECTION(i32* %87, i32 %88, i32* null, i8* %95, i32 %89, i32 %90, i32* %91, i32 %92, i32 %93)
  %97 = load i32*, i32** %5, align 8
  %98 = load i32, i32* @SEC_FILE, align 4
  %99 = load i8*, i8** @TestStringSize, align 8
  %100 = getelementptr i8, i8* %99, i64 -100
  %101 = load i32, i32* @STATUS_SUCCESS, align 4
  %102 = call i32 @CheckSection(i32* %97, i32 %98, i8* %100, i32 %101)
  %103 = load i32*, i32** %5, align 8
  %104 = call i32 @ZwClose(i32* %103)
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @ObReferenceObjectByHandle(i32*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @skip(i32, i8*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @CREATE_SECTION(i32*, i32, i32*, i8*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @ObDereferenceObject(%struct.TYPE_5__*) #1

declare dso_local i32 @CheckObject(i32*, i32, i32) #1

declare dso_local i32 @CheckSection(i32*, i32, i8*, i32) #1

declare dso_local i32 @ZwClose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
