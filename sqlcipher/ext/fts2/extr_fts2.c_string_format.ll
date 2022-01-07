; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_string_format.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_string_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i8*)* @string_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @string_format(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i64 0, i64* %8, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i64 @strlen(i8* %14)
  store i64 %15, i64* %9, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i64 @strlen(i8* %16)
  store i64 %17, i64* %10, align 8
  %18 = load i64, i64* %9, align 8
  %19 = add i64 %18, 1
  %20 = load i64, i64* %10, align 8
  %21 = add i64 %19, %20
  store i64 %21, i64* %11, align 8
  %22 = load i8*, i8** %4, align 8
  store i8* %22, i8** %7, align 8
  br label %23

23:                                               ; preds = %39, %3
  %24 = load i8*, i8** %7, align 8
  %25 = load i8, i8* %24, align 1
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %23
  %28 = load i8*, i8** %7, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 37
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i64, i64* %11, align 8
  br label %35

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34, %32
  %36 = phi i64 [ %33, %32 ], [ 1, %34 ]
  %37 = load i64, i64* %8, align 8
  %38 = add i64 %37, %36
  store i64 %38, i64* %8, align 8
  br label %39

39:                                               ; preds = %35
  %40 = load i8*, i8** %7, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %7, align 8
  br label %23

42:                                               ; preds = %23
  %43 = load i64, i64* %8, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %8, align 8
  %45 = load i64, i64* %8, align 8
  %46 = call i8* @sqlite3_malloc(i64 %45)
  store i8* %46, i8** %12, align 8
  store i8* %46, i8** %13, align 8
  %47 = load i8*, i8** %4, align 8
  store i8* %47, i8** %7, align 8
  br label %48

48:                                               ; preds = %80, %42
  %49 = load i8*, i8** %7, align 8
  %50 = load i8, i8* %49, align 1
  %51 = icmp ne i8 %50, 0
  br i1 %51, label %52, label %83

52:                                               ; preds = %48
  %53 = load i8*, i8** %7, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 37
  br i1 %56, label %57, label %74

57:                                               ; preds = %52
  %58 = load i8*, i8** %13, align 8
  %59 = load i8*, i8** %5, align 8
  %60 = load i64, i64* %9, align 8
  %61 = call i32 @memcpy(i8* %58, i8* %59, i64 %60)
  %62 = load i64, i64* %9, align 8
  %63 = load i8*, i8** %13, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 %62
  store i8* %64, i8** %13, align 8
  %65 = load i8*, i8** %13, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %13, align 8
  store i8 46, i8* %65, align 1
  %67 = load i8*, i8** %13, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = load i64, i64* %10, align 8
  %70 = call i32 @memcpy(i8* %67, i8* %68, i64 %69)
  %71 = load i64, i64* %10, align 8
  %72 = load i8*, i8** %13, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 %71
  store i8* %73, i8** %13, align 8
  br label %79

74:                                               ; preds = %52
  %75 = load i8*, i8** %7, align 8
  %76 = load i8, i8* %75, align 1
  %77 = load i8*, i8** %13, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %13, align 8
  store i8 %76, i8* %77, align 1
  br label %79

79:                                               ; preds = %74, %57
  br label %80

80:                                               ; preds = %79
  %81 = load i8*, i8** %7, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %7, align 8
  br label %48

83:                                               ; preds = %48
  %84 = load i8*, i8** %13, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %13, align 8
  store i8 0, i8* %84, align 1
  %86 = load i8*, i8** %13, align 8
  %87 = load i8*, i8** %12, align 8
  %88 = load i64, i64* %8, align 8
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  %90 = icmp eq i8* %86, %89
  %91 = zext i1 %90 to i32
  %92 = call i32 @assert(i32 %91)
  %93 = load i8*, i8** %12, align 8
  ret i8* %93
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @sqlite3_malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
