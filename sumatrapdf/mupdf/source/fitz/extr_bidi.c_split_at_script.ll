; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_bidi.c_split_at_script.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_bidi.c_split_at_script.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UCDN_SCRIPT_COMMON = common dso_local global i32 0, align 4
@UCDN_SCRIPT_INHERITED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i32, i8*, i32 (i32*, i64, i32, i32, i8*)**)* @split_at_script to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @split_at_script(i32* %0, i64 %1, i32 %2, i8* %3, i32 (i32*, i64, i32, i32, i8*)** %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32 (i32*, i64, i32, i32, i8*)**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 (i32*, i64, i32, i32, i8*)** %4, i32 (i32*, i64, i32, i32, i8*)*** %10, align 8
  %15 = load i32, i32* @UCDN_SCRIPT_COMMON, align 4
  store i32 %15, i32* %11, align 4
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  br label %16

16:                                               ; preds = %67, %5
  %17 = load i64, i64* %13, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %70

20:                                               ; preds = %16
  %21 = load i32*, i32** %6, align 8
  %22 = load i64, i64* %13, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ucdn_get_script(i32 %24)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* @UCDN_SCRIPT_COMMON, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %20
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* @UCDN_SCRIPT_INHERITED, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %20
  br label %66

34:                                               ; preds = %29
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %65

39:                                               ; preds = %34
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @UCDN_SCRIPT_COMMON, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @UCDN_SCRIPT_INHERITED, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43, %39
  %48 = load i32, i32* %14, align 4
  store i32 %48, i32* %11, align 4
  br label %64

49:                                               ; preds = %43
  %50 = load i32 (i32*, i64, i32, i32, i8*)**, i32 (i32*, i64, i32, i32, i8*)*** %10, align 8
  %51 = load i32 (i32*, i64, i32, i32, i8*)*, i32 (i32*, i64, i32, i32, i8*)** %50, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = load i64, i64* %12, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i64, i64* %13, align 8
  %56 = load i64, i64* %12, align 8
  %57 = sub i64 %55, %56
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i8*, i8** %9, align 8
  %61 = call i32 %51(i32* %54, i64 %57, i32 %58, i32 %59, i8* %60)
  %62 = load i64, i64* %13, align 8
  store i64 %62, i64* %12, align 8
  %63 = load i32, i32* %14, align 4
  store i32 %63, i32* %11, align 4
  br label %64

64:                                               ; preds = %49, %47
  br label %65

65:                                               ; preds = %64, %38
  br label %66

66:                                               ; preds = %65, %33
  br label %67

67:                                               ; preds = %66
  %68 = load i64, i64* %13, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %13, align 8
  br label %16

70:                                               ; preds = %16
  %71 = load i64, i64* %12, align 8
  %72 = load i64, i64* %7, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %87

74:                                               ; preds = %70
  %75 = load i32 (i32*, i64, i32, i32, i8*)**, i32 (i32*, i64, i32, i32, i8*)*** %10, align 8
  %76 = load i32 (i32*, i64, i32, i32, i8*)*, i32 (i32*, i64, i32, i32, i8*)** %75, align 8
  %77 = load i32*, i32** %6, align 8
  %78 = load i64, i64* %12, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i64, i64* %7, align 8
  %81 = load i64, i64* %12, align 8
  %82 = sub i64 %80, %81
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load i8*, i8** %9, align 8
  %86 = call i32 %76(i32* %79, i64 %82, i32 %83, i32 %84, i8* %85)
  br label %87

87:                                               ; preds = %74, %70
  ret void
}

declare dso_local i32 @ucdn_get_script(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
