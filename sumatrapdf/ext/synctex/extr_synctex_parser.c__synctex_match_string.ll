; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/synctex/extr_synctex_parser.c__synctex_match_string.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/synctex/extr_synctex_parser.c__synctex_match_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SYNCTEX_STATUS_BAD_ARGUMENT = common dso_local global i64 0, align 8
@SYNCTEX_STATUS_EOF = common dso_local global i64 0, align 8
@SYNCTEX_CUR = common dso_local global i64 0, align 8
@SYNCTEX_STATUS_NOT_OK = common dso_local global i64 0, align 8
@SYNCTEX_STATUS_OK = common dso_local global i64 0, align 8
@SYNCTEX_FILE = common dso_local global i64 0, align 8
@SYNCTEX_START = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"can't seek file\00", align 1
@SYNCTEX_STATUS_ERROR = common dso_local global i64 0, align 8
@SYNCTEX_END = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_synctex_match_string(i32* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = icmp eq i32* null, %11
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = icmp eq i8* null, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %13, %2
  %17 = load i64, i64* @SYNCTEX_STATUS_BAD_ARGUMENT, align 8
  store i64 %17, i64* %3, align 8
  br label %158

18:                                               ; preds = %13
  %19 = load i8*, i8** %5, align 8
  %20 = call i64 @strlen(i8* %19)
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp eq i64 0, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i64, i64* @SYNCTEX_STATUS_BAD_ARGUMENT, align 8
  store i64 %24, i64* %3, align 8
  br label %158

25:                                               ; preds = %18
  %26 = load i64, i64* %7, align 8
  store i64 %26, i64* %8, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = call i64 @_synctex_buffer_get_available_size(i32* %27, i64* %8)
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* @SYNCTEX_STATUS_EOF, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i64, i64* %9, align 8
  store i64 %33, i64* %3, align 8
  br label %158

34:                                               ; preds = %25
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp uge i64 %35, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %34
  %39 = load i64, i64* @SYNCTEX_CUR, align 8
  %40 = inttoptr i64 %39 to i8*
  %41 = load i8*, i8** %5, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call i64 @strncmp(i8* %40, i8* %41, i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i64, i64* @SYNCTEX_STATUS_NOT_OK, align 8
  store i64 %46, i64* %3, align 8
  br label %158

47:                                               ; preds = %38
  br label %48

48:                                               ; preds = %155, %47
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* @SYNCTEX_CUR, align 8
  %51 = add i64 %50, %49
  store i64 %51, i64* @SYNCTEX_CUR, align 8
  %52 = load i64, i64* @SYNCTEX_STATUS_OK, align 8
  store i64 %52, i64* %3, align 8
  br label %158

53:                                               ; preds = %34
  %54 = load i64, i64* @SYNCTEX_CUR, align 8
  %55 = inttoptr i64 %54 to i8*
  %56 = load i8*, i8** %5, align 8
  %57 = load i64, i64* %8, align 8
  %58 = call i64 @strncmp(i8* %55, i8* %56, i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i64, i64* @SYNCTEX_STATUS_NOT_OK, align 8
  store i64 %61, i64* %3, align 8
  br label %158

62:                                               ; preds = %53
  %63 = load i64, i64* @SYNCTEX_FILE, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %156

65:                                               ; preds = %62
  store i64 0, i64* %10, align 8
  %66 = load i64, i64* %8, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 %66
  store i8* %68, i8** %5, align 8
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* %7, align 8
  %71 = sub i64 %70, %69
  store i64 %71, i64* %7, align 8
  %72 = load i64, i64* %8, align 8
  %73 = load i64, i64* %6, align 8
  %74 = add i64 %73, %72
  store i64 %74, i64* %6, align 8
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* @SYNCTEX_CUR, align 8
  %77 = add i64 %76, %75
  store i64 %77, i64* @SYNCTEX_CUR, align 8
  %78 = load i64, i64* %7, align 8
  %79 = icmp eq i64 0, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %65
  %81 = load i64, i64* %6, align 8
  store i64 %81, i64* %3, align 8
  br label %158

82:                                               ; preds = %65
  %83 = load i64, i64* @SYNCTEX_FILE, align 8
  %84 = call i64 @gztell(i64 %83)
  store i64 %84, i64* %10, align 8
  %85 = load i64, i64* @SYNCTEX_CUR, align 8
  %86 = load i64, i64* @SYNCTEX_START, align 8
  %87 = sub i64 %85, %86
  store i64 %87, i64* %8, align 8
  %88 = load i64, i64* %8, align 8
  %89 = load i64, i64* %10, align 8
  %90 = sub i64 %89, %88
  store i64 %90, i64* %10, align 8
  br label %91

91:                                               ; preds = %146, %82
  %92 = load i64, i64* %7, align 8
  store i64 %92, i64* %8, align 8
  %93 = load i32*, i32** %4, align 8
  %94 = call i64 @_synctex_buffer_get_available_size(i32* %93, i64* %8)
  store i64 %94, i64* %9, align 8
  %95 = load i64, i64* %9, align 8
  %96 = load i64, i64* @SYNCTEX_STATUS_EOF, align 8
  %97 = icmp slt i64 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %91
  %99 = load i64, i64* %9, align 8
  store i64 %99, i64* %3, align 8
  br label %158

100:                                              ; preds = %91
  %101 = load i64, i64* %8, align 8
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %117

103:                                              ; preds = %100
  br label %104

104:                                              ; preds = %154, %128, %103
  %105 = load i64, i64* %10, align 8
  %106 = load i64, i64* @SYNCTEX_FILE, align 8
  %107 = load i64, i64* %10, align 8
  %108 = load i32, i32* @SEEK_SET, align 4
  %109 = call i64 @gzseek(i64 %106, i64 %107, i32 %108)
  %110 = icmp ne i64 %105, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %104
  %112 = call i32 @_synctex_error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %113 = load i64, i64* @SYNCTEX_STATUS_ERROR, align 8
  store i64 %113, i64* %3, align 8
  br label %158

114:                                              ; preds = %104
  %115 = load i64, i64* @SYNCTEX_END, align 8
  store i64 %115, i64* @SYNCTEX_CUR, align 8
  %116 = load i64, i64* @SYNCTEX_STATUS_NOT_OK, align 8
  store i64 %116, i64* %3, align 8
  br label %158

117:                                              ; preds = %100
  %118 = load i64, i64* %8, align 8
  %119 = load i64, i64* %7, align 8
  %120 = icmp ult i64 %118, %119
  br i1 %120, label %121, label %147

121:                                              ; preds = %117
  %122 = load i64, i64* @SYNCTEX_CUR, align 8
  %123 = inttoptr i64 %122 to i8*
  %124 = load i8*, i8** %5, align 8
  %125 = load i64, i64* %8, align 8
  %126 = call i64 @strncmp(i8* %123, i8* %124, i64 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %121
  br label %104

129:                                              ; preds = %121
  %130 = load i64, i64* %8, align 8
  %131 = load i8*, i8** %5, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 %130
  store i8* %132, i8** %5, align 8
  %133 = load i64, i64* %8, align 8
  %134 = load i64, i64* %7, align 8
  %135 = sub i64 %134, %133
  store i64 %135, i64* %7, align 8
  %136 = load i64, i64* %8, align 8
  %137 = load i64, i64* %6, align 8
  %138 = add i64 %137, %136
  store i64 %138, i64* %6, align 8
  %139 = load i64, i64* %8, align 8
  %140 = load i64, i64* @SYNCTEX_CUR, align 8
  %141 = add i64 %140, %139
  store i64 %141, i64* @SYNCTEX_CUR, align 8
  %142 = load i64, i64* %7, align 8
  %143 = icmp eq i64 0, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %129
  %145 = load i64, i64* @SYNCTEX_STATUS_OK, align 8
  store i64 %145, i64* %3, align 8
  br label %158

146:                                              ; preds = %129
  br label %91

147:                                              ; preds = %117
  %148 = load i64, i64* @SYNCTEX_CUR, align 8
  %149 = inttoptr i64 %148 to i8*
  %150 = load i8*, i8** %5, align 8
  %151 = load i64, i64* %7, align 8
  %152 = call i64 @strncmp(i8* %149, i8* %150, i64 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %147
  br label %104

155:                                              ; preds = %147
  br label %48

156:                                              ; preds = %62
  %157 = load i64, i64* @SYNCTEX_STATUS_EOF, align 8
  store i64 %157, i64* %3, align 8
  br label %158

158:                                              ; preds = %156, %144, %114, %111, %98, %80, %60, %48, %45, %32, %23, %16
  %159 = load i64, i64* %3, align 8
  ret i64 %159
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @_synctex_buffer_get_available_size(i32*, i64*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i64 @gztell(i64) #1

declare dso_local i64 @gzseek(i64, i64, i32) #1

declare dso_local i32 @_synctex_error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
