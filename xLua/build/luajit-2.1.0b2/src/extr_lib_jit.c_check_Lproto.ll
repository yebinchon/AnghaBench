; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lib_jit.c_check_Lproto.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lib_jit.c_check_Lproto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32* }

@LUA_TFUNCTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_4__*, i32)* @check_Lproto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @check_Lproto(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %6, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = icmp ugt i32* %12, %13
  br i1 %14, label %15, label %43

15:                                               ; preds = %2
  %16 = load i32*, i32** %6, align 8
  %17 = call i64 @tvisproto(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32*, i32** %6, align 8
  %21 = call i32* @protoV(i32* %20)
  store i32* %21, i32** %3, align 8
  br label %47

22:                                               ; preds = %15
  %23 = load i32*, i32** %6, align 8
  %24 = call i64 @tvisfunc(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %22
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @funcV(i32* %27)
  %29 = call i64 @isluafunc(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @funcV(i32* %32)
  %34 = call i32* @funcproto(i32 %33)
  store i32* %34, i32** %3, align 8
  br label %47

35:                                               ; preds = %26
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32* null, i32** %3, align 8
  br label %47

39:                                               ; preds = %35
  br label %40

40:                                               ; preds = %39
  br label %41

41:                                               ; preds = %40, %22
  br label %42

42:                                               ; preds = %41
  br label %43

43:                                               ; preds = %42, %2
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %45 = load i32, i32* @LUA_TFUNCTION, align 4
  %46 = call i32 @lj_err_argt(%struct.TYPE_4__* %44, i32 1, i32 %45)
  store i32* null, i32** %3, align 8
  br label %47

47:                                               ; preds = %43, %38, %31, %19
  %48 = load i32*, i32** %3, align 8
  ret i32* %48
}

declare dso_local i64 @tvisproto(i32*) #1

declare dso_local i32* @protoV(i32*) #1

declare dso_local i64 @tvisfunc(i32*) #1

declare dso_local i64 @isluafunc(i32) #1

declare dso_local i32 @funcV(i32*) #1

declare dso_local i32* @funcproto(i32) #1

declare dso_local i32 @lj_err_argt(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
