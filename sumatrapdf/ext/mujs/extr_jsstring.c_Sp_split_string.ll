; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsstring.c_Sp_split_string.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsstring.c_Sp_split_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @Sp_split_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Sp_split_string(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = call i8* @checkstring(i32* %10, i32 0)
  store i8* %11, i8** %3, align 8
  %12 = load i32*, i32** %2, align 8
  %13 = call i8* @js_tostring(i32* %12, i32 1)
  store i8* %13, i8** %4, align 8
  %14 = load i32*, i32** %2, align 8
  %15 = call i64 @js_isdefined(i32* %14, i32 2)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @js_tointeger(i32* %18, i32 2)
  br label %21

20:                                               ; preds = %1
  br label %21

21:                                               ; preds = %20, %17
  %22 = phi i32 [ %19, %17 ], [ 1073741824, %20 ]
  store i32 %22, i32* %5, align 4
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @js_newarray(i32* %23)
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @strlen(i8* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %59

29:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %55, %29
  %31 = load i8*, i8** %3, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %36, %37
  br label %39

39:                                               ; preds = %35, %30
  %40 = phi i1 [ false, %30 ], [ %38, %35 ]
  br i1 %40, label %41, label %58

41:                                               ; preds = %39
  %42 = load i8*, i8** %3, align 8
  %43 = call i32 @chartorune(i32* %8, i8* %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32*, i32** %2, align 8
  %45 = load i8*, i8** %3, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @js_pushlstring(i32* %44, i8* %45, i32 %46)
  %48 = load i32*, i32** %2, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @js_setindex(i32* %48, i32 -2, i32 %49)
  %51 = load i32, i32* %7, align 4
  %52 = load i8*, i8** %3, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8* %54, i8** %3, align 8
  br label %55

55:                                               ; preds = %41
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %30

58:                                               ; preds = %39
  br label %103

59:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %100, %59
  %61 = load i8*, i8** %3, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp slt i32 %64, %65
  br label %67

67:                                               ; preds = %63, %60
  %68 = phi i1 [ false, %60 ], [ %66, %63 ]
  br i1 %68, label %69, label %103

69:                                               ; preds = %67
  %70 = load i8*, i8** %3, align 8
  %71 = load i8*, i8** %4, align 8
  %72 = call i8* @strstr(i8* %70, i8* %71)
  store i8* %72, i8** %9, align 8
  %73 = load i8*, i8** %9, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %92

75:                                               ; preds = %69
  %76 = load i32*, i32** %2, align 8
  %77 = load i8*, i8** %3, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = load i8*, i8** %3, align 8
  %80 = ptrtoint i8* %78 to i64
  %81 = ptrtoint i8* %79 to i64
  %82 = sub i64 %80, %81
  %83 = trunc i64 %82 to i32
  %84 = call i32 @js_pushlstring(i32* %76, i8* %77, i32 %83)
  %85 = load i32*, i32** %2, align 8
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @js_setindex(i32* %85, i32 -2, i32 %86)
  %88 = load i8*, i8** %9, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  store i8* %91, i8** %3, align 8
  br label %99

92:                                               ; preds = %69
  %93 = load i32*, i32** %2, align 8
  %94 = load i8*, i8** %3, align 8
  %95 = call i32 @js_pushstring(i32* %93, i8* %94)
  %96 = load i32*, i32** %2, align 8
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @js_setindex(i32* %96, i32 -2, i32 %97)
  store i8* null, i8** %3, align 8
  br label %99

99:                                               ; preds = %92, %75
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %6, align 4
  br label %60

103:                                              ; preds = %58, %67
  ret void
}

declare dso_local i8* @checkstring(i32*, i32) #1

declare dso_local i8* @js_tostring(i32*, i32) #1

declare dso_local i64 @js_isdefined(i32*, i32) #1

declare dso_local i32 @js_tointeger(i32*, i32) #1

declare dso_local i32 @js_newarray(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @chartorune(i32*, i8*) #1

declare dso_local i32 @js_pushlstring(i32*, i8*, i32) #1

declare dso_local i32 @js_setindex(i32*, i32, i32) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @js_pushstring(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
