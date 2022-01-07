; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/mbstring/extr_mbscoll.c__mbscoll.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/mbstring/extr_mbscoll.c__mbscoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_mbscoll(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i16*, align 8
  %9 = alloca i16*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %4, align 8
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %7, align 8
  br label %14

14:                                               ; preds = %96, %2
  %15 = load i8*, i8** %6, align 8
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %97

19:                                               ; preds = %14
  %20 = load i8*, i8** %6, align 8
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %97

25:                                               ; preds = %19
  %26 = load i8*, i8** %6, align 8
  %27 = load i8, i8* %26, align 1
  %28 = call i32 @_ismbblead(i8 zeroext %27)
  store i32 %28, i32* %10, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = load i8, i8* %29, align 1
  %31 = call i32 @_ismbblead(i8 zeroext %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %57, label %34

34:                                               ; preds = %25
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %57, label %37

37:                                               ; preds = %34
  %38 = load i8*, i8** %6, align 8
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = load i8*, i8** %7, align 8
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp ne i32 %40, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %37
  %46 = load i8*, i8** %6, align 8
  %47 = load i8, i8* %46, align 1
  %48 = load i8*, i8** %7, align 8
  %49 = load i8, i8* %48, align 1
  %50 = call i32 @colldif(i8 zeroext %47, i8 zeroext %49)
  store i32 %50, i32* %3, align 4
  br label %98

51:                                               ; preds = %37
  %52 = load i8*, i8** %6, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  store i8* %53, i8** %6, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  store i8* %55, i8** %7, align 8
  br label %56

56:                                               ; preds = %51
  br label %96

57:                                               ; preds = %34, %25
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %89

60:                                               ; preds = %57
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %89

63:                                               ; preds = %60
  %64 = load i8*, i8** %6, align 8
  %65 = bitcast i8* %64 to i16*
  store i16* %65, i16** %8, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = bitcast i8* %66 to i16*
  store i16* %67, i16** %9, align 8
  %68 = load i16*, i16** %8, align 8
  %69 = load i16, i16* %68, align 2
  %70 = zext i16 %69 to i32
  %71 = load i16*, i16** %9, align 8
  %72 = load i16, i16* %71, align 2
  %73 = zext i16 %72 to i32
  %74 = icmp ne i32 %70, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %63
  %76 = load i16*, i16** %8, align 8
  %77 = load i16, i16* %76, align 2
  %78 = trunc i16 %77 to i8
  %79 = load i16*, i16** %9, align 8
  %80 = load i16, i16* %79, align 2
  %81 = trunc i16 %80 to i8
  %82 = call i32 @colldif(i8 zeroext %78, i8 zeroext %81)
  store i32 %82, i32* %3, align 4
  br label %98

83:                                               ; preds = %63
  %84 = load i8*, i8** %6, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 2
  store i8* %85, i8** %6, align 8
  %86 = load i8*, i8** %7, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 2
  store i8* %87, i8** %7, align 8
  br label %88

88:                                               ; preds = %83
  br label %95

89:                                               ; preds = %60, %57
  %90 = load i8*, i8** %6, align 8
  %91 = load i8, i8* %90, align 1
  %92 = load i8*, i8** %7, align 8
  %93 = load i8, i8* %92, align 1
  %94 = call i32 @colldif(i8 zeroext %91, i8 zeroext %93)
  store i32 %94, i32* %3, align 4
  br label %98

95:                                               ; preds = %88
  br label %96

96:                                               ; preds = %95, %56
  br label %14

97:                                               ; preds = %24, %14
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %97, %89, %75, %45
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @_ismbblead(i8 zeroext) #1

declare dso_local i32 @colldif(i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
