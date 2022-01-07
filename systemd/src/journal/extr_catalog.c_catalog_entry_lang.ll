; ModuleID = '/home/carl/AnghaBench/systemd/src/journal/extr_catalog.c_catalog_entry_lang.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal/extr_catalog.c_catalog_entry_lang.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"[%s:%u] Language too short.\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"[%s:%u] language too long.\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"[%s:%u] language specified unnecessarily\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"[%s:%u] language differs from default for file\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i8*, i8**)* @catalog_entry_lang to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @catalog_entry_lang(i8* %0, i32 %1, i8* %2, i8* %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8** %4, i8*** %11, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = call i64 @strlen(i8* %14)
  store i64 %15, i64* %12, align 8
  %16 = load i64, i64* %12, align 8
  %17 = icmp ult i64 %16, 2
  br i1 %17, label %18, label %24

18:                                               ; preds = %5
  %19 = load i32, i32* @EINVAL, align 4
  %20 = call i32 @SYNTHETIC_ERRNO(i32 %19)
  %21 = load i8*, i8** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @log_error_errno(i32 %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %21, i32 %22)
  store i32 %23, i32* %6, align 4
  br label %60

24:                                               ; preds = %5
  %25 = load i64, i64* %12, align 8
  %26 = icmp ugt i64 %25, 31
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i32, i32* @EINVAL, align 4
  %29 = call i32 @SYNTHETIC_ERRNO(i32 %28)
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @log_error_errno(i32 %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %30, i32 %31)
  store i32 %32, i32* %6, align 4
  br label %60

33:                                               ; preds = %24
  %34 = load i8*, i8** %10, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %49

36:                                               ; preds = %33
  %37 = load i8*, i8** %9, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = call i64 @streq(i8* %37, i8* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i8*, i8** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @log_warning(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* %42, i32 %43)
  store i32 0, i32* %6, align 4
  br label %60

45:                                               ; preds = %36
  %46 = load i8*, i8** %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @log_warning(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %33
  %50 = load i8*, i8** %9, align 8
  %51 = call i8* @strdup(i8* %50)
  store i8* %51, i8** %13, align 8
  %52 = load i8*, i8** %13, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  br label %60

57:                                               ; preds = %49
  %58 = load i8*, i8** %13, align 8
  %59 = load i8**, i8*** %11, align 8
  store i8* %58, i8** %59, align 8
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %57, %54, %41, %27, %18
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @log_error_errno(i32, i8*, i8*, i32) #1

declare dso_local i32 @SYNTHETIC_ERRNO(i32) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i32 @log_warning(i8*, i8*, i32) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
