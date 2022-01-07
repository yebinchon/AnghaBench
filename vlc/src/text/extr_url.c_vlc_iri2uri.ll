; ModuleID = '/home/carl/AnghaBench/vlc/src/text/extr_url.c_vlc_iri2uri.c'
source_filename = "/home/carl/AnghaBench/vlc/src/text/extr_url.c_vlc_iri2uri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIZE_MAX = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@urihex = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @vlc_iri2uri to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @vlc_iri2uri(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %11

11:                                               ; preds = %33, %1
  %12 = load i8*, i8** %3, align 8
  %13 = load i64, i64* %6, align 8
  %14 = getelementptr inbounds i8, i8* %12, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %11
  %19 = load i8*, i8** %3, align 8
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  %22 = load i8, i8* %21, align 1
  store i8 %22, i8* %7, align 1
  %23 = load i8, i8* %7, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp slt i32 %24, 128
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load i64, i64* %4, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %4, align 8
  br label %32

29:                                               ; preds = %18
  %30 = load i64, i64* %5, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %5, align 8
  br label %32

32:                                               ; preds = %29, %26
  br label %33

33:                                               ; preds = %32
  %34 = load i64, i64* %6, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %6, align 8
  br label %11

36:                                               ; preds = %11
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* %5, align 8
  %39 = add i64 %37, %38
  %40 = load i32, i32* @SIZE_MAX, align 4
  %41 = sdiv i32 %40, 4
  %42 = sext i32 %41 to i64
  %43 = icmp ugt i64 %39, %42
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %36
  %48 = load i32, i32* @ENOMEM, align 4
  store i32 %48, i32* @errno, align 4
  store i8* null, i8** %2, align 8
  br label %109

49:                                               ; preds = %36
  %50 = load i64, i64* %4, align 8
  %51 = load i64, i64* %5, align 8
  %52 = mul i64 3, %51
  %53 = add i64 %50, %52
  %54 = add i64 %53, 1
  %55 = call i8* @malloc(i64 %54)
  store i8* %55, i8** %8, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = icmp eq i8* %56, null
  %58 = zext i1 %57 to i32
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %49
  store i8* null, i8** %2, align 8
  br label %109

62:                                               ; preds = %49
  %63 = load i8*, i8** %8, align 8
  store i8* %63, i8** %9, align 8
  br label %64

64:                                               ; preds = %103, %62
  %65 = load i8*, i8** %3, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %106

69:                                               ; preds = %64
  %70 = load i8*, i8** %3, align 8
  %71 = load i8, i8* %70, align 1
  store i8 %71, i8* %10, align 1
  %72 = load i8, i8* %10, align 1
  %73 = zext i8 %72 to i32
  %74 = icmp slt i32 %73, 128
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load i8, i8* %10, align 1
  %77 = load i8*, i8** %9, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %9, align 8
  store i8 %76, i8* %77, align 1
  br label %102

79:                                               ; preds = %69
  %80 = load i8*, i8** %9, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %9, align 8
  store i8 37, i8* %80, align 1
  %82 = load i8**, i8*** @urihex, align 8
  %83 = load i8, i8* %10, align 1
  %84 = zext i8 %83 to i32
  %85 = ashr i32 %84, 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %82, i64 %86
  %88 = load i8*, i8** %87, align 8
  %89 = ptrtoint i8* %88 to i8
  %90 = load i8*, i8** %9, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %9, align 8
  store i8 %89, i8* %90, align 1
  %92 = load i8**, i8*** @urihex, align 8
  %93 = load i8, i8* %10, align 1
  %94 = zext i8 %93 to i32
  %95 = and i32 %94, 15
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8*, i8** %92, i64 %96
  %98 = load i8*, i8** %97, align 8
  %99 = ptrtoint i8* %98 to i8
  %100 = load i8*, i8** %9, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %9, align 8
  store i8 %99, i8* %100, align 1
  br label %102

102:                                              ; preds = %79, %75
  br label %103

103:                                              ; preds = %102
  %104 = load i8*, i8** %3, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %3, align 8
  br label %64

106:                                              ; preds = %64
  %107 = load i8*, i8** %9, align 8
  store i8 0, i8* %107, align 1
  %108 = load i8*, i8** %8, align 8
  store i8* %108, i8** %2, align 8
  br label %109

109:                                              ; preds = %106, %61, %47
  %110 = load i8*, i8** %2, align 8
  ret i8* %110
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @malloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
