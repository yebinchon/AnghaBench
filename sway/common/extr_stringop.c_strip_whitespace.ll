; ModuleID = '/home/carl/AnghaBench/sway/common/extr_stringop.c_strip_whitespace.c'
source_filename = "/home/carl/AnghaBench/sway/common/extr_stringop.c_strip_whitespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@whitespace = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @strip_whitespace(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i64 @strlen(i8* %5)
  store i64 %6, i64* %3, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = load i32, i32* @whitespace, align 4
  %9 = call i64 @strspn(i8* %7, i32 %8)
  store i64 %9, i64* %4, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = load i64, i64* %4, align 8
  %13 = getelementptr inbounds i8, i8* %11, i64 %12
  %14 = load i64, i64* %3, align 8
  %15 = add i64 %14, 1
  %16 = load i64, i64* %4, align 8
  %17 = sub i64 %15, %16
  %18 = call i32 @memmove(i8* %10, i8* %13, i64 %17)
  %19 = load i8*, i8** %2, align 8
  %20 = load i8, i8* %19, align 1
  %21 = icmp ne i8 %20, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %1
  %23 = load i64, i64* %4, align 8
  %24 = add i64 %23, 1
  %25 = load i64, i64* %3, align 8
  %26 = sub i64 %25, %24
  store i64 %26, i64* %3, align 8
  br label %27

27:                                               ; preds = %35, %22
  %28 = load i8*, i8** %2, align 8
  %29 = load i64, i64* %3, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = call i64 @isspace(i8 signext %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %3, align 8
  %37 = add i64 %36, -1
  store i64 %37, i64* %3, align 8
  br label %27

38:                                               ; preds = %27
  %39 = load i8*, i8** %2, align 8
  %40 = load i64, i64* %3, align 8
  %41 = add i64 %40, 1
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  store i8 0, i8* %42, align 1
  br label %43

43:                                               ; preds = %38, %1
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strspn(i8*, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i64 @isspace(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
