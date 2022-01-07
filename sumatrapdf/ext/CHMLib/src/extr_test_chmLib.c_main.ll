; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/CHMLib/src/extr_test_chmLib.c_main.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/CHMLib/src/extr_test_chmLib.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chmFile = type { i32 }
%struct.chmUnitInfo = type { i32, i32, i64 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"usage: %s <chmfile> <filename> <destfile>\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"failed to open %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"resolving %s\0A\00", align 1
@CHM_RESOLVE_SUCCESS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"    object: <%d, %lu, %lu>\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"extracting to '%s'\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"   extract failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"   create failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"   finished\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"    failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.chmFile*, align 8
  %7 = alloca %struct.chmUnitInfo, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 4
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load i32, i32* @stderr, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @fprintf(i32 %16, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = call i32 @exit(i32 1) #4
  unreachable

22:                                               ; preds = %2
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 1
  %25 = load i8*, i8** %24, align 8
  %26 = call %struct.chmFile* @chm_open(i8* %25)
  store %struct.chmFile* %26, %struct.chmFile** %6, align 8
  %27 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %28 = icmp eq %struct.chmFile* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %22
  %30 = load i32, i32* @stderr, align 4
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 1
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @fprintf(i32 %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  %35 = call i32 @exit(i32 1) #4
  unreachable

36:                                               ; preds = %22
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 2
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %39)
  %41 = load i64, i64* @CHM_RESOLVE_SUCCESS, align 8
  %42 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 2
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @chm_resolve_object(%struct.chmFile* %42, i8* %45, %struct.chmUnitInfo* %7)
  %47 = icmp eq i64 %41, %46
  br i1 %47, label %48, label %96

48:                                               ; preds = %36
  %49 = getelementptr inbounds %struct.chmUnitInfo, %struct.chmUnitInfo* %7, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = zext i32 %50 to i64
  %52 = call i8* @llvm.stacksave()
  store i8* %52, i8** %8, align 8
  %53 = alloca i8, i64 %51, align 16
  store i64 %51, i64* %9, align 8
  %54 = getelementptr inbounds %struct.chmUnitInfo, %struct.chmUnitInfo* %7, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.chmUnitInfo, %struct.chmUnitInfo* %7, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.chmUnitInfo, %struct.chmUnitInfo* %7, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %55, i64 %57, i64 %60)
  %62 = load i8**, i8*** %5, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 3
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %64)
  %66 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %67 = getelementptr inbounds %struct.chmUnitInfo, %struct.chmUnitInfo* %7, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @chm_retrieve_object(%struct.chmFile* %66, %struct.chmUnitInfo* %7, i8* %53, i32 0, i32 %68)
  store i64 %69, i64* %10, align 8
  %70 = load i64, i64* %10, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %48
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  store i32 2, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %92

74:                                               ; preds = %48
  %75 = load i8**, i8*** %5, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 3
  %77 = load i8*, i8** %76, align 8
  %78 = call i32* @fopen(i8* %77, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  store i32* %78, i32** %11, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  store i32 3, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %92

82:                                               ; preds = %74
  %83 = getelementptr inbounds %struct.chmUnitInfo, %struct.chmUnitInfo* %7, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32*, i32** %11, align 8
  %86 = call i32 @fwrite(i8* %53, i32 1, i32 %84, i32* %85)
  %87 = load i32*, i32** %11, align 8
  %88 = call i32 @fclose(i32* %87)
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  br label %90

90:                                               ; preds = %82
  br label %91

91:                                               ; preds = %90
  store i32 0, i32* %12, align 4
  br label %92

92:                                               ; preds = %91, %80, %72
  %93 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %93)
  %94 = load i32, i32* %12, align 4
  switch i32 %94, label %101 [
    i32 0, label %95
    i32 1, label %99
  ]

95:                                               ; preds = %92
  br label %98

96:                                               ; preds = %36
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %95
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %98, %92
  %100 = load i32, i32* %3, align 4
  ret i32 %100

101:                                              ; preds = %92
  unreachable
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local %struct.chmFile* @chm_open(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @chm_resolve_object(%struct.chmFile*, i8*, %struct.chmUnitInfo*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i64 @chm_retrieve_object(%struct.chmFile*, %struct.chmUnitInfo*, i8*, i32, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
