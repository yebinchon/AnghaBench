; ModuleID = '/home/carl/AnghaBench/redis/src/extr_zipmap.c_zipmapGet.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_zipmap.c_zipmapGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zipmapGet(i8* %0, i8* %1, i32 %2, i8** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8** %3, i8*** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load i32, i32* %9, align 4
  %16 = call i8* @zipmapLookupRaw(i8* %13, i8* %14, i32 %15, i32* null)
  store i8* %16, i8** %12, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %36

19:                                               ; preds = %5
  %20 = load i8*, i8** %12, align 8
  %21 = call i32 @zipmapRawKeyLength(i8* %20)
  %22 = load i8*, i8** %12, align 8
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  store i8* %24, i8** %12, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = call i32 @zipmapDecodeLength(i8* %25)
  %27 = load i32*, i32** %11, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i8*, i8** %12, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ZIPMAP_LEN_BYTES(i32 %30)
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %28, i64 %32
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = load i8**, i8*** %10, align 8
  store i8* %34, i8** %35, align 8
  store i32 1, i32* %6, align 4
  br label %36

36:                                               ; preds = %19, %18
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local i8* @zipmapLookupRaw(i8*, i8*, i32, i32*) #1

declare dso_local i32 @zipmapRawKeyLength(i8*) #1

declare dso_local i32 @zipmapDecodeLength(i8*) #1

declare dso_local i32 @ZIPMAP_LEN_BYTES(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
