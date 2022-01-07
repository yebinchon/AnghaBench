; ModuleID = '/home/carl/AnghaBench/redis/src/extr_zipmap.c_zipmapNext.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_zipmap.c_zipmapNext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZIPMAP_END = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @zipmapNext(i8* %0, i8** %1, i32* %2, i8** %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  store i8* %0, i8** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i32* %4, i32** %11, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = load i8, i8* @ZIPMAP_END, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  store i8* null, i8** %6, align 8
  br label %65

20:                                               ; preds = %5
  %21 = load i8**, i8*** %8, align 8
  %22 = icmp ne i8** %21, null
  br i1 %22, label %23, label %36

23:                                               ; preds = %20
  %24 = load i8*, i8** %7, align 8
  %25 = load i8**, i8*** %8, align 8
  store i8* %24, i8** %25, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @zipmapDecodeLength(i8* %26)
  %28 = load i32*, i32** %9, align 8
  store i32 %27, i32* %28, align 4
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ZIPMAP_LEN_BYTES(i32 %30)
  %32 = load i8**, i8*** %8, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = sext i32 %31 to i64
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  store i8* %35, i8** %32, align 8
  br label %36

36:                                               ; preds = %23, %20
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @zipmapRawKeyLength(i8* %37)
  %39 = load i8*, i8** %7, align 8
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  store i8* %41, i8** %7, align 8
  %42 = load i8**, i8*** %10, align 8
  %43 = icmp ne i8** %42, null
  br i1 %43, label %44, label %58

44:                                               ; preds = %36
  %45 = load i8*, i8** %7, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  %47 = load i8**, i8*** %10, align 8
  store i8* %46, i8** %47, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @zipmapDecodeLength(i8* %48)
  %50 = load i32*, i32** %11, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32*, i32** %11, align 8
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ZIPMAP_LEN_BYTES(i32 %52)
  %54 = load i8**, i8*** %10, align 8
  %55 = load i8*, i8** %54, align 8
  %56 = sext i32 %53 to i64
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  store i8* %57, i8** %54, align 8
  br label %58

58:                                               ; preds = %44, %36
  %59 = load i8*, i8** %7, align 8
  %60 = call i32 @zipmapRawValueLength(i8* %59)
  %61 = load i8*, i8** %7, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  store i8* %63, i8** %7, align 8
  %64 = load i8*, i8** %7, align 8
  store i8* %64, i8** %6, align 8
  br label %65

65:                                               ; preds = %58, %19
  %66 = load i8*, i8** %6, align 8
  ret i8* %66
}

declare dso_local i32 @zipmapDecodeLength(i8*) #1

declare dso_local i32 @ZIPMAP_LEN_BYTES(i32) #1

declare dso_local i32 @zipmapRawKeyLength(i8*) #1

declare dso_local i32 @zipmapRawValueLength(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
