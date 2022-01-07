; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lua/extr_ltm.c_luaT_trybinTM.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lua/extr_ltm.c_luaT_trybinTM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"perform bitwise operation on\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"perform arithmetic on\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @luaT_trybinTM(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %10, align 4
  %17 = call i32 @luaT_callbinTM(i32* %12, i32* %13, i32* %14, i32 %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %51, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* %10, align 4
  switch i32 %20, label %45 [
    i32 130, label %21
    i32 134, label %26
    i32 132, label %26
    i32 131, label %26
    i32 129, label %26
    i32 128, label %26
    i32 133, label %26
  ]

21:                                               ; preds = %19
  %22 = load i32*, i32** %6, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @luaG_concaterror(i32* %22, i32* %23, i32* %24)
  br label %26

26:                                               ; preds = %19, %19, %19, %19, %19, %19, %21
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @tonumber(i32* %27, i32* %11)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @tonumber(i32* %31, i32* %11)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load i32*, i32** %6, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @luaG_tointerror(i32* %35, i32* %36, i32* %37)
  br label %44

39:                                               ; preds = %30, %26
  %40 = load i32*, i32** %6, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @luaG_opinterror(i32* %40, i32* %41, i32* %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %39, %34
  br label %45

45:                                               ; preds = %19, %44
  %46 = load i32*, i32** %6, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @luaG_opinterror(i32* %46, i32* %47, i32* %48, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %50, %5
  ret void
}

declare dso_local i32 @luaT_callbinTM(i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @luaG_concaterror(i32*, i32*, i32*) #1

declare dso_local i32 @tonumber(i32*, i32*) #1

declare dso_local i32 @luaG_tointerror(i32*, i32*, i32*) #1

declare dso_local i32 @luaG_opinterror(i32*, i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
