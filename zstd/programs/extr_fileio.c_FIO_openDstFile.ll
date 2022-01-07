; ModuleID = '/home/carl/AnghaBench/zstd/programs/extr_fileio.c_FIO_openDstFile.c'
source_filename = "/home/carl/AnghaBench/zstd/programs/extr_fileio.c_FIO_openDstFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i64 }

@stdoutmark = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Using stdout for output \0A\00", align 1
@stdout = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [73 x i8] c"Sparse File Support is automatically disabled on stdout ; try --sparse \0A\00", align 1
@.str.2 = private unnamed_addr constant [76 x i8] c"zstd: Refusing to open an output file which will overwrite the input file \0A\00", align 1
@ZSTD_SPARSE_DEFAULT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@nulmark = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"%s is unexpectedly categorized as a regular file\00", align 1
@g_display_prefs = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [44 x i8] c"zstd: %s already exists; not overwritten  \0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"zstd: %s already exists; overwrite (y/N) ? \00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"    not overwritten  \0A\00", align 1
@EOF = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"zstd: %s: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@stdinmark = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_4__*, i8*, i8*)* @FIO_openDstFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @FIO_openDstFile(%struct.TYPE_4__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %140

16:                                               ; preds = %3
  %17 = load i8*, i8** %7, align 8
  %18 = icmp ne i8* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i8*, i8** %7, align 8
  %22 = load i32, i32* @stdoutmark, align 4
  %23 = call i64 @strcmp(i8* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %39, label %25

25:                                               ; preds = %16
  %26 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %27 = load i32*, i32** @stdout, align 8
  %28 = call i32 @SET_BINARY_MODE(i32* %27)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  %36 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 4, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %33, %25
  %38 = load i32*, i32** @stdout, align 8
  store i32* %38, i32** %4, align 8
  br label %140

39:                                               ; preds = %16
  %40 = load i8*, i8** %6, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load i8*, i8** %6, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = call i64 @UTIL_isSameFile(i8* %43, i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 1, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %140

49:                                               ; preds = %42, %39
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i32, i32* @ZSTD_SPARSE_DEFAULT, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  br label %58

58:                                               ; preds = %54, %49
  %59 = load i8*, i8** %7, align 8
  %60 = call i64 @UTIL_isRegularFile(i8* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %116

62:                                               ; preds = %58
  %63 = load i8*, i8** %7, align 8
  %64 = call i32* @fopen(i8* %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32* %64, i32** %8, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = load i32, i32* @nulmark, align 4
  %67 = call i64 @strcmp(i8* %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %62
  %70 = load i8*, i8** %7, align 8
  %71 = call i32 @EXM_THROW(i32 40, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i8* %70)
  br label %72

72:                                               ; preds = %69, %62
  %73 = load i32*, i32** %8, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %115

75:                                               ; preds = %72
  %76 = load i32*, i32** %8, align 8
  %77 = call i32 @fclose(i32* %76)
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %112, label %82

82:                                               ; preds = %75
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_display_prefs, i32 0, i32 0), align 4
  %84 = icmp sle i32 %83, 1
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i8*, i8** %7, align 8
  %87 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i8* %86)
  store i32* null, i32** %4, align 8
  br label %140

88:                                               ; preds = %82
  %89 = load i8*, i8** %7, align 8
  %90 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i8* %89)
  %91 = call i32 (...) @getchar()
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 89
  br i1 %93, label %94, label %99

94:                                               ; preds = %88
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 121
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %140

99:                                               ; preds = %94, %88
  br label %100

100:                                              ; preds = %109, %99
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @EOF, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 10
  br label %107

107:                                              ; preds = %104, %100
  %108 = phi i1 [ false, %100 ], [ %106, %104 ]
  br i1 %108, label %109, label %111

109:                                              ; preds = %107
  %110 = call i32 (...) @getchar()
  store i32 %110, i32* %9, align 4
  br label %100

111:                                              ; preds = %107
  br label %112

112:                                              ; preds = %111, %75
  %113 = load i8*, i8** %7, align 8
  %114 = call i32 @FIO_remove(i8* %113)
  br label %115

115:                                              ; preds = %112, %72
  br label %116

116:                                              ; preds = %115, %58
  %117 = load i8*, i8** %7, align 8
  %118 = call i32* @fopen(i8* %117, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  store i32* %118, i32** %10, align 8
  %119 = load i32*, i32** %10, align 8
  %120 = icmp eq i32* %119, null
  br i1 %120, label %121, label %126

121:                                              ; preds = %116
  %122 = load i8*, i8** %7, align 8
  %123 = load i32, i32* @errno, align 4
  %124 = call i32 @strerror(i32 %123)
  %125 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* %122, i32 %124)
  br label %138

126:                                              ; preds = %116
  %127 = load i8*, i8** %6, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %137

129:                                              ; preds = %126
  %130 = load i8*, i8** %6, align 8
  %131 = load i32, i32* @stdinmark, align 4
  %132 = call i64 @strcmp(i8* %130, i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load i8*, i8** %7, align 8
  %136 = call i32 @chmod(i8* %135, i32 384)
  br label %137

137:                                              ; preds = %134, %129, %126
  br label %138

138:                                              ; preds = %137, %121
  %139 = load i32*, i32** %10, align 8
  store i32* %139, i32** %4, align 8
  br label %140

140:                                              ; preds = %138, %97, %85, %47, %37, %15
  %141 = load i32*, i32** %4, align 8
  ret i32* %141
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @DISPLAYLEVEL(i32, i8*, ...) #1

declare dso_local i32 @SET_BINARY_MODE(i32*) #1

declare dso_local i64 @UTIL_isSameFile(i8*, i8*) #1

declare dso_local i64 @UTIL_isRegularFile(i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @EXM_THROW(i32, i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @DISPLAY(i8*, ...) #1

declare dso_local i32 @getchar(...) #1

declare dso_local i32 @FIO_remove(i8*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @chmod(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
