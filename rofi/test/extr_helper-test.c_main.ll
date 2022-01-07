; ModuleID = '/home/carl/AnghaBench/rofi/test/extr_helper-test.c_main.c'
source_filename = "/home/carl/AnghaBench/rofi/test/extr_helper-test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@LC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Failed to set locale.\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\\a\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\\b\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\\t\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\\v\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\\f\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"\\0\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"\\x77\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"\\x0A\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"aap\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"aap \00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"aap noot\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"noot aap\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"noot aap mies\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"otp\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"\A1\B5\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"\C2\A1\C2\B5\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"Valid utf8\00", align 1
@__const.main.in = private unnamed_addr constant [37 x i8] c"Valid utf8 until \C3( we continue here\00", align 16
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@.str.22 = private unnamed_addr constant [39 x i8] c"Valid utf8 until \EF\BF\BD( we continue here\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"aapno\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"aap\E2\82\AC\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"aap noot mies\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"anm\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"blu\00", align 1
@config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.29 = private unnamed_addr constant [4 x i8] c"Anm\00", align 1
@.str.30 = private unnamed_addr constant [38 x i8] c"{terminal} [-t {title} blub ]-e {cmd}\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"{cmd}\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"{title}\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"some title\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"{terminal}\00", align 1
@.str.35 = private unnamed_addr constant [23 x i8] c"rofi-sensible-terminal\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.37 = private unnamed_addr constant [49 x i8] c"rofi-sensible-terminal -t some title blub -e aap\00", align 1
@.str.38 = private unnamed_addr constant [30 x i8] c"rofi-sensible-terminal -e aap\00", align 1
@.str.39 = private unnamed_addr constant [70 x i8] c"{name} [<span weight='light' size='small'><i>({category})</i></span>]\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"{name}\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"Librecad\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"{category}\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"Desktop app\00", align 1
@.str.44 = private unnamed_addr constant [71 x i8] c"Librecad <span weight='light' size='small'><i>(Desktop app)</i></span>\00", align 1
@.str.45 = private unnamed_addr constant [70 x i8] c"{name}[ <span weight='light' size='small'><i>({category})</i></span>]\00", align 1
@.str.46 = private unnamed_addr constant [35 x i8] c"{terminal} [{title} blub ]-e {cmd}\00", align 1
@.str.47 = private unnamed_addr constant [46 x i8] c"rofi-sensible-terminal some title blub -e aap\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [37 x i8], align 16
  %9 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i8**, i8*** %5, align 8
  %12 = call i32 @cmd_set_arguments(i32 %10, i8** %11)
  %13 = load i32, i32* @LC_ALL, align 4
  %14 = call i32* @setlocale(i32 %13, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @stderr, align 4
  %18 = call i32 @fprintf(i32 %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %19, i32* %3, align 4
  br label %242

20:                                               ; preds = %2
  %21 = call signext i8 @helper_parse_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 10
  %24 = zext i1 %23 to i32
  %25 = call i32 @TASSERT(i32 %24)
  %26 = call signext i8 @helper_parse_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 7
  %29 = zext i1 %28 to i32
  %30 = call i32 @TASSERT(i32 %29)
  %31 = call signext i8 @helper_parse_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 8
  %34 = zext i1 %33 to i32
  %35 = call i32 @TASSERT(i32 %34)
  %36 = call signext i8 @helper_parse_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 9
  %39 = zext i1 %38 to i32
  %40 = call i32 @TASSERT(i32 %39)
  %41 = call signext i8 @helper_parse_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 11
  %44 = zext i1 %43 to i32
  %45 = call i32 @TASSERT(i32 %44)
  %46 = call signext i8 @helper_parse_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 12
  %49 = zext i1 %48 to i32
  %50 = call i32 @TASSERT(i32 %49)
  %51 = call signext i8 @helper_parse_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 13
  %54 = zext i1 %53 to i32
  %55 = call i32 @TASSERT(i32 %54)
  %56 = call signext i8 @helper_parse_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 92
  %59 = zext i1 %58 to i32
  %60 = call i32 @TASSERT(i32 %59)
  %61 = call signext i8 @helper_parse_char(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i32 @TASSERT(i32 %64)
  %66 = call signext i8 @helper_parse_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 119
  %69 = zext i1 %68 to i32
  %70 = call i32 @TASSERT(i32 %69)
  %71 = call signext i8 @helper_parse_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 10
  %74 = zext i1 %73 to i32
  %75 = call i32 @TASSERT(i32 %74)
  %76 = call i32 @g_utf8_strlen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32 -1)
  %77 = call i32 @g_utf8_strlen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32 -1)
  %78 = call i32 @levenshtein(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32 %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32 %77)
  %79 = icmp eq i32 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i32 @TASSERT(i32 %80)
  %82 = call i32 @g_utf8_strlen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32 -1)
  %83 = call i32 @g_utf8_strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 -1)
  %84 = call i32 @levenshtein(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32 %82, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %83)
  %85 = icmp eq i32 %84, 1
  %86 = zext i1 %85 to i32
  %87 = call i32 @TASSERT(i32 %86)
  %88 = call i32 @g_utf8_strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 -1)
  %89 = call i32 @g_utf8_strlen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32 -1)
  %90 = call i32 @levenshtein(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %88, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32 %89)
  %91 = icmp eq i32 %90, 1
  %92 = zext i1 %91 to i32
  %93 = call i32 @TASSERT(i32 %92)
  %94 = call i32 @g_utf8_strlen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32 -1)
  %95 = call i32 @g_utf8_strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i32 -1)
  %96 = call i32 @levenshtein(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32 %94, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i32 %95)
  %97 = call i32 @TASSERTE(i32 %96, i32 5)
  %98 = call i32 @g_utf8_strlen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32 -1)
  %99 = call i32 @g_utf8_strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 -1)
  %100 = call i32 @levenshtein(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32 %98, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 %99)
  %101 = call i32 @TASSERTE(i32 %100, i32 5)
  %102 = call i32 @g_utf8_strlen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32 -1)
  %103 = call i32 @g_utf8_strlen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 -1)
  %104 = call i32 @levenshtein(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32 %102, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 %103)
  %105 = call i32 @TASSERTE(i32 %104, i32 10)
  %106 = call i32 @g_utf8_strlen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 -1)
  %107 = call i32 @g_utf8_strlen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32 -1)
  %108 = call i32 @levenshtein(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 %106, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32 %107)
  %109 = call i32 @TASSERTE(i32 %108, i32 10)
  %110 = call i32 @g_utf8_strlen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i32 -1)
  %111 = call i32 @g_utf8_strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 -1)
  %112 = call i32 @levenshtein(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i32 %110, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 %111)
  %113 = call i32 @TASSERTE(i32 %112, i32 5)
  %114 = call i8* @rofi_latin_to_utf8_strdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i32 2)
  store i8* %114, i8** %6, align 8
  %115 = load i8*, i8** %6, align 8
  %116 = call i64 @g_utf8_collate(i8* %115, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0))
  %117 = icmp eq i64 %116, 0
  %118 = zext i1 %117 to i32
  %119 = call i32 @TASSERT(i32 %118)
  %120 = load i8*, i8** %6, align 8
  %121 = call i32 @g_free(i8* %120)
  %122 = call i8* @rofi_force_utf8(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i32 10)
  store i8* %122, i8** %7, align 8
  %123 = load i8*, i8** %7, align 8
  %124 = call i64 @g_utf8_collate(i8* %123, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0))
  %125 = icmp eq i64 %124, 0
  %126 = zext i1 %125 to i32
  %127 = call i32 @TASSERT(i32 %126)
  %128 = load i8*, i8** %7, align 8
  %129 = call i32 @g_free(i8* %128)
  %130 = bitcast [37 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %130, i8* align 16 getelementptr inbounds ([37 x i8], [37 x i8]* @__const.main.in, i32 0, i32 0), i64 37, i1 false)
  %131 = getelementptr inbounds [37 x i8], [37 x i8]* %8, i64 0, i64 0
  %132 = call i64 @g_utf8_validate(i8* %131, i32 -1, i32* null)
  %133 = load i64, i64* @FALSE, align 8
  %134 = icmp eq i64 %132, %133
  %135 = zext i1 %134 to i32
  %136 = call i32 @TASSERT(i32 %135)
  %137 = getelementptr inbounds [37 x i8], [37 x i8]* %8, i64 0, i64 0
  %138 = getelementptr inbounds [37 x i8], [37 x i8]* %8, i64 0, i64 0
  %139 = call i32 @strlen(i8* %138)
  %140 = call i8* @rofi_force_utf8(i8* %137, i32 %139)
  store i8* %140, i8** %7, align 8
  %141 = load i8*, i8** %7, align 8
  %142 = call i64 @g_utf8_validate(i8* %141, i32 -1, i32* null)
  %143 = load i64, i64* @TRUE, align 8
  %144 = icmp eq i64 %142, %143
  %145 = zext i1 %144 to i32
  %146 = call i32 @TASSERT(i32 %145)
  %147 = load i8*, i8** %7, align 8
  %148 = call i64 @g_utf8_collate(i8* %147, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22, i64 0, i64 0))
  %149 = icmp eq i64 %148, 0
  %150 = zext i1 %149 to i32
  %151 = call i32 @TASSERT(i32 %150)
  %152 = load i8*, i8** %7, align 8
  %153 = call i32 @g_free(i8* %152)
  %154 = call i64 @utf8_strncmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), i32 3)
  %155 = icmp eq i64 %154, 0
  %156 = zext i1 %155 to i32
  %157 = call i32 @TASSERT(i32 %156)
  %158 = call i64 @utf8_strncmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), i32 4)
  %159 = icmp ne i64 %158, 0
  %160 = zext i1 %159 to i32
  %161 = call i32 @TASSERT(i32 %160)
  %162 = call i64 @utf8_strncmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i32 4)
  %163 = icmp ne i64 %162, 0
  %164 = zext i1 %163 to i32
  %165 = call i32 @TASSERT(i32 %164)
  %166 = call i64 @utf8_strncmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), i32 4)
  %167 = icmp ne i64 %166, 0
  %168 = zext i1 %167 to i32
  %169 = call i32 @TASSERT(i32 %168)
  %170 = call i32 @rofi_scorer_fuzzy_evaluate(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0), i32 12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0), i32 12)
  %171 = call i32 @TASSERTL(i32 %170, i32 -605)
  %172 = call i32 @rofi_scorer_fuzzy_evaluate(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i32 3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0), i32 12)
  %173 = call i32 @TASSERTL(i32 %172, i32 -155)
  %174 = call i32 @rofi_scorer_fuzzy_evaluate(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0), i32 3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0), i32 12)
  %175 = call i32 @TASSERTL(i32 %174, i32 1073741824)
  %176 = load i64, i64* @TRUE, align 8
  store i64 %176, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %177 = call i32 @rofi_scorer_fuzzy_evaluate(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0), i32 3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0), i32 12)
  %178 = call i32 @TASSERTL(i32 %177, i32 1073741754)
  %179 = load i64, i64* @FALSE, align 8
  store i64 %179, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %180 = call i32 @rofi_scorer_fuzzy_evaluate(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0), i32 3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0), i32 12)
  %181 = call i32 @TASSERTL(i32 %180, i32 -155)
  %182 = call i32 @rofi_scorer_fuzzy_evaluate(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0), i32 12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0), i32 3)
  %183 = call i32 @TASSERTL(i32 %182, i32 1073741824)
  %184 = call i8* (i8*, i8*, i8*, i8*, i8*, i8*, ...) @helper_string_replace_if_exists(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i64 0, i64 0), i8* null)
  store i8* %184, i8** %9, align 8
  %185 = load i8*, i8** %9, align 8
  %186 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0), i8* %185)
  %187 = load i8*, i8** %9, align 8
  %188 = call i64 @g_utf8_collate(i8* %187, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.37, i64 0, i64 0))
  %189 = icmp eq i64 %188, 0
  %190 = zext i1 %189 to i32
  %191 = call i32 @TASSERT(i32 %190)
  %192 = load i8*, i8** %9, align 8
  %193 = call i32 @g_free(i8* %192)
  %194 = call i8* (i8*, i8*, i8*, i8*, i8*, i8*, ...) @helper_string_replace_if_exists(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i64 0, i64 0), i8* null)
  store i8* %194, i8** %9, align 8
  %195 = load i8*, i8** %9, align 8
  %196 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0), i8* %195)
  %197 = load i8*, i8** %9, align 8
  %198 = call i64 @g_utf8_collate(i8* %197, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.38, i64 0, i64 0))
  %199 = icmp eq i64 %198, 0
  %200 = zext i1 %199 to i32
  %201 = call i32 @TASSERT(i32 %200)
  %202 = load i8*, i8** %9, align 8
  %203 = call i32 @g_free(i8* %202)
  %204 = call i8* (i8*, i8*, i8*, i8*, i8*, i8*, ...) @helper_string_replace_if_exists(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i64 0, i64 0), i8* null)
  store i8* %204, i8** %9, align 8
  %205 = load i8*, i8** %9, align 8
  %206 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0), i8* %205)
  %207 = load i8*, i8** %9, align 8
  %208 = call i64 @g_utf8_collate(i8* %207, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.44, i64 0, i64 0))
  %209 = icmp eq i64 %208, 0
  %210 = zext i1 %209 to i32
  %211 = call i32 @TASSERT(i32 %210)
  %212 = load i8*, i8** %9, align 8
  %213 = call i32 @g_free(i8* %212)
  %214 = call i8* (i8*, i8*, i8*, i8*, i8*, i8*, ...) @helper_string_replace_if_exists(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.45, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i64 0, i64 0), i8* null)
  store i8* %214, i8** %9, align 8
  %215 = load i8*, i8** %9, align 8
  %216 = call i64 @g_utf8_collate(i8* %215, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i64 0, i64 0))
  %217 = icmp eq i64 %216, 0
  %218 = zext i1 %217 to i32
  %219 = call i32 @TASSERT(i32 %218)
  %220 = load i8*, i8** %9, align 8
  %221 = call i32 @g_free(i8* %220)
  %222 = call i8* (i8*, i8*, i8*, i8*, i8*, i8*, ...) @helper_string_replace_if_exists(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i64 0, i64 0), i8* null)
  store i8* %222, i8** %9, align 8
  %223 = load i8*, i8** %9, align 8
  %224 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0), i8* %223)
  %225 = load i8*, i8** %9, align 8
  %226 = call i64 @g_utf8_collate(i8* %225, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.47, i64 0, i64 0))
  %227 = icmp eq i64 %226, 0
  %228 = zext i1 %227 to i32
  %229 = call i32 @TASSERT(i32 %228)
  %230 = load i8*, i8** %9, align 8
  %231 = call i32 @g_free(i8* %230)
  %232 = call i8* (i8*, i8*, i8*, i8*, i8*, i8*, ...) @helper_string_replace_if_exists(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i64 0, i64 0), i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i64 0, i64 0), i8* null)
  store i8* %232, i8** %9, align 8
  %233 = load i8*, i8** %9, align 8
  %234 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0), i8* %233)
  %235 = load i8*, i8** %9, align 8
  %236 = call i64 @g_utf8_collate(i8* %235, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.38, i64 0, i64 0))
  %237 = icmp eq i64 %236, 0
  %238 = zext i1 %237 to i32
  %239 = call i32 @TASSERT(i32 %238)
  %240 = load i8*, i8** %9, align 8
  %241 = call i32 @g_free(i8* %240)
  br label %242

242:                                              ; preds = %20, %16
  %243 = load i32, i32* %3, align 4
  ret i32 %243
}

declare dso_local i32 @cmd_set_arguments(i32, i8**) #1

declare dso_local i32* @setlocale(i32, i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @TASSERT(i32) #1

declare dso_local signext i8 @helper_parse_char(i8*) #1

declare dso_local i32 @levenshtein(i8*, i32, i8*, i32) #1

declare dso_local i32 @g_utf8_strlen(i8*, i32) #1

declare dso_local i32 @TASSERTE(i32, i32) #1

declare dso_local i8* @rofi_latin_to_utf8_strdup(i8*, i32) #1

declare dso_local i64 @g_utf8_collate(i8*, i8*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i8* @rofi_force_utf8(i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @g_utf8_validate(i8*, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @utf8_strncmp(i8*, i8*, i32) #1

declare dso_local i32 @TASSERTL(i32, i32) #1

declare dso_local i32 @rofi_scorer_fuzzy_evaluate(i8*, i32, i8*, i32) #1

declare dso_local i8* @helper_string_replace_if_exists(i8*, i8*, i8*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
