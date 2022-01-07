; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/stlport/src/c_locale_glibc/extr_c_locale_glibc2.c___Extract_locale_name.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/stlport/src/c_locale_glibc/extr_c_locale_glibc2.c___Extract_locale_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c";\00", align 1
@_Locale_MAX_SIMPLE_NAME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i8*)* @__Extract_locale_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @__Extract_locale_name(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 76
  br i1 %14, label %15, label %57

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 67
  br i1 %20, label %21, label %57

21:                                               ; preds = %15
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 2
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 95
  br i1 %26, label %27, label %57

27:                                               ; preds = %21
  %28 = load i8*, i8** %5, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = call i8* @strstr(i8* %28, i8* %29)
  store i8* %30, i8** %8, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i8* null, i8** %4, align 8
  br label %59

34:                                               ; preds = %27
  %35 = load i8*, i8** %8, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %8, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = call i64 @strcspn(i8* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* @_Locale_MAX_SIMPLE_NAME, align 8
  %41 = icmp uge i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i64, i64* @_Locale_MAX_SIMPLE_NAME, align 8
  %44 = sub i64 %43, 1
  br label %47

45:                                               ; preds = %34
  %46 = load i64, i64* %9, align 8
  br label %47

47:                                               ; preds = %45, %42
  %48 = phi i64 [ %44, %42 ], [ %46, %45 ]
  store i64 %48, i64* %9, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = load i64, i64* %9, align 8
  %52 = call i32 @strncpy(i8* %49, i8* %50, i64 %51)
  %53 = load i8*, i8** %7, align 8
  %54 = load i64, i64* %9, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8 0, i8* %55, align 1
  %56 = load i8*, i8** %7, align 8
  store i8* %56, i8** %4, align 8
  br label %59

57:                                               ; preds = %21, %15, %3
  %58 = load i8*, i8** %5, align 8
  store i8* %58, i8** %4, align 8
  br label %59

59:                                               ; preds = %57, %47, %33
  %60 = load i8*, i8** %4, align 8
  ret i8* %60
}

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
