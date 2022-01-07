; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lua/extr_lstring.c_luaS_newudata.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lua/extr_lstring.c_luaS_newudata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32* }

@MAX_SIZE = common dso_local global i32 0, align 4
@LUA_TUSERDATA = common dso_local global i32 0, align 4
@luaO_nilobject = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @luaS_newudata(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i32, i32* @MAX_SIZE, align 4
  %9 = sext i32 %8 to i64
  %10 = sub i64 %9, 16
  %11 = icmp ugt i64 %7, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @luaM_toobig(i32* %13)
  br label %15

15:                                               ; preds = %12, %2
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* @LUA_TUSERDATA, align 4
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @sizeludata(i64 %18)
  %20 = call i32* @luaC_newobj(i32* %16, i32 %17, i32 %19)
  store i32* %20, i32** %6, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call %struct.TYPE_5__* @gco2u(i32* %21)
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %5, align 8
  %23 = load i64, i64* %4, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  store i32* null, i32** %27, align 8
  %28 = load i32*, i32** %3, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = load i32, i32* @luaO_nilobject, align 4
  %31 = call i32 @setuservalue(i32* %28, %struct.TYPE_5__* %29, i32 %30)
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  ret %struct.TYPE_5__* %32
}

declare dso_local i32 @luaM_toobig(i32*) #1

declare dso_local i32* @luaC_newobj(i32*, i32, i32) #1

declare dso_local i32 @sizeludata(i64) #1

declare dso_local %struct.TYPE_5__* @gco2u(i32*) #1

declare dso_local i32 @setuservalue(i32*, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
