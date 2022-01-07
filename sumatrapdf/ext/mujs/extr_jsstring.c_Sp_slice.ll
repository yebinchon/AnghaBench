; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsstring.c_Sp_slice.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsstring.c_Sp_slice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @Sp_slice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Sp_slice(i32* %0) #0 {
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
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %28, %29
  br label %33

31:                                               ; preds = %23
  %32 = load i32, i32* %7, align 4
  br label %33

33:                                               ; preds = %31, %27
  %34 = phi i32 [ %30, %27 ], [ %32, %31 ]
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %38, %39
  br label %43

41:                                               ; preds = %33
  %42 = load i32, i32* %8, align 4
  br label %43

43:                                               ; preds = %41, %37
  %44 = phi i32 [ %40, %37 ], [ %42, %41 ]
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %58

48:                                               ; preds = %43
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* %6, align 4
  br label %56

54:                                               ; preds = %48
  %55 = load i32, i32* %7, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  br label %58

58:                                               ; preds = %56, %47
  %59 = phi i32 [ 0, %47 ], [ %57, %56 ]
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %73

63:                                               ; preds = %58
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i32, i32* %6, align 4
  br label %71

69:                                               ; preds = %63
  %70 = load i32, i32* %8, align 4
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i32 [ %68, %67 ], [ %70, %69 ]
  br label %73

73:                                               ; preds = %71, %62
  %74 = phi i32 [ 0, %62 ], [ %72, %71 ]
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %73
  %79 = load i8*, i8** %3, align 8
  %80 = load i32, i32* %7, align 4
  %81 = call i8* @js_utfidxtoptr(i8* %79, i32 %80)
  store i8* %81, i8** %4, align 8
  %82 = load i8*, i8** %4, align 8
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %7, align 4
  %85 = sub nsw i32 %83, %84
  %86 = call i8* @js_utfidxtoptr(i8* %82, i32 %85)
  store i8* %86, i8** %5, align 8
  br label %96

87:                                               ; preds = %73
  %88 = load i8*, i8** %3, align 8
  %89 = load i32, i32* %8, align 4
  %90 = call i8* @js_utfidxtoptr(i8* %88, i32 %89)
  store i8* %90, i8** %4, align 8
  %91 = load i8*, i8** %4, align 8
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %8, align 4
  %94 = sub nsw i32 %92, %93
  %95 = call i8* @js_utfidxtoptr(i8* %91, i32 %94)
  store i8* %95, i8** %5, align 8
  br label %96

96:                                               ; preds = %87, %78
  %97 = load i32*, i32** %2, align 8
  %98 = load i8*, i8** %4, align 8
  %99 = load i8*, i8** %5, align 8
  %100 = load i8*, i8** %4, align 8
  %101 = ptrtoint i8* %99 to i64
  %102 = ptrtoint i8* %100 to i64
  %103 = sub i64 %101, %102
  %104 = trunc i64 %103 to i32
  %105 = call i32 @js_pushlstring(i32* %97, i8* %98, i32 %104)
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
