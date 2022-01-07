; ModuleID = '/home/carl/AnghaBench/tengine/src/core/extr_ngx_string.c_ngx_atofp.c'
source_filename = "/home/carl/AnghaBench/tengine/src/core/extr_ngx_string.c_ngx_atofp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NGX_ERROR = common dso_local global i8 0, align 1
@NGX_MAX_INT_T_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @ngx_atofp(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i8, i8* @NGX_ERROR, align 1
  store i8 %15, i8* %4, align 1
  br label %114

16:                                               ; preds = %3
  %17 = load i32, i32* @NGX_MAX_INT_T_VALUE, align 4
  %18 = sdiv i32 %17, 10
  %19 = trunc i32 %18 to i8
  store i8 %19, i8* %9, align 1
  %20 = load i32, i32* @NGX_MAX_INT_T_VALUE, align 4
  %21 = srem i32 %20, 10
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %10, align 1
  store i32 0, i32* %11, align 4
  store i8 0, i8* %8, align 1
  br label %23

23:                                               ; preds = %91, %16
  %24 = load i64, i64* %6, align 8
  %25 = add i64 %24, -1
  store i64 %25, i64* %6, align 8
  %26 = icmp ne i64 %24, 0
  br i1 %26, label %27, label %94

27:                                               ; preds = %23
  %28 = load i64, i64* %7, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i8, i8* @NGX_ERROR, align 1
  store i8 %31, i8* %4, align 1
  br label %114

32:                                               ; preds = %27
  %33 = load i8*, i8** %5, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 46
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i8, i8* @NGX_ERROR, align 1
  store i8 %41, i8* %4, align 1
  br label %114

42:                                               ; preds = %37
  store i32 1, i32* %11, align 4
  br label %91

43:                                               ; preds = %32
  %44 = load i8*, i8** %5, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp slt i32 %46, 48
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load i8*, i8** %5, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp sgt i32 %51, 57
  br i1 %52, label %53, label %55

53:                                               ; preds = %48, %43
  %54 = load i8, i8* @NGX_ERROR, align 1
  store i8 %54, i8* %4, align 1
  br label %114

55:                                               ; preds = %48
  %56 = load i8, i8* %8, align 1
  %57 = sext i8 %56 to i32
  %58 = load i8, i8* %9, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp sge i32 %57, %59
  br i1 %60, label %61, label %77

61:                                               ; preds = %55
  %62 = load i8, i8* %8, align 1
  %63 = sext i8 %62 to i32
  %64 = load i8, i8* %9, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp sgt i32 %63, %65
  br i1 %66, label %75, label %67

67:                                               ; preds = %61
  %68 = load i8*, i8** %5, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = sub nsw i32 %70, 48
  %72 = load i8, i8* %10, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp sgt i32 %71, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %67, %61
  %76 = load i8, i8* @NGX_ERROR, align 1
  store i8 %76, i8* %4, align 1
  br label %114

77:                                               ; preds = %67, %55
  %78 = load i8, i8* %8, align 1
  %79 = sext i8 %78 to i32
  %80 = mul nsw i32 %79, 10
  %81 = load i8*, i8** %5, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = sub nsw i32 %83, 48
  %85 = add nsw i32 %80, %84
  %86 = trunc i32 %85 to i8
  store i8 %86, i8* %8, align 1
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = load i64, i64* %7, align 8
  %90 = sub i64 %89, %88
  store i64 %90, i64* %7, align 8
  br label %91

91:                                               ; preds = %77, %42
  %92 = load i8*, i8** %5, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %5, align 8
  br label %23

94:                                               ; preds = %23
  br label %95

95:                                               ; preds = %107, %94
  %96 = load i64, i64* %7, align 8
  %97 = add i64 %96, -1
  store i64 %97, i64* %7, align 8
  %98 = icmp ne i64 %96, 0
  br i1 %98, label %99, label %112

99:                                               ; preds = %95
  %100 = load i8, i8* %8, align 1
  %101 = sext i8 %100 to i32
  %102 = load i8, i8* %9, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp sgt i32 %101, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %99
  %106 = load i8, i8* @NGX_ERROR, align 1
  store i8 %106, i8* %4, align 1
  br label %114

107:                                              ; preds = %99
  %108 = load i8, i8* %8, align 1
  %109 = sext i8 %108 to i32
  %110 = mul nsw i32 %109, 10
  %111 = trunc i32 %110 to i8
  store i8 %111, i8* %8, align 1
  br label %95

112:                                              ; preds = %95
  %113 = load i8, i8* %8, align 1
  store i8 %113, i8* %4, align 1
  br label %114

114:                                              ; preds = %112, %105, %75, %53, %40, %30, %14
  %115 = load i8, i8* %4, align 1
  ret i8 %115
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
