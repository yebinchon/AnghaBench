; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.3/src/extr_lcode.c_luaK_exp2RK.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.3/src/extr_lcode.c_luaK_exp2RK.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i32, i32 }

@MAXINDEXRK = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @luaK_exp2RK(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %8 = call i32 @luaK_exp2val(i32* %6, %struct.TYPE_7__* %7)
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %67 [
    i32 128, label %12
    i32 133, label %18
    i32 129, label %24
    i32 130, label %30
    i32 131, label %40
    i32 132, label %50
  ]

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  %14 = call i8* @boolK(i32* %13, i32 1)
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store i8* %14, i8** %17, align 8
  br label %51

18:                                               ; preds = %2
  %19 = load i32*, i32** %4, align 8
  %20 = call i8* @boolK(i32* %19, i32 0)
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store i8* %20, i8** %23, align 8
  br label %51

24:                                               ; preds = %2
  %25 = load i32*, i32** %4, align 8
  %26 = call i8* @nilK(i32* %25)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i8* %26, i8** %29, align 8
  br label %51

30:                                               ; preds = %2
  %31 = load i32*, i32** %4, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @luaK_intK(i32* %31, i32 %35)
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i8* %36, i8** %39, align 8
  br label %51

40:                                               ; preds = %2
  %41 = load i32*, i32** %4, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i8* @luaK_numberK(i32* %41, i32 %45)
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i8* %46, i8** %49, align 8
  br label %51

50:                                               ; preds = %2
  br label %51

51:                                               ; preds = %50, %40, %30, %24, %18, %12
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  store i32 132, i32* %53, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = load i8*, i8** @MAXINDEXRK, align 8
  %59 = icmp ule i8* %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %51
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @RKASK(i8* %64)
  store i32 %65, i32* %3, align 4
  br label %72

66:                                               ; preds = %51
  br label %68

67:                                               ; preds = %2
  br label %68

68:                                               ; preds = %67, %66
  %69 = load i32*, i32** %4, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %71 = call i32 @luaK_exp2anyreg(i32* %69, %struct.TYPE_7__* %70)
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %68, %60
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @luaK_exp2val(i32*, %struct.TYPE_7__*) #1

declare dso_local i8* @boolK(i32*, i32) #1

declare dso_local i8* @nilK(i32*) #1

declare dso_local i8* @luaK_intK(i32*, i32) #1

declare dso_local i8* @luaK_numberK(i32*, i32) #1

declare dso_local i32 @RKASK(i8*) #1

declare dso_local i32 @luaK_exp2anyreg(i32*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
