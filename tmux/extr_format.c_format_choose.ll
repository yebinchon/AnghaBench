; ModuleID = '/home/carl/AnghaBench/tmux/extr_format.c_format_choose.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_format.c_format_choose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.format_tree = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.format_tree*, i8*, i8**, i8**, i32)* @format_choose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @format_choose(%struct.format_tree* %0, i8* %1, i8** %2, i8** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.format_tree*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.format_tree* %0, %struct.format_tree** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = call i8* @format_skip(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %16, i8** %12, align 8
  %17 = load i8*, i8** %12, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %53

20:                                               ; preds = %5
  %21 = load i8*, i8** %8, align 8
  %22 = load i8*, i8** %12, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = ptrtoint i8* %22 to i64
  %25 = ptrtoint i8* %23 to i64
  %26 = sub i64 %24, %25
  %27 = trunc i64 %26 to i32
  %28 = call i8* @xstrndup(i8* %21, i32 %27)
  store i8* %28, i8** %13, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = call i8* @xstrdup(i8* %30)
  store i8* %31, i8** %14, align 8
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %20
  %35 = load %struct.format_tree*, %struct.format_tree** %7, align 8
  %36 = load i8*, i8** %13, align 8
  %37 = call i8* @format_expand(%struct.format_tree* %35, i8* %36)
  %38 = load i8**, i8*** %9, align 8
  store i8* %37, i8** %38, align 8
  %39 = load i8*, i8** %13, align 8
  %40 = call i32 @free(i8* %39)
  %41 = load %struct.format_tree*, %struct.format_tree** %7, align 8
  %42 = load i8*, i8** %14, align 8
  %43 = call i8* @format_expand(%struct.format_tree* %41, i8* %42)
  %44 = load i8**, i8*** %10, align 8
  store i8* %43, i8** %44, align 8
  %45 = load i8*, i8** %14, align 8
  %46 = call i32 @free(i8* %45)
  br label %52

47:                                               ; preds = %20
  %48 = load i8*, i8** %13, align 8
  %49 = load i8**, i8*** %9, align 8
  store i8* %48, i8** %49, align 8
  %50 = load i8*, i8** %14, align 8
  %51 = load i8**, i8*** %10, align 8
  store i8* %50, i8** %51, align 8
  br label %52

52:                                               ; preds = %47, %34
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %52, %19
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i8* @format_skip(i8*, i8*) #1

declare dso_local i8* @xstrndup(i8*, i32) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @format_expand(%struct.format_tree*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
