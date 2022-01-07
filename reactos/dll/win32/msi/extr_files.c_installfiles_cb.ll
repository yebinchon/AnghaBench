; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_files.c_installfiles_cb.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_files.c_installfiles_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@MSICABEXTRACT_BEGINEXTRACT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"unknown file in cabinet (%s)\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@msifs_missing = common dso_local global i64 0, align 8
@msifs_overwrite = common dso_local global i64 0, align 8
@MSICABEXTRACT_FILEEXTRACTED = common dso_local global i64 0, align 8
@msifs_installed = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i64, i32*, i64*, i64)* @installfiles_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @installfiles_cb(i32* %0, i32 %1, i64 %2, i32* %3, i64* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i64* %4, i64** %12, align 8
  store i64 %5, i64* %13, align 8
  %15 = load i64, i64* %13, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_4__**
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %14, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load i64, i64* @MSICABEXTRACT_BEGINEXTRACT, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %75

21:                                               ; preds = %6
  %22 = load i32*, i32** %8, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call %struct.TYPE_4__* @find_file(i32* %22, i32 %25, i32 %26)
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %14, align 8
  %28 = icmp ne %struct.TYPE_4__* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %21
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @debugstr_w(i32 %30)
  %32 = call i32 @TRACE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @FALSE, align 4
  store i32 %33, i32* %7, align 4
  br label %93

34:                                               ; preds = %21
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @msifs_missing, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @msifs_overwrite, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* @FALSE, align 4
  store i32 %47, i32* %7, align 4
  br label %93

48:                                               ; preds = %40, %34
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = call i32 @msi_is_global_assembly(%struct.TYPE_5__* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %48
  %55 = load i32*, i32** %8, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @msi_create_directory(i32* %55, i32 %60)
  br label %62

62:                                               ; preds = %54, %48
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @strdupW(i32 %65)
  %67 = load i32*, i32** %11, align 8
  store i32 %66, i32* %67, align 4
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64*, i64** %12, align 8
  store i64 %70, i64* %71, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %73 = load i64, i64* %13, align 8
  %74 = inttoptr i64 %73 to %struct.TYPE_4__**
  store %struct.TYPE_4__* %72, %struct.TYPE_4__** %74, align 8
  br label %91

75:                                               ; preds = %6
  %76 = load i64, i64* %10, align 8
  %77 = load i64, i64* @MSICABEXTRACT_FILEEXTRACTED, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %90

79:                                               ; preds = %75
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = call i32 @msi_is_global_assembly(%struct.TYPE_5__* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %79
  %86 = load i64, i64* @msifs_installed, align 8
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  br label %89

89:                                               ; preds = %85, %79
  br label %90

90:                                               ; preds = %89, %75
  br label %91

91:                                               ; preds = %90, %62
  %92 = load i32, i32* @TRUE, align 4
  store i32 %92, i32* %7, align 4
  br label %93

93:                                               ; preds = %91, %46, %29
  %94 = load i32, i32* %7, align 4
  ret i32 %94
}

declare dso_local %struct.TYPE_4__* @find_file(i32*, i32, i32) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local i32 @msi_is_global_assembly(%struct.TYPE_5__*) #1

declare dso_local i32 @msi_create_directory(i32*, i32) #1

declare dso_local i32 @strdupW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
