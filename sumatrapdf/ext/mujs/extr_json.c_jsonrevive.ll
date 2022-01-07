; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_json.c_jsonrevive.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_json.c_jsonrevive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @jsonrevive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jsonrevive(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [32 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @js_getproperty(i32* %9, i32 -1, i8* %10)
  %12 = load i32*, i32** %3, align 8
  %13 = call i64 @js_isobject(i32* %12, i32 -1)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %81

15:                                               ; preds = %2
  %16 = load i32*, i32** %3, align 8
  %17 = call i64 @js_isarray(i32* %16, i32 -1)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %49

19:                                               ; preds = %15
  store i32 0, i32* %7, align 4
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @js_getlength(i32* %20, i32 -1)
  store i32 %21, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %45, %19
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %48

26:                                               ; preds = %22
  %27 = load i32*, i32** %3, align 8
  %28 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %29 = load i32, i32* %7, align 4
  %30 = call i8* @js_itoa(i8* %28, i32 %29)
  call void @jsonrevive(i32* %27, i8* %30)
  %31 = load i32*, i32** %3, align 8
  %32 = call i64 @js_isundefined(i32* %31, i32 -1)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %26
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @js_pop(i32* %35, i32 1)
  %37 = load i32*, i32** %3, align 8
  %38 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %39 = call i32 @js_delproperty(i32* %37, i32 -1, i8* %38)
  br label %44

40:                                               ; preds = %26
  %41 = load i32*, i32** %3, align 8
  %42 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %43 = call i32 @js_setproperty(i32* %41, i32 -2, i8* %42)
  br label %44

44:                                               ; preds = %40, %34
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %22

48:                                               ; preds = %22
  br label %80

49:                                               ; preds = %15
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @js_pushiterator(i32* %50, i32 -1, i32 1)
  br label %52

52:                                               ; preds = %74, %49
  %53 = load i32*, i32** %3, align 8
  %54 = call i8* @js_nextiterator(i32* %53, i32 -1)
  store i8* %54, i8** %5, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %77

56:                                               ; preds = %52
  %57 = load i32*, i32** %3, align 8
  %58 = call i32 @js_rot2(i32* %57)
  %59 = load i32*, i32** %3, align 8
  %60 = load i8*, i8** %5, align 8
  call void @jsonrevive(i32* %59, i8* %60)
  %61 = load i32*, i32** %3, align 8
  %62 = call i64 @js_isundefined(i32* %61, i32 -1)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %56
  %65 = load i32*, i32** %3, align 8
  %66 = call i32 @js_pop(i32* %65, i32 1)
  %67 = load i32*, i32** %3, align 8
  %68 = load i8*, i8** %5, align 8
  %69 = call i32 @js_delproperty(i32* %67, i32 -1, i8* %68)
  br label %74

70:                                               ; preds = %56
  %71 = load i32*, i32** %3, align 8
  %72 = load i8*, i8** %5, align 8
  %73 = call i32 @js_setproperty(i32* %71, i32 -2, i8* %72)
  br label %74

74:                                               ; preds = %70, %64
  %75 = load i32*, i32** %3, align 8
  %76 = call i32 @js_rot2(i32* %75)
  br label %52

77:                                               ; preds = %52
  %78 = load i32*, i32** %3, align 8
  %79 = call i32 @js_pop(i32* %78, i32 1)
  br label %80

80:                                               ; preds = %77, %48
  br label %81

81:                                               ; preds = %80, %2
  %82 = load i32*, i32** %3, align 8
  %83 = call i32 @js_copy(i32* %82, i32 2)
  %84 = load i32*, i32** %3, align 8
  %85 = call i32 @js_copy(i32* %84, i32 -3)
  %86 = load i32*, i32** %3, align 8
  %87 = load i8*, i8** %4, align 8
  %88 = call i32 @js_pushstring(i32* %86, i8* %87)
  %89 = load i32*, i32** %3, align 8
  %90 = call i32 @js_copy(i32* %89, i32 -4)
  %91 = load i32*, i32** %3, align 8
  %92 = call i32 @js_call(i32* %91, i32 2)
  %93 = load i32*, i32** %3, align 8
  %94 = call i32 @js_rot2pop1(i32* %93)
  ret void
}

declare dso_local i32 @js_getproperty(i32*, i32, i8*) #1

declare dso_local i64 @js_isobject(i32*, i32) #1

declare dso_local i64 @js_isarray(i32*, i32) #1

declare dso_local i32 @js_getlength(i32*, i32) #1

declare dso_local i8* @js_itoa(i8*, i32) #1

declare dso_local i64 @js_isundefined(i32*, i32) #1

declare dso_local i32 @js_pop(i32*, i32) #1

declare dso_local i32 @js_delproperty(i32*, i32, i8*) #1

declare dso_local i32 @js_setproperty(i32*, i32, i8*) #1

declare dso_local i32 @js_pushiterator(i32*, i32, i32) #1

declare dso_local i8* @js_nextiterator(i32*, i32) #1

declare dso_local i32 @js_rot2(i32*) #1

declare dso_local i32 @js_copy(i32*, i32) #1

declare dso_local i32 @js_pushstring(i32*, i8*) #1

declare dso_local i32 @js_call(i32*, i32) #1

declare dso_local i32 @js_rot2pop1(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
