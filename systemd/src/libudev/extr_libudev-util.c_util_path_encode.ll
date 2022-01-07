; ModuleID = '/home/carl/AnghaBench/systemd/src/libudev/extr_libudev-util.c_util_path_encode.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libudev/extr_libudev-util.c_util_path_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"\\x2f\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"\\x5c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @util_path_encode(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @assert(i8* %9)
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @assert(i8* %11)
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %13

13:                                               ; preds = %78, %3
  %14 = load i8*, i8** %4, align 8
  %15 = load i64, i64* %7, align 8
  %16 = getelementptr inbounds i8, i8* %14, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %81

20:                                               ; preds = %13
  %21 = load i8*, i8** %4, align 8
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 47
  br i1 %26, label %27, label %40

27:                                               ; preds = %20
  %28 = load i64, i64* %8, align 8
  %29 = add i64 %28, 4
  %30 = load i64, i64* %6, align 8
  %31 = icmp uge i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i64 0, i64* %8, align 8
  br label %81

33:                                               ; preds = %27
  %34 = load i8*, i8** %5, align 8
  %35 = load i64, i64* %8, align 8
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  %37 = call i32 @memcpy(i8* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %38 = load i64, i64* %8, align 8
  %39 = add i64 %38, 4
  store i64 %39, i64* %8, align 8
  br label %77

40:                                               ; preds = %20
  %41 = load i8*, i8** %4, align 8
  %42 = load i64, i64* %7, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 92
  br i1 %46, label %47, label %60

47:                                               ; preds = %40
  %48 = load i64, i64* %8, align 8
  %49 = add i64 %48, 4
  %50 = load i64, i64* %6, align 8
  %51 = icmp uge i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i64 0, i64* %8, align 8
  br label %81

53:                                               ; preds = %47
  %54 = load i8*, i8** %5, align 8
  %55 = load i64, i64* %8, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  %57 = call i32 @memcpy(i8* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %58 = load i64, i64* %8, align 8
  %59 = add i64 %58, 4
  store i64 %59, i64* %8, align 8
  br label %76

60:                                               ; preds = %40
  %61 = load i64, i64* %8, align 8
  %62 = add i64 %61, 1
  %63 = load i64, i64* %6, align 8
  %64 = icmp uge i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store i64 0, i64* %8, align 8
  br label %81

66:                                               ; preds = %60
  %67 = load i8*, i8** %4, align 8
  %68 = load i64, i64* %7, align 8
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = load i8*, i8** %5, align 8
  %72 = load i64, i64* %8, align 8
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  store i8 %70, i8* %73, align 1
  %74 = load i64, i64* %8, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %8, align 8
  br label %76

76:                                               ; preds = %66, %53
  br label %77

77:                                               ; preds = %76, %33
  br label %78

78:                                               ; preds = %77
  %79 = load i64, i64* %7, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %7, align 8
  br label %13

81:                                               ; preds = %65, %52, %32, %13
  %82 = load i8*, i8** %5, align 8
  %83 = load i64, i64* %8, align 8
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  store i8 0, i8* %84, align 1
  %85 = load i64, i64* %8, align 8
  ret i64 %85
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
