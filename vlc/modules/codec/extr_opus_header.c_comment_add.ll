; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_opus_header.c_comment_add.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_opus_header.c_comment_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i64*, i8*, i8*)* @comment_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comment_add(i8** %0, i64* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  store i8** %0, i8*** %6, align 8
  store i64* %1, i64** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load i8**, i8*** %6, align 8
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %10, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 8
  %21 = call i8* @GetDWLE(i8* %20)
  %22 = ptrtoint i8* %21 to i32
  store i32 %22, i32* %11, align 4
  %23 = load i8*, i8** %10, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 8
  %25 = getelementptr inbounds i8, i8* %24, i64 4
  %26 = load i32, i32* %11, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = call i8* @GetDWLE(i8* %28)
  %30 = ptrtoint i8* %29 to i64
  store i64 %30, i64* %12, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %4
  %34 = load i8*, i8** %8, align 8
  %35 = call i64 @strlen(i8* %34)
  br label %37

36:                                               ; preds = %4
  br label %37

37:                                               ; preds = %36, %33
  %38 = phi i64 [ %35, %33 ], [ 0, %36 ]
  store i64 %38, i64* %13, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = call i64 @strlen(i8* %39)
  store i64 %40, i64* %14, align 8
  %41 = load i64*, i64** %7, align 8
  %42 = load i64, i64* %41, align 8
  %43 = add i64 %42, 4
  %44 = load i64, i64* %13, align 8
  %45 = add i64 %43, %44
  %46 = load i64, i64* %14, align 8
  %47 = add i64 %45, %46
  store i64 %47, i64* %15, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = load i64, i64* %15, align 8
  %50 = call i8* @realloc(i8* %48, i64 %49)
  store i8* %50, i8** %16, align 8
  %51 = load i8*, i8** %16, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %37
  store i32 1, i32* %5, align 4
  br label %99

54:                                               ; preds = %37
  %55 = load i8*, i8** %16, align 8
  store i8* %55, i8** %10, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = load i64*, i64** %7, align 8
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = load i64, i64* %13, align 8
  %61 = load i64, i64* %14, align 8
  %62 = add i64 %60, %61
  %63 = call i32 @SetDWLE(i8* %59, i64 %62)
  %64 = load i8*, i8** %8, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %75

66:                                               ; preds = %54
  %67 = load i8*, i8** %10, align 8
  %68 = load i64*, i64** %7, align 8
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = getelementptr inbounds i8, i8* %70, i64 4
  %72 = load i8*, i8** %8, align 8
  %73 = load i64, i64* %13, align 8
  %74 = call i32 @memcpy(i8* %71, i8* %72, i64 %73)
  br label %75

75:                                               ; preds = %66, %54
  %76 = load i8*, i8** %10, align 8
  %77 = load i64*, i64** %7, align 8
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = getelementptr inbounds i8, i8* %79, i64 4
  %81 = load i64, i64* %13, align 8
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  %83 = load i8*, i8** %9, align 8
  %84 = load i64, i64* %14, align 8
  %85 = call i32 @memcpy(i8* %82, i8* %83, i64 %84)
  %86 = load i8*, i8** %10, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 8
  %88 = getelementptr inbounds i8, i8* %87, i64 4
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = load i64, i64* %12, align 8
  %93 = add i64 %92, 1
  %94 = call i32 @SetDWLE(i8* %91, i64 %93)
  %95 = load i8*, i8** %10, align 8
  %96 = load i8**, i8*** %6, align 8
  store i8* %95, i8** %96, align 8
  %97 = load i64, i64* %15, align 8
  %98 = load i64*, i64** %7, align 8
  store i64 %97, i64* %98, align 8
  store i32 0, i32* %5, align 4
  br label %99

99:                                               ; preds = %75, %53
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i8* @GetDWLE(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @SetDWLE(i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
