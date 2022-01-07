; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/synctex/extr_synctex_parser.c__synctex_decode_string.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/synctex/extr_synctex_parser.c__synctex_decode_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SYNCTEX_STATUS_BAD_ARGUMENT = common dso_local global i64 0, align 8
@SYNCTEX_CUR = common dso_local global i8* null, align 8
@SYNCTEX_END = common dso_local global i8* null, align 8
@SYNCTEX_STATUS_EOF = common dso_local global i64 0, align 8
@UINT_MAX = common dso_local global i64 0, align 8
@SYNCTEX_STATUS_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"could not copy memory (1).\00", align 1
@SYNCTEX_STATUS_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"could not allocate memory (1).\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"limit reached (missing %i).\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"could not copy memory (2).\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"could not allocate memory (2).\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_synctex_decode_string(i32* %0, i8** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = icmp eq i32* null, %12
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i8**, i8*** %5, align 8
  %16 = icmp eq i8** null, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %14, %2
  %18 = load i64, i64* @SYNCTEX_STATUS_BAD_ARGUMENT, align 8
  store i64 %18, i64* %3, align 8
  br label %182

19:                                               ; preds = %14
  %20 = load i8*, i8** @SYNCTEX_CUR, align 8
  %21 = load i8*, i8** @SYNCTEX_END, align 8
  %22 = icmp uge i8* %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %19
  store i64 1, i64* %10, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call i64 @_synctex_buffer_get_available_size(i32* %24, i64* %10)
  store i64 %25, i64* %11, align 8
  %26 = load i64, i64* %11, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i64, i64* %11, align 8
  store i64 %29, i64* %3, align 8
  br label %182

30:                                               ; preds = %23
  %31 = load i64, i64* %10, align 8
  %32 = icmp eq i64 0, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i64, i64* @SYNCTEX_STATUS_EOF, align 8
  store i64 %34, i64* %3, align 8
  br label %182

35:                                               ; preds = %30
  br label %36

36:                                               ; preds = %35, %19
  %37 = load i8*, i8** @SYNCTEX_CUR, align 8
  store i8* %37, i8** %6, align 8
  %38 = load i8**, i8*** %5, align 8
  store i8* null, i8** %38, align 8
  br label %39

39:                                               ; preds = %121, %36
  %40 = load i8*, i8** %6, align 8
  %41 = load i8*, i8** @SYNCTEX_END, align 8
  %42 = icmp ult i8* %40, %41
  br i1 %42, label %43, label %124

43:                                               ; preds = %39
  %44 = load i8*, i8** %6, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 10
  br i1 %47, label %48, label %121

48:                                               ; preds = %43
  %49 = load i8*, i8** %6, align 8
  %50 = load i8*, i8** @SYNCTEX_CUR, align 8
  %51 = ptrtoint i8* %49 to i64
  %52 = ptrtoint i8* %50 to i64
  %53 = sub i64 %51, %52
  store i64 %53, i64* %9, align 8
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* @UINT_MAX, align 8
  %56 = load i64, i64* %9, align 8
  %57 = sub i64 %55, %56
  %58 = sub i64 %57, 1
  %59 = icmp ugt i64 %54, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %48
  %61 = load i64, i64* @UINT_MAX, align 8
  %62 = load i64, i64* %9, align 8
  %63 = sub i64 %61, %62
  %64 = sub i64 %63, 1
  %65 = load i64, i64* %7, align 8
  %66 = sub i64 %64, %65
  store i64 %66, i64* %3, align 8
  br label %182

67:                                               ; preds = %48
  %68 = load i64, i64* %7, align 8
  %69 = load i64, i64* %9, align 8
  %70 = add i64 %68, %69
  store i64 %70, i64* %8, align 8
  %71 = load i8**, i8*** %5, align 8
  %72 = load i8*, i8** %71, align 8
  %73 = load i64, i64* %8, align 8
  %74 = add i64 %73, 1
  %75 = call i8* @realloc(i8* %72, i64 %74)
  %76 = load i8**, i8*** %5, align 8
  store i8* %75, i8** %76, align 8
  %77 = icmp ne i8* %75, null
  br i1 %77, label %78, label %118

78:                                               ; preds = %67
  %79 = load i8**, i8*** %5, align 8
  %80 = load i8*, i8** %79, align 8
  %81 = load i64, i64* %7, align 8
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  %83 = load i8*, i8** @SYNCTEX_CUR, align 8
  %84 = load i64, i64* %9, align 8
  %85 = call i64 @memcpy(i8* %82, i8* %83, i64 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %111

87:                                               ; preds = %78
  %88 = load i64, i64* %8, align 8
  %89 = icmp ugt i64 %88, 0
  br i1 %89, label %90, label %102

90:                                               ; preds = %87
  %91 = load i8**, i8*** %5, align 8
  %92 = load i8*, i8** %91, align 8
  %93 = load i64, i64* %8, align 8
  %94 = sub i64 %93, 1
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 13
  br i1 %98, label %99, label %102

99:                                               ; preds = %90
  %100 = load i64, i64* %8, align 8
  %101 = add i64 %100, -1
  store i64 %101, i64* %8, align 8
  br label %102

102:                                              ; preds = %99, %90, %87
  %103 = load i8**, i8*** %5, align 8
  %104 = load i8*, i8** %103, align 8
  %105 = load i64, i64* %8, align 8
  %106 = getelementptr inbounds i8, i8* %104, i64 %105
  store i8 0, i8* %106, align 1
  %107 = load i64, i64* %9, align 8
  %108 = load i8*, i8** @SYNCTEX_CUR, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 %107
  store i8* %109, i8** @SYNCTEX_CUR, align 8
  %110 = load i64, i64* @SYNCTEX_STATUS_OK, align 8
  store i64 %110, i64* %3, align 8
  br label %182

111:                                              ; preds = %78
  %112 = load i8**, i8*** %5, align 8
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @free(i8* %113)
  %115 = load i8**, i8*** %5, align 8
  store i8* null, i8** %115, align 8
  %116 = call i32 (i8*, ...) @_synctex_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %117 = load i64, i64* @SYNCTEX_STATUS_ERROR, align 8
  store i64 %117, i64* %3, align 8
  br label %182

118:                                              ; preds = %67
  %119 = call i32 (i8*, ...) @_synctex_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %120 = load i64, i64* @SYNCTEX_STATUS_ERROR, align 8
  store i64 %120, i64* %3, align 8
  br label %182

121:                                              ; preds = %43
  %122 = load i8*, i8** %6, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %6, align 8
  br label %39

124:                                              ; preds = %39
  %125 = load i8*, i8** @SYNCTEX_END, align 8
  %126 = load i8*, i8** @SYNCTEX_CUR, align 8
  %127 = ptrtoint i8* %125 to i64
  %128 = ptrtoint i8* %126 to i64
  %129 = sub i64 %127, %128
  store i64 %129, i64* %9, align 8
  %130 = load i64, i64* %7, align 8
  %131 = load i64, i64* @UINT_MAX, align 8
  %132 = load i64, i64* %9, align 8
  %133 = sub i64 %131, %132
  %134 = sub i64 %133, 1
  %135 = icmp ugt i64 %130, %134
  br i1 %135, label %136, label %145

136:                                              ; preds = %124
  %137 = load i64, i64* %7, align 8
  %138 = load i64, i64* @UINT_MAX, align 8
  %139 = load i64, i64* %9, align 8
  %140 = sub i64 %138, %139
  %141 = sub i64 %140, 1
  %142 = sub i64 %137, %141
  %143 = call i32 (i8*, ...) @_synctex_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %142)
  %144 = load i64, i64* @SYNCTEX_STATUS_ERROR, align 8
  store i64 %144, i64* %3, align 8
  br label %182

145:                                              ; preds = %124
  %146 = load i64, i64* %7, align 8
  %147 = load i64, i64* %9, align 8
  %148 = add i64 %146, %147
  store i64 %148, i64* %8, align 8
  %149 = load i8**, i8*** %5, align 8
  %150 = load i8*, i8** %149, align 8
  %151 = load i64, i64* %8, align 8
  %152 = add i64 %151, 1
  %153 = call i8* @realloc(i8* %150, i64 %152)
  %154 = load i8**, i8*** %5, align 8
  store i8* %153, i8** %154, align 8
  %155 = icmp ne i8* %153, null
  br i1 %155, label %156, label %179

156:                                              ; preds = %145
  %157 = load i8**, i8*** %5, align 8
  %158 = load i8*, i8** %157, align 8
  %159 = load i64, i64* %7, align 8
  %160 = getelementptr inbounds i8, i8* %158, i64 %159
  %161 = load i8*, i8** @SYNCTEX_CUR, align 8
  %162 = load i64, i64* %9, align 8
  %163 = call i64 @memcpy(i8* %160, i8* %161, i64 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %156
  %166 = load i8**, i8*** %5, align 8
  %167 = load i8*, i8** %166, align 8
  %168 = load i64, i64* %8, align 8
  %169 = getelementptr inbounds i8, i8* %167, i64 %168
  store i8 0, i8* %169, align 1
  %170 = load i8*, i8** @SYNCTEX_END, align 8
  store i8* %170, i8** @SYNCTEX_CUR, align 8
  %171 = load i64, i64* @SYNCTEX_STATUS_OK, align 8
  store i64 %171, i64* %3, align 8
  br label %182

172:                                              ; preds = %156
  %173 = load i8**, i8*** %5, align 8
  %174 = load i8*, i8** %173, align 8
  %175 = call i32 @free(i8* %174)
  %176 = load i8**, i8*** %5, align 8
  store i8* null, i8** %176, align 8
  %177 = call i32 (i8*, ...) @_synctex_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %178 = load i64, i64* @SYNCTEX_STATUS_ERROR, align 8
  store i64 %178, i64* %3, align 8
  br label %182

179:                                              ; preds = %145
  %180 = call i32 (i8*, ...) @_synctex_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %181 = load i64, i64* @SYNCTEX_STATUS_ERROR, align 8
  store i64 %181, i64* %3, align 8
  br label %182

182:                                              ; preds = %179, %172, %165, %136, %118, %111, %102, %60, %33, %28, %17
  %183 = load i64, i64* %3, align 8
  ret i64 %183
}

declare dso_local i64 @_synctex_buffer_get_available_size(i32*, i64*) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i64 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @_synctex_error(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
