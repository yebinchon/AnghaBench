; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_import-util.c_tar_strip_suffixes.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_import-util.c_tar_strip_suffixes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c".tar\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c".tar.xz\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c".tar.gz\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c".tar.bz2\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c".tgz\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tar_strip_suffixes(i8* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i8* @endswith(i8* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %9, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = call i8* @endswith(i8* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i8* %14, i8** %6, align 8
  br label %15

15:                                               ; preds = %12, %2
  %16 = load i8*, i8** %6, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i8*, i8** %4, align 8
  %20 = call i8* @endswith(i8* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i8* %20, i8** %6, align 8
  br label %21

21:                                               ; preds = %18, %15
  %22 = load i8*, i8** %6, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i8*, i8** %4, align 8
  %26 = call i8* @endswith(i8* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i8* %26, i8** %6, align 8
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i8*, i8** %6, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i8*, i8** %4, align 8
  %32 = call i8* @endswith(i8* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store i8* %32, i8** %6, align 8
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i8*, i8** %6, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i8*, i8** %4, align 8
  %38 = call i8* @strchr(i8* %37, i32 0)
  store i8* %38, i8** %6, align 8
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i8*, i8** %6, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = icmp ule i8* %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %63

46:                                               ; preds = %39
  %47 = load i8*, i8** %4, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load i8*, i8** %4, align 8
  %50 = ptrtoint i8* %48 to i64
  %51 = ptrtoint i8* %49 to i64
  %52 = sub i64 %50, %51
  %53 = trunc i64 %52 to i32
  %54 = call i8* @strndup(i8* %47, i32 %53)
  store i8* %54, i8** %7, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %46
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %63

60:                                               ; preds = %46
  %61 = load i8*, i8** %7, align 8
  %62 = load i8**, i8*** %5, align 8
  store i8* %61, i8** %62, align 8
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %60, %57, %43
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i8* @endswith(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i32) #1

declare dso_local i8* @strndup(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
