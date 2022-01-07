; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_rc_markdown.c_rb_redcarpet_md_flags.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_rc_markdown.c_rb_redcarpet_md_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@T_HASH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"no_intra_emphasis\00", align 1
@Qtrue = common dso_local global i64 0, align 8
@MKDEXT_NO_INTRA_EMPHASIS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"tables\00", align 1
@MKDEXT_TABLES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"fenced_code_blocks\00", align 1
@MKDEXT_FENCED_CODE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"disable_indented_code_blocks\00", align 1
@MKDEXT_DISABLE_INDENTED_CODE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"autolink\00", align 1
@MKDEXT_AUTOLINK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"strikethrough\00", align 1
@MKDEXT_STRIKETHROUGH = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"underline\00", align 1
@MKDEXT_UNDERLINE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"highlight\00", align 1
@MKDEXT_HIGHLIGHT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"quote\00", align 1
@MKDEXT_QUOTE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"lax_spacing\00", align 1
@MKDEXT_LAX_SPACING = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [20 x i8] c"space_after_headers\00", align 1
@MKDEXT_SPACE_HEADERS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [12 x i8] c"superscript\00", align 1
@MKDEXT_SUPERSCRIPT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [10 x i8] c"footnotes\00", align 1
@MKDEXT_FOOTNOTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @rb_redcarpet_md_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rb_redcarpet_md_flags(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @T_HASH, align 4
  %8 = call i32 @Check_Type(i32 %6, i32 %7)
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @CSTR2SYM(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %11 = call i64 @rb_hash_lookup(i32 %9, i32 %10)
  %12 = load i64, i64* @Qtrue, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* @MKDEXT_NO_INTRA_EMPHASIS, align 4
  %16 = load i32, i32* %5, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %14, %2
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @CSTR2SYM(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %21 = call i64 @rb_hash_lookup(i32 %19, i32 %20)
  %22 = load i64, i64* @Qtrue, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i32, i32* @MKDEXT_TABLES, align 4
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %24, %18
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @CSTR2SYM(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %31 = call i64 @rb_hash_lookup(i32 %29, i32 %30)
  %32 = load i64, i64* @Qtrue, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i32, i32* @MKDEXT_FENCED_CODE, align 4
  %36 = load i32, i32* %5, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %34, %28
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @CSTR2SYM(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %41 = call i64 @rb_hash_lookup(i32 %39, i32 %40)
  %42 = load i64, i64* @Qtrue, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i32, i32* @MKDEXT_DISABLE_INDENTED_CODE, align 4
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %44, %38
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @CSTR2SYM(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %51 = call i64 @rb_hash_lookup(i32 %49, i32 %50)
  %52 = load i64, i64* @Qtrue, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load i32, i32* @MKDEXT_AUTOLINK, align 4
  %56 = load i32, i32* %5, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %54, %48
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @CSTR2SYM(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %61 = call i64 @rb_hash_lookup(i32 %59, i32 %60)
  %62 = load i64, i64* @Qtrue, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load i32, i32* @MKDEXT_STRIKETHROUGH, align 4
  %66 = load i32, i32* %5, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %64, %58
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @CSTR2SYM(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %71 = call i64 @rb_hash_lookup(i32 %69, i32 %70)
  %72 = load i64, i64* @Qtrue, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load i32, i32* @MKDEXT_UNDERLINE, align 4
  %76 = load i32, i32* %5, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %74, %68
  %79 = load i32, i32* %3, align 4
  %80 = call i32 @CSTR2SYM(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %81 = call i64 @rb_hash_lookup(i32 %79, i32 %80)
  %82 = load i64, i64* @Qtrue, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = load i32, i32* @MKDEXT_HIGHLIGHT, align 4
  %86 = load i32, i32* %5, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %84, %78
  %89 = load i32, i32* %3, align 4
  %90 = call i32 @CSTR2SYM(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %91 = call i64 @rb_hash_lookup(i32 %89, i32 %90)
  %92 = load i64, i64* @Qtrue, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = load i32, i32* @MKDEXT_QUOTE, align 4
  %96 = load i32, i32* %5, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %94, %88
  %99 = load i32, i32* %3, align 4
  %100 = call i32 @CSTR2SYM(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %101 = call i64 @rb_hash_lookup(i32 %99, i32 %100)
  %102 = load i64, i64* @Qtrue, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %98
  %105 = load i32, i32* @MKDEXT_LAX_SPACING, align 4
  %106 = load i32, i32* %5, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %104, %98
  %109 = load i32, i32* %3, align 4
  %110 = call i32 @CSTR2SYM(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  %111 = call i64 @rb_hash_lookup(i32 %109, i32 %110)
  %112 = load i64, i64* @Qtrue, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %108
  %115 = load i32, i32* @MKDEXT_SPACE_HEADERS, align 4
  %116 = load i32, i32* %5, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %5, align 4
  br label %118

118:                                              ; preds = %114, %108
  %119 = load i32, i32* %3, align 4
  %120 = call i32 @CSTR2SYM(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  %121 = call i64 @rb_hash_lookup(i32 %119, i32 %120)
  %122 = load i64, i64* @Qtrue, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %118
  %125 = load i32, i32* @MKDEXT_SUPERSCRIPT, align 4
  %126 = load i32, i32* %5, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %5, align 4
  br label %128

128:                                              ; preds = %124, %118
  %129 = load i32, i32* %3, align 4
  %130 = call i32 @CSTR2SYM(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  %131 = call i64 @rb_hash_lookup(i32 %129, i32 %130)
  %132 = load i64, i64* @Qtrue, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %128
  %135 = load i32, i32* @MKDEXT_FOOTNOTES, align 4
  %136 = load i32, i32* %5, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %5, align 4
  br label %138

138:                                              ; preds = %134, %128
  %139 = load i32, i32* %5, align 4
  %140 = load i32*, i32** %4, align 8
  store i32 %139, i32* %140, align 4
  ret void
}

declare dso_local i32 @Check_Type(i32, i32) #1

declare dso_local i64 @rb_hash_lookup(i32, i32) #1

declare dso_local i32 @CSTR2SYM(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
