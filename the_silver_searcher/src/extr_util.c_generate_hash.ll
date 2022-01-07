; ModuleID = '/home/carl/AnghaBench/the_silver_searcher/src/extr_util.c_generate_hash.c'
source_filename = "/home/carl/AnghaBench/the_silver_searcher/src/extr_util.c_generate_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i64 }

@H_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @generate_hash(i8* %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_2__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load i64, i64* %6, align 8
  %15 = sub i64 %14, 4
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %9, align 4
  br label %17

17:                                               ; preds = %87, %4
  %18 = load i32, i32* %9, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %90

20:                                               ; preds = %17
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %83, %20
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %22, 16
  br i1 %23, label %24, label %86

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %26 = load i8*, i8** %5, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = call i32 @memcpy(i8** %25, i8* %29, i32 4)
  store i32 0, i32* %12, align 4
  br label %31

31:                                               ; preds = %53, %24
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %12, align 4
  %34 = ashr i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %31
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %12, align 4
  %39 = ashr i32 %37, %38
  %40 = and i32 %39, 1
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = sub nsw i32 %49, 32
  %51 = trunc i32 %50 to i8
  store i8 %51, i8* %47, align 1
  br label %52

52:                                               ; preds = %42, %36
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %12, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %12, align 4
  br label %31

56:                                               ; preds = %31
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @H_SIZE, align 8
  %60 = urem i64 %58, %59
  store i64 %60, i64* %13, align 8
  br label %61

61:                                               ; preds = %68, %56
  %62 = load i32*, i32** %7, align 8
  %63 = load i64, i64* %13, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %61
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %13, align 8
  %70 = add i64 %69, 1
  %71 = load i64, i64* @H_SIZE, align 8
  %72 = urem i64 %70, %71
  store i64 %72, i64* %13, align 8
  br label %61

73:                                               ; preds = %61
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  %76 = load i32*, i32** %7, align 8
  %77 = load i64, i64* %13, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  store i32 %75, i32* %78, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  br label %86

82:                                               ; preds = %73
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %10, align 4
  br label %21

86:                                               ; preds = %81, %21
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %9, align 4
  br label %17

90:                                               ; preds = %17
  ret void
}

declare dso_local i32 @memcpy(i8**, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
