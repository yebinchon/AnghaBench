; ModuleID = '/home/carl/AnghaBench/redis/src/extr_zipmap.c_zipmapLookupRaw.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_zipmap.c_zipmapLookupRaw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZIPMAP_END = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i32, i32*)* @zipmapLookupRaw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @zipmapLookupRaw(i8* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  store i8* %16, i8** %10, align 8
  store i8* null, i8** %11, align 8
  br label %17

17:                                               ; preds = %55, %4
  %18 = load i8*, i8** %10, align 8
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = load i8, i8* @ZIPMAP_END, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp ne i32 %20, %22
  br i1 %23, label %24, label %80

24:                                               ; preds = %17
  %25 = load i8*, i8** %10, align 8
  %26 = call i32 @zipmapDecodeLength(i8* %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = call i32 @zipmapEncodeLength(i32* null, i32 %27)
  store i32 %28, i32* %13, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %55

31:                                               ; preds = %24
  %32 = load i8*, i8** %11, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %55

34:                                               ; preds = %31
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %34
  %39 = load i8*, i8** %10, align 8
  %40 = load i32, i32* %13, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8*, i8** %7, align 8
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @memcmp(i8* %42, i8* %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %38
  %48 = load i32*, i32** %9, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i8*, i8** %10, align 8
  store i8* %51, i8** %11, align 8
  br label %54

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8
  store i8* %53, i8** %5, align 8
  br label %94

54:                                               ; preds = %50
  br label %55

55:                                               ; preds = %54, %38, %34, %31, %24
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %12, align 4
  %58 = add i32 %56, %57
  %59 = load i8*, i8** %10, align 8
  %60 = zext i32 %58 to i64
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  store i8* %61, i8** %10, align 8
  %62 = load i8*, i8** %10, align 8
  %63 = call i32 @zipmapDecodeLength(i8* %62)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @zipmapEncodeLength(i32* null, i32 %64)
  %66 = load i8*, i8** %10, align 8
  %67 = zext i32 %65 to i64
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  store i8* %68, i8** %10, align 8
  %69 = load i8*, i8** %10, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  %71 = load i8, i8* %70, align 1
  store i8 %71, i8* %14, align 1
  %72 = load i32, i32* %12, align 4
  %73 = add i32 %72, 1
  %74 = load i8, i8* %14, align 1
  %75 = zext i8 %74 to i32
  %76 = add i32 %73, %75
  %77 = load i8*, i8** %10, align 8
  %78 = zext i32 %76 to i64
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  store i8* %79, i8** %10, align 8
  br label %17

80:                                               ; preds = %17
  %81 = load i32*, i32** %9, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %92

83:                                               ; preds = %80
  %84 = load i8*, i8** %10, align 8
  %85 = load i8*, i8** %6, align 8
  %86 = ptrtoint i8* %84 to i64
  %87 = ptrtoint i8* %85 to i64
  %88 = sub i64 %86, %87
  %89 = trunc i64 %88 to i32
  %90 = add i32 %89, 1
  %91 = load i32*, i32** %9, align 8
  store i32 %90, i32* %91, align 4
  br label %92

92:                                               ; preds = %83, %80
  %93 = load i8*, i8** %11, align 8
  store i8* %93, i8** %5, align 8
  br label %94

94:                                               ; preds = %92, %52
  %95 = load i8*, i8** %5, align 8
  ret i8* %95
}

declare dso_local i32 @zipmapDecodeLength(i8*) #1

declare dso_local i32 @zipmapEncodeLength(i32*, i32) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
