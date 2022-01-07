; ModuleID = '/home/carl/AnghaBench/tig/src/extr_string.c_string_expand.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_string.c_string_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"        \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @string_expand(i8* %0, i64 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8, align 1
  %14 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i64 0, i64* %12, align 8
  store i64 0, i64* %11, align 8
  br label %15

15:                                               ; preds = %97, %5
  %16 = load i64, i64* %11, align 8
  %17 = load i64, i64* %7, align 8
  %18 = sub i64 %17, 1
  %19 = icmp ult i64 %16, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %15
  %21 = load i32, i32* %9, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  %24 = load i64, i64* %12, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp ult i64 %24, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %23, %20
  %29 = load i8*, i8** %8, align 8
  %30 = load i64, i64* %12, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 0
  br label %35

35:                                               ; preds = %28, %23, %15
  %36 = phi i1 [ false, %23 ], [ false, %15 ], [ %34, %28 ]
  br i1 %36, label %37, label %100

37:                                               ; preds = %35
  %38 = load i8*, i8** %8, align 8
  %39 = load i64, i64* %12, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  %41 = load i8, i8* %40, align 1
  store i8 %41, i8* %13, align 1
  %42 = load i8, i8* %13, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 9
  br i1 %44, label %45, label %73

45:                                               ; preds = %37
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* %11, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = urem i64 %48, %50
  %52 = sub i64 %47, %51
  store i64 %52, i64* %14, align 8
  %53 = load i64, i64* %14, align 8
  %54 = load i64, i64* %11, align 8
  %55 = add i64 %53, %54
  %56 = load i64, i64* %7, align 8
  %57 = sub i64 %56, 1
  %58 = icmp uge i64 %55, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %45
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* %11, align 8
  %62 = sub i64 %60, %61
  %63 = sub i64 %62, 1
  store i64 %63, i64* %14, align 8
  br label %64

64:                                               ; preds = %59, %45
  %65 = load i8*, i8** %6, align 8
  %66 = load i64, i64* %11, align 8
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  %68 = load i64, i64* %14, align 8
  %69 = call i32 @memcpy(i8* %67, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %68)
  %70 = load i64, i64* %14, align 8
  %71 = load i64, i64* %11, align 8
  %72 = add i64 %71, %70
  store i64 %72, i64* %11, align 8
  br label %96

73:                                               ; preds = %37
  %74 = load i8, i8* %13, align 1
  %75 = call i64 @isspace(i8 signext %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = load i8, i8* %13, align 1
  %79 = call i64 @iscntrl(i8 signext %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %77, %73
  %82 = load i8*, i8** %6, align 8
  %83 = load i64, i64* %11, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %11, align 8
  %85 = getelementptr inbounds i8, i8* %82, i64 %83
  store i8 32, i8* %85, align 1
  br label %95

86:                                               ; preds = %77
  %87 = load i8*, i8** %8, align 8
  %88 = load i64, i64* %12, align 8
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = load i8*, i8** %6, align 8
  %92 = load i64, i64* %11, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %11, align 8
  %94 = getelementptr inbounds i8, i8* %91, i64 %92
  store i8 %90, i8* %94, align 1
  br label %95

95:                                               ; preds = %86, %81
  br label %96

96:                                               ; preds = %95, %64
  br label %97

97:                                               ; preds = %96
  %98 = load i64, i64* %12, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %12, align 8
  br label %15

100:                                              ; preds = %35
  %101 = load i8*, i8** %6, align 8
  %102 = load i64, i64* %11, align 8
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  store i8 0, i8* %103, align 1
  %104 = load i64, i64* %12, align 8
  ret i64 %104
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i64 @iscntrl(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
