; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_reader.c_RTFCharSetToCodePage.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_reader.c_RTFCharSetToCodePage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@CP_ACP = common dso_local global i32 0, align 4
@CP_SYMBOL = common dso_local global i32 0, align 4
@CP_MACCP = common dso_local global i32 0, align 4
@CP_OEMCP = common dso_local global i32 0, align 4
@TCI_SRCCHARSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"unknown charset %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RTFCharSetToCodePage(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %32 [
    i32 146, label %9
    i32 142, label %10
    i32 131, label %12
    i32 135, label %14
    i32 132, label %16
    i32 138, label %17
    i32 136, label %18
    i32 140, label %19
    i32 143, label %20
    i32 139, label %21
    i32 129, label %22
    i32 128, label %23
    i32 137, label %24
    i32 145, label %25
    i32 144, label %26
    i32 133, label %27
    i32 130, label %28
    i32 141, label %29
    i32 134, label %30
  ]

9:                                                ; preds = %2
  store i32 1252, i32* %3, align 4
  br label %45

10:                                               ; preds = %2
  %11 = load i32, i32* @CP_ACP, align 4
  store i32 %11, i32* %3, align 4
  br label %45

12:                                               ; preds = %2
  %13 = load i32, i32* @CP_SYMBOL, align 4
  store i32 %13, i32* %3, align 4
  br label %45

14:                                               ; preds = %2
  %15 = load i32, i32* @CP_MACCP, align 4
  store i32 %15, i32* %3, align 4
  br label %45

16:                                               ; preds = %2
  store i32 932, i32* %3, align 4
  br label %45

17:                                               ; preds = %2
  store i32 949, i32* %3, align 4
  br label %45

18:                                               ; preds = %2
  store i32 1361, i32* %3, align 4
  br label %45

19:                                               ; preds = %2
  store i32 936, i32* %3, align 4
  br label %45

20:                                               ; preds = %2
  store i32 950, i32* %3, align 4
  br label %45

21:                                               ; preds = %2
  store i32 1253, i32* %3, align 4
  br label %45

22:                                               ; preds = %2
  store i32 1254, i32* %3, align 4
  br label %45

23:                                               ; preds = %2
  store i32 1258, i32* %3, align 4
  br label %45

24:                                               ; preds = %2
  store i32 1255, i32* %3, align 4
  br label %45

25:                                               ; preds = %2
  store i32 1256, i32* %3, align 4
  br label %45

26:                                               ; preds = %2
  store i32 1257, i32* %3, align 4
  br label %45

27:                                               ; preds = %2
  store i32 1251, i32* %3, align 4
  br label %45

28:                                               ; preds = %2
  store i32 874, i32* %3, align 4
  br label %45

29:                                               ; preds = %2
  store i32 1250, i32* %3, align 4
  br label %45

30:                                               ; preds = %2
  %31 = load i32, i32* @CP_OEMCP, align 4
  store i32 %31, i32* %3, align 4
  br label %45

32:                                               ; preds = %2
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* @TCI_SRCCHARSET, align 4
  %35 = call i32 @TranslateCharsetInfo(i32* %7, %struct.TYPE_3__* %6, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @ERR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %43

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %3, align 4
  br label %45

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %40, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %14, %12, %10, %9
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @TranslateCharsetInfo(i32*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
