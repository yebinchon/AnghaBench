; ModuleID = '/home/carl/AnghaBench/vlc/modules/mux/mpeg/extr_tables.c_Write_AnnexA_String.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/mux/mpeg/extr_tables.c_Write_AnnexA_String.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UINT8_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i8*)* @Write_AnnexA_String to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @Write_AnnexA_String(i32* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @strlen(i8* %12)
  store i64 %13, i64* %6, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %11, %2
  %16 = load i32*, i32** %4, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 0, i32* %17, align 4
  store i64 1, i64* %3, align 8
  br label %86

18:                                               ; preds = %11
  %19 = load i8*, i8** %5, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp sgt i32 %22, 32
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %7, align 4
  store i64 0, i64* %8, align 8
  br label %25

25:                                               ; preds = %46, %18
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* %6, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br label %32

32:                                               ; preds = %29, %25
  %33 = phi i1 [ false, %25 ], [ %31, %29 ]
  br i1 %33, label %34, label %49

34:                                               ; preds = %32
  %35 = load i8*, i8** %5, align 8
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = and i32 %39, 128
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = load i32, i32* %7, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %34
  %47 = load i64, i64* %8, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %8, align 8
  br label %25

49:                                               ; preds = %32
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %49
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* @UINT8_MAX, align 8
  %55 = call i64 @__MIN(i64 %53, i64 %54)
  store i64 %55, i64* %6, align 8
  %56 = load i64, i64* %6, align 8
  %57 = trunc i64 %56 to i32
  %58 = load i32*, i32** %4, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  store i32 %57, i32* %59, align 4
  %60 = load i32*, i32** %4, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i8*, i8** %5, align 8
  %63 = load i64, i64* %6, align 8
  %64 = call i32 @memcpy(i32* %61, i8* %62, i64 %63)
  %65 = load i64, i64* %6, align 8
  %66 = add i64 1, %65
  store i64 %66, i64* %3, align 8
  br label %86

67:                                               ; preds = %49
  %68 = load i64, i64* %6, align 8
  %69 = load i64, i64* @UINT8_MAX, align 8
  %70 = sub nsw i64 %69, 1
  %71 = call i64 @__MIN(i64 %68, i64 %70)
  store i64 %71, i64* %6, align 8
  %72 = load i64, i64* %6, align 8
  %73 = add i64 1, %72
  %74 = trunc i64 %73 to i32
  %75 = load i32*, i32** %4, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  store i32 %74, i32* %76, align 4
  %77 = load i32*, i32** %4, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  store i32 21, i32* %78, align 4
  %79 = load i32*, i32** %4, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  %81 = load i8*, i8** %5, align 8
  %82 = load i64, i64* %6, align 8
  %83 = call i32 @memcpy(i32* %80, i8* %81, i64 %82)
  %84 = load i64, i64* %6, align 8
  %85 = add i64 2, %84
  store i64 %85, i64* %3, align 8
  br label %86

86:                                               ; preds = %67, %52, %15
  %87 = load i64, i64* %3, align 8
  ret i64 %87
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @__MIN(i64, i64) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
