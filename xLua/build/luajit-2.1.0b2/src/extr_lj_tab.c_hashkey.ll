; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_tab.c_hashkey.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_tab.c_hashkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_10__*)* @hashkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @hashkey(i32* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %7 = call i32 @tvisint(%struct.TYPE_10__* %6)
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @lua_assert(i32 %10)
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %13 = call i64 @tvisstr(%struct.TYPE_10__* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %18 = call i32 @strV(%struct.TYPE_10__* %17)
  %19 = call i32* @hashstr(i32* %16, i32 %18)
  store i32* %19, i32** %3, align 8
  br label %43

20:                                               ; preds = %2
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %22 = call i64 @tvisnum(%struct.TYPE_10__* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32*, i32** %4, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %27 = call i32* @hashnum(i32* %25, %struct.TYPE_10__* %26)
  store i32* %27, i32** %3, align 8
  br label %43

28:                                               ; preds = %20
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %30 = call i64 @tvisbool(%struct.TYPE_10__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i32*, i32** %4, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %35 = call i32 @boolV(%struct.TYPE_10__* %34)
  %36 = call i32* @hashmask(i32* %33, i32 %35)
  store i32* %36, i32** %3, align 8
  br label %43

37:                                               ; preds = %28
  %38 = load i32*, i32** %4, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32* @hashgcref(i32* %38, i32 %41)
  store i32* %42, i32** %3, align 8
  br label %43

43:                                               ; preds = %37, %32, %24, %15
  %44 = load i32*, i32** %3, align 8
  ret i32* %44
}

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @tvisint(%struct.TYPE_10__*) #1

declare dso_local i64 @tvisstr(%struct.TYPE_10__*) #1

declare dso_local i32* @hashstr(i32*, i32) #1

declare dso_local i32 @strV(%struct.TYPE_10__*) #1

declare dso_local i64 @tvisnum(%struct.TYPE_10__*) #1

declare dso_local i32* @hashnum(i32*, %struct.TYPE_10__*) #1

declare dso_local i64 @tvisbool(%struct.TYPE_10__*) #1

declare dso_local i32* @hashmask(i32*, i32) #1

declare dso_local i32 @boolV(%struct.TYPE_10__*) #1

declare dso_local i32* @hashgcref(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
