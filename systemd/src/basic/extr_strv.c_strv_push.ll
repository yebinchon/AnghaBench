; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_strv.c_strv_push.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_strv.c_strv_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @strv_push(i8*** %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8***, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8*** %0, i8**** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %45

12:                                               ; preds = %2
  %13 = load i8***, i8**** %4, align 8
  %14 = load i8**, i8*** %13, align 8
  %15 = call i64 @strv_length(i8** %14)
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = add i64 %16, 2
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* %7, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %12
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %45

24:                                               ; preds = %12
  %25 = load i8***, i8**** %4, align 8
  %26 = load i8**, i8*** %25, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i8** @reallocarray(i8** %26, i64 %27, i32 8)
  store i8** %28, i8*** %6, align 8
  %29 = load i8**, i8*** %6, align 8
  %30 = icmp ne i8** %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %45

34:                                               ; preds = %24
  %35 = load i8*, i8** %5, align 8
  %36 = load i8**, i8*** %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds i8*, i8** %36, i64 %37
  store i8* %35, i8** %38, align 8
  %39 = load i8**, i8*** %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = add i64 %40, 1
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  store i8* null, i8** %42, align 8
  %43 = load i8**, i8*** %6, align 8
  %44 = load i8***, i8**** %4, align 8
  store i8** %43, i8*** %44, align 8
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %34, %31, %21, %11
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i64 @strv_length(i8**) #1

declare dso_local i8** @reallocarray(i8**, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
