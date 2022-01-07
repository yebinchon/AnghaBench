; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_ndr_marshall.c_ComplexStructSize.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_ndr_marshall.c_ComplexStructSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FC_END = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"unhandled format 0x%02x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ComplexStructSize(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %82, %57, %2
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @FC_END, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %85

12:                                               ; preds = %7
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %78 [
    i32 157, label %15
    i32 156, label %15
    i32 141, label %15
    i32 129, label %15
    i32 128, label %18
    i32 142, label %18
    i32 130, label %18
    i32 147, label %21
    i32 132, label %21
    i32 153, label %21
    i32 152, label %21
    i32 151, label %21
    i32 148, label %24
    i32 133, label %24
    i32 149, label %29
    i32 155, label %29
    i32 143, label %32
    i32 131, label %32
    i32 146, label %32
    i32 150, label %32
    i32 144, label %32
    i32 160, label %44
    i32 159, label %46
    i32 158, label %48
    i32 140, label %50
    i32 139, label %50
    i32 138, label %50
    i32 137, label %50
    i32 136, label %50
    i32 135, label %50
    i32 134, label %50
    i32 154, label %57
    i32 145, label %77
  ]

15:                                               ; preds = %12, %12, %12, %12
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %6, align 4
  br label %82

18:                                               ; preds = %12, %12, %12
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %19, 2
  store i32 %20, i32* %6, align 4
  br label %82

21:                                               ; preds = %12, %12, %12, %12, %12
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, 4
  store i32 %23, i32* %6, align 4
  br label %82

24:                                               ; preds = %12, %12
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = add i64 %26, 4
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %6, align 4
  br label %82

29:                                               ; preds = %12, %12
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 8
  store i32 %31, i32* %6, align 4
  br label %82

32:                                               ; preds = %12, %12, %12, %12, %12
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = add i64 %34, 8
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %6, align 4
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 144
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load i32*, i32** %4, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 4
  store i32* %42, i32** %4, align 8
  br label %43

43:                                               ; preds = %40, %32
  br label %82

44:                                               ; preds = %12
  %45 = call i32 @align_length(i32* %6, i32 2)
  br label %82

46:                                               ; preds = %12
  %47 = call i32 @align_length(i32* %6, i32 4)
  br label %82

48:                                               ; preds = %12
  %49 = call i32 @align_length(i32* %6, i32 8)
  br label %82

50:                                               ; preds = %12, %12, %12, %12, %12, %12, %12
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 %52, 140
  %54 = add nsw i32 %53, 1
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %6, align 4
  br label %82

57:                                               ; preds = %12
  %58 = load i32*, i32** %4, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %6, align 4
  %63 = load i32*, i32** %4, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  store i32* %64, i32** %4, align 8
  %65 = load i32*, i32** %4, align 8
  %66 = load i32*, i32** %4, align 8
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  store i32* %69, i32** %5, align 8
  %70 = load i32, i32* %3, align 4
  %71 = load i32*, i32** %5, align 8
  %72 = call i32 @EmbeddedComplexSize(i32 %70, i32* %71)
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, %72
  store i32 %74, i32* %6, align 4
  %75 = load i32*, i32** %4, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 2
  store i32* %76, i32** %4, align 8
  br label %7

77:                                               ; preds = %12
  br label %82

78:                                               ; preds = %12
  %79 = load i32*, i32** %4, align 8
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @FIXME(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %78, %77, %50, %48, %46, %44, %43, %29, %24, %21, %18, %15
  %83 = load i32*, i32** %4, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %84, i32** %4, align 8
  br label %7

85:                                               ; preds = %7
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local i32 @align_length(i32*, i32) #1

declare dso_local i32 @EmbeddedComplexSize(i32, i32*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
