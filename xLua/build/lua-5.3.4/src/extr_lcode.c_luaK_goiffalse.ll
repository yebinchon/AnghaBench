; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.4/src/extr_lcode.c_luaK_goiffalse.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.4/src/extr_lcode.c_luaK_goiffalse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i8*, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@NO_JUMP = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @luaK_goiffalse(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %8 = call i32 @luaK_dischargevars(i32* %6, %struct.TYPE_7__* %7)
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %20 [
    i32 129, label %12
    i32 128, label %17
    i32 130, label %17
  ]

12:                                               ; preds = %2
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  br label %24

17:                                               ; preds = %2, %2
  %18 = load i8*, i8** @NO_JUMP, align 8
  %19 = ptrtoint i8* %18 to i32
  store i32 %19, i32* %5, align 4
  br label %24

20:                                               ; preds = %2
  %21 = load i32*, i32** %3, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = call i32 @jumponcond(i32* %21, %struct.TYPE_7__* %22, i32 1)
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %20, %17, %12
  %25 = load i32*, i32** %3, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 2
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @luaK_concat(i32* %25, i32* %27, i32 %28)
  %30 = load i32*, i32** %3, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @luaK_patchtohere(i32* %30, i8* %33)
  %35 = load i8*, i8** @NO_JUMP, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  ret void
}

declare dso_local i32 @luaK_dischargevars(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @jumponcond(i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @luaK_concat(i32*, i32*, i32) #1

declare dso_local i32 @luaK_patchtohere(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
