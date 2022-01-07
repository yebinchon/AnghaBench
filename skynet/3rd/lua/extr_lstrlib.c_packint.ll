; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lua/extr_lstrlib.c_packint.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lua/extr_lstrlib.c_packint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MC = common dso_local global i32 0, align 4
@NB = common dso_local global i32 0, align 4
@SZINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32)* @packint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @packint(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %9, align 4
  %15 = call i8* @luaL_prepbuffsize(i32* %13, i32 %14)
  store i8* %15, i8** %11, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @MC, align 4
  %18 = and i32 %16, %17
  %19 = trunc i32 %18 to i8
  %20 = load i8*, i8** %11, align 8
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  br label %27

24:                                               ; preds = %5
  %25 = load i32, i32* %9, align 4
  %26 = sub nsw i32 %25, 1
  br label %27

27:                                               ; preds = %24, %23
  %28 = phi i32 [ 0, %23 ], [ %26, %24 ]
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %20, i64 %29
  store i8 %19, i8* %30, align 1
  store i32 1, i32* %12, align 4
  br label %31

31:                                               ; preds = %57, %27
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %60

35:                                               ; preds = %31
  %36 = load i32, i32* @NB, align 4
  %37 = load i32, i32* %7, align 4
  %38 = ashr i32 %37, %36
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @MC, align 4
  %41 = and i32 %39, %40
  %42 = trunc i32 %41 to i8
  %43 = load i8*, i8** %11, align 8
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %35
  %47 = load i32, i32* %12, align 4
  br label %53

48:                                               ; preds = %35
  %49 = load i32, i32* %9, align 4
  %50 = sub nsw i32 %49, 1
  %51 = load i32, i32* %12, align 4
  %52 = sub nsw i32 %50, %51
  br label %53

53:                                               ; preds = %48, %46
  %54 = phi i32 [ %47, %46 ], [ %52, %48 ]
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %43, i64 %55
  store i8 %42, i8* %56, align 1
  br label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %12, align 4
  br label %31

60:                                               ; preds = %31
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %94

63:                                               ; preds = %60
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @SZINT, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %94

67:                                               ; preds = %63
  %68 = load i32, i32* @SZINT, align 4
  store i32 %68, i32* %12, align 4
  br label %69

69:                                               ; preds = %90, %67
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %93

73:                                               ; preds = %69
  %74 = load i32, i32* @MC, align 4
  %75 = trunc i32 %74 to i8
  %76 = load i8*, i8** %11, align 8
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i32, i32* %12, align 4
  br label %86

81:                                               ; preds = %73
  %82 = load i32, i32* %9, align 4
  %83 = sub nsw i32 %82, 1
  %84 = load i32, i32* %12, align 4
  %85 = sub nsw i32 %83, %84
  br label %86

86:                                               ; preds = %81, %79
  %87 = phi i32 [ %80, %79 ], [ %85, %81 ]
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %76, i64 %88
  store i8 %75, i8* %89, align 1
  br label %90

90:                                               ; preds = %86
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %12, align 4
  br label %69

93:                                               ; preds = %69
  br label %94

94:                                               ; preds = %93, %63, %60
  %95 = load i32*, i32** %6, align 8
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @luaL_addsize(i32* %95, i32 %96)
  ret void
}

declare dso_local i8* @luaL_prepbuffsize(i32*, i32) #1

declare dso_local i32 @luaL_addsize(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
