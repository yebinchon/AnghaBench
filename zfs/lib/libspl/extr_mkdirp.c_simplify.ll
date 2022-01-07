; ModuleID = '/home/carl/AnghaBench/zfs/lib/libspl/extr_mkdirp.c_simplify.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libspl/extr_mkdirp.c_simplify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOENT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @simplify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @simplify(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOENT, align 4
  store i32 %13, i32* @errno, align 4
  store i8* null, i8** %2, align 8
  br label %99

14:                                               ; preds = %1
  %15 = load i8*, i8** %3, align 8
  %16 = call i8* @strdup(i8* %15)
  store i8* %16, i8** %9, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i8* null, i8** %2, align 8
  br label %99

19:                                               ; preds = %14
  %20 = load i8*, i8** %9, align 8
  %21 = call i64 @strlen(i8* %20)
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* %5, align 8
  %23 = add i64 %22, 1
  %24 = call i8* @calloc(i64 %23, i32 1)
  store i8* %24, i8** %8, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i8*, i8** %9, align 8
  %28 = call i32 @free(i8* %27)
  store i8* null, i8** %2, align 8
  br label %99

29:                                               ; preds = %19
  %30 = load i8*, i8** %8, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call i64 @mbstowcs(i8* %30, i8* %31, i64 %32)
  store i64 %33, i64* %6, align 8
  %34 = icmp eq i64 %33, -1
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 @free(i8* %36)
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @free(i8* %38)
  store i8* null, i8** %2, align 8
  br label %99

40:                                               ; preds = %29
  %41 = load i8*, i8** %8, align 8
  store i8* %41, i8** %7, align 8
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %80, %40
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* %6, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %83

47:                                               ; preds = %42
  %48 = load i8*, i8** %8, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = load i8*, i8** %7, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %7, align 8
  store i8 %52, i8* %53, align 1
  %55 = load i8*, i8** %8, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 47
  br i1 %61, label %62, label %79

62:                                               ; preds = %47
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %73, %62
  %66 = load i8*, i8** %8, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 47
  br i1 %72, label %73, label %76

73:                                               ; preds = %65
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %4, align 4
  br label %65

76:                                               ; preds = %65
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %76, %47
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %4, align 4
  br label %42

83:                                               ; preds = %42
  %84 = load i8*, i8** %7, align 8
  store i8 0, i8* %84, align 1
  %85 = load i8*, i8** %9, align 8
  %86 = load i8*, i8** %8, align 8
  %87 = load i64, i64* %5, align 8
  %88 = call i64 @wcstombs(i8* %85, i8* %86, i64 %87)
  %89 = icmp eq i64 %88, -1
  br i1 %89, label %90, label %95

90:                                               ; preds = %83
  %91 = load i8*, i8** %9, align 8
  %92 = call i32 @free(i8* %91)
  %93 = load i8*, i8** %8, align 8
  %94 = call i32 @free(i8* %93)
  store i8* null, i8** %2, align 8
  br label %99

95:                                               ; preds = %83
  %96 = load i8*, i8** %8, align 8
  %97 = call i32 @free(i8* %96)
  %98 = load i8*, i8** %9, align 8
  store i8* %98, i8** %2, align 8
  br label %99

99:                                               ; preds = %95, %90, %35, %26, %18, %12
  %100 = load i8*, i8** %2, align 8
  ret i8* %100
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @calloc(i64, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @mbstowcs(i8*, i8*, i64) #1

declare dso_local i64 @wcstombs(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
