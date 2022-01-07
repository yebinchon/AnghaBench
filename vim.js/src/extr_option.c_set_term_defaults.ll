; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_option.c_set_term_defaults.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_option.c_set_term_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vimoption = type { i32, i64, i32**, i32* }

@options = common dso_local global %struct.vimoption* null, align 8
@VI_DEFAULT = common dso_local global i64 0, align 8
@P_DEF_ALLOCED = common dso_local global i32 0, align 4
@P_ALLOCED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_term_defaults() #0 {
  %1 = alloca %struct.vimoption*, align 8
  %2 = load %struct.vimoption*, %struct.vimoption** @options, align 8
  %3 = getelementptr inbounds %struct.vimoption, %struct.vimoption* %2, i64 0
  store %struct.vimoption* %3, %struct.vimoption** %1, align 8
  br label %4

4:                                                ; preds = %78, %0
  %5 = load %struct.vimoption*, %struct.vimoption** %1, align 8
  %6 = getelementptr inbounds %struct.vimoption, %struct.vimoption* %5, i32 0, i32 3
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %81

9:                                                ; preds = %4
  %10 = load %struct.vimoption*, %struct.vimoption** %1, align 8
  %11 = call i64 @istermoption(%struct.vimoption* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %77

13:                                               ; preds = %9
  %14 = load %struct.vimoption*, %struct.vimoption** %1, align 8
  %15 = getelementptr inbounds %struct.vimoption, %struct.vimoption* %14, i32 0, i32 2
  %16 = load i32**, i32*** %15, align 8
  %17 = load i64, i64* @VI_DEFAULT, align 8
  %18 = getelementptr inbounds i32*, i32** %16, i64 %17
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.vimoption*, %struct.vimoption** %1, align 8
  %21 = getelementptr inbounds %struct.vimoption, %struct.vimoption* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i32**
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %19, %24
  br i1 %25, label %26, label %77

26:                                               ; preds = %13
  %27 = load %struct.vimoption*, %struct.vimoption** %1, align 8
  %28 = getelementptr inbounds %struct.vimoption, %struct.vimoption* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @P_DEF_ALLOCED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %26
  %34 = load %struct.vimoption*, %struct.vimoption** %1, align 8
  %35 = getelementptr inbounds %struct.vimoption, %struct.vimoption* %34, i32 0, i32 2
  %36 = load i32**, i32*** %35, align 8
  %37 = load i64, i64* @VI_DEFAULT, align 8
  %38 = getelementptr inbounds i32*, i32** %36, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @free_string_option(i32* %39)
  %41 = load i32, i32* @P_DEF_ALLOCED, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.vimoption*, %struct.vimoption** %1, align 8
  %44 = getelementptr inbounds %struct.vimoption, %struct.vimoption* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %33, %26
  %48 = load %struct.vimoption*, %struct.vimoption** %1, align 8
  %49 = getelementptr inbounds %struct.vimoption, %struct.vimoption* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i32**
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.vimoption*, %struct.vimoption** %1, align 8
  %54 = getelementptr inbounds %struct.vimoption, %struct.vimoption* %53, i32 0, i32 2
  %55 = load i32**, i32*** %54, align 8
  %56 = load i64, i64* @VI_DEFAULT, align 8
  %57 = getelementptr inbounds i32*, i32** %55, i64 %56
  store i32* %52, i32** %57, align 8
  %58 = load %struct.vimoption*, %struct.vimoption** %1, align 8
  %59 = getelementptr inbounds %struct.vimoption, %struct.vimoption* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @P_ALLOCED, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %47
  %65 = load i32, i32* @P_DEF_ALLOCED, align 4
  %66 = load %struct.vimoption*, %struct.vimoption** %1, align 8
  %67 = getelementptr inbounds %struct.vimoption, %struct.vimoption* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  %70 = load i32, i32* @P_ALLOCED, align 4
  %71 = xor i32 %70, -1
  %72 = load %struct.vimoption*, %struct.vimoption** %1, align 8
  %73 = getelementptr inbounds %struct.vimoption, %struct.vimoption* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = and i32 %74, %71
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %64, %47
  br label %77

77:                                               ; preds = %76, %13, %9
  br label %78

78:                                               ; preds = %77
  %79 = load %struct.vimoption*, %struct.vimoption** %1, align 8
  %80 = getelementptr inbounds %struct.vimoption, %struct.vimoption* %79, i32 1
  store %struct.vimoption* %80, %struct.vimoption** %1, align 8
  br label %4

81:                                               ; preds = %4
  ret void
}

declare dso_local i64 @istermoption(%struct.vimoption*) #1

declare dso_local i32 @free_string_option(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
