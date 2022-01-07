; ModuleID = '/home/carl/AnghaBench/redis/deps/lua/src/extr_lvm.c_Arith.c'
source_filename = "/home/carl/AnghaBench/redis/deps/lua/src/extr_lvm.c_Arith.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32*, i32)* @Arith to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Arith(i32* %0, i32 %1, i32* %2, i32* %3, i32 %4) #0 {
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
  br i1 %19, label %20, label %74

20:                                               ; preds = %5
  %21 = load i32*, i32** %9, align 8
  %22 = call i32* @luaV_tonumber(i32* %21, i32* %12)
  store i32* %22, i32** %14, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %74

24:                                               ; preds = %20
  %25 = load i32*, i32** %13, align 8
  %26 = call i32 @nvalue(i32* %25)
  store i32 %26, i32* %15, align 4
  %27 = load i32*, i32** %14, align 8
  %28 = call i32 @nvalue(i32* %27)
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* %10, align 4
  switch i32 %29, label %71 [
    i32 134, label %30
    i32 129, label %36
    i32 131, label %42
    i32 133, label %48
    i32 132, label %54
    i32 130, label %60
    i32 128, label %66
  ]

30:                                               ; preds = %24
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %15, align 4
  %33 = load i32, i32* %16, align 4
  %34 = call i32 @luai_numadd(i32 %32, i32 %33)
  %35 = call i32 @setnvalue(i32 %31, i32 %34)
  br label %73

36:                                               ; preds = %24
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* %16, align 4
  %40 = call i32 @luai_numsub(i32 %38, i32 %39)
  %41 = call i32 @setnvalue(i32 %37, i32 %40)
  br label %73

42:                                               ; preds = %24
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* %16, align 4
  %46 = call i32 @luai_nummul(i32 %44, i32 %45)
  %47 = call i32 @setnvalue(i32 %43, i32 %46)
  br label %73

48:                                               ; preds = %24
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* %16, align 4
  %52 = call i32 @luai_numdiv(i32 %50, i32 %51)
  %53 = call i32 @setnvalue(i32 %49, i32 %52)
  br label %73

54:                                               ; preds = %24
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* %16, align 4
  %58 = call i32 @luai_nummod(i32 %56, i32 %57)
  %59 = call i32 @setnvalue(i32 %55, i32 %58)
  br label %73

60:                                               ; preds = %24
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* %16, align 4
  %64 = call i32 @luai_numpow(i32 %62, i32 %63)
  %65 = call i32 @setnvalue(i32 %61, i32 %64)
  br label %73

66:                                               ; preds = %24
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %15, align 4
  %69 = call i32 @luai_numunm(i32 %68)
  %70 = call i32 @setnvalue(i32 %67, i32 %69)
  br label %73

71:                                               ; preds = %24
  %72 = call i32 @lua_assert(i32 0)
  br label %73

73:                                               ; preds = %71, %66, %60, %54, %48, %42, %36, %30
  br label %88

74:                                               ; preds = %20, %5
  %75 = load i32*, i32** %6, align 8
  %76 = load i32*, i32** %8, align 8
  %77 = load i32*, i32** %9, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @call_binTM(i32* %75, i32* %76, i32* %77, i32 %78, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %74
  %83 = load i32*, i32** %6, align 8
  %84 = load i32*, i32** %8, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = call i32 @luaG_aritherror(i32* %83, i32* %84, i32* %85)
  br label %87

87:                                               ; preds = %82, %74
  br label %88

88:                                               ; preds = %87, %73
  ret void
}

declare dso_local i32* @luaV_tonumber(i32*, i32*) #1

declare dso_local i32 @nvalue(i32*) #1

declare dso_local i32 @setnvalue(i32, i32) #1

declare dso_local i32 @luai_numadd(i32, i32) #1

declare dso_local i32 @luai_numsub(i32, i32) #1

declare dso_local i32 @luai_nummul(i32, i32) #1

declare dso_local i32 @luai_numdiv(i32, i32) #1

declare dso_local i32 @luai_nummod(i32, i32) #1

declare dso_local i32 @luai_numpow(i32, i32) #1

declare dso_local i32 @luai_numunm(i32) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @call_binTM(i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @luaG_aritherror(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
