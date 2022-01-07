; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsstring.c_Sp_substring.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsstring.c_Sp_substring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @Sp_substring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Sp_substring(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call i8* @checkstring(i32* %9, i32 0)
  store i8* %10, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @utflen(i8* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @js_tointeger(i32* %13, i32 1)
  store i32 %14, i32* %7, align 4
  %15 = load i32*, i32** %2, align 8
  %16 = call i64 @js_isdefined(i32* %15, i32 2)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @js_tointeger(i32* %19, i32 2)
  br label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %6, align 4
  br label %23

23:                                               ; preds = %21, %18
  %24 = phi i32 [ %20, %18 ], [ %22, %21 ]
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %38

28:                                               ; preds = %23
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* %6, align 4
  br label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %7, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  br label %38

38:                                               ; preds = %36, %27
  %39 = phi i32 [ 0, %27 ], [ %37, %36 ]
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %53

43:                                               ; preds = %38
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, i32* %6, align 4
  br label %51

49:                                               ; preds = %43
  %50 = load i32, i32* %8, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  br label %53

53:                                               ; preds = %51, %42
  %54 = phi i32 [ 0, %42 ], [ %52, %51 ]
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %53
  %59 = load i8*, i8** %3, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i8* @js_utfidxtoptr(i8* %59, i32 %60)
  store i8* %61, i8** %4, align 8
  %62 = load i8*, i8** %4, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %7, align 4
  %65 = sub nsw i32 %63, %64
  %66 = call i8* @js_utfidxtoptr(i8* %62, i32 %65)
  store i8* %66, i8** %5, align 8
  br label %76

67:                                               ; preds = %53
  %68 = load i8*, i8** %3, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i8* @js_utfidxtoptr(i8* %68, i32 %69)
  store i8* %70, i8** %4, align 8
  %71 = load i8*, i8** %4, align 8
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %8, align 4
  %74 = sub nsw i32 %72, %73
  %75 = call i8* @js_utfidxtoptr(i8* %71, i32 %74)
  store i8* %75, i8** %5, align 8
  br label %76

76:                                               ; preds = %67, %58
  %77 = load i32*, i32** %2, align 8
  %78 = load i8*, i8** %4, align 8
  %79 = load i8*, i8** %5, align 8
  %80 = load i8*, i8** %4, align 8
  %81 = ptrtoint i8* %79 to i64
  %82 = ptrtoint i8* %80 to i64
  %83 = sub i64 %81, %82
  %84 = trunc i64 %83 to i32
  %85 = call i32 @js_pushlstring(i32* %77, i8* %78, i32 %84)
  ret void
}

declare dso_local i8* @checkstring(i32*, i32) #1

declare dso_local i32 @utflen(i8*) #1

declare dso_local i32 @js_tointeger(i32*, i32) #1

declare dso_local i64 @js_isdefined(i32*, i32) #1

declare dso_local i8* @js_utfidxtoptr(i8*, i32) #1

declare dso_local i32 @js_pushlstring(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
