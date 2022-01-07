; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_encode_streamname.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_encode_streamname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_STREAM_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to encode stream name (%s)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @encode_streamname(i64 %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i64 %0, i64* %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i32, i32* @MAX_STREAM_NAME, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i64, i64* %4, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @lstrlenW(i32* %15)
  %17 = add nsw i32 %16, 2
  store i32 %17, i32* %6, align 4
  br label %18

18:                                               ; preds = %14, %2
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 4
  %22 = trunc i64 %21 to i32
  %23 = call i32* @msi_alloc(i32 %22)
  store i32* %23, i32** %9, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  store i32* null, i32** %3, align 8
  br label %94

26:                                               ; preds = %18
  %27 = load i32*, i32** %9, align 8
  store i32* %27, i32** %10, align 8
  %28 = load i64, i64* %4, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i32*, i32** %10, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %10, align 8
  store i32 18496, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %30, %26
  br label %36

36:                                               ; preds = %84, %35
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %6, align 4
  %39 = icmp ne i32 %37, 0
  br i1 %39, label %40, label %88

40:                                               ; preds = %36
  %41 = load i32*, i32** %5, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %5, align 8
  %43 = load i32, i32* %41, align 4
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* %7, align 4
  %48 = load i32*, i32** %10, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32*, i32** %9, align 8
  store i32* %49, i32** %3, align 8
  br label %94

50:                                               ; preds = %40
  %51 = load i32, i32* %7, align 4
  %52 = icmp slt i32 %51, 128
  br i1 %52, label %53, label %84

53:                                               ; preds = %50
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @utf2mime(i32 %54)
  %56 = icmp sge i32 %55, 0
  br i1 %56, label %57, label %84

57:                                               ; preds = %53
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @utf2mime(i32 %58)
  %60 = add nsw i32 %59, 18432
  store i32 %60, i32* %7, align 4
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %83

65:                                               ; preds = %57
  %66 = load i32, i32* %8, align 4
  %67 = icmp slt i32 %66, 128
  br i1 %67, label %68, label %83

68:                                               ; preds = %65
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @utf2mime(i32 %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, -1
  br i1 %72, label %73, label %82

73:                                               ; preds = %68
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 67108800
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = shl i32 %76, 6
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %7, align 4
  %80 = load i32*, i32** %5, align 8
  %81 = getelementptr inbounds i32, i32* %80, i32 1
  store i32* %81, i32** %5, align 8
  br label %82

82:                                               ; preds = %73, %68
  br label %83

83:                                               ; preds = %82, %65, %57
  br label %84

84:                                               ; preds = %83, %53, %50
  %85 = load i32, i32* %7, align 4
  %86 = load i32*, i32** %10, align 8
  %87 = getelementptr inbounds i32, i32* %86, i32 1
  store i32* %87, i32** %10, align 8
  store i32 %85, i32* %86, align 4
  br label %36

88:                                               ; preds = %36
  %89 = load i32*, i32** %5, align 8
  %90 = call i32 @debugstr_w(i32* %89)
  %91 = call i32 @ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %90)
  %92 = load i32*, i32** %9, align 8
  %93 = call i32 @msi_free(i32* %92)
  store i32* null, i32** %3, align 8
  br label %94

94:                                               ; preds = %88, %46, %25
  %95 = load i32*, i32** %3, align 8
  ret i32* %95
}

declare dso_local i32 @lstrlenW(i32*) #1

declare dso_local i32* @msi_alloc(i32) #1

declare dso_local i32 @utf2mime(i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @debugstr_w(i32*) #1

declare dso_local i32 @msi_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
