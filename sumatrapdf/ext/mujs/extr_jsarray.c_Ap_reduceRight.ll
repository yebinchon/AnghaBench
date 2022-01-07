; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsarray.c_Ap_reduceRight.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsarray.c_Ap_reduceRight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"callback is not a function\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"no initial value\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @Ap_reduceRight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Ap_reduceRight(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @js_gettop(i32* %6)
  %8 = icmp sge i32 %7, 3
  %9 = zext i1 %8 to i32
  store i32 %9, i32* %3, align 4
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @js_iscallable(i32* %10, i32 1)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @js_typeerror(i32* %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %13, %1
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @js_getlength(i32* %17, i32 0)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %16
  %24 = load i32, i32* %3, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @js_typeerror(i32* %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %23, %16
  %30 = load i32, i32* %3, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @js_copy(i32* %33, i32 2)
  br label %54

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %46, %35
  %37 = load i32, i32* %4, align 4
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %36
  %40 = load i32*, i32** %2, align 8
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %4, align 4
  %43 = call i64 @js_hasindex(i32* %40, i32 0, i32 %41)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %47

46:                                               ; preds = %39
  br label %36

47:                                               ; preds = %45, %36
  %48 = load i32, i32* %4, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32*, i32** %2, align 8
  %52 = call i32 @js_typeerror(i32* %51, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %47
  br label %54

54:                                               ; preds = %53, %32
  br label %55

55:                                               ; preds = %79, %54
  %56 = load i32, i32* %4, align 4
  %57 = icmp sge i32 %56, 0
  br i1 %57, label %58, label %82

58:                                               ; preds = %55
  %59 = load i32*, i32** %2, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i64 @js_hasindex(i32* %59, i32 0, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %79

63:                                               ; preds = %58
  %64 = load i32*, i32** %2, align 8
  %65 = call i32 @js_copy(i32* %64, i32 1)
  %66 = load i32*, i32** %2, align 8
  %67 = call i32 @js_pushundefined(i32* %66)
  %68 = load i32*, i32** %2, align 8
  %69 = call i32 @js_rot(i32* %68, i32 4)
  %70 = load i32*, i32** %2, align 8
  %71 = call i32 @js_rot(i32* %70, i32 4)
  %72 = load i32*, i32** %2, align 8
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @js_pushnumber(i32* %72, i32 %73)
  %75 = load i32*, i32** %2, align 8
  %76 = call i32 @js_copy(i32* %75, i32 0)
  %77 = load i32*, i32** %2, align 8
  %78 = call i32 @js_call(i32* %77, i32 4)
  br label %79

79:                                               ; preds = %63, %58
  %80 = load i32, i32* %4, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %4, align 4
  br label %55

82:                                               ; preds = %55
  ret void
}

declare dso_local i32 @js_gettop(i32*) #1

declare dso_local i32 @js_iscallable(i32*, i32) #1

declare dso_local i32 @js_typeerror(i32*, i8*) #1

declare dso_local i32 @js_getlength(i32*, i32) #1

declare dso_local i32 @js_copy(i32*, i32) #1

declare dso_local i64 @js_hasindex(i32*, i32, i32) #1

declare dso_local i32 @js_pushundefined(i32*) #1

declare dso_local i32 @js_rot(i32*, i32) #1

declare dso_local i32 @js_pushnumber(i32*, i32) #1

declare dso_local i32 @js_call(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
