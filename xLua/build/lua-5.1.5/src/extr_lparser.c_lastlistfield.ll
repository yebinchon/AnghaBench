; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.1.5/src/extr_lparser.c_lastlistfield.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.1.5/src/extr_lparser.c_lastlistfield.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ConsControl = type { i64, i32, %struct.TYPE_8__*, %struct.TYPE_9__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i64 }

@LUA_MULTRET = common dso_local global i64 0, align 8
@VVOID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.ConsControl*)* @lastlistfield to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lastlistfield(i32* %0, %struct.ConsControl* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ConsControl*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.ConsControl* %1, %struct.ConsControl** %4, align 8
  %5 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %6 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %67

10:                                               ; preds = %2
  %11 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %12 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i64 @hasmultret(i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %10
  %18 = load i32*, i32** %3, align 8
  %19 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %20 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %19, i32 0, i32 3
  %21 = call i32 @luaK_setmultret(i32* %18, %struct.TYPE_9__* %20)
  %22 = load i32*, i32** %3, align 8
  %23 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %24 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %23, i32 0, i32 2
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %31 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i64, i64* @LUA_MULTRET, align 8
  %34 = call i32 @luaK_setlist(i32* %22, i32 %29, i32 %32, i64 %33)
  %35 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %36 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %36, align 8
  br label %67

39:                                               ; preds = %10
  %40 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %41 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @VVOID, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = load i32*, i32** %3, align 8
  %48 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %49 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %48, i32 0, i32 3
  %50 = call i32 @luaK_exp2nextreg(i32* %47, %struct.TYPE_9__* %49)
  br label %51

51:                                               ; preds = %46, %39
  %52 = load i32*, i32** %3, align 8
  %53 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %54 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %53, i32 0, i32 2
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %61 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %64 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @luaK_setlist(i32* %52, i32 %59, i32 %62, i64 %65)
  br label %67

67:                                               ; preds = %9, %51, %17
  ret void
}

declare dso_local i64 @hasmultret(i64) #1

declare dso_local i32 @luaK_setmultret(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @luaK_setlist(i32*, i32, i32, i64) #1

declare dso_local i32 @luaK_exp2nextreg(i32*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
