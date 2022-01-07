; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_json.c_inc_lines_columns.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_json.c_inc_lines_columns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i8*, i64)* @inc_lines_columns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inc_lines_columns(i32* %0, i32* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @assert(i32* %10)
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @assert(i32* %12)
  %14 = load i8*, i8** %7, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i64, i64* %8, align 8
  %18 = icmp eq i64 %17, 0
  br label %19

19:                                               ; preds = %16, %4
  %20 = phi i1 [ true, %4 ], [ %18, %16 ]
  %21 = zext i1 %20 to i32
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i32*
  %24 = call i32 @assert(i32* %23)
  br label %25

25:                                               ; preds = %81, %68, %19
  %26 = load i64, i64* %8, align 8
  %27 = icmp ugt i64 %26, 0
  br i1 %27, label %28, label %86

28:                                               ; preds = %25
  %29 = load i8*, i8** %7, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 10
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %34, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %34, align 4
  %37 = load i32*, i32** %6, align 8
  store i32 1, i32* %37, align 4
  br label %81

38:                                               ; preds = %28
  %39 = load i8*, i8** %7, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = load i8*, i8** %7, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp slt i32 %46, 127
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %49, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %49, align 4
  br label %80

52:                                               ; preds = %43, %38
  %53 = load i8*, i8** %7, align 8
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @utf8_encoded_valid_unichar(i8* %53, i64 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i32 1, i32* %9, align 4
  br label %68

59:                                               ; preds = %52
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* %8, align 8
  %63 = icmp ugt i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i64, i64* %8, align 8
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %64, %59
  br label %68

68:                                               ; preds = %67, %58
  %69 = load i32*, i32** %6, align 8
  %70 = load i32, i32* %69, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %69, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i8*, i8** %7, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  store i8* %75, i8** %7, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = load i64, i64* %8, align 8
  %79 = sub i64 %78, %77
  store i64 %79, i64* %8, align 8
  br label %25

80:                                               ; preds = %48
  br label %81

81:                                               ; preds = %80, %33
  %82 = load i8*, i8** %7, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %7, align 8
  %84 = load i64, i64* %8, align 8
  %85 = add i64 %84, -1
  store i64 %85, i64* %8, align 8
  br label %25

86:                                               ; preds = %25
  ret void
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @utf8_encoded_valid_unichar(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
