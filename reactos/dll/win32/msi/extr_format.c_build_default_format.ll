; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_format.c_build_default_format.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_format.c_build_default_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@build_default_format.fmt = internal constant [10 x i8] c"%i: [%i] \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*)* @build_default_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @build_default_format(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [26 x i8], align 16
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @MSI_RecordGetFieldCount(i32* %10)
  store i32 %11, i32* %5, align 4
  store i32 1, i32* %9, align 4
  %12 = call i8* @msi_alloc(i32 1)
  store i8* %12, i8** %6, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %51

15:                                               ; preds = %1
  %16 = load i8*, i8** %6, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  store i8 0, i8* %17, align 1
  store i32 1, i32* %4, align 4
  br label %18

18:                                               ; preds = %46, %15
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %49

22:                                               ; preds = %18
  %23 = getelementptr inbounds [26 x i8], [26 x i8]* %8, i64 0, i64 0
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i64 @sprintfW(i8* %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @build_default_format.fmt, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %28, %26
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %9, align 4
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 1
  %35 = trunc i64 %34 to i32
  %36 = call i8* @msi_realloc(i8* %31, i32 %35)
  store i8* %36, i8** %7, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %22
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @msi_free(i8* %39)
  store i8* null, i8** %2, align 8
  br label %51

41:                                               ; preds = %22
  %42 = load i8*, i8** %7, align 8
  store i8* %42, i8** %6, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = getelementptr inbounds [26 x i8], [26 x i8]* %8, i64 0, i64 0
  %45 = call i32 @strcatW(i8* %43, i8* %44)
  br label %46

46:                                               ; preds = %41
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %18

49:                                               ; preds = %18
  %50 = load i8*, i8** %6, align 8
  store i8* %50, i8** %2, align 8
  br label %51

51:                                               ; preds = %49, %38, %14
  %52 = load i8*, i8** %2, align 8
  ret i8* %52
}

declare dso_local i32 @MSI_RecordGetFieldCount(i32*) #1

declare dso_local i8* @msi_alloc(i32) #1

declare dso_local i64 @sprintfW(i8*, i8*, i32, i32) #1

declare dso_local i8* @msi_realloc(i8*, i32) #1

declare dso_local i32 @msi_free(i8*) #1

declare dso_local i32 @strcatW(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
