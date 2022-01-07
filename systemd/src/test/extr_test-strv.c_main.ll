; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-strv.c_main.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-strv.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"    foo=bar     \22waldo\22    zzz    \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"foo=bar\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"waldo\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"zzz\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@STRV_MAKE_EMPTY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"   x\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"x   \00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"  x   \00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"  \22x\22   \00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"  'x'   \00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"  'x\22'   \00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"x\22\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"  \22x'\22   \00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"x'\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"a  '--b=c \22d e\22'\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"--b=c \22d e\22\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"  x\\\\\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"x\\\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"  x\\\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"a  --b='c \22d e\22''\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"a  --b='c \22d e\22 '\22\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"a  --b='c \22d e\22garbage\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"'x'y'g\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = call i32 (...) @test_specifier_printf()
  %7 = call i32 (...) @test_str_in_set()
  %8 = call i32 (...) @test_strptr_in_set()
  %9 = call i32 (...) @test_startswith_set()
  %10 = call i32 (...) @test_strv_foreach()
  %11 = call i32 (...) @test_strv_foreach_backwards()
  %12 = call i32 (...) @test_strv_foreach_pair()
  %13 = call i32 (...) @test_strv_find()
  %14 = call i32 (...) @test_strv_find_prefix()
  %15 = call i32 (...) @test_strv_find_startswith()
  %16 = call i32 (...) @test_strv_join()
  %17 = call i32 (...) @test_strv_join_prefix()
  %18 = call i32 (i8*, ...) @STRV_MAKE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %19 = call i32 @test_strv_unquote(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @STRV_MAKE_EMPTY, align 4
  %21 = call i32 @test_strv_unquote(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @STRV_MAKE_EMPTY, align 4
  %23 = call i32 @test_strv_unquote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @STRV_MAKE_EMPTY, align 4
  %25 = call i32 @test_strv_unquote(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %24)
  %26 = call i32 (i8*, ...) @STRV_MAKE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %27 = call i32 @test_strv_unquote(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %26)
  %28 = call i32 (i8*, ...) @STRV_MAKE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %29 = call i32 @test_strv_unquote(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %28)
  %30 = call i32 (i8*, ...) @STRV_MAKE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %31 = call i32 @test_strv_unquote(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %30)
  %32 = call i32 (i8*, ...) @STRV_MAKE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %33 = call i32 @test_strv_unquote(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32 %32)
  %34 = call i32 (i8*, ...) @STRV_MAKE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %35 = call i32 @test_strv_unquote(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i32 %34)
  %36 = call i32 (i8*, ...) @STRV_MAKE(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  %37 = call i32 @test_strv_unquote(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %36)
  %38 = call i32 (i8*, ...) @STRV_MAKE(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0))
  %39 = call i32 @test_strv_unquote(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i32 %38)
  %40 = call i32 (i8*, ...) @STRV_MAKE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0))
  %41 = call i32 @test_strv_unquote(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0), i32 %40)
  %42 = call i32 (i8*, ...) @STRV_MAKE(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0))
  %43 = call i32 @test_strv_unquote(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i32 %42)
  %44 = call i32 @test_invalid_unquote(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0))
  %45 = call i32 @test_invalid_unquote(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0))
  %46 = call i32 @test_invalid_unquote(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i64 0, i64 0))
  %47 = call i32 @test_invalid_unquote(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0))
  %48 = call i32 @test_invalid_unquote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0))
  %49 = call i32 @test_invalid_unquote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0))
  %50 = call i32 @test_invalid_unquote(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0))
  %51 = call i32 (...) @test_strv_split()
  %52 = call i32 (...) @test_strv_split_empty()
  %53 = call i32 (...) @test_strv_split_extract()
  %54 = call i32 (...) @test_strv_split_newlines()
  %55 = call i32 (...) @test_strv_split_nulstr()
  %56 = call i32 (...) @test_strv_parse_nulstr()
  %57 = call i32 (...) @test_strv_overlap()
  %58 = call i32 (...) @test_strv_sort()
  %59 = call i32 (...) @test_strv_extend_strv()
  %60 = call i32 (...) @test_strv_extend_strv_concat()
  %61 = call i32 (...) @test_strv_extend()
  %62 = call i32 (...) @test_strv_extendf()
  %63 = call i32 (...) @test_strv_from_stdarg_alloca()
  %64 = call i32 (...) @test_strv_insert()
  %65 = call i32 (...) @test_strv_push_prepend()
  %66 = call i32 (...) @test_strv_push()
  %67 = call i32 (...) @test_strv_equal()
  %68 = call i32 (...) @test_strv_is_uniq()
  %69 = call i32 (...) @test_strv_reverse()
  %70 = call i32 (...) @test_strv_shell_escape()
  %71 = call i32 (...) @test_strv_skip()
  %72 = call i32 (...) @test_strv_extend_n()
  %73 = call i32 (...) @test_strv_make_nulstr()
  %74 = call i32 (...) @test_strv_free_free()
  %75 = call i32 (...) @test_foreach_string()
  %76 = call i32 (...) @test_strv_fnmatch()
  ret i32 0
}

declare dso_local i32 @test_specifier_printf(...) #1

declare dso_local i32 @test_str_in_set(...) #1

declare dso_local i32 @test_strptr_in_set(...) #1

declare dso_local i32 @test_startswith_set(...) #1

declare dso_local i32 @test_strv_foreach(...) #1

declare dso_local i32 @test_strv_foreach_backwards(...) #1

declare dso_local i32 @test_strv_foreach_pair(...) #1

declare dso_local i32 @test_strv_find(...) #1

declare dso_local i32 @test_strv_find_prefix(...) #1

declare dso_local i32 @test_strv_find_startswith(...) #1

declare dso_local i32 @test_strv_join(...) #1

declare dso_local i32 @test_strv_join_prefix(...) #1

declare dso_local i32 @test_strv_unquote(i8*, i32) #1

declare dso_local i32 @STRV_MAKE(i8*, ...) #1

declare dso_local i32 @test_invalid_unquote(i8*) #1

declare dso_local i32 @test_strv_split(...) #1

declare dso_local i32 @test_strv_split_empty(...) #1

declare dso_local i32 @test_strv_split_extract(...) #1

declare dso_local i32 @test_strv_split_newlines(...) #1

declare dso_local i32 @test_strv_split_nulstr(...) #1

declare dso_local i32 @test_strv_parse_nulstr(...) #1

declare dso_local i32 @test_strv_overlap(...) #1

declare dso_local i32 @test_strv_sort(...) #1

declare dso_local i32 @test_strv_extend_strv(...) #1

declare dso_local i32 @test_strv_extend_strv_concat(...) #1

declare dso_local i32 @test_strv_extend(...) #1

declare dso_local i32 @test_strv_extendf(...) #1

declare dso_local i32 @test_strv_from_stdarg_alloca(...) #1

declare dso_local i32 @test_strv_insert(...) #1

declare dso_local i32 @test_strv_push_prepend(...) #1

declare dso_local i32 @test_strv_push(...) #1

declare dso_local i32 @test_strv_equal(...) #1

declare dso_local i32 @test_strv_is_uniq(...) #1

declare dso_local i32 @test_strv_reverse(...) #1

declare dso_local i32 @test_strv_shell_escape(...) #1

declare dso_local i32 @test_strv_skip(...) #1

declare dso_local i32 @test_strv_extend_n(...) #1

declare dso_local i32 @test_strv_make_nulstr(...) #1

declare dso_local i32 @test_strv_free_free(...) #1

declare dso_local i32 @test_foreach_string(...) #1

declare dso_local i32 @test_strv_fnmatch(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
