; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/mbstring/extr_mbsicmp.c__mbsicmp.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/mbstring/extr_mbsicmp.c__mbsicmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_mbsicmp(i8* %0, i8* %1) #0 {
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
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %101

20:                                               ; preds = %14
  %21 = load i8*, i8** %6, align 8
  %22 = load i8, i8* %21, align 1
  %23 = call i32 @_ismbblead(i8 zeroext %22)
  store i32 %23, i32* %10, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = load i8, i8* %24, align 1
  %26 = call i32 @_ismbblead(i8 zeroext %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %54, label %29

29:                                               ; preds = %20
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %54, label %32

32:                                               ; preds = %29
  %33 = load i8*, i8** %6, align 8
  %34 = load i8, i8* %33, align 1
  %35 = call i32 @toupper(i8 zeroext %34)
  %36 = load i8*, i8** %7, align 8
  %37 = load i8, i8* %36, align 1
  %38 = call i32 @toupper(i8 zeroext %37)
  %39 = icmp ne i32 %35, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %32
  %41 = load i8*, i8** %6, align 8
  %42 = load i8, i8* %41, align 1
  %43 = call i32 @toupper(i8 zeroext %42)
  %44 = load i8*, i8** %7, align 8
  %45 = load i8, i8* %44, align 1
  %46 = call i32 @toupper(i8 zeroext %45)
  %47 = sub nsw i32 %43, %46
  store i32 %47, i32* %3, align 4
  br label %102

48:                                               ; preds = %32
  %49 = load i8*, i8** %6, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  store i8* %50, i8** %6, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  store i8* %52, i8** %7, align 8
  br label %53

53:                                               ; preds = %48
  br label %95

54:                                               ; preds = %29, %20
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %86

57:                                               ; preds = %54
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %86

60:                                               ; preds = %57
  %61 = load i8*, i8** %6, align 8
  %62 = bitcast i8* %61 to i16*
  store i16* %62, i16** %8, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = bitcast i8* %63 to i16*
  store i16* %64, i16** %9, align 8
  %65 = load i16*, i16** %8, align 8
  %66 = load i16, i16* %65, align 2
  %67 = call i32 @_mbctoupper(i16 zeroext %66)
  %68 = load i16*, i16** %9, align 8
  %69 = load i16, i16* %68, align 2
  %70 = call i32 @_mbctoupper(i16 zeroext %69)
  %71 = icmp ne i32 %67, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %60
  %73 = load i16*, i16** %8, align 8
  %74 = load i16, i16* %73, align 2
  %75 = call i32 @_mbctoupper(i16 zeroext %74)
  %76 = load i16*, i16** %9, align 8
  %77 = load i16, i16* %76, align 2
  %78 = call i32 @_mbctoupper(i16 zeroext %77)
  %79 = sub nsw i32 %75, %78
  store i32 %79, i32* %3, align 4
  br label %102

80:                                               ; preds = %60
  %81 = load i8*, i8** %6, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 2
  store i8* %82, i8** %6, align 8
  %83 = load i8*, i8** %7, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 2
  store i8* %84, i8** %7, align 8
  br label %85

85:                                               ; preds = %80
  br label %94

86:                                               ; preds = %57, %54
  %87 = load i8*, i8** %6, align 8
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = load i8*, i8** %7, align 8
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = sub nsw i32 %89, %92
  store i32 %93, i32* %3, align 4
  br label %102

94:                                               ; preds = %85
  br label %95

95:                                               ; preds = %94, %53
  br label %96

96:                                               ; preds = %95
  %97 = load i8*, i8** %6, align 8
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %14, label %101

101:                                              ; preds = %96, %19
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %101, %86, %72, %40
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @_ismbblead(i8 zeroext) #1

declare dso_local i32 @toupper(i8 zeroext) #1

declare dso_local i32 @_mbctoupper(i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
