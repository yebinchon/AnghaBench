; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/CHMLib/src/extr_enumdir_chmLib.c__print_ui.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/CHMLib/src/extr_enumdir_chmLib.c__print_ui.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chmFile = type { i32 }
%struct.chmUnitInfo = type { i32, i8*, i64, i64, i64 }

@_print_ui.szBuf = internal global [128 x i8] zeroinitializer, align 16
@CHM_ENUMERATE_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"normal \00", align 1
@CHM_ENUMERATE_SPECIAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"special \00", align 1
@CHM_ENUMERATE_META = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"meta \00", align 1
@CHM_ENUMERATE_DIRS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@CHM_ENUMERATE_FILES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"   %1d %8d %8d   %s\09\09%s\0A\00", align 1
@CHM_ENUMERATOR_CONTINUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_print_ui(%struct.chmFile* %0, %struct.chmUnitInfo* %1, i8* %2) #0 {
  %4 = alloca %struct.chmFile*, align 8
  %5 = alloca %struct.chmUnitInfo*, align 8
  %6 = alloca i8*, align 8
  store %struct.chmFile* %0, %struct.chmFile** %4, align 8
  store %struct.chmUnitInfo* %1, %struct.chmUnitInfo** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = call i32 @memset(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @_print_ui.szBuf, i64 0, i64 0), i32 0, i32 128)
  %8 = load %struct.chmUnitInfo*, %struct.chmUnitInfo** %5, align 8
  %9 = getelementptr inbounds %struct.chmUnitInfo, %struct.chmUnitInfo* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @CHM_ENUMERATE_NORMAL, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = call i32 @strcpy(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @_print_ui.szBuf, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %36

16:                                               ; preds = %3
  %17 = load %struct.chmUnitInfo*, %struct.chmUnitInfo** %5, align 8
  %18 = getelementptr inbounds %struct.chmUnitInfo, %struct.chmUnitInfo* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @CHM_ENUMERATE_SPECIAL, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = call i32 @strcpy(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @_print_ui.szBuf, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %35

25:                                               ; preds = %16
  %26 = load %struct.chmUnitInfo*, %struct.chmUnitInfo** %5, align 8
  %27 = getelementptr inbounds %struct.chmUnitInfo, %struct.chmUnitInfo* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @CHM_ENUMERATE_META, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = call i32 @strcpy(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @_print_ui.szBuf, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %25
  br label %35

35:                                               ; preds = %34, %23
  br label %36

36:                                               ; preds = %35, %14
  %37 = load %struct.chmUnitInfo*, %struct.chmUnitInfo** %5, align 8
  %38 = getelementptr inbounds %struct.chmUnitInfo, %struct.chmUnitInfo* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @CHM_ENUMERATE_DIRS, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = call i32 @strcat(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @_print_ui.szBuf, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %55

45:                                               ; preds = %36
  %46 = load %struct.chmUnitInfo*, %struct.chmUnitInfo** %5, align 8
  %47 = getelementptr inbounds %struct.chmUnitInfo, %struct.chmUnitInfo* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @CHM_ENUMERATE_FILES, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = call i32 @strcat(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @_print_ui.szBuf, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %45
  br label %55

55:                                               ; preds = %54, %43
  %56 = load %struct.chmUnitInfo*, %struct.chmUnitInfo** %5, align 8
  %57 = getelementptr inbounds %struct.chmUnitInfo, %struct.chmUnitInfo* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = load %struct.chmUnitInfo*, %struct.chmUnitInfo** %5, align 8
  %61 = getelementptr inbounds %struct.chmUnitInfo, %struct.chmUnitInfo* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = load %struct.chmUnitInfo*, %struct.chmUnitInfo** %5, align 8
  %65 = getelementptr inbounds %struct.chmUnitInfo, %struct.chmUnitInfo* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  %68 = load %struct.chmUnitInfo*, %struct.chmUnitInfo** %5, align 8
  %69 = getelementptr inbounds %struct.chmUnitInfo, %struct.chmUnitInfo* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %59, i32 %63, i32 %67, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @_print_ui.szBuf, i64 0, i64 0), i8* %70)
  %72 = load i32, i32* @CHM_ENUMERATOR_CONTINUE, align 4
  ret i32 %72
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i32, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
