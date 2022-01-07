; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/cat/extr_cat.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/cat/extr_cat.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"/?\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"/help\00", align 1
@stdout = common dso_local global i32* null, align 8
@O_BINARY = common dso_local global i32 0, align 4
@stdin = common dso_local global i32* null, align 8
@EOF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"Failed to open file '%s'\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Error while reading file '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca [512 x i8], align 16
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp sge i32 %12, 2
  br i1 %13, label %14, label %41

14:                                               ; preds = %2
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @_stricmp(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %38, label %20

20:                                               ; preds = %14
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @_stricmp(i8* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %20
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 1
  %29 = load i8*, i8** %28, align 8
  %30 = call i64 @_stricmp(i8* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @_stricmp(i8* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32, %26, %20, %14
  %39 = call i32 (...) @help()
  store i32 0, i32* %3, align 4
  br label %130

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40, %2
  %42 = load i32*, i32** @stdout, align 8
  %43 = call i32 @_fileno(i32* %42)
  %44 = load i32, i32* @O_BINARY, align 4
  %45 = call i32 @_setmode(i32 %43, i32 %44)
  %46 = load i32, i32* %4, align 4
  %47 = icmp sle i32 %46, 1
  br i1 %47, label %48, label %62

48:                                               ; preds = %41
  %49 = load i32*, i32** @stdin, align 8
  %50 = call i32 @_fileno(i32* %49)
  %51 = load i32, i32* @O_BINARY, align 4
  %52 = call i32 @_setmode(i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %58, %48
  %54 = load i32*, i32** @stdin, align 8
  %55 = call i32 @fgetc(i32* %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* @EOF, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @putchar(i32 %59)
  br label %53

61:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %130

62:                                               ; preds = %41
  store i32 1, i32* %6, align 4
  br label %63

63:                                               ; preds = %126, %62
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %129

67:                                               ; preds = %63
  %68 = load i8**, i8*** %5, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %68, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = call i32* @fopen(i8* %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32* %73, i32** %7, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = icmp eq i32* %74, null
  br i1 %75, label %76, label %84

76:                                               ; preds = %67
  %77 = load i32, i32* @stderr, align 4
  %78 = load i8**, i8*** %5, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %78, i64 %80
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @fprintf(i32 %77, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* %82)
  store i32 -1, i32* %3, align 4
  br label %130

84:                                               ; preds = %67
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %85

85:                                               ; preds = %118, %84
  %86 = load i64, i64* %10, align 8
  %87 = load i64, i64* %9, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %123

89:                                               ; preds = %85
  %90 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %91 = call i64 @ARRAYSIZE(i8* %90)
  store i64 %91, i64* %9, align 8
  %92 = bitcast [512 x i8]* %8 to i8**
  %93 = load i64, i64* %9, align 8
  %94 = load i32*, i32** %7, align 8
  %95 = call i64 @fread(i8** %92, i32 1, i64 %93, i32* %94)
  store i64 %95, i64* %10, align 8
  %96 = load i64, i64* %10, align 8
  %97 = load i64, i64* %9, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %114

99:                                               ; preds = %89
  %100 = load i32*, i32** %7, align 8
  %101 = call i32 @feof(i32* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %113, label %103

103:                                              ; preds = %99
  %104 = load i32, i32* @stderr, align 4
  %105 = load i8**, i8*** %5, align 8
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8*, i8** %105, i64 %107
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @fprintf(i32 %104, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i8* %109)
  %111 = load i32*, i32** %7, align 8
  %112 = call i32 @fclose(i32* %111)
  store i32 -1, i32* %3, align 4
  br label %130

113:                                              ; preds = %99
  br label %114

114:                                              ; preds = %113, %89
  %115 = load i64, i64* %10, align 8
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  br label %123

118:                                              ; preds = %114
  %119 = bitcast [512 x i8]* %8 to i8**
  %120 = load i64, i64* %10, align 8
  %121 = load i32*, i32** @stdout, align 8
  %122 = call i32 @fwrite(i8** %119, i32 1, i64 %120, i32* %121)
  br label %85

123:                                              ; preds = %117, %85
  %124 = load i32*, i32** %7, align 8
  %125 = call i32 @fclose(i32* %124)
  br label %126

126:                                              ; preds = %123
  %127 = load i32, i32* %6, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %6, align 4
  br label %63

129:                                              ; preds = %63
  store i32 0, i32* %3, align 4
  br label %130

130:                                              ; preds = %129, %103, %76, %61, %38
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i64 @_stricmp(i8*, i8*) #1

declare dso_local i32 @help(...) #1

declare dso_local i32 @_setmode(i32, i32) #1

declare dso_local i32 @_fileno(i32*) #1

declare dso_local i32 @fgetc(i32*) #1

declare dso_local i32 @putchar(i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i64 @ARRAYSIZE(i8*) #1

declare dso_local i64 @fread(i8**, i32, i64, i32*) #1

declare dso_local i32 @feof(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @fwrite(i8**, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
