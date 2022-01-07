; ModuleID = '/home/carl/AnghaBench/sqlcipher/test/extr_ossshell.c_main.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/test/extr_ossshell.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"-show-errors\00", align 1
@FUZZ_SHOW_ERRORS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"-show-max-delay\00", align 1
@FUZZ_SHOW_MAX_DELAY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"-sql-trace\00", align 1
@FUZZ_SQL_TRACE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"unknown option \22%s\22\0A\00", align 1
@.str.4 = private unnamed_addr constant [62 x i8] c"should be one of: --show-errors --show-max-delay --sql-trace\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"cannot open \22%s\22\0A\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"cannot malloc() for %d bytes\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"cannot read %d bytes from \22%s\22\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"%s... \00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"ok\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %8, align 4
  store i32* null, i32** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 1, i32* %7, align 4
  br label %13

13:                                               ; preds = %146, %2
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %149

17:                                               ; preds = %13
  %18 = load i8**, i8*** %5, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %18, i64 %20
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %12, align 8
  %23 = load i8*, i8** %12, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 45
  br i1 %27, label %28, label %79

28:                                               ; preds = %17
  %29 = load i8*, i8** %12, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 45
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i8*, i8** %12, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %12, align 8
  br label %37

37:                                               ; preds = %34, %28
  %38 = load i8*, i8** %12, align 8
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load i32, i32* @FUZZ_SHOW_ERRORS, align 4
  %43 = load i32, i32* %11, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @ossfuzz_set_debug_flags(i32 %45)
  br label %78

47:                                               ; preds = %37
  %48 = load i8*, i8** %12, align 8
  %49 = call i64 @strcmp(i8* %48, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load i32, i32* @FUZZ_SHOW_MAX_DELAY, align 4
  %53 = load i32, i32* %11, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @ossfuzz_set_debug_flags(i32 %55)
  br label %77

57:                                               ; preds = %47
  %58 = load i8*, i8** %12, align 8
  %59 = call i64 @strcmp(i8* %58, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = load i32, i32* @FUZZ_SQL_TRACE, align 4
  %63 = load i32, i32* %11, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @ossfuzz_set_debug_flags(i32 %65)
  br label %76

67:                                               ; preds = %57
  %68 = load i8**, i8*** %5, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %68, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %72)
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0))
  %75 = call i32 @exit(i32 1) #3
  unreachable

76:                                               ; preds = %61
  br label %77

77:                                               ; preds = %76, %51
  br label %78

78:                                               ; preds = %77, %41
  br label %146

79:                                               ; preds = %17
  %80 = load i8*, i8** %12, align 8
  %81 = call i32* @fopen(i8* %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store i32* %81, i32** %6, align 8
  %82 = load i32*, i32** %6, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load i32, i32* @stderr, align 4
  %86 = load i8*, i8** %12, align 8
  %87 = call i32 (i32, i8*, ...) @fprintf(i32 %85, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* %86)
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %8, align 4
  br label %146

90:                                               ; preds = %79
  %91 = load i32*, i32** %6, align 8
  %92 = load i32, i32* @SEEK_END, align 4
  %93 = call i32 @fseek(i32* %91, i32 0, i32 %92)
  %94 = load i32*, i32** %6, align 8
  %95 = call i64 @ftell(i32* %94)
  store i64 %95, i64* %10, align 8
  %96 = load i32*, i32** %6, align 8
  %97 = call i32 @rewind(i32* %96)
  %98 = load i32*, i32** %9, align 8
  %99 = load i64, i64* %10, align 8
  %100 = call i32* @realloc(i32* %98, i64 %99)
  store i32* %100, i32** %9, align 8
  %101 = load i32*, i32** %9, align 8
  %102 = icmp eq i32* %101, null
  br i1 %102, label %103, label %109

103:                                              ; preds = %90
  %104 = load i32, i32* @stderr, align 4
  %105 = load i64, i64* %10, align 8
  %106 = trunc i64 %105 to i32
  %107 = call i32 (i32, i8*, ...) @fprintf(i32 %104, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %106)
  %108 = call i32 @exit(i32 1) #3
  unreachable

109:                                              ; preds = %90
  %110 = load i32*, i32** %9, align 8
  %111 = load i64, i64* %10, align 8
  %112 = load i32*, i32** %6, align 8
  %113 = call i32 @fread(i32* %110, i64 %111, i32 1, i32* %112)
  %114 = icmp ne i32 %113, 1
  br i1 %114, label %115, label %123

115:                                              ; preds = %109
  %116 = load i32, i32* @stderr, align 4
  %117 = load i64, i64* %10, align 8
  %118 = trunc i64 %117 to i32
  %119 = load i8*, i8** %12, align 8
  %120 = call i32 (i32, i8*, ...) @fprintf(i32 %116, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %118, i8* %119)
  %121 = load i32, i32* %8, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %8, align 4
  br label %143

123:                                              ; preds = %109
  %124 = load i8*, i8** %12, align 8
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* %124)
  %126 = load i32, i32* %11, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %123
  %129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %130

130:                                              ; preds = %128, %123
  %131 = load i32, i32* @stdout, align 4
  %132 = call i32 @fflush(i32 %131)
  %133 = load i32*, i32** %9, align 8
  %134 = load i64, i64* %10, align 8
  %135 = call i32 @LLVMFuzzerTestOneInput(i32* %133, i64 %134)
  %136 = load i32, i32* %11, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %130
  %139 = load i8*, i8** %12, align 8
  %140 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* %139)
  br label %141

141:                                              ; preds = %138, %130
  %142 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  br label %143

143:                                              ; preds = %141, %115
  %144 = load i32*, i32** %6, align 8
  %145 = call i32 @fclose(i32* %144)
  br label %146

146:                                              ; preds = %143, %84, %78
  %147 = load i32, i32* %7, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %7, align 4
  br label %13

149:                                              ; preds = %13
  %150 = load i32*, i32** %9, align 8
  %151 = call i32 @free(i32* %150)
  %152 = load i32, i32* %8, align 4
  ret i32 %152
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @ossfuzz_set_debug_flags(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i64 @ftell(i32*) #1

declare dso_local i32 @rewind(i32*) #1

declare dso_local i32* @realloc(i32*, i64) #1

declare dso_local i32 @fread(i32*, i64, i32, i32*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @LLVMFuzzerTestOneInput(i32*, i64) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
