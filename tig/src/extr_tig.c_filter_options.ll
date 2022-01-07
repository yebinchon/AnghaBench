; ModuleID = '/home/carl/AnghaBench/tig/src/extr_tig.c_filter_options.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_tig.c_filter_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@opt_cmdline_args = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [3 x i8] c"--\00", align 1
@opt_rev_args = common dso_local global i8** null, align 8
@opt_file_args = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"--no-revs\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"--no-flags\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"--flags\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"--symbolic\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"--revs-only\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i32)* @filter_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filter_options(i8** %0, i32 %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8** null, i8*** %5, align 8
  %10 = load i8**, i8*** %3, align 8
  %11 = call i32 @update_options_from_argv(i8** %10)
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i8**, i8*** %3, align 8
  store i8** %15, i8*** @opt_cmdline_args, align 8
  br label %129

16:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %70, %16
  %18 = load i8**, i8*** %3, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %18, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %73

24:                                               ; preds = %17
  %25 = load i8**, i8*** %3, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %8, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %54, label %33

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %41, %33
  %35 = load i8**, i8*** %3, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %53

41:                                               ; preds = %34
  %42 = load i8**, i8*** %3, align 8
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i8*, i8** %42, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = load i8**, i8*** %3, align 8
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i8*, i8** %48, i64 %51
  store i8* %47, i8** %52, align 8
  br label %34

53:                                               ; preds = %34
  br label %69

54:                                               ; preds = %24
  %55 = load i8*, i8** %8, align 8
  %56 = call i64 @argv_parse_rev_flag(i8* %55, i32* null)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i8*, i8** %8, align 8
  %60 = call i32 @argv_append(i8*** @opt_rev_args, i8* %59)
  br label %68

61:                                               ; preds = %54
  %62 = load i8*, i8** %8, align 8
  %63 = load i8**, i8*** %3, align 8
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i8*, i8** %63, i64 %66
  store i8* %62, i8** %67, align 8
  br label %68

68:                                               ; preds = %61, %58
  br label %69

69:                                               ; preds = %68, %53
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %17

73:                                               ; preds = %17
  %74 = load i8**, i8*** %3, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %74, i64 %76
  store i8* null, i8** %77, align 8
  %78 = load i8**, i8*** %3, align 8
  %79 = call i32 @filter_rev_parse(i8*** @opt_file_args, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %78)
  %80 = load i8**, i8*** %3, align 8
  %81 = call i32 @filter_rev_parse(i8*** %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %80)
  %82 = load i8**, i8*** %5, align 8
  %83 = icmp ne i8** %82, null
  br i1 %83, label %84, label %126

84:                                               ; preds = %73
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %85

85:                                               ; preds = %117, %84
  %86 = load i8**, i8*** %5, align 8
  %87 = icmp ne i8** %86, null
  br i1 %87, label %88, label %95

88:                                               ; preds = %85
  %89 = load i8**, i8*** %5, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8*, i8** %89, i64 %91
  %93 = load i8*, i8** %92, align 8
  %94 = icmp ne i8* %93, null
  br label %95

95:                                               ; preds = %88, %85
  %96 = phi i1 [ false, %85 ], [ %94, %88 ]
  br i1 %96, label %97, label %120

97:                                               ; preds = %95
  %98 = load i8**, i8*** %5, align 8
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8*, i8** %98, i64 %100
  %102 = load i8*, i8** %101, align 8
  store i8* %102, i8** %9, align 8
  %103 = load i8*, i8** %9, align 8
  %104 = call i64 @argv_parse_rev_flag(i8* %103, i32* null)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %97
  %107 = load i8*, i8** %9, align 8
  %108 = call i32 @argv_append(i8*** @opt_rev_args, i8* %107)
  br label %116

109:                                              ; preds = %97
  %110 = load i8*, i8** %9, align 8
  %111 = load i8**, i8*** %5, align 8
  %112 = load i32, i32* %7, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %7, align 4
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds i8*, i8** %111, i64 %114
  store i8* %110, i8** %115, align 8
  br label %116

116:                                              ; preds = %109, %106
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %6, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %6, align 4
  br label %85

120:                                              ; preds = %95
  %121 = load i8**, i8*** %5, align 8
  %122 = load i32, i32* %7, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8*, i8** %121, i64 %123
  store i8* null, i8** %124, align 8
  %125 = load i8**, i8*** %5, align 8
  store i8** %125, i8*** @opt_cmdline_args, align 8
  br label %126

126:                                              ; preds = %120, %73
  %127 = load i8**, i8*** %3, align 8
  %128 = call i32 @filter_rev_parse(i8*** @opt_rev_args, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8** %127)
  br label %129

129:                                              ; preds = %126, %14
  ret void
}

declare dso_local i32 @update_options_from_argv(i8**) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @argv_parse_rev_flag(i8*, i32*) #1

declare dso_local i32 @argv_append(i8***, i8*) #1

declare dso_local i32 @filter_rev_parse(i8***, i8*, i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
