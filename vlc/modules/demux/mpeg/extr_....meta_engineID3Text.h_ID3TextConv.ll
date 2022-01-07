; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_....meta_engineID3Text.h_ID3TextConv.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_....meta_engineID3Text.h_ID3TextConv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"ISO_8859-1\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"UTF-16LE\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"UTF-16BE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i64, i32, i8**)* @ID3TextConv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ID3TextConv(i32* %0, i64 %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i8** %3, i8*** %8, align 8
  store i8* null, i8** %9, align 8
  %11 = load i8*, i8** %9, align 8
  store i8* %11, i8** %10, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp ugt i64 %12, 0
  br i1 %13, label %14, label %61

14:                                               ; preds = %4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 4
  br i1 %16, label %17, label %61

17:                                               ; preds = %14
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %31 [
    i32 0, label %19
    i32 1, label %23
    i32 2, label %27
    i32 3, label %32
  ]

19:                                               ; preds = %17
  %20 = load i32*, i32** %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i8* @FromCharset(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %20, i64 %21)
  store i8* %22, i8** %9, align 8
  store i8* %22, i8** %10, align 8
  br label %60

23:                                               ; preds = %17
  %24 = load i32*, i32** %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i8* @FromCharset(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %24, i64 %25)
  store i8* %26, i8** %9, align 8
  store i8* %26, i8** %10, align 8
  br label %60

27:                                               ; preds = %17
  %28 = load i32*, i32** %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i8* @FromCharset(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* %28, i64 %29)
  store i8* %30, i8** %9, align 8
  store i8* %30, i8** %10, align 8
  br label %60

31:                                               ; preds = %17
  br label %32

32:                                               ; preds = %17, %31
  %33 = load i32*, i32** %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = sub i64 %34, 1
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %32
  %40 = load i64, i64* %6, align 8
  %41 = add i64 %40, 1
  %42 = call i64 @malloc(i64 %41)
  %43 = inttoptr i64 %42 to i8*
  store i8* %43, i8** %9, align 8
  store i8* %43, i8** %10, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %55

46:                                               ; preds = %39
  %47 = load i8*, i8** %9, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = load i64, i64* %6, align 8
  %50 = sub i64 %49, 1
  %51 = call i32 @memcpy(i8* %47, i32* %48, i64 %50)
  %52 = load i8*, i8** %9, align 8
  %53 = load i64, i64* %6, align 8
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8 0, i8* %54, align 1
  br label %55

55:                                               ; preds = %46, %39
  br label %59

56:                                               ; preds = %32
  %57 = load i32*, i32** %5, align 8
  %58 = bitcast i32* %57 to i8*
  store i8* %58, i8** %10, align 8
  br label %59

59:                                               ; preds = %56, %55
  br label %60

60:                                               ; preds = %59, %27, %23, %19
  br label %61

61:                                               ; preds = %60, %14, %4
  %62 = load i8*, i8** %9, align 8
  %63 = load i8**, i8*** %8, align 8
  store i8* %62, i8** %63, align 8
  %64 = load i8*, i8** %10, align 8
  ret i8* %64
}

declare dso_local i8* @FromCharset(i8*, i32*, i64) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
