; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_path-util.c_parse_path_argument_and_warn.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_path-util.c_parse_path_argument_and_warn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [51 x i8] c"Failed to parse path \22%s\22 and make it absolute: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_path_argument_and_warn(i8* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i64 @isempty(i8* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load i8**, i8*** %7, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = call i8* @mfree(i8* %15)
  %17 = load i8**, i8*** %7, align 8
  store i8* %16, i8** %17, align 8
  store i32 0, i32* %4, align 4
  br label %44

18:                                               ; preds = %3
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @path_make_absolute_cwd(i8* %19, i8** %8)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i32, i32* %9, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @log_error_errno(i32 %24, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %25)
  store i32 %26, i32* %4, align 4
  br label %44

27:                                               ; preds = %18
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @path_simplify(i8* %28, i32 0)
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load i8*, i8** %8, align 8
  %34 = call i64 @empty_or_root(i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i8*, i8** %8, align 8
  %38 = call i8* @mfree(i8* %37)
  store i8* %38, i8** %8, align 8
  br label %39

39:                                               ; preds = %36, %32, %27
  %40 = load i8**, i8*** %7, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @free_and_replace(i8* %41, i8* %42)
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %39, %23, %13
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i64 @isempty(i8*) #1

declare dso_local i8* @mfree(i8*) #1

declare dso_local i32 @path_make_absolute_cwd(i8*, i8**) #1

declare dso_local i32 @log_error_errno(i32, i8*, i8*) #1

declare dso_local i32 @path_simplify(i8*, i32) #1

declare dso_local i64 @empty_or_root(i8*) #1

declare dso_local i32 @free_and_replace(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
