; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/CHMLib/src/extr_extract_chmLib.c__extract_callback.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/CHMLib/src/extr_extract_chmLib.c__extract_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chmFile = type { i32 }
%struct.chmUnitInfo = type { i8*, i64 }
%struct.extract_context = type { i8* }

@CHM_ENUMERATOR_CONTINUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"/../\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@CHM_ENUMERATOR_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"--> %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"incomplete file: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_extract_callback(%struct.chmFile* %0, %struct.chmUnitInfo* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.chmFile*, align 8
  %6 = alloca %struct.chmUnitInfo*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [32768 x i8], align 16
  %10 = alloca %struct.extract_context*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca [32768 x i8], align 16
  store %struct.chmFile* %0, %struct.chmFile** %5, align 8
  store %struct.chmUnitInfo* %1, %struct.chmUnitInfo** %6, align 8
  store i8* %2, i8** %7, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct.extract_context*
  store %struct.extract_context* %18, %struct.extract_context** %10, align 8
  %19 = load %struct.chmUnitInfo*, %struct.chmUnitInfo** %6, align 8
  %20 = getelementptr inbounds %struct.chmUnitInfo, %struct.chmUnitInfo* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 47
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* @CHM_ENUMERATOR_CONTINUE, align 4
  store i32 %27, i32* %4, align 4
  br label %130

