; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/kmtests/ntos_mm/extr_ZwMapViewOfSection.c_KmtInitTestFiles.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/kmtests/ntos_mm/extr_ZwMapViewOfSection.c_KmtInitTestFiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i32 }

@GENERIC_READ = common dso_local global i32 0, align 4
@NtdllObject = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FILE_OPEN = common dso_local global i32 0, align 4
@FILE_NON_DIRECTORY_FILE = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Couldn't acquire READONLY handle\0A\00", align 1
@GENERIC_EXECUTE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Couldn't acquire EXECUTE handle\0A\00", align 1
@GENERIC_WRITE = common dso_local global i32 0, align 4
@SYNCHRONIZE = common dso_local global i32 0, align 4
@KmtestFileObject = common dso_local global i32 0, align 4
@FILE_SHARE_WRITE = common dso_local global i32 0, align 4
@FILE_SUPERSEDE = common dso_local global i32 0, align 4
@FILE_DELETE_ON_CLOSE = common dso_local global i32 0, align 4
@FILE_CREATED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"WriteOnlyFile is NULL\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"No WriteOnlyFile\0A\00", align 1
@TestString = common dso_local global i64 0, align 8
@TestStringSize = common dso_local global i32 0, align 4
@STATUS_PENDING = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"Status = 0x%08lx\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32**, i32**)* @KmtInitTestFiles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @KmtInitTestFiles(i32** %0, i32** %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_6__, align 8
  %10 = alloca %struct.TYPE_7__, align 4
  store i32** %0, i32*** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32** %2, i32*** %7, align 8
  %11 = load i32**, i32*** %5, align 8
  %12 = load i32, i32* @GENERIC_READ, align 4
  %13 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %14 = load i32, i32* @FILE_SHARE_READ, align 4
  %15 = load i32, i32* @FILE_OPEN, align 4
  %16 = load i32, i32* @FILE_NON_DIRECTORY_FILE, align 4
  %17 = call i64 @ZwCreateFile(i32** %11, i32 %12, i32* @NtdllObject, %struct.TYPE_7__* %10, i32* null, i32 %13, i32 %14, i32 %15, i32 %16, i32* null, i32 0)
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* @STATUS_SUCCESS, align 8
  %20 = call i32 @ok_eq_hex(i64 %18, i64 %19)
  %21 = load i32**, i32*** %5, align 8
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 (i32, i8*, ...) @ok(i32 %24, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %26 = load i32**, i32*** %7, align 8
  %27 = load i32, i32* @GENERIC_EXECUTE, align 4
  %28 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %29 = load i32, i32* @FILE_SHARE_READ, align 4
  %30 = load i32, i32* @FILE_OPEN, align 4
  %31 = load i32, i32* @FILE_NON_DIRECTORY_FILE, align 4
  %32 = call i64 @ZwCreateFile(i32** %26, i32 %27, i32* @NtdllObject, %struct.TYPE_7__* %10, i32* null, i32 %28, i32 %29, i32 %30, i32 %31, i32* null, i32 0)
  store i64 %32, i64* %8, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* @STATUS_SUCCESS, align 8
  %35 = call i32 @ok_eq_hex(i64 %33, i64 %34)
  %36 = load i32**, i32*** %7, align 8
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  %39 = zext i1 %38 to i32
  %40 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32**, i32*** %6, align 8
  %42 = load i32, i32* @GENERIC_WRITE, align 4
  %43 = load i32, i32* @SYNCHRONIZE, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %46 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %47 = load i32, i32* @FILE_SUPERSEDE, align 4
  %48 = load i32, i32* @FILE_NON_DIRECTORY_FILE, align 4
  %49 = load i32, i32* @FILE_DELETE_ON_CLOSE, align 4
  %50 = or i32 %48, %49
  %51 = call i64 @ZwCreateFile(i32** %41, i32 %44, i32* @KmtestFileObject, %struct.TYPE_7__* %10, i32* null, i32 %45, i32 %46, i32 %47, i32 %50, i32* null, i32 0)
  store i64 %51, i64* %8, align 8
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* @STATUS_SUCCESS, align 8
  %54 = call i32 @ok_eq_hex(i64 %52, i64 %53)
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @FILE_CREATED, align 4
  %58 = call i32 @ok_eq_ulongptr(i32 %56, i32 %57)
  %59 = load i32**, i32*** %6, align 8
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  %62 = zext i1 %61 to i32
  %63 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i32**, i32*** %6, align 8
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  %67 = zext i1 %66 to i32
  %68 = call i32 @skip(i32 %67, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %101, label %70

70:                                               ; preds = %3
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store i64 0, i64* %71, align 8
  %72 = load i32**, i32*** %6, align 8
  %73 = load i32*, i32** %72, align 8
  %74 = load i64, i64* @TestString, align 8
  %75 = trunc i64 %74 to i32
  %76 = load i32, i32* @TestStringSize, align 4
  %77 = call i64 @ZwWriteFile(i32* %73, i32* null, i32* null, i32* null, %struct.TYPE_7__* %10, i32 %75, i32 %76, %struct.TYPE_6__* %9, i32* null)
  store i64 %77, i64* %8, align 8
  %78 = load i64, i64* %8, align 8
  %79 = load i64, i64* @STATUS_SUCCESS, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %85, label %81

81:                                               ; preds = %70
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* @STATUS_PENDING, align 8
  %84 = icmp eq i64 %82, %83
  br label %85

85:                                               ; preds = %81, %70
  %86 = phi i1 [ true, %70 ], [ %84, %81 ]
  %87 = zext i1 %86 to i32
  %88 = load i64, i64* %8, align 8
  %89 = call i32 (i32, i8*, ...) @ok(i32 %87, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i64 %88)
  %90 = load i32**, i32*** %6, align 8
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* @FALSE, align 4
  %93 = call i64 @ZwWaitForSingleObject(i32* %91, i32 %92, i32* null)
  store i64 %93, i64* %8, align 8
  %94 = load i64, i64* %8, align 8
  %95 = load i64, i64* @STATUS_SUCCESS, align 8
  %96 = call i32 @ok_eq_hex(i64 %94, i64 %95)
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @TestStringSize, align 4
  %100 = call i32 @ok_eq_ulongptr(i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %85, %3
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i64 @ZwCreateFile(i32**, i32, i32*, %struct.TYPE_7__*, i32*, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @ok_eq_hex(i64, i64) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @ok_eq_ulongptr(i32, i32) #1

declare dso_local i32 @skip(i32, i8*) #1

declare dso_local i64 @ZwWriteFile(i32*, i32*, i32*, i32*, %struct.TYPE_7__*, i32, i32, %struct.TYPE_6__*, i32*) #1

declare dso_local i64 @ZwWaitForSingleObject(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
