; ModuleID = '/home/carl/AnghaBench/zfs/lib/libspl/extr_mkdirp.c_mkdirp.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libspl/extr_mkdirp.c_mkdirp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@F_OK = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mkdirp(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = call i8* @simplify(i8* %10)
  store i8* %11, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %93

15:                                               ; preds = %2
  %16 = load i8*, i8** %9, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @mkdir(i8* %16, i32 %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i8*, i8** %9, align 8
  %22 = call i32 @free(i8* %21)
  store i32 0, i32* %3, align 4
  br label %93

23:                                               ; preds = %15
  %24 = load i64, i64* @errno, align 8
  %25 = load i64, i64* @ENOENT, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 @free(i8* %28)
  store i32 -1, i32* %3, align 4
  br label %93

30:                                               ; preds = %23
  %31 = load i8*, i8** %9, align 8
  %32 = call i8* @strrchr(i8* %31, i8 signext 0)
  store i8* %32, i8** %6, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = call i8* @strrchr(i8* %33, i8 signext 47)
  store i8* %34, i8** %8, align 8
  br label %35

35:                                               ; preds = %69, %30
  %36 = load i8*, i8** %8, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %70

38:                                               ; preds = %35
  %39 = load i8*, i8** %8, align 8
  store i8* %39, i8** %7, align 8
  %40 = load i8*, i8** %7, align 8
  store i8 0, i8* %40, align 1
  %41 = load i8*, i8** %9, align 8
  %42 = load i32, i32* @F_OK, align 4
  %43 = call i64 @access(i8* %41, i32 %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %70

46:                                               ; preds = %38
  %47 = load i8*, i8** %9, align 8
  %48 = call i8* @strrchr(i8* %47, i8 signext 47)
  store i8* %48, i8** %8, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %46
  %52 = load i8*, i8** %8, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = icmp eq i8* %52, %53
  br i1 %54, label %55, label %68

55:                                               ; preds = %51, %46
  %56 = load i8*, i8** %9, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i64 @mkdir(i8* %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = load i64, i64* @errno, align 8
  %62 = load i64, i64* @EEXIST, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i8*, i8** %9, align 8
  %66 = call i32 @free(i8* %65)
  store i32 -1, i32* %3, align 4
  br label %93

67:                                               ; preds = %60, %55
  br label %70

68:                                               ; preds = %51
  br label %69

69:                                               ; preds = %68
  br label %35

70:                                               ; preds = %67, %45, %35
  br label %71

71:                                               ; preds = %89, %70
  %72 = load i8*, i8** %9, align 8
  %73 = call i8* @strchr(i8* %72, i8 signext 0)
  store i8* %73, i8** %7, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = icmp ne i8* %73, %74
  br i1 %75, label %76, label %90

76:                                               ; preds = %71
  %77 = load i8*, i8** %7, align 8
  store i8 47, i8* %77, align 1
  %78 = load i8*, i8** %9, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call i64 @mkdir(i8* %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %76
  %83 = load i64, i64* @errno, align 8
  %84 = load i64, i64* @EEXIST, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load i8*, i8** %9, align 8
  %88 = call i32 @free(i8* %87)
  store i32 -1, i32* %3, align 4
  br label %93

89:                                               ; preds = %82, %76
  br label %71

90:                                               ; preds = %71
  %91 = load i8*, i8** %9, align 8
  %92 = call i32 @free(i8* %91)
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %90, %86, %64, %27, %20, %14
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i8* @simplify(i8*) #1

declare dso_local i64 @mkdir(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
