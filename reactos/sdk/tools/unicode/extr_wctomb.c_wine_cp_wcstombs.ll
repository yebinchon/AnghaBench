; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/unicode/extr_wctomb.c_wine_cp_wcstombs.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/unicode/extr_wctomb.c_wine_cp_wcstombs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cptable = type { i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wine_cp_wcstombs(%union.cptable* %0, i32 %1, i32* %2, i32 %3, i8* %4, i32 %5, i8* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %union.cptable*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  store %union.cptable* %0, %union.cptable** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i32* %7, i32** %17, align 8
  %18 = load %union.cptable*, %union.cptable** %10, align 8
  %19 = bitcast %union.cptable* %18 to %struct.TYPE_2__*
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %67

23:                                               ; preds = %8
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %23
  %27 = load i8*, i8** %16, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32*, i32** %17, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %54

32:                                               ; preds = %29, %26, %23
  %33 = load i32, i32* %15, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %32
  %36 = load %union.cptable*, %union.cptable** %10, align 8
  %37 = bitcast %union.cptable* %36 to i32*
  %38 = load i32, i32* %11, align 4
  %39 = load i32*, i32** %12, align 8
  %40 = load i32, i32* %13, align 4
  %41 = load i32*, i32** %17, align 8
  %42 = call i32 @get_length_sbcs(i32* %37, i32 %38, i32* %39, i32 %40, i32* %41)
  store i32 %42, i32* %9, align 4
  br label %107

43:                                               ; preds = %32
  %44 = load %union.cptable*, %union.cptable** %10, align 8
  %45 = bitcast %union.cptable* %44 to i32*
  %46 = load i32, i32* %11, align 4
  %47 = load i32*, i32** %12, align 8
  %48 = load i32, i32* %13, align 4
  %49 = load i8*, i8** %14, align 8
  %50 = load i32, i32* %15, align 4
  %51 = load i8*, i8** %16, align 8
  %52 = load i32*, i32** %17, align 8
  %53 = call i32 @wcstombs_sbcs_slow(i32* %45, i32 %46, i32* %47, i32 %48, i8* %49, i32 %50, i8* %51, i32* %52)
  store i32 %53, i32* %9, align 4
  br label %107

54:                                               ; preds = %29
  %55 = load i32, i32* %15, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %13, align 4
  store i32 %58, i32* %9, align 4
  br label %107

59:                                               ; preds = %54
  %60 = load %union.cptable*, %union.cptable** %10, align 8
  %61 = bitcast %union.cptable* %60 to i32*
  %62 = load i32*, i32** %12, align 8
  %63 = load i32, i32* %13, align 4
  %64 = load i8*, i8** %14, align 8
  %65 = load i32, i32* %15, align 4
  %66 = call i32 @wcstombs_sbcs(i32* %61, i32* %62, i32 %63, i8* %64, i32 %65)
  store i32 %66, i32* %9, align 4
  br label %107

67:                                               ; preds = %8
  %68 = load i32, i32* %15, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %79, label %70

70:                                               ; preds = %67
  %71 = load %union.cptable*, %union.cptable** %10, align 8
  %72 = bitcast %union.cptable* %71 to i32*
  %73 = load i32, i32* %11, align 4
  %74 = load i32*, i32** %12, align 8
  %75 = load i32, i32* %13, align 4
  %76 = load i8*, i8** %16, align 8
  %77 = load i32*, i32** %17, align 8
  %78 = call i32 @get_length_dbcs(i32* %72, i32 %73, i32* %74, i32 %75, i8* %76, i32* %77)
  store i32 %78, i32* %9, align 4
  br label %107

79:                                               ; preds = %67
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %79
  %83 = load i8*, i8** %16, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  %86 = load i32*, i32** %17, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %99

88:                                               ; preds = %85, %82, %79
  %89 = load %union.cptable*, %union.cptable** %10, align 8
  %90 = bitcast %union.cptable* %89 to i32*
  %91 = load i32, i32* %11, align 4
  %92 = load i32*, i32** %12, align 8
  %93 = load i32, i32* %13, align 4
  %94 = load i8*, i8** %14, align 8
  %95 = load i32, i32* %15, align 4
  %96 = load i8*, i8** %16, align 8
  %97 = load i32*, i32** %17, align 8
  %98 = call i32 @wcstombs_dbcs_slow(i32* %90, i32 %91, i32* %92, i32 %93, i8* %94, i32 %95, i8* %96, i32* %97)
  store i32 %98, i32* %9, align 4
  br label %107

99:                                               ; preds = %85
  %100 = load %union.cptable*, %union.cptable** %10, align 8
  %101 = bitcast %union.cptable* %100 to i32*
  %102 = load i32*, i32** %12, align 8
  %103 = load i32, i32* %13, align 4
  %104 = load i8*, i8** %14, align 8
  %105 = load i32, i32* %15, align 4
  %106 = call i32 @wcstombs_dbcs(i32* %101, i32* %102, i32 %103, i8* %104, i32 %105)
  store i32 %106, i32* %9, align 4
  br label %107

107:                                              ; preds = %99, %88, %70, %59, %57, %43, %35
  %108 = load i32, i32* %9, align 4
  ret i32 %108
}

declare dso_local i32 @get_length_sbcs(i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @wcstombs_sbcs_slow(i32*, i32, i32*, i32, i8*, i32, i8*, i32*) #1

declare dso_local i32 @wcstombs_sbcs(i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @get_length_dbcs(i32*, i32, i32*, i32, i8*, i32*) #1

declare dso_local i32 @wcstombs_dbcs_slow(i32*, i32, i32*, i32, i8*, i32, i8*, i32*) #1

declare dso_local i32 @wcstombs_dbcs(i32*, i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