28:                                               ; preds = %3
  %29 = load %struct.chmUnitInfo*, %struct.chmUnitInfo** %6, align 8
  %30 = getelementptr inbounds %struct.chmUnitInfo, %struct.chmUnitInfo* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32* @strstr(i8* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @CHM_ENUMERATOR_CONTINUE, align 4
  store i32 %35, i32* %4, align 4
  br label %130

36:                                               ; preds = %28
  %37 = getelementptr inbounds [32768 x i8], [32768 x i8]* %9, i64 0, i64 0
  %38 = load %struct.extract_context*, %struct.extract_context** %10, align 8
  %39 = getelementptr inbounds %struct.extract_context, %struct.extract_context* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.chmUnitInfo*, %struct.chmUnitInfo** %6, align 8
  %42 = getelementptr inbounds %struct.chmUnitInfo, %struct.chmUnitInfo* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @snprintf(i8* %37, i32 32768, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %40, i8* %43)
  %45 = icmp sgt i32 %44, 1024
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = load i32, i32* @CHM_ENUMERATOR_FAILURE, align 4
  store i32 %47, i32* %4, align 4
  br label %130

48:                                               ; preds = %36
  %49 = load %struct.chmUnitInfo*, %struct.chmUnitInfo** %6, align 8
  %50 = getelementptr inbounds %struct.chmUnitInfo, %struct.chmUnitInfo* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 @strlen(i8* %51)
  %53 = sub i64 %52, 1
  store i64 %53, i64* %8, align 8
  %54 = load %struct.chmUnitInfo*, %struct.chmUnitInfo** %6, align 8
  %55 = getelementptr inbounds %struct.chmUnitInfo, %struct.chmUnitInfo* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = load i64, i64* %8, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 47
  br i1 %61, label %62, label %121

62:                                               ; preds = %48
  %63 = load %struct.chmUnitInfo*, %struct.chmUnitInfo** %6, align 8
  %64 = getelementptr inbounds %struct.chmUnitInfo, %struct.chmUnitInfo* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %66 = load %struct.chmUnitInfo*, %struct.chmUnitInfo** %6, align 8
  %67 = getelementptr inbounds %struct.chmUnitInfo, %struct.chmUnitInfo* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %68)
  %70 = getelementptr inbounds [32768 x i8], [32768 x i8]* %9, i64 0, i64 0
  %71 = call i32* @fopen(i8* %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32* %71, i32** %12, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %88

73:                                               ; preds = %62
  %74 = getelementptr inbounds [32768 x i8], [32768 x i8]* %16, i64 0, i64 0
  %75 = getelementptr inbounds [32768 x i8], [32768 x i8]* %9, i64 0, i64 0
  %76 = call i32 @strcpy(i8* %74, i8* %75)
  %77 = getelementptr inbounds [32768 x i8], [32768 x i8]* %16, i64 0, i64 0
  %78 = call i8* @strrchr(i8* %77, i8 signext 47)
  store i8* %78, i8** %11, align 8
  %79 = load i8*, i8** %11, align 8
  store i8 0, i8* %79, align 1
  %80 = getelementptr inbounds [32768 x i8], [32768 x i8]* %16, i64 0, i64 0
  %81 = call i32 @rmkdir(i8* %80)
  %82 = getelementptr inbounds [32768 x i8], [32768 x i8]* %9, i64 0, i64 0
  %83 = call i32* @fopen(i8* %82, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32* %83, i32** %12, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %87

85:                                               ; preds = %73
  %86 = load i32, i32* @CHM_ENUMERATOR_FAILURE, align 4
  store i32 %86, i32* %4, align 4
  br label %130

87:                                               ; preds = %73
  br label %88

88:                                               ; preds = %87, %62
  br label %89

89:                                               ; preds = %117, %88
  %90 = load i64, i64* %14, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %118

92:                                               ; preds = %89
  %93 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %94 = load %struct.chmUnitInfo*, %struct.chmUnitInfo** %6, align 8
  %95 = getelementptr inbounds [32768 x i8], [32768 x i8]* %9, i64 0, i64 0
  %96 = load i64, i64* %15, align 8
  %97 = call i64 @chm_retrieve_object(%struct.chmFile* %93, %struct.chmUnitInfo* %94, i8* %95, i64 %96, i32 32768)
  store i64 %97, i64* %13, align 8
  %98 = load i64, i64* %13, align 8
  %99 = icmp sgt i64 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %92
  %101 = getelementptr inbounds [32768 x i8], [32768 x i8]* %9, i64 0, i64 0
  %102 = load i64, i64* %13, align 8
  %103 = load i32*, i32** %12, align 8
  %104 = call i32 @fwrite(i8* %101, i32 1, i64 %102, i32* %103)
  %105 = load i64, i64* %13, align 8
  %106 = load i64, i64* %15, align 8
  %107 = add i64 %106, %105
  store i64 %107, i64* %15, align 8
  %108 = load i64, i64* %13, align 8
  %109 = load i64, i64* %14, align 8
  %110 = sub nsw i64 %109, %108
  store i64 %110, i64* %14, align 8
  br label %117

111:                                              ; preds = %92
  %112 = load i32, i32* @stderr, align 4
  %113 = load %struct.chmUnitInfo*, %struct.chmUnitInfo** %6, align 8
  %114 = getelementptr inbounds %struct.chmUnitInfo, %struct.chmUnitInfo* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 @fprintf(i32 %112, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* %115)
  br label %118

117:                                              ; preds = %100
  br label %89

118:                                              ; preds = %111, %89
  %119 = load i32*, i32** %12, align 8
  %120 = call i32 @fclose(i32* %119)
  br label %128

121:                                              ; preds = %48
  %122 = getelementptr inbounds [32768 x i8], [32768 x i8]* %9, i64 0, i64 0
  %123 = call i32 @rmkdir(i8* %122)
  %124 = icmp eq i32 %123, -1
  br i1 %124, label %125, label %127

125:                                              ; preds = %121
  %126 = load i32, i32* @CHM_ENUMERATOR_FAILURE, align 4
  store i32 %126, i32* %4, align 4
  br label %130

127:                                              ; preds = %121
  br label %128

128:                                              ; preds = %127, %118
  %129 = load i32, i32* @CHM_ENUMERATOR_CONTINUE, align 4
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %128, %125, %85, %46, %34, %26
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32* @strstr(i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @rmkdir(i8*) #1

declare dso_local i64 @chm_retrieve_object(%struct.chmFile*, %struct.chmUnitInfo*, i8*, i64, i32) #1

declare dso_local i32 @fwrite(i8*, i32, i64, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
