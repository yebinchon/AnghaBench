; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_add_stream.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_add_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@add_stream.insert = internal constant [52 x i8] c"INSERT INTO `_Streams` (`Name`,`Data`) VALUES (?,?)\00", align 16
@add_stream.update = internal constant [50 x i8] c"UPDATE `_Streams` SET `Data` = ? WHERE `Name` = ?\00", align 16
@.str = private unnamed_addr constant [10 x i8] c"%p %s %p\0A\00", align 1
@ERROR_OUTOFMEMORY = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i8*, i32*)* @add_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @add_stream(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @debugstr_w(i8* %12)
  %14 = load i32*, i32** %7, align 8
  %15 = call i32 @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %11, i32 %13, i32* %14)
  %16 = call %struct.TYPE_9__* @MSI_CreateRecord(i32 2)
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %9, align 8
  %17 = icmp ne %struct.TYPE_9__* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %3
  %19 = load i64, i64* @ERROR_OUTOFMEMORY, align 8
  store i64 %19, i64* %4, align 8
  br label %97

20:                                               ; preds = %3
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i64 @MSI_RecordSetStringW(%struct.TYPE_9__* %21, i32 1, i8* %22)
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* @ERROR_SUCCESS, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %92

28:                                               ; preds = %20
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = call i64 @MSI_RecordSetIStream(%struct.TYPE_9__* %29, i32 2, i32* %30)
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* @ERROR_SUCCESS, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %92

36:                                               ; preds = %28
  %37 = load i32*, i32** %5, align 8
  %38 = call i64 @MSI_DatabaseOpenViewW(i32* %37, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @add_stream.insert, i64 0, i64 0), %struct.TYPE_10__** %8)
  store i64 %38, i64* %10, align 8
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* @ERROR_SUCCESS, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %92

43:                                               ; preds = %36
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %46 = call i64 @MSI_ViewExecute(%struct.TYPE_10__* %44, %struct.TYPE_9__* %45)
  store i64 %46, i64* %10, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = call i32 @msiobj_release(i32* %48)
  %50 = load i64, i64* %10, align 8
  %51 = load i64, i64* @ERROR_SUCCESS, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %92

54:                                               ; preds = %43
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = call i32 @msiobj_release(i32* %56)
  %58 = call %struct.TYPE_9__* @MSI_CreateRecord(i32 2)
  store %struct.TYPE_9__* %58, %struct.TYPE_9__** %9, align 8
  %59 = icmp ne %struct.TYPE_9__* %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %54
  %61 = load i64, i64* @ERROR_OUTOFMEMORY, align 8
  store i64 %61, i64* %4, align 8
  br label %97

62:                                               ; preds = %54
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = call i64 @MSI_RecordSetIStream(%struct.TYPE_9__* %63, i32 1, i32* %64)
  store i64 %65, i64* %10, align 8
  %66 = load i64, i64* %10, align 8
  %67 = load i64, i64* @ERROR_SUCCESS, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %92

70:                                               ; preds = %62
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = call i64 @MSI_RecordSetStringW(%struct.TYPE_9__* %71, i32 2, i8* %72)
  store i64 %73, i64* %10, align 8
  %74 = load i64, i64* %10, align 8
  %75 = load i64, i64* @ERROR_SUCCESS, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  br label %92

78:                                               ; preds = %70
  %79 = load i32*, i32** %5, align 8
  %80 = call i64 @MSI_DatabaseOpenViewW(i32* %79, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @add_stream.update, i64 0, i64 0), %struct.TYPE_10__** %8)
  store i64 %80, i64* %10, align 8
  %81 = load i64, i64* %10, align 8
  %82 = load i64, i64* @ERROR_SUCCESS, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %92

85:                                               ; preds = %78
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %88 = call i64 @MSI_ViewExecute(%struct.TYPE_10__* %86, %struct.TYPE_9__* %87)
  store i64 %88, i64* %10, align 8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = call i32 @msiobj_release(i32* %90)
  br label %92

92:                                               ; preds = %85, %84, %77, %69, %53, %42, %35, %27
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = call i32 @msiobj_release(i32* %94)
  %96 = load i64, i64* %10, align 8
  store i64 %96, i64* %4, align 8
  br label %97

97:                                               ; preds = %92, %60, %18
  %98 = load i64, i64* %4, align 8
  ret i64 %98
}

declare dso_local i32 @TRACE(i8*, i32*, i32, i32*) #1

declare dso_local i32 @debugstr_w(i8*) #1

declare dso_local %struct.TYPE_9__* @MSI_CreateRecord(i32) #1

declare dso_local i64 @MSI_RecordSetStringW(%struct.TYPE_9__*, i32, i8*) #1

declare dso_local i64 @MSI_RecordSetIStream(%struct.TYPE_9__*, i32, i32*) #1

declare dso_local i64 @MSI_DatabaseOpenViewW(i32*, i8*, %struct.TYPE_10__**) #1

declare dso_local i64 @MSI_ViewExecute(%struct.TYPE_10__*, %struct.TYPE_9__*) #1

declare dso_local i32 @msiobj_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
