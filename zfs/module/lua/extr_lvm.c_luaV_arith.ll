; ModuleID = '/home/carl/AnghaBench/zfs/module/lua/extr_lvm.c_luaV_arith.c'
source_filename = "/home/carl/AnghaBench/zfs/module/lua/extr_lvm.c_luaV_arith.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TM_ADD = common dso_local global i32 0, align 4
@LUA_OPADD = common dso_local global i32 0, align 4
@LUA_OPDIV = common dso_local global i32 0, align 4
@LUA_OPMOD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @luaV_arith(i32* %0, i32 %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = load i32*, i32** %8, align 8
  %18 = call i32* @luaV_tonumber(i32* %17, i32* %11)
  store i32* %18, i32** %13, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %67

20:                                               ; preds = %5
  %21 = load i32*, i32** %9, align 8
  %22 = call i32* @luaV_tonumber(i32* %21, i32* %12)
  store i32* %22, i32** %14, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %67

24:                                               ; preds = %20
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @TM_ADD, align 4
  %27 = sub nsw i32 %25, %26
  %28 = load i32, i32* @LUA_OPADD, align 4
  %29 = add nsw i32 %27, %28
  store i32 %29, i32* %16, align 4
  %30 = load i32, i32* %16, align 4
  %31 = load i32, i32* @LUA_OPDIV, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %24
  %34 = load i32*, i32** %6, align 8
  %35 = load i32*, i32** %13, align 8
  %36 = call i32 @nvalue(i32* %35)
  %37 = load i32*, i32** %14, align 8
  %38 = call i32 @nvalue(i32* %37)
  %39 = call i32 @luaV_div(i32* %34, i32 %36, i32 %38)
  store i32 %39, i32* %15, align 4
  br label %63

40:                                               ; preds = %24
  %41 = load i32, i32* %16, align 4
  %42 = load i32, i32* @LUA_OPMOD, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = load i32*, i32** %6, align 8
  %46 = load i32*, i32** %13, align 8
  %47 = call i32 @nvalue(i32* %46)
  %48 = load i32*, i32** %14, align 8
  %49 = call i32 @nvalue(i32* %48)
  %50 = call i32 @luaV_mod(i32* %45, i32 %47, i32 %49)
  store i32 %50, i32* %15, align 4
  br label %62

51:                                               ; preds = %40
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @TM_ADD, align 4
  %54 = sub nsw i32 %52, %53
  %55 = load i32, i32* @LUA_OPADD, align 4
  %56 = add nsw i32 %54, %55
  %57 = load i32*, i32** %13, align 8
  %58 = call i32 @nvalue(i32* %57)
  %59 = load i32*, i32** %14, align 8
  %60 = call i32 @nvalue(i32* %59)
  %61 = call i32 @luaO_arith(i32 %56, i32 %58, i32 %60)
  store i32 %61, i32* %15, align 4
  br label %62

62:                                               ; preds = %51, %44
  br label %63

63:                                               ; preds = %62, %33
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %15, align 4
  %66 = call i32 @setnvalue(i32 %64, i32 %65)
  br label %81

67:                                               ; preds = %20, %5
  %68 = load i32*, i32** %6, align 8
  %69 = load i32*, i32** %8, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @call_binTM(i32* %68, i32* %69, i32* %70, i32 %71, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %67
  %76 = load i32*, i32** %6, align 8
  %77 = load i32*, i32** %8, align 8
  %78 = load i32*, i32** %9, align 8
  %79 = call i32 @luaG_aritherror(i32* %76, i32* %77, i32* %78)
  br label %80

80:                                               ; preds = %75, %67
  br label %81

81:                                               ; preds = %80, %63
  ret void
}

declare dso_local i32* @luaV_tonumber(i32*, i32*) #1

declare dso_local i32 @luaV_div(i32*, i32, i32) #1

declare dso_local i32 @nvalue(i32*) #1

declare dso_local i32 @luaV_mod(i32*, i32, i32) #1

declare dso_local i32 @luaO_arith(i32, i32, i32) #1

declare dso_local i32 @setnvalue(i32, i32) #1

declare dso_local i32 @call_binTM(i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @luaG_aritherror(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
