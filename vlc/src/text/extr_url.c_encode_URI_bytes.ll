; ModuleID = '/home/carl/AnghaBench/vlc/src/text/extr_url.c_encode_URI_bytes.c'
source_filename = "/home/carl/AnghaBench/vlc/src/text/extr_url.c_encode_URI_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@urihex = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64*)* @encode_URI_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @encode_URI_bytes(i8* %0, i64* noalias %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = load i64*, i64** %5, align 8
  %11 = load i64, i64* %10, align 8
  %12 = mul i64 3, %11
  %13 = add i64 %12, 1
  %14 = trunc i64 %13 to i32
  %15 = call i8* @malloc(i32 %14)
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = icmp eq i8* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %91

22:                                               ; preds = %2
  %23 = load i8*, i8** %6, align 8
  store i8* %23, i8** %7, align 8
  store i64 0, i64* %8, align 8
  br label %24

24:                                               ; preds = %65, %22
  %25 = load i64, i64* %8, align 8
  %26 = load i64*, i64** %5, align 8
  %27 = load i64, i64* %26, align 8
  %28 = icmp ult i64 %25, %27
  br i1 %28, label %29, label %68

29:                                               ; preds = %24
  %30 = load i8*, i8** %4, align 8
  %31 = load i64, i64* %8, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  %33 = load i8, i8* %32, align 1
  store i8 %33, i8* %9, align 1
  %34 = load i8, i8* %9, align 1
  %35 = call i64 @isurisafe(i8 zeroext %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load i8, i8* %9, align 1
  %39 = load i8*, i8** %7, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %7, align 8
  store i8 %38, i8* %39, align 1
  br label %64

41:                                               ; preds = %29
  %42 = load i8*, i8** %7, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %7, align 8
  store i8 37, i8* %42, align 1
  %44 = load i8**, i8*** @urihex, align 8
  %45 = load i8, i8* %9, align 1
  %46 = zext i8 %45 to i32
  %47 = ashr i32 %46, 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %44, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = ptrtoint i8* %50 to i8
  %52 = load i8*, i8** %7, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %7, align 8
  store i8 %51, i8* %52, align 1
  %54 = load i8**, i8*** @urihex, align 8
  %55 = load i8, i8* %9, align 1
  %56 = zext i8 %55 to i32
  %57 = and i32 %56, 15
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %54, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = ptrtoint i8* %60 to i8
  %62 = load i8*, i8** %7, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %7, align 8
  store i8 %61, i8* %62, align 1
  br label %64

64:                                               ; preds = %41, %37
  br label %65

65:                                               ; preds = %64
  %66 = load i64, i64* %8, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %8, align 8
  br label %24

68:                                               ; preds = %24
  %69 = load i8*, i8** %7, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = ptrtoint i8* %69 to i64
  %72 = ptrtoint i8* %70 to i64
  %73 = sub i64 %71, %72
  %74 = load i64*, i64** %5, align 8
  store i64 %73, i64* %74, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = load i64*, i64** %5, align 8
  %77 = load i64, i64* %76, align 8
  %78 = add i64 %77, 1
  %79 = call i8* @realloc(i8* %75, i64 %78)
  store i8* %79, i8** %7, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = icmp ne i8* %80, null
  %82 = zext i1 %81 to i32
  %83 = call i64 @likely(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %68
  %86 = load i8*, i8** %7, align 8
  br label %89

87:                                               ; preds = %68
  %88 = load i8*, i8** %6, align 8
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i8* [ %86, %85 ], [ %88, %87 ]
  store i8* %90, i8** %3, align 8
  br label %91

91:                                               ; preds = %89, %21
  %92 = load i8*, i8** %3, align 8
  ret i8* %92
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @isurisafe(i8 zeroext) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
