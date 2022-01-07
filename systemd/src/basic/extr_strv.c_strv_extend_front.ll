; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_strv.c_strv_extend_front.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_strv.c_strv_extend_front.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @strv_extend_front(i8*** %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8***, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  store i8*** %0, i8**** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8***, i8**** %4, align 8
  %11 = call i32 @assert(i8*** %10)
  %12 = load i8*, i8** %5, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %63

15:                                               ; preds = %2
  %16 = load i8***, i8**** %4, align 8
  %17 = load i8**, i8*** %16, align 8
  %18 = call i64 @strv_length(i8** %17)
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  %20 = add i64 %19, 2
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %15
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %63

27:                                               ; preds = %15
  %28 = load i8*, i8** %5, align 8
  %29 = call i8* @strdup(i8* %28)
  store i8* %29, i8** %8, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %63

35:                                               ; preds = %27
  %36 = load i8***, i8**** %4, align 8
  %37 = load i8**, i8*** %36, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i8** @reallocarray(i8** %37, i64 %38, i32 8)
  store i8** %39, i8*** %9, align 8
  %40 = load i8**, i8*** %9, align 8
  %41 = icmp ne i8** %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %35
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @free(i8* %43)
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %63

47:                                               ; preds = %35
  %48 = load i8**, i8*** %9, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 1
  %50 = load i8**, i8*** %9, align 8
  %51 = load i64, i64* %6, align 8
  %52 = mul i64 %51, 8
  %53 = call i32 @memmove(i8** %49, i8** %50, i64 %52)
  %54 = load i8*, i8** %8, align 8
  %55 = load i8**, i8*** %9, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 0
  store i8* %54, i8** %56, align 8
  %57 = load i8**, i8*** %9, align 8
  %58 = load i64, i64* %6, align 8
  %59 = add i64 %58, 1
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  store i8* null, i8** %60, align 8
  %61 = load i8**, i8*** %9, align 8
  %62 = load i8***, i8**** %4, align 8
  store i8** %61, i8*** %62, align 8
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %47, %42, %32, %24, %14
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @assert(i8***) #1

declare dso_local i64 @strv_length(i8**) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8** @reallocarray(i8**, i64, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @memmove(i8**, i8**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
