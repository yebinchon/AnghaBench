; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_if_py_both.h_SetBufferLine.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_if_py_both.h_SetBufferLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Py_None = common dso_local global i32* null, align 8
@FAIL = common dso_local global i64 0, align 8
@RAISE_UNDO_FAIL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@RAISE_DELETE_LINE_FAIL = common dso_local global i32 0, align 4
@curbuf = common dso_local global i32* null, align 8
@OK = common dso_local global i32 0, align 4
@RAISE_REPLACE_LINE_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*)* @SetBufferLine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SetBufferLine(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = load i32*, i32** @Py_None, align 8
  %16 = icmp eq i32* %14, %15
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32*, i32** %8, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %78

20:                                               ; preds = %17, %4
  %21 = call i32 (...) @PyErr_Clear()
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @switch_to_win_for_buf(i32* %22, i32** %11, i32** %12, i32** %10)
  %24 = call i32 (...) @VimTryStart()
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = call i64 @u_savedel(i64 %26, i64 1)
  %28 = load i64, i64* @FAIL, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = load i32, i32* @RAISE_UNDO_FAIL, align 4
  br label %61

32:                                               ; preds = %20
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = load i32, i32* @FALSE, align 4
  %36 = call i64 @ml_delete(i64 %34, i32 %35)
  %37 = load i64, i64* @FAIL, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* @RAISE_DELETE_LINE_FAIL, align 4
  br label %60

41:                                               ; preds = %32
  %42 = load i32*, i32** %6, align 8
  %43 = load i32*, i32** @curbuf, align 8
  %44 = icmp eq i32* %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, 1
  %51 = call i32 @py_fix_cursor(i64 %47, i64 %50, i64 -1)
  br label %52

52:                                               ; preds = %45, %41
  %53 = load i32*, i32** %10, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = call i32 @deleted_lines_mark(i64 %57, i64 1)
  br label %59

59:                                               ; preds = %55, %52
  br label %60

60:                                               ; preds = %59, %39
  br label %61

61:                                               ; preds = %60, %30
  %62 = load i32*, i32** %11, align 8
  %63 = load i32*, i32** %12, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = call i32 @restore_win_for_buf(i32* %62, i32* %63, i32* %64)
  %66 = call i64 (...) @VimTryEnd()
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load i64, i64* @FAIL, align 8
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %5, align 4
  br label %153

71:                                               ; preds = %61
  %72 = load i32*, i32** %9, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load i32*, i32** %9, align 8
  store i32 -1, i32* %75, align 4
  br label %76

76:                                               ; preds = %74, %71
  %77 = load i32, i32* @OK, align 4
  store i32 %77, i32* %5, align 4
  br label %153

78:                                               ; preds = %17
  %79 = load i32*, i32** %8, align 8
  %80 = call i64 @PyBytes_Check(i32* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %78
  %83 = load i32*, i32** %8, align 8
  %84 = call i64 @PyUnicode_Check(i32* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %149

86:                                               ; preds = %82, %78
  %87 = load i32*, i32** %8, align 8
  %88 = call i8* @StringToLine(i32* %87)
  store i8* %88, i8** %13, align 8
  %89 = load i8*, i8** %13, align 8
  %90 = icmp eq i8* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load i64, i64* @FAIL, align 8
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %5, align 4
  br label %153

94:                                               ; preds = %86
  %95 = call i32 (...) @VimTryStart()
  %96 = call i32 (...) @PyErr_Clear()
  %97 = load i32*, i32** %6, align 8
  %98 = call i32 @switch_to_win_for_buf(i32* %97, i32** %11, i32** %12, i32** %10)
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = call i64 @u_savesub(i64 %100)
  %102 = load i64, i64* @FAIL, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %94
  %105 = load i32, i32* @RAISE_UNDO_FAIL, align 4
  %106 = load i8*, i8** %13, align 8
  %107 = call i32 @vim_free(i8* %106)
  br label %126

108:                                              ; preds = %94
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = load i8*, i8** %13, align 8
  %112 = bitcast i8* %111 to i32*
  %113 = load i32, i32* @FALSE, align 4
  %114 = call i64 @ml_replace(i64 %110, i32* %112, i32 %113)
  %115 = load i64, i64* @FAIL, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %108
  %118 = load i32, i32* @RAISE_REPLACE_LINE_FAIL, align 4
  %119 = load i8*, i8** %13, align 8
  %120 = call i32 @vim_free(i8* %119)
  br label %125

121:                                              ; preds = %108
  %122 = load i32, i32* %7, align 4
  %123 = sext i32 %122 to i64
  %124 = call i32 @changed_bytes(i64 %123, i32 0)
  br label %125

125:                                              ; preds = %121, %117
  br label %126

126:                                              ; preds = %125, %104
  %127 = load i32*, i32** %11, align 8
  %128 = load i32*, i32** %12, align 8
  %129 = load i32*, i32** %10, align 8
  %130 = call i32 @restore_win_for_buf(i32* %127, i32* %128, i32* %129)
  %131 = load i32*, i32** %6, align 8
  %132 = load i32*, i32** @curbuf, align 8
  %133 = icmp eq i32* %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %126
  %135 = call i32 (...) @check_cursor_col()
  br label %136

136:                                              ; preds = %134, %126
  %137 = call i64 (...) @VimTryEnd()
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load i64, i64* @FAIL, align 8
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %5, align 4
  br label %153

142:                                              ; preds = %136
  %143 = load i32*, i32** %9, align 8
  %144 = icmp ne i32* %143, null
  br i1 %144, label %145, label %147

145:                                              ; preds = %142
  %146 = load i32*, i32** %9, align 8
  store i32 0, i32* %146, align 4
  br label %147

147:                                              ; preds = %145, %142
  %148 = load i32, i32* @OK, align 4
  store i32 %148, i32* %5, align 4
  br label %153

149:                                              ; preds = %82
  %150 = call i32 (...) @PyErr_BadArgument()
  %151 = load i64, i64* @FAIL, align 8
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %5, align 4
  br label %153

153:                                              ; preds = %149, %147, %139, %91, %76, %68
  %154 = load i32, i32* %5, align 4
  ret i32 %154
}

declare dso_local i32 @PyErr_Clear(...) #1

declare dso_local i32 @switch_to_win_for_buf(i32*, i32**, i32**, i32**) #1

declare dso_local i32 @VimTryStart(...) #1

declare dso_local i64 @u_savedel(i64, i64) #1

declare dso_local i64 @ml_delete(i64, i32) #1

declare dso_local i32 @py_fix_cursor(i64, i64, i64) #1

declare dso_local i32 @deleted_lines_mark(i64, i64) #1

declare dso_local i32 @restore_win_for_buf(i32*, i32*, i32*) #1

declare dso_local i64 @VimTryEnd(...) #1

declare dso_local i64 @PyBytes_Check(i32*) #1

declare dso_local i64 @PyUnicode_Check(i32*) #1

declare dso_local i8* @StringToLine(i32*) #1

declare dso_local i64 @u_savesub(i64) #1

declare dso_local i32 @vim_free(i8*) #1

declare dso_local i64 @ml_replace(i64, i32*, i32) #1

declare dso_local i32 @changed_bytes(i64, i32) #1

declare dso_local i32 @check_cursor_col(...) #1

declare dso_local i32 @PyErr_BadArgument(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
