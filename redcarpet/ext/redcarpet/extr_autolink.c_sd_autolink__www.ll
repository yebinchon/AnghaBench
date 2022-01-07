; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_autolink.c_sd_autolink__www.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_autolink.c_sd_autolink__www.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"www.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sd_autolink__www(i64* %0, %struct.buf* %1, i32* %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.buf*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i64* %0, i64** %8, align 8
  store %struct.buf* %1, %struct.buf** %9, align 8
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load i64, i64* %11, align 8
  %16 = icmp ugt i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %6
  %18 = load i32*, i32** %10, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 -1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ispunct(i32 %20) #3
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %17
  %24 = load i32*, i32** %10, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 -1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @isspace(i32 %26) #3
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  store i64 0, i64* %7, align 8
  br label %82

30:                                               ; preds = %23, %17, %6
  %31 = load i64, i64* %12, align 8
  %32 = icmp ult i64 %31, 4
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = load i32*, i32** %10, align 8
  %35 = call i32 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %36 = call i64 @memcmp(i32* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33, %30
  store i64 0, i64* %7, align 8
  br label %82

39:                                               ; preds = %33
  %40 = load i32*, i32** %10, align 8
  %41 = load i64, i64* %12, align 8
  %42 = call i64 @check_domain(i32* %40, i64 %41, i32 0)
  store i64 %42, i64* %14, align 8
  %43 = load i64, i64* %14, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i64 0, i64* %7, align 8
  br label %82

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %61, %46
  %48 = load i64, i64* %14, align 8
  %49 = load i64, i64* %12, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %47
  %52 = load i32*, i32** %10, align 8
  %53 = load i64, i64* %14, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @isspace(i32 %55) #3
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  br label %59

59:                                               ; preds = %51, %47
  %60 = phi i1 [ false, %47 ], [ %58, %51 ]
  br i1 %60, label %61, label %64

61:                                               ; preds = %59
  %62 = load i64, i64* %14, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %14, align 8
  br label %47

64:                                               ; preds = %59
  %65 = load i32*, i32** %10, align 8
  %66 = load i64, i64* %14, align 8
  %67 = load i64, i64* %11, align 8
  %68 = load i64, i64* %12, align 8
  %69 = call i64 @autolink_delim(i32* %65, i64 %66, i64 %67, i64 %68)
  store i64 %69, i64* %14, align 8
  %70 = load i64, i64* %14, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  store i64 0, i64* %7, align 8
  br label %82

73:                                               ; preds = %64
  %74 = load %struct.buf*, %struct.buf** %9, align 8
  %75 = load i32*, i32** %10, align 8
  %76 = load i64, i64* %14, align 8
  %77 = call i32 @bufput(%struct.buf* %74, i32* %75, i64 %76)
  %78 = load i64*, i64** %8, align 8
  store i64 0, i64* %78, align 8
  %79 = load i64, i64* %14, align 8
  %80 = trunc i64 %79 to i32
  %81 = sext i32 %80 to i64
  store i64 %81, i64* %7, align 8
  br label %82

82:                                               ; preds = %73, %72, %45, %38, %29
  %83 = load i64, i64* %7, align 8
  ret i64 %83
}

; Function Attrs: nounwind readonly
declare dso_local i32 @ispunct(i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isspace(i32) #1

declare dso_local i64 @memcmp(i32*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @check_domain(i32*, i64, i32) #2

declare dso_local i64 @autolink_delim(i32*, i64, i64, i64) #2

declare dso_local i32 @bufput(%struct.buf*, i32*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
