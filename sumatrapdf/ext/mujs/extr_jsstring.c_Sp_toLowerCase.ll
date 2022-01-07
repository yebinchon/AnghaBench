; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsstring.c_Sp_toLowerCase.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsstring.c_Sp_toLowerCase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UTFmax = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @Sp_toLowerCase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Sp_toLowerCase(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call i8* @checkstring(i32* %8, i32 0)
  store i8* %9, i8** %3, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = load i32, i32* @UTFmax, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @strlen(i8* %12)
  %14 = mul nsw i32 %11, %13
  %15 = add nsw i32 %14, 1
  %16 = call i8* @js_malloc(i32* %10, i32 %15)
  store i8* %16, i8** %4, align 8
  %17 = load i8*, i8** %3, align 8
  store i8* %17, i8** %5, align 8
  %18 = load i8*, i8** %4, align 8
  store i8* %18, i8** %6, align 8
  br label %19

19:                                               ; preds = %23, %1
  %20 = load i8*, i8** %5, align 8
  %21 = load i8, i8* %20, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %19
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @chartorune(i32* %7, i8* %24)
  %26 = load i8*, i8** %5, align 8
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  store i8* %28, i8** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @tolowerrune(i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @runetochar(i8* %31, i32* %7)
  %33 = load i8*, i8** %6, align 8
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  store i8* %35, i8** %6, align 8
  br label %19

36:                                               ; preds = %19
  %37 = load i8*, i8** %6, align 8
  store i8 0, i8* %37, align 1
  %38 = load i32*, i32** %2, align 8
  %39 = call i64 @js_try(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load i32*, i32** %2, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 @js_free(i32* %42, i8* %43)
  %45 = load i32*, i32** %2, align 8
  %46 = call i32 @js_throw(i32* %45)
  br label %47

47:                                               ; preds = %41, %36
  %48 = load i32*, i32** %2, align 8
  %49 = load i8*, i8** %4, align 8
  %50 = call i32 @js_pushstring(i32* %48, i8* %49)
  %51 = load i32*, i32** %2, align 8
  %52 = call i32 @js_endtry(i32* %51)
  %53 = load i32*, i32** %2, align 8
  %54 = load i8*, i8** %4, align 8
  %55 = call i32 @js_free(i32* %53, i8* %54)
  ret void
}

declare dso_local i8* @checkstring(i32*, i32) #1

declare dso_local i8* @js_malloc(i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @chartorune(i32*, i8*) #1

declare dso_local i32 @tolowerrune(i32) #1

declare dso_local i32 @runetochar(i8*, i32*) #1

declare dso_local i64 @js_try(i32*) #1

declare dso_local i32 @js_free(i32*, i8*) #1

declare dso_local i32 @js_throw(i32*) #1

declare dso_local i32 @js_pushstring(i32*, i8*) #1

declare dso_local i32 @js_endtry(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
