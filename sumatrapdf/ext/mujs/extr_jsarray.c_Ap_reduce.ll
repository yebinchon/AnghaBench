; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsarray.c_Ap_reduce.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsarray.c_Ap_reduce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"callback is not a function\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"no initial value\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @Ap_reduce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Ap_reduce(i32* %0) #0 {
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
  store i32 0, i32* %4, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @js_typeerror(i32* %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %21, %16
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @js_copy(i32* %31, i32 2)
  br label %54

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %45, %33
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load i32*, i32** %2, align 8
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  %42 = call i64 @js_hasindex(i32* %39, i32 0, i32 %40)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %46

45:                                               ; preds = %38
  br label %34

46:                                               ; preds = %44, %34
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32*, i32** %2, align 8
  %52 = call i32 @js_typeerror(i32* %51, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %46
  br label %54

54:                                               ; preds = %53, %30
  br label %55

55:                                               ; preds = %80, %54
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %83

59:                                               ; preds = %55
  %60 = load i32*, i32** %2, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call i64 @js_hasindex(i32* %60, i32 0, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %59
  %65 = load i32*, i32** %2, align 8
  %66 = call i32 @js_copy(i32* %65, i32 1)
  %67 = load i32*, i32** %2, align 8
  %68 = call i32 @js_pushundefined(i32* %67)
  %69 = load i32*, i32** %2, align 8
  %70 = call i32 @js_rot(i32* %69, i32 4)
  %71 = load i32*, i32** %2, align 8
  %72 = call i32 @js_rot(i32* %71, i32 4)
  %73 = load i32*, i32** %2, align 8
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @js_pushnumber(i32* %73, i32 %74)
  %76 = load i32*, i32** %2, align 8
  %77 = call i32 @js_copy(i32* %76, i32 0)
  %78 = load i32*, i32** %2, align 8
  %79 = call i32 @js_call(i32* %78, i32 4)
  br label %80

80:                                               ; preds = %64, %59
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %4, align 4
  br label %55

83:                                               ; preds = %55
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
