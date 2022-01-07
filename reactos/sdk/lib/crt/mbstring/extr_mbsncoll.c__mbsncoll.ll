; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/mbstring/extr_mbsncoll.c__mbsncoll.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/mbstring/extr_mbsncoll.c__mbsncoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_mbsncoll(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i16*, align 8
  %11 = alloca i16*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load i8*, i8** %5, align 8
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %6, align 8
  store i8* %15, i8** %9, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %106

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %102, %19
  %21 = load i8*, i8** %8, align 8
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %105

26:                                               ; preds = %20
  %27 = load i8*, i8** %8, align 8
  %28 = load i8, i8* %27, align 1
  %29 = call i32 @_ismbblead(i8 zeroext %28)
  store i32 %29, i32* %12, align 4
  %30 = load i8*, i8** %9, align 8
  %31 = load i8, i8* %30, align 1
  %32 = call i32 @_ismbblead(i8 zeroext %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %60, label %35

35:                                               ; preds = %26
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %60, label %38

38:                                               ; preds = %35
  %39 = load i8*, i8** %8, align 8
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = load i8*, i8** %9, align 8
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp ne i32 %41, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %38
  %47 = load i8*, i8** %8, align 8
  %48 = load i8, i8* %47, align 1
  %49 = load i8*, i8** %9, align 8
  %50 = load i8, i8* %49, align 1
  %51 = call i32 @colldif(i8 zeroext %48, i8 zeroext %50)
  store i32 %51, i32* %4, align 4
  br label %106

52:                                               ; preds = %38
  %53 = load i8*, i8** %8, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  store i8* %54, i8** %8, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  store i8* %56, i8** %9, align 8
  %57 = load i64, i64* %7, align 8
  %58 = add i64 %57, -1
  store i64 %58, i64* %7, align 8
  br label %59

59:                                               ; preds = %52
  br label %101

60:                                               ; preds = %35, %26
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %94

63:                                               ; preds = %60
  %64 = load i32, i32* %13, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %94

66:                                               ; preds = %63
  %67 = load i8*, i8** %8, align 8
  %68 = bitcast i8* %67 to i16*
  store i16* %68, i16** %10, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = bitcast i8* %69 to i16*
  store i16* %70, i16** %11, align 8
  %71 = load i16*, i16** %10, align 8
  %72 = load i16, i16* %71, align 2
  %73 = zext i16 %72 to i32
  %74 = load i16*, i16** %11, align 8
  %75 = load i16, i16* %74, align 2
  %76 = zext i16 %75 to i32
  %77 = icmp ne i32 %73, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %66
  %79 = load i16*, i16** %10, align 8
  %80 = load i16, i16* %79, align 2
  %81 = trunc i16 %80 to i8
  %82 = load i16*, i16** %11, align 8
  %83 = load i16, i16* %82, align 2
  %84 = trunc i16 %83 to i8
  %85 = call i32 @colldif(i8 zeroext %81, i8 zeroext %84)
  store i32 %85, i32* %4, align 4
  br label %106

86:                                               ; preds = %66
  %87 = load i8*, i8** %8, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 2
  store i8* %88, i8** %8, align 8
  %89 = load i8*, i8** %9, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 2
  store i8* %90, i8** %9, align 8
  %91 = load i64, i64* %7, align 8
  %92 = add i64 %91, -1
  store i64 %92, i64* %7, align 8
  br label %93

93:                                               ; preds = %86
  br label %100

94:                                               ; preds = %63, %60
  %95 = load i8*, i8** %8, align 8
  %96 = load i8, i8* %95, align 1
  %97 = load i8*, i8** %9, align 8
  %98 = load i8, i8* %97, align 1
  %99 = call i32 @colldif(i8 zeroext %96, i8 zeroext %98)
  store i32 %99, i32* %4, align 4
  br label %106

100:                                              ; preds = %93
  br label %101

101:                                              ; preds = %100, %59
  br label %102

102:                                              ; preds = %101
  %103 = load i64, i64* %7, align 8
  %104 = icmp ugt i64 %103, 0
  br i1 %104, label %20, label %105

105:                                              ; preds = %102, %25
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %105, %94, %78, %46, %18
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @_ismbblead(i8 zeroext) #1

declare dso_local i32 @colldif(i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
