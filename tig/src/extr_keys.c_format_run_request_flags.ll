; ModuleID = '/home/carl/AnghaBench/tig/src/extr_keys.c_format_run_request_flags.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_keys.c_format_run_request_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.run_request = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64 }

@format_run_request_flags.flags = internal global [8 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @format_run_request_flags(%struct.run_request* %0) #0 {
  %2 = alloca %struct.run_request*, align 8
  %3 = alloca i32, align 4
  store %struct.run_request* %0, %struct.run_request** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = call i32 @memset(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @format_run_request_flags.flags, i64 0, i64 0), i32 0, i32 8)
  %5 = load %struct.run_request*, %struct.run_request** %2, align 8
  %6 = getelementptr inbounds %struct.run_request, %struct.run_request* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 5
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %3, align 4
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds [8 x i8], [8 x i8]* @format_run_request_flags.flags, i64 0, i64 %13
  store i8 58, i8* %14, align 1
  br label %19

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [8 x i8], [8 x i8]* @format_run_request_flags.flags, i64 0, i64 %17
  store i8 33, i8* %18, align 1
  br label %19

19:                                               ; preds = %15, %10
  %20 = load %struct.run_request*, %struct.run_request** %2, align 8
  %21 = getelementptr inbounds %struct.run_request, %struct.run_request* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds [8 x i8], [8 x i8]* @format_run_request_flags.flags, i64 0, i64 %28
  store i8 64, i8* %29, align 1
  br label %30

30:                                               ; preds = %25, %19
  %31 = load %struct.run_request*, %struct.run_request** %2, align 8
  %32 = getelementptr inbounds %struct.run_request, %struct.run_request* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds [8 x i8], [8 x i8]* @format_run_request_flags.flags, i64 0, i64 %39
  store i8 63, i8* %40, align 1
  br label %41

41:                                               ; preds = %36, %30
  %42 = load %struct.run_request*, %struct.run_request** %2, align 8
  %43 = getelementptr inbounds %struct.run_request, %struct.run_request* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %3, align 4
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds [8 x i8], [8 x i8]* @format_run_request_flags.flags, i64 0, i64 %50
  store i8 60, i8* %51, align 1
  br label %52

52:                                               ; preds = %47, %41
  %53 = load %struct.run_request*, %struct.run_request** %2, align 8
  %54 = getelementptr inbounds %struct.run_request, %struct.run_request* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %3, align 4
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds [8 x i8], [8 x i8]* @format_run_request_flags.flags, i64 0, i64 %61
  store i8 43, i8* %62, align 1
  br label %63

63:                                               ; preds = %58, %52
  %64 = load %struct.run_request*, %struct.run_request** %2, align 8
  %65 = getelementptr inbounds %struct.run_request, %struct.run_request* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = load i32, i32* %3, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %3, align 4
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds [8 x i8], [8 x i8]* @format_run_request_flags.flags, i64 0, i64 %72
  store i8 62, i8* %73, align 1
  br label %74

74:                                               ; preds = %69, %63
  %75 = load i32, i32* %3, align 4
  %76 = icmp sgt i32 %75, 1
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = load i32, i32* %3, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %3, align 4
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds [8 x i8], [8 x i8]* @format_run_request_flags.flags, i64 0, i64 %80
  store i8 0, i8* %81, align 1
  br label %82

82:                                               ; preds = %77, %74
  ret i8* getelementptr inbounds ([8 x i8], [8 x i8]* @format_run_request_flags.flags, i64 0, i64 0)
}

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
