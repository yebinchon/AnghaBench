; ModuleID = '/home/carl/AnghaBench/systemd/src/libudev/extr_libudev-util.c_util_replace_whitespace.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libudev/extr_libudev-util.c_util_replace_whitespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WHITESPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @util_replace_whitespace(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @assert(i8* %10)
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @assert(i8* %12)
  %14 = load i8*, i8** %4, align 8
  %15 = load i32, i32* @WHITESPACE, align 4
  %16 = call i64 @strspn(i8* %14, i32 %15)
  store i64 %16, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %17

17:                                               ; preds = %65, %3
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* %6, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %17
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load i8*, i8** %4, align 8
  %27 = load i64, i64* %8, align 8
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 0
  br label %32

32:                                               ; preds = %25, %21, %17
  %33 = phi i1 [ false, %21 ], [ false, %17 ], [ %31, %25 ]
  br i1 %33, label %34, label %68

34:                                               ; preds = %32
  %35 = load i8*, i8** %4, align 8
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = call i64 @isspace(i8 signext %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store i32 1, i32* %7, align 4
  br label %65

42:                                               ; preds = %34
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %42
  %46 = load i64, i64* %9, align 8
  %47 = add i64 %46, 1
  %48 = load i64, i64* %6, align 8
  %49 = icmp uge i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %68

51:                                               ; preds = %45
  %52 = load i8*, i8** %5, align 8
  %53 = load i64, i64* %9, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %9, align 8
  %55 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8 95, i8* %55, align 1
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %51, %42
  %57 = load i8*, i8** %4, align 8
  %58 = load i64, i64* %8, align 8
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = load i8*, i8** %5, align 8
  %62 = load i64, i64* %9, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %9, align 8
  %64 = getelementptr inbounds i8, i8* %61, i64 %62
  store i8 %60, i8* %64, align 1
  br label %65

65:                                               ; preds = %56, %41
  %66 = load i64, i64* %8, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %8, align 8
  br label %17

68:                                               ; preds = %50, %32
  %69 = load i8*, i8** %5, align 8
  %70 = load i64, i64* %9, align 8
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  store i8 0, i8* %71, align 1
  %72 = load i64, i64* %9, align 8
  ret i64 %72
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @strspn(i8*, i32) #1

declare dso_local i64 @isspace(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
