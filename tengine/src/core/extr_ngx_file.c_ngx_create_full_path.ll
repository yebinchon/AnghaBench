; ModuleID = '/home/carl/AnghaBench/tengine/src/core/extr_ngx_file.c_ngx_create_full_path.c'
source_filename = "/home/carl/AnghaBench/tengine/src/core/extr_ngx_file.c_ngx_create_full_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NGX_FILE_ERROR = common dso_local global i64 0, align 8
@ngx_errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_create_full_path(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 1
  store i8* %10, i8** %6, align 8
  br label %11

11:                                               ; preds = %39, %2
  %12 = load i8*, i8** %6, align 8
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %15, label %42

15:                                               ; preds = %11
  %16 = load i8*, i8** %6, align 8
  %17 = load i8, i8* %16, align 1
  store i8 %17, i8* %7, align 1
  %18 = load i8, i8* %7, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 47
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %39

22:                                               ; preds = %15
  %23 = load i8*, i8** %6, align 8
  store i8 0, i8* %23, align 1
  %24 = load i8*, i8** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @ngx_create_dir(i8* %24, i32 %25)
  %27 = load i64, i64* @NGX_FILE_ERROR, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %22
  %30 = load i32, i32* @ngx_errno, align 4
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  switch i32 %31, label %34 [
    i32 128, label %32
    i32 129, label %33
  ]

32:                                               ; preds = %29
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %29, %32
  br label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %3, align 4
  br label %44

36:                                               ; preds = %33
  br label %37

37:                                               ; preds = %36, %22
  %38 = load i8*, i8** %6, align 8
  store i8 47, i8* %38, align 1
  br label %39

39:                                               ; preds = %37, %21
  %40 = load i8*, i8** %6, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %6, align 8
  br label %11

42:                                               ; preds = %11
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %42, %34
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i64 @ngx_create_dir(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
