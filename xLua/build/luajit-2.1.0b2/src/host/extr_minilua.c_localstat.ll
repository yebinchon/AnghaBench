; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/host/extr_minilua.c_localstat.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/host/extr_minilua.c_localstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@VVOID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @localstat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @localstat(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %13, %1
  %7 = load i32*, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @str_checkname(i32* %8)
  %10 = load i32, i32* %3, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %3, align 4
  %12 = call i32 @new_localvar(i32* %7, i32 %9, i32 %10)
  br label %13

13:                                               ; preds = %6
  %14 = load i32*, i32** %2, align 8
  %15 = call i64 @testnext(i32* %14, i8 signext 44)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %6, label %17

17:                                               ; preds = %13
  %18 = load i32*, i32** %2, align 8
  %19 = call i64 @testnext(i32* %18, i8 signext 61)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @explist1(i32* %22, %struct.TYPE_4__* %5)
  store i32 %23, i32* %4, align 4
  br label %27

24:                                               ; preds = %17
  %25 = load i32, i32* @VVOID, align 4
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i32*, i32** %2, align 8
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @adjust_assign(i32* %28, i32 %29, i32 %30, %struct.TYPE_4__* %5)
  %32 = load i32*, i32** %2, align 8
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @adjustlocalvars(i32* %32, i32 %33)
  ret void
}

declare dso_local i32 @new_localvar(i32*, i32, i32) #1

declare dso_local i32 @str_checkname(i32*) #1

declare dso_local i64 @testnext(i32*, i8 signext) #1

declare dso_local i32 @explist1(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @adjust_assign(i32*, i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @adjustlocalvars(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
