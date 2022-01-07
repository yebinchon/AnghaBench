; ModuleID = '/home/carl/AnghaBench/redis/deps/lua/src/extr_lcode.c_luaK_setoneret.c'
source_filename = "/home/carl/AnghaBench/redis/deps/lua/src/extr_lcode.c_luaK_setoneret.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@VCALL = common dso_local global i64 0, align 8
@VNONRELOC = common dso_local global i64 0, align 8
@VVARARG = common dso_local global i64 0, align 8
@VRELOCABLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @luaK_setoneret(i32* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @VCALL, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %22

10:                                               ; preds = %2
  %11 = load i64, i64* @VNONRELOC, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = call i32 @getcode(i32* %14, %struct.TYPE_8__* %15)
  %17 = call i32 @GETARG_A(i32 %16)
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store i32 %17, i32* %21, align 8
  br label %37

22:                                               ; preds = %2
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @VVARARG, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = load i32*, i32** %3, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %31 = call i32 @getcode(i32* %29, %struct.TYPE_8__* %30)
  %32 = call i32 @SETARG_B(i32 %31, i32 2)
  %33 = load i64, i64* @VRELOCABLE, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  br label %36

36:                                               ; preds = %28, %22
  br label %37

37:                                               ; preds = %36, %10
  ret void
}

declare dso_local i32 @GETARG_A(i32) #1

declare dso_local i32 @getcode(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @SETARG_B(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
