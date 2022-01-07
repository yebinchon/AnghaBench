; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd.c_cmd_stringify_argv.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd.c_cmd_stringify_argv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @cmd_stringify_argv(i32 %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i8* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %12, i8** %3, align 8
  br label %53

13:                                               ; preds = %2
  store i64 0, i64* %8, align 8
  store i8* null, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %48, %13
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %51

18:                                               ; preds = %14
  %19 = load i8**, i8*** %5, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8*, i8** %19, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @strlen(i8* %23)
  %25 = add nsw i64 %24, 1
  %26 = load i64, i64* %8, align 8
  %27 = add i64 %26, %25
  store i64 %27, i64* %8, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i8* @xrealloc(i8* %28, i64 %29)
  store i8* %30, i8** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %18
  %34 = load i8*, i8** %6, align 8
  store i8 0, i8* %34, align 1
  br label %39

35:                                               ; preds = %18
  %36 = load i8*, i8** %6, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @strlcat(i8* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 %37)
  br label %39

39:                                               ; preds = %35, %33
  %40 = load i8*, i8** %6, align 8
  %41 = load i8**, i8*** %5, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %41, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @strlcat(i8* %40, i8* %45, i64 %46)
  br label %48

48:                                               ; preds = %39
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %14

51:                                               ; preds = %14
  %52 = load i8*, i8** %6, align 8
  store i8* %52, i8** %3, align 8
  br label %53

53:                                               ; preds = %51, %11
  %54 = load i8*, i8** %3, align 8
  ret i8* %54
}

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @xrealloc(i8*, i64) #1

declare dso_local i32 @strlcat(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
