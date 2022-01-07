; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_tfs_common.c_ngx_http_tfs_atoll.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_tfs_common.c_ngx_http_tfs_atoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NGX_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_http_tfs_atoll(i8* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i64, i64* @NGX_ERROR, align 8
  store i64 %10, i64* %3, align 8
  br label %47

11:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  br label %12

12:                                               ; preds = %37, %11
  %13 = load i64, i64* %5, align 8
  %14 = add i64 %13, -1
  store i64 %14, i64* %5, align 8
  %15 = icmp ne i64 %13, 0
  br i1 %15, label %16, label %40

16:                                               ; preds = %12
  %17 = load i8*, i8** %4, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp slt i32 %19, 48
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load i8*, i8** %4, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp sgt i32 %24, 57
  br i1 %25, label %26, label %28

26:                                               ; preds = %21, %16
  %27 = load i64, i64* @NGX_ERROR, align 8
  store i64 %27, i64* %3, align 8
  br label %47

28:                                               ; preds = %21
  %29 = load i64, i64* %6, align 8
  %30 = mul nsw i64 %29, 10
  %31 = load i8*, i8** %4, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = sub nsw i32 %33, 48
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %30, %35
  store i64 %36, i64* %6, align 8
  br label %37

37:                                               ; preds = %28
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %4, align 8
  br label %12

40:                                               ; preds = %12
  %41 = load i64, i64* %6, align 8
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i64, i64* @NGX_ERROR, align 8
  store i64 %44, i64* %3, align 8
  br label %47

45:                                               ; preds = %40
  %46 = load i64, i64* %6, align 8
  store i64 %46, i64* %3, align 8
  br label %47

47:                                               ; preds = %45, %43, %26, %9
  %48 = load i64, i64* %3, align 8
  ret i64 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
