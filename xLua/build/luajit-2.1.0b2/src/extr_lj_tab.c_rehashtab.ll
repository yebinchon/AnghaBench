; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_tab.c_rehashtab.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_tab.c_rehashtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LJ_MAX_ABITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*)* @rehashtab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rehashtab(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load i32, i32* @LJ_MAX_ABITS, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  store i32 0, i32* %12, align 4
  br label %17

17:                                               ; preds = %25, %3
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* @LJ_MAX_ABITS, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = load i32, i32* %12, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %16, i64 %23
  store i32 0, i32* %24, align 4
  br label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %12, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %12, align 4
  br label %17

28:                                               ; preds = %17
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @countarray(i32* %29, i32* %16)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = add nsw i32 1, %31
  store i32 %32, i32* %9, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @counthash(i32* %33, i32* %16, i32* %10)
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* %9, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @countint(i32* %37, i32* %16)
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* %10, align 4
  %41 = call i32 @bestasize(i32* %16, i32* %10)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %9, align 4
  %44 = sub nsw i32 %43, %42
  store i32 %44, i32* %9, align 4
  %45 = load i32*, i32** %4, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @hsize2hbits(i32 %48)
  %50 = call i32 @lj_tab_resize(i32* %45, i32* %46, i32 %47, i32 %49)
  %51 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %51)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @countarray(i32*, i32*) #2

declare dso_local i32 @counthash(i32*, i32*, i32*) #2

declare dso_local i32 @countint(i32*, i32*) #2

declare dso_local i32 @bestasize(i32*, i32*) #2

declare dso_local i32 @lj_tab_resize(i32*, i32*, i32, i32) #2

declare dso_local i32 @hsize2hbits(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
