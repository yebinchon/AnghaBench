; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_strv.c_strv_push_pair.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_strv.c_strv_push_pair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @strv_push_pair(i8*** %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8***, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8*** %0, i8**** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i8*, i8** %7, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %77

17:                                               ; preds = %13, %3
  %18 = load i8***, i8**** %5, align 8
  %19 = load i8**, i8*** %18, align 8
  %20 = call i64 @strv_length(i8** %19)
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = icmp ne i8* %22, null
  %24 = xor i1 %23, true
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = sext i32 %26 to i64
  %28 = add i64 %21, %27
  %29 = load i8*, i8** %7, align 8
  %30 = icmp ne i8* %29, null
  %31 = xor i1 %30, true
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = sext i32 %33 to i64
  %35 = add i64 %28, %34
  %36 = add i64 %35, 1
  store i64 %36, i64* %10, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %17
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %77

43:                                               ; preds = %17
  %44 = load i8***, i8**** %5, align 8
  %45 = load i8**, i8*** %44, align 8
  %46 = load i64, i64* %10, align 8
  %47 = call i8** @reallocarray(i8** %45, i64 %46, i32 8)
  store i8** %47, i8*** %8, align 8
  %48 = load i8**, i8*** %8, align 8
  %49 = icmp ne i8** %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %43
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %77

53:                                               ; preds = %43
  %54 = load i8*, i8** %6, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load i8*, i8** %6, align 8
  %58 = load i8**, i8*** %8, align 8
  %59 = load i64, i64* %9, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %9, align 8
  %61 = getelementptr inbounds i8*, i8** %58, i64 %59
  store i8* %57, i8** %61, align 8
  br label %62

62:                                               ; preds = %56, %53
  %63 = load i8*, i8** %7, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load i8*, i8** %7, align 8
  %67 = load i8**, i8*** %8, align 8
  %68 = load i64, i64* %9, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %9, align 8
  %70 = getelementptr inbounds i8*, i8** %67, i64 %68
  store i8* %66, i8** %70, align 8
  br label %71

71:                                               ; preds = %65, %62
  %72 = load i8**, i8*** %8, align 8
  %73 = load i64, i64* %9, align 8
  %74 = getelementptr inbounds i8*, i8** %72, i64 %73
  store i8* null, i8** %74, align 8
  %75 = load i8**, i8*** %8, align 8
  %76 = load i8***, i8**** %5, align 8
  store i8** %75, i8*** %76, align 8
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %71, %50, %40, %16
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i64 @strv_length(i8**) #1

declare dso_local i8** @reallocarray(i8**, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
