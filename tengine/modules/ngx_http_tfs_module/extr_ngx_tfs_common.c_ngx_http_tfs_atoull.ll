; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_tfs_common.c_ngx_http_tfs_atoull.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_tfs_common.c_ngx_http_tfs_atoull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NGX_ERROR = common dso_local global i32 0, align 4
@ULLONG_MAX = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_http_tfs_atoull(i8* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 0, i64* %8, align 8
  br label %10

10:                                               ; preds = %51, %3
  %11 = load i64, i64* %6, align 8
  %12 = add i64 %11, -1
  store i64 %12, i64* %6, align 8
  %13 = icmp ne i64 %11, 0
  br i1 %13, label %14, label %54

14:                                               ; preds = %10
  %15 = load i8*, i8** %5, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp slt i32 %17, 48
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load i8*, i8** %5, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp sgt i32 %22, 57
  br i1 %23, label %24, label %26

24:                                               ; preds = %19, %14
  %25 = load i32, i32* @NGX_ERROR, align 4
  store i32 %25, i32* %4, align 4
  br label %58

26:                                               ; preds = %19
  %27 = load i8*, i8** %5, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = sub nsw i32 %29, 48
  store i32 %30, i32* %9, align 4
  %31 = load i64, i64* %8, align 8
  %32 = and i64 %31, -1152921504606846976
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %26
  %35 = load i64, i64* %8, align 8
  %36 = load i32, i32* @ULLONG_MAX, align 4
  %37 = load i32, i32* %9, align 4
  %38 = sub i32 %36, %37
  %39 = udiv i32 %38, 10
  %40 = zext i32 %39 to i64
  %41 = icmp ugt i64 %35, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* @NGX_ERROR, align 4
  store i32 %43, i32* %4, align 4
  br label %58

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44, %26
  %46 = load i64, i64* %8, align 8
  %47 = mul i64 %46, 10
  %48 = load i32, i32* %9, align 4
  %49 = zext i32 %48 to i64
  %50 = add i64 %47, %49
  store i64 %50, i64* %8, align 8
  br label %51

51:                                               ; preds = %45
  %52 = load i8*, i8** %5, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %5, align 8
  br label %10

54:                                               ; preds = %10
  %55 = load i64, i64* %8, align 8
  %56 = load i64*, i64** %7, align 8
  store i64 %55, i64* %56, align 8
  %57 = load i32, i32* @NGX_OK, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %54, %42, %24
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
