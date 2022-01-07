; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.4/src/extr_lvm.c_luaV_objlen.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.4/src/extr_lvm.c_luaV_objlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }

@TM_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"get length of\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @luaV_objlen(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = call i32 @ttype(i32* %9)
  switch i32 %10, label %43 [
    i32 128, label %11
    i32 129, label %28
    i32 130, label %35
  ]

11:                                               ; preds = %3
  %12 = load i32*, i32** %6, align 8
  %13 = call %struct.TYPE_7__* @hvalue(i32* %12)
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %8, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @TM_LEN, align 4
  %19 = call i32* @fasttm(i32* %14, i32 %17, i32 %18)
  store i32* %19, i32** %7, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %11
  br label %56

23:                                               ; preds = %11
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %26 = call i32 @luaH_getn(%struct.TYPE_7__* %25)
  %27 = call i32 @setivalue(i32 %24, i32 %26)
  br label %63

28:                                               ; preds = %3
  %29 = load i32, i32* %5, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = call %struct.TYPE_8__* @tsvalue(i32* %30)
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @setivalue(i32 %29, i32 %33)
  br label %63

35:                                               ; preds = %3
  %36 = load i32, i32* %5, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = call %struct.TYPE_8__* @tsvalue(i32* %37)
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @setivalue(i32 %36, i32 %41)
  br label %63

43:                                               ; preds = %3
  %44 = load i32*, i32** %4, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* @TM_LEN, align 4
  %47 = call i32* @luaT_gettmbyobj(i32* %44, i32* %45, i32 %46)
  store i32* %47, i32** %7, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @ttisnil(i32* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %43
  %52 = load i32*, i32** %4, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @luaG_typeerror(i32* %52, i32* %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %55

55:                                               ; preds = %51, %43
  br label %56

56:                                               ; preds = %55, %22
  %57 = load i32*, i32** %4, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @luaT_callTM(i32* %57, i32* %58, i32* %59, i32* %60, i32 %61, i32 1)
  br label %63

63:                                               ; preds = %56, %35, %28, %23
  ret void
}

declare dso_local i32 @ttype(i32*) #1

declare dso_local %struct.TYPE_7__* @hvalue(i32*) #1

declare dso_local i32* @fasttm(i32*, i32, i32) #1

declare dso_local i32 @setivalue(i32, i32) #1

declare dso_local i32 @luaH_getn(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_8__* @tsvalue(i32*) #1

declare dso_local i32* @luaT_gettmbyobj(i32*, i32*, i32) #1

declare dso_local i32 @ttisnil(i32*) #1

declare dso_local i32 @luaG_typeerror(i32*, i32*, i8*) #1

declare dso_local i32 @luaT_callTM(i32*, i32*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
