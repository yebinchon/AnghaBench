; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/synctex/extr_synctex_parser.c__synctex_buffer_get_available_size.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/synctex/extr_synctex_parser.c__synctex_buffer_get_available_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SYNCTEX_STATUS_BAD_ARGUMENT = common dso_local global i32 0, align 4
@SYNCTEX_BUFFER_SIZE = common dso_local global i64 0, align 8
@SYNCTEX_END = common dso_local global i8* null, align 8
@SYNCTEX_CUR = common dso_local global i8* null, align 8
@SYNCTEX_STATUS_OK = common dso_local global i32 0, align 4
@SYNCTEX_FILE = common dso_local global i32* null, align 8
@SYNCTEX_START = common dso_local global i8* null, align 8
@Z_ERRNO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"gzread error from the file system (%i)\00", align 1
@errno = common dso_local global i32 0, align 4
@SYNCTEX_STATUS_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"gzread error (%i:%i,%s)\00", align 1
@SYNCTEX_STATUS_EOF = common dso_local global i32 0, align 4
@size = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_synctex_buffer_get_available_size(i32* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 0, i64* %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = icmp eq i32* null, %10
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i64*, i64** %5, align 8
  %14 = icmp eq i64* null, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %12, %2
  %16 = load i32, i32* @SYNCTEX_STATUS_BAD_ARGUMENT, align 4
  store i32 %16, i32* %3, align 4
  br label %118

17:                                               ; preds = %12
  %18 = load i64*, i64** %5, align 8
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SYNCTEX_BUFFER_SIZE, align 8
  %21 = icmp ugt i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i64, i64* @SYNCTEX_BUFFER_SIZE, align 8
  %24 = load i64*, i64** %5, align 8
  store i64 %23, i64* %24, align 8
  br label %25

25:                                               ; preds = %22, %17
  %26 = load i8*, i8** @SYNCTEX_END, align 8
  %27 = load i8*, i8** @SYNCTEX_CUR, align 8
  %28 = ptrtoint i8* %26 to i64
  %29 = ptrtoint i8* %27 to i64
  %30 = sub i64 %28, %29
  store i64 %30, i64* %6, align 8
  %31 = load i64*, i64** %5, align 8
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp ule i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %25
  %36 = load i64, i64* %6, align 8
  %37 = load i64*, i64** %5, align 8
  store i64 %36, i64* %37, align 8
  %38 = load i32, i32* @SYNCTEX_STATUS_OK, align 4
  store i32 %38, i32* %3, align 4
  br label %118

39:                                               ; preds = %25
  %40 = load i32*, i32** @SYNCTEX_FILE, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %114

42:                                               ; preds = %39
  store i32 0, i32* %7, align 4
  %43 = load i64, i64* %6, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i8*, i8** @SYNCTEX_START, align 8
  %47 = load i8*, i8** @SYNCTEX_CUR, align 8
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @memmove(i8* %46, i8* %47, i64 %48)
  br label %50

50:                                               ; preds = %45, %42
  %51 = load i8*, i8** @SYNCTEX_START, align 8
  %52 = load i64, i64* %6, align 8
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  store i8* %53, i8** @SYNCTEX_CUR, align 8
  %54 = load i32*, i32** @SYNCTEX_FILE, align 8
  %55 = load i8*, i8** @SYNCTEX_CUR, align 8
  %56 = load i64, i64* @SYNCTEX_BUFFER_SIZE, align 8
  %57 = load i64, i64* %6, align 8
  %58 = sub i64 %56, %57
  %59 = call i32 @gzread(i32* %54, i8* %55, i64 %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %50
  %63 = load i8*, i8** @SYNCTEX_CUR, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  store i8* %66, i8** @SYNCTEX_END, align 8
  %67 = load i8*, i8** @SYNCTEX_END, align 8
  store i8 0, i8* %67, align 1
  %68 = load i8*, i8** @SYNCTEX_START, align 8
  store i8* %68, i8** @SYNCTEX_CUR, align 8
  %69 = load i8*, i8** @SYNCTEX_END, align 8
  %70 = load i8*, i8** @SYNCTEX_CUR, align 8
  %71 = ptrtoint i8* %69 to i64
  %72 = ptrtoint i8* %70 to i64
  %73 = sub i64 %71, %72
  %74 = load i64*, i64** %5, align 8
  store i64 %73, i64* %74, align 8
  %75 = load i32, i32* @SYNCTEX_STATUS_OK, align 4
  store i32 %75, i32* %3, align 4
  br label %118

76:                                               ; preds = %50
  %77 = load i32, i32* %7, align 4
  %78 = icmp sgt i32 0, %77
  br i1 %78, label %79, label %100

79:                                               ; preds = %76
  store i32 0, i32* %8, align 4
  %80 = load i32*, i32** @SYNCTEX_FILE, align 8
  %81 = call i8* @gzerror(i32* %80, i32* %8)
  store i8* %81, i8** %9, align 8
  %82 = load i32, i32* @Z_ERRNO, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load i32, i32* @errno, align 4
  %87 = call i32 (i8*, i32, ...) @_synctex_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @SYNCTEX_STATUS_ERROR, align 4
  store i32 %88, i32* %3, align 4
  br label %118

89:                                               ; preds = %79
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %89
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %8, align 4
  %95 = load i8*, i8** %9, align 8
  %96 = call i32 (i8*, i32, ...) @_synctex_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %93, i32 %94, i8* %95)
  %97 = load i32, i32* @SYNCTEX_STATUS_ERROR, align 4
  store i32 %97, i32* %3, align 4
  br label %118

98:                                               ; preds = %89
  br label %99

99:                                               ; preds = %98
  br label %100

100:                                              ; preds = %99, %76
  br label %101

101:                                              ; preds = %100
  %102 = load i32*, i32** @SYNCTEX_FILE, align 8
  %103 = call i32 @gzclose(i32* %102)
  store i32* null, i32** @SYNCTEX_FILE, align 8
  %104 = load i8*, i8** @SYNCTEX_CUR, align 8
  store i8* %104, i8** @SYNCTEX_END, align 8
  %105 = load i8*, i8** @SYNCTEX_START, align 8
  store i8* %105, i8** @SYNCTEX_CUR, align 8
  %106 = load i8*, i8** @SYNCTEX_END, align 8
  store i8 0, i8* %106, align 1
  %107 = load i8*, i8** @SYNCTEX_END, align 8
  %108 = load i8*, i8** @SYNCTEX_CUR, align 8
  %109 = ptrtoint i8* %107 to i64
  %110 = ptrtoint i8* %108 to i64
  %111 = sub i64 %109, %110
  %112 = load i64*, i64** %5, align 8
  store i64 %111, i64* %112, align 8
  %113 = load i32, i32* @SYNCTEX_STATUS_EOF, align 4
  store i32 %113, i32* %3, align 4
  br label %118

114:                                              ; preds = %39
  %115 = load i64, i64* %6, align 8
  %116 = load i64*, i64** %5, align 8
  store i64 %115, i64* %116, align 8
  %117 = load i32, i32* @SYNCTEX_STATUS_EOF, align 4
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %114, %101, %92, %85, %62, %35, %15
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i32 @gzread(i32*, i8*, i64) #1

declare dso_local i8* @gzerror(i32*, i32*) #1

declare dso_local i32 @_synctex_error(i8*, i32, ...) #1

declare dso_local i32 @gzclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
