; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_mp4_module.c_ngx_http_mp4_atofp.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_mp4_module.c_ngx_http_mp4_atofp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NGX_ERROR = common dso_local global i8 0, align 1
@NGX_MAX_INT_T_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i8*, i64, i64)* @ngx_http_mp4_atofp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @ngx_http_mp4_atofp(i8* %0, i64 %1, i64 %2) #0 {
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
  br label %113

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

23:                                               ; preds = %90, %16
  %24 = load i64, i64* %6, align 8
  %25 = add i64 %24, -1
  store i64 %25, i64* %6, align 8
  %26 = icmp ne i64 %24, 0
  br i1 %26, label %27, label %93

27:                                               ; preds = %23
  %28 = load i8*, i8** %5, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 46
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i8, i8* @NGX_ERROR, align 1
  store i8 %36, i8* %4, align 1
  br label %113

37:                                               ; preds = %32
  store i32 1, i32* %11, align 4
  br label %90

38:                                               ; preds = %27
  %39 = load i8*, i8** %5, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp slt i32 %41, 48
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = load i8*, i8** %5, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp sgt i32 %46, 57
  br i1 %47, label %48, label %50

48:                                               ; preds = %43, %38
  %49 = load i8, i8* @NGX_ERROR, align 1
  store i8 %49, i8* %4, align 1
  br label %113

50:                                               ; preds = %43
  %51 = load i64, i64* %7, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %90

54:                                               ; preds = %50
  %55 = load i8, i8* %8, align 1
  %56 = sext i8 %55 to i32
  %57 = load i8, i8* %9, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp sge i32 %56, %58
  br i1 %59, label %60, label %76

60:                                               ; preds = %54
  %61 = load i8, i8* %8, align 1
  %62 = sext i8 %61 to i32
  %63 = load i8, i8* %9, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp sgt i32 %62, %64
  br i1 %65, label %74, label %66

66:                                               ; preds = %60
  %67 = load i8*, i8** %5, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = sub nsw i32 %69, 48
  %71 = load i8, i8* %10, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp sgt i32 %70, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %66, %60
  %75 = load i8, i8* @NGX_ERROR, align 1
  store i8 %75, i8* %4, align 1
  br label %113

76:                                               ; preds = %66, %54
  %77 = load i8, i8* %8, align 1
  %78 = sext i8 %77 to i32
  %79 = mul nsw i32 %78, 10
  %80 = load i8*, i8** %5, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = sub nsw i32 %82, 48
  %84 = add nsw i32 %79, %83
  %85 = trunc i32 %84 to i8
  store i8 %85, i8* %8, align 1
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = load i64, i64* %7, align 8
  %89 = sub i64 %88, %87
  store i64 %89, i64* %7, align 8
  br label %90

90:                                               ; preds = %76, %53, %37
  %91 = load i8*, i8** %5, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %5, align 8
  br label %23

93:                                               ; preds = %23
  br label %94

94:                                               ; preds = %106, %93
  %95 = load i64, i64* %7, align 8
  %96 = add i64 %95, -1
  store i64 %96, i64* %7, align 8
  %97 = icmp ne i64 %95, 0
  br i1 %97, label %98, label %111

98:                                               ; preds = %94
  %99 = load i8, i8* %8, align 1
  %100 = sext i8 %99 to i32
  %101 = load i8, i8* %9, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp sgt i32 %100, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = load i8, i8* @NGX_ERROR, align 1
  store i8 %105, i8* %4, align 1
  br label %113

106:                                              ; preds = %98
  %107 = load i8, i8* %8, align 1
  %108 = sext i8 %107 to i32
  %109 = mul nsw i32 %108, 10
  %110 = trunc i32 %109 to i8
  store i8 %110, i8* %8, align 1
  br label %94

111:                                              ; preds = %94
  %112 = load i8, i8* %8, align 1
  store i8 %112, i8* %4, align 1
  br label %113

113:                                              ; preds = %111, %104, %74, %48, %35, %14
  %114 = load i8, i8* %4, align 1
  ret i8 %114
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
