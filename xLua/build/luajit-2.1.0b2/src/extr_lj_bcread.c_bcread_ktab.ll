; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_bcread.c_bcread_ktab.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_bcread.c_bcread_ktab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (%struct.TYPE_9__*)* @bcread_ktab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @bcread_ktab(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %11 = call i64 @bcread_uleb128(%struct.TYPE_9__* %10)
  store i64 %11, i64* %3, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %13 = call i64 @bcread_uleb128(%struct.TYPE_9__* %12)
  store i64 %13, i64* %4, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @hsize2hbits(i64 %18)
  %20 = call %struct.TYPE_10__* @lj_tab_new(i32 %16, i64 %17, i32 %19)
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %5, align 8
  %21 = load i64, i64* %3, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %1
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32* @tvref(i32 %26)
  store i32* %27, i32** %7, align 8
  store i64 0, i64* %6, align 8
  br label %28

28:                                               ; preds = %36, %23
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %3, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %28
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @bcread_ktabk(%struct.TYPE_9__* %33, i32* %34)
  br label %36

36:                                               ; preds = %32
  %37 = load i64, i64* %6, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %6, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %7, align 8
  br label %28

41:                                               ; preds = %28
  br label %42

42:                                               ; preds = %41, %1
  %43 = load i64, i64* %4, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %69

45:                                               ; preds = %42
  store i64 0, i64* %8, align 8
  br label %46

46:                                               ; preds = %65, %45
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* %4, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %50, label %68

50:                                               ; preds = %46
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %52 = call i32 @bcread_ktabk(%struct.TYPE_9__* %51, i32* %9)
  %53 = call i32 @tvisnil(i32* %9)
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i32 @lua_assert(i32 %56)
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %63 = call i32* @lj_tab_set(i32 %61, %struct.TYPE_10__* %62, i32* %9)
  %64 = call i32 @bcread_ktabk(%struct.TYPE_9__* %58, i32* %63)
  br label %65

65:                                               ; preds = %50
  %66 = load i64, i64* %8, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %8, align 8
  br label %46

68:                                               ; preds = %46
  br label %69

69:                                               ; preds = %68, %42
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  ret %struct.TYPE_10__* %70
}

declare dso_local i64 @bcread_uleb128(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_10__* @lj_tab_new(i32, i64, i32) #1

declare dso_local i32 @hsize2hbits(i64) #1

declare dso_local i32* @tvref(i32) #1

declare dso_local i32 @bcread_ktabk(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @tvisnil(i32*) #1

declare dso_local i32* @lj_tab_set(i32, %struct.TYPE_10__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
