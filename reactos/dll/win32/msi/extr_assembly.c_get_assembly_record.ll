; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_assembly.c_get_assembly_record.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_assembly.c_get_assembly_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@get_assembly_record.query = internal constant [54 x i8] c"SELECT * FROM `MsiAssembly` WHERE `Component_` = '%s'\00", align 16
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"component is a global assembly\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_8__*, i8*)* @get_assembly_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_assembly_record(%struct.TYPE_8__* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @MSI_OpenQuery(i32 %11, %struct.TYPE_7__** %6, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @get_assembly_record.query, i64 0, i64 0), i8* %12)
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* @ERROR_SUCCESS, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %49

18:                                               ; preds = %2
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %20 = call i64 @MSI_ViewExecute(%struct.TYPE_7__* %19, i32* null)
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* @ERROR_SUCCESS, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = call i32 @msiobj_release(i32* %26)
  store i32* null, i32** %3, align 8
  br label %49

28:                                               ; preds = %18
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %30 = call i64 @MSI_ViewFetch(%struct.TYPE_7__* %29, i32** %7)
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* @ERROR_SUCCESS, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = call i32 @msiobj_release(i32* %36)
  store i32* null, i32** %3, align 8
  br label %49

38:                                               ; preds = %28
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @MSI_RecordGetString(i32* %39, i32 4)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = call i32 @TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %38
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = call i32 @msiobj_release(i32* %46)
  %48 = load i32*, i32** %7, align 8
  store i32* %48, i32** %3, align 8
  br label %49

49:                                               ; preds = %44, %34, %24, %17
  %50 = load i32*, i32** %3, align 8
  ret i32* %50
}

declare dso_local i64 @MSI_OpenQuery(i32, %struct.TYPE_7__**, i8*, i8*) #1

declare dso_local i64 @MSI_ViewExecute(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @msiobj_release(i32*) #1

declare dso_local i64 @MSI_ViewFetch(%struct.TYPE_7__*, i32**) #1

declare dso_local i32 @MSI_RecordGetString(i32*, i32) #1

declare dso_local i32 @TRACE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
