; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/printf/extr_streamout.c_streamout_wstring.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/printf/extr_streamout.c_streamout_wstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }

@MB_CUR_MAX = common dso_local global i32 0, align 4
@_IOSTRG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i64)* @streamout_wstring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @streamout_wstring(%struct.TYPE_4__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %54, %3
  %16 = load i64, i64* %7, align 8
  %17 = add i64 %16, -1
  store i64 %17, i64* %7, align 8
  %18 = icmp ne i64 %16, 0
  br i1 %18, label %19, label %55

19:                                               ; preds = %15
  %20 = load i32, i32* @MB_CUR_MAX, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %10, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %11, align 8
  store i8* %23, i8** %12, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %25, i32** %6, align 8
  %26 = load i32, i32* %24, align 4
  %27 = call i32 @wctomb(i8* %23, i32 %26)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp sle i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %19
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %51

32:                                               ; preds = %19
  br label %33

33:                                               ; preds = %47, %32
  %34 = load i8*, i8** %12, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %12, align 8
  %36 = load i8, i8* %34, align 1
  %37 = sext i8 %36 to i32
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %13, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %13, align 4
  %40 = icmp ne i32 %38, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %33
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i64 @streamout_char(%struct.TYPE_4__* %42, i32 %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %51

47:                                               ; preds = %41
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %33

50:                                               ; preds = %33
  store i32 0, i32* %14, align 4
  br label %51

51:                                               ; preds = %50, %46, %30
  %52 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %52)
  %53 = load i32, i32* %14, align 4
  switch i32 %53, label %59 [
    i32 0, label %54
    i32 1, label %57
  ]

54:                                               ; preds = %51
  br label %15

55:                                               ; preds = %15
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %55, %51
  %58 = load i32, i32* %4, align 4
  ret i32 %58

59:                                               ; preds = %51
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wctomb(i8*, i32) #2

declare dso_local i64 @streamout_char(%struct.TYPE_4__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
