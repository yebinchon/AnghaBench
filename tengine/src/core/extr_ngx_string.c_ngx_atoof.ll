; ModuleID = '/home/carl/AnghaBench/tengine/src/core/extr_ngx_string.c_ngx_atoof.c'
source_filename = "/home/carl/AnghaBench/tengine/src/core/extr_ngx_string.c_ngx_atoof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NGX_ERROR = common dso_local global i8 0, align 1
@NGX_MAX_OFF_T_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @ngx_atoof(i8* %0, i64 %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i8, i8* @NGX_ERROR, align 1
  store i8 %12, i8* %3, align 1
  br label %73

13:                                               ; preds = %2
  %14 = load i32, i32* @NGX_MAX_OFF_T_VALUE, align 4
  %15 = sdiv i32 %14, 10
  %16 = trunc i32 %15 to i8
  store i8 %16, i8* %7, align 1
  %17 = load i32, i32* @NGX_MAX_OFF_T_VALUE, align 4
  %18 = srem i32 %17, 10
  %19 = trunc i32 %18 to i8
  store i8 %19, i8* %8, align 1
  store i8 0, i8* %6, align 1
  br label %20

20:                                               ; preds = %68, %13
  %21 = load i64, i64* %5, align 8
  %22 = add i64 %21, -1
  store i64 %22, i64* %5, align 8
  %23 = icmp ne i64 %21, 0
  br i1 %23, label %24, label %71

24:                                               ; preds = %20
  %25 = load i8*, i8** %4, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp slt i32 %27, 48
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load i8*, i8** %4, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp sgt i32 %32, 57
  br i1 %33, label %34, label %36

34:                                               ; preds = %29, %24
  %35 = load i8, i8* @NGX_ERROR, align 1
  store i8 %35, i8* %3, align 1
  br label %73

36:                                               ; preds = %29
  %37 = load i8, i8* %6, align 1
  %38 = sext i8 %37 to i32
  %39 = load i8, i8* %7, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp sge i32 %38, %40
  br i1 %41, label %42, label %58

42:                                               ; preds = %36
  %43 = load i8, i8* %6, align 1
  %44 = sext i8 %43 to i32
  %45 = load i8, i8* %7, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp sgt i32 %44, %46
  br i1 %47, label %56, label %48

48:                                               ; preds = %42
  %49 = load i8*, i8** %4, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = sub nsw i32 %51, 48
  %53 = load i8, i8* %8, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp sgt i32 %52, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %48, %42
  %57 = load i8, i8* @NGX_ERROR, align 1
  store i8 %57, i8* %3, align 1
  br label %73

58:                                               ; preds = %48, %36
  %59 = load i8, i8* %6, align 1
  %60 = sext i8 %59 to i32
  %61 = mul nsw i32 %60, 10
  %62 = load i8*, i8** %4, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = sub nsw i32 %64, 48
  %66 = add nsw i32 %61, %65
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %6, align 1
  br label %68

68:                                               ; preds = %58
  %69 = load i8*, i8** %4, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %4, align 8
  br label %20

71:                                               ; preds = %20
  %72 = load i8, i8* %6, align 1
  store i8 %72, i8* %3, align 1
  br label %73

73:                                               ; preds = %71, %56, %34, %11
  %74 = load i8, i8* %3, align 1
  ret i8 %74
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
