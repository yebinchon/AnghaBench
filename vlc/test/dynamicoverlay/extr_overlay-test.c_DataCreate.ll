; ModuleID = '/home/carl/AnghaBench/vlc/test/dynamicoverlay/extr_overlay-test.c_DataCreate.c'
source_filename = "/home/carl/AnghaBench/vlc/test/dynamicoverlay/extr_overlay-test.c_DataCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_imageRGBA = common dso_local global i8* null, align 8
@HEIGHT = common dso_local global i64 0, align 8
@p_text = common dso_local global i32 0, align 4
@TEXT = common dso_local global i32 0, align 4
@TEXTSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DataCreate() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = load i8*, i8** @p_imageRGBA, align 8
  store i8* %4, i8** %1, align 8
  store i64 0, i64* %2, align 8
  br label %5

5:                                                ; preds = %35, %0
  %6 = load i64, i64* %2, align 8
  %7 = load i64, i64* @HEIGHT, align 8
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %9, label %38

9:                                                ; preds = %5
  store i64 0, i64* %3, align 8
  br label %10

10:                                               ; preds = %31, %9
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @HEIGHT, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %10
  %15 = load i64, i64* %2, align 8
  %16 = mul i64 %15, 4
  %17 = and i64 %16, 255
  %18 = trunc i64 %17 to i8
  %19 = load i8*, i8** %1, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %1, align 8
  store i8 %18, i8* %19, align 1
  %21 = load i8*, i8** %1, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %1, align 8
  store i8 -1, i8* %21, align 1
  %23 = load i8*, i8** %1, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %1, align 8
  store i8 0, i8* %23, align 1
  %25 = load i64, i64* %3, align 8
  %26 = mul i64 %25, 4
  %27 = and i64 %26, 255
  %28 = trunc i64 %27 to i8
  %29 = load i8*, i8** %1, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %1, align 8
  store i8 %28, i8* %29, align 1
  br label %31

31:                                               ; preds = %14
  %32 = load i64, i64* %3, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %3, align 8
  br label %10

34:                                               ; preds = %10
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %2, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %2, align 8
  br label %5

38:                                               ; preds = %5
  %39 = load i32, i32* @p_text, align 4
  %40 = load i32, i32* @TEXT, align 4
  %41 = load i32, i32* @TEXTSIZE, align 4
  %42 = call i32 @memcpy(i32 %39, i32 %40, i32 %41)
  ret void
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
