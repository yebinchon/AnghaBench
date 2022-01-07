; ModuleID = '/home/carl/AnghaBench/tmux/extr_status.c_status_prompt_complete_prefix.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_status.c_status_prompt_complete_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8**, i64)* @status_prompt_complete_prefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @status_prompt_complete_prefix(i8** %0, i64 %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8** %0, i8*** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i8**, i8*** %3, align 8
  %9 = getelementptr inbounds i8*, i8** %8, i64 0
  %10 = load i8*, i8** %9, align 8
  %11 = call i8* @xstrdup(i8* %10)
  store i8* %11, i8** %5, align 8
  store i64 1, i64* %6, align 8
  br label %12

12:                                               ; preds = %60, %2
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* %4, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %63

16:                                               ; preds = %12
  %17 = load i8**, i8*** %3, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds i8*, i8** %17, i64 %18
  %20 = load i8*, i8** %19, align 8
  %21 = call i64 @strlen(i8* %20)
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i64 @strlen(i8* %23)
  %25 = icmp ugt i64 %22, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %16
  %27 = load i8*, i8** %5, align 8
  %28 = call i64 @strlen(i8* %27)
  store i64 %28, i64* %7, align 8
  br label %29

29:                                               ; preds = %26, %16
  br label %30

30:                                               ; preds = %56, %29
  %31 = load i64, i64* %7, align 8
  %32 = icmp ugt i64 %31, 0
  br i1 %32, label %33, label %59

33:                                               ; preds = %30
  %34 = load i8*, i8** %5, align 8
  %35 = load i64, i64* %7, align 8
  %36 = sub i64 %35, 1
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = load i8**, i8*** %3, align 8
  %41 = load i64, i64* %6, align 8
  %42 = getelementptr inbounds i8*, i8** %40, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = sub i64 %44, 1
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %39, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %33
  %51 = load i8*, i8** %5, align 8
  %52 = load i64, i64* %7, align 8
  %53 = sub i64 %52, 1
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  store i8 0, i8* %54, align 1
  br label %55

55:                                               ; preds = %50, %33
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %7, align 8
  %58 = add i64 %57, -1
  store i64 %58, i64* %7, align 8
  br label %30

59:                                               ; preds = %30
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %6, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %6, align 8
  br label %12

63:                                               ; preds = %12
  %64 = load i8*, i8** %5, align 8
  ret i8* %64
}

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
