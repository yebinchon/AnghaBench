; ModuleID = '/home/carl/AnghaBench/tig/src/extr_options.c_update_options_from_argv.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_options.c_update_options_from_argv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@commit_order_arg_map = common dso_local global i32 0, align 4
@opt_commit_order = common dso_local global i32 0, align 4
@ignore_space_arg_map = common dso_local global i32 0, align 4
@opt_ignore_space = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"--no-notes\00", align 1
@opt_show_notes = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"--show-notes\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"--notes\00", align 1
@opt_notes_arg = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"-U\00", align 1
@SUCCESS = common dso_local global i64 0, align 8
@opt_diff_context = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_options_from_argv(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8** %0, i8*** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %76, %1
  %8 = load i8**, i8*** %2, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8*, i8** %8, i64 %10
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %79

14:                                               ; preds = %7
  %15 = load i8**, i8*** %2, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8*, i8** %15, i64 %17
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %5, align 8
  store i32 -1, i32* %6, align 4
  %20 = load i32, i32* @commit_order_arg_map, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = call i64 @map_enum(i32* %6, i32 %20, i8* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %14
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* @opt_commit_order, align 4
  %26 = call i32 @mark_option_seen(i32* @opt_commit_order)
  br label %76

27:                                               ; preds = %14
  %28 = load i32, i32* @ignore_space_arg_map, align 4
  %29 = load i8*, i8** %5, align 8
  %30 = call i64 @map_enum(i32* %6, i32 %28, i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* @opt_ignore_space, align 4
  %34 = call i32 @mark_option_seen(i32* @opt_ignore_space)
  br label %76

35:                                               ; preds = %27
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  store i32 0, i32* @opt_show_notes, align 4
  %40 = call i32 @mark_option_seen(i32* @opt_show_notes)
  br label %76

41:                                               ; preds = %35
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @prefixcmp(i8* %42, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 @prefixcmp(i8* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %45, %41
  store i32 1, i32* @opt_show_notes, align 4
  %50 = load i32, i32* @opt_notes_arg, align 4
  %51 = load i8*, i8** %5, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = call i32 @strlen(i8* %52)
  %54 = call i32 @string_ncopy(i32 %50, i8* %51, i32 %53)
  %55 = call i32 @mark_option_seen(i32* @opt_show_notes)
  br label %76

56:                                               ; preds = %45
  %57 = load i8*, i8** %5, align 8
  %58 = call i32 @prefixcmp(i8* %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %69, label %60

60:                                               ; preds = %56
  %61 = load i8*, i8** %5, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 2
  %63 = call i64 @parse_int(i32* %6, i8* %62, i32 0, i32 999999)
  %64 = load i64, i64* @SUCCESS, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* @opt_diff_context, align 4
  %68 = call i32 @mark_option_seen(i32* @opt_diff_context)
  br label %76

69:                                               ; preds = %60, %56
  %70 = load i8*, i8** %5, align 8
  %71 = load i8**, i8*** %2, align 8
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %4, align 4
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i8*, i8** %71, i64 %74
  store i8* %70, i8** %75, align 8
  br label %76

76:                                               ; preds = %69, %66, %49, %39, %32, %24
  %77 = load i32, i32* %3, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %3, align 4
  br label %7

79:                                               ; preds = %7
  %80 = load i8**, i8*** %2, align 8
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %80, i64 %82
  store i8* null, i8** %83, align 8
  ret void
}

declare dso_local i64 @map_enum(i32*, i32, i8*) #1

declare dso_local i32 @mark_option_seen(i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @prefixcmp(i8*, i8*) #1

declare dso_local i32 @string_ncopy(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @parse_int(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
