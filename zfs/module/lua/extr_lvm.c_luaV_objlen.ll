; ModuleID = '/home/carl/AnghaBench/zfs/module/lua/extr_lvm.c_luaV_objlen.c'
source_filename = "/home/carl/AnghaBench/zfs/module/lua/extr_lvm.c_luaV_objlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@TM_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"get length of\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @luaV_objlen(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = call i32 @ttypenv(i32* %9)
  switch i32 %10, label %37 [
    i32 128, label %11
    i32 129, label %29
  ]

11:                                               ; preds = %3
  %12 = load i32*, i32** %6, align 8
  %13 = call %struct.TYPE_5__* @hvalue(i32* %12)
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %8, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @TM_LEN, align 4
  %19 = call i32* @fasttm(i32* %14, i32 %17, i32 %18)
  store i32* %19, i32** %7, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %11
  br label %50

23:                                               ; preds = %11
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %26 = call i32 @luaH_getn(%struct.TYPE_5__* %25)
  %27 = call i32 @cast_num(i32 %26)
  %28 = call i32 @setnvalue(i32 %24, i32 %27)
  br label %57

29:                                               ; preds = %3
  %30 = load i32, i32* %5, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = call %struct.TYPE_6__* @tsvalue(i32* %31)
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @cast_num(i32 %34)
  %36 = call i32 @setnvalue(i32 %30, i32 %35)
  br label %57

37:                                               ; preds = %3
  %38 = load i32*, i32** %4, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* @TM_LEN, align 4
  %41 = call i32* @luaT_gettmbyobj(i32* %38, i32* %39, i32 %40)
  store i32* %41, i32** %7, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @ttisnil(i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %37
  %46 = load i32*, i32** %4, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @luaG_typeerror(i32* %46, i32* %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %45, %37
  br label %50

50:                                               ; preds = %49, %22
  %51 = load i32*, i32** %4, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @callTM(i32* %51, i32* %52, i32* %53, i32* %54, i32 %55, i32 1)
  br label %57

57:                                               ; preds = %50, %29, %23
  ret void
}

declare dso_local i32 @ttypenv(i32*) #1

declare dso_local %struct.TYPE_5__* @hvalue(i32*) #1

declare dso_local i32* @fasttm(i32*, i32, i32) #1

declare dso_local i32 @setnvalue(i32, i32) #1

declare dso_local i32 @cast_num(i32) #1

declare dso_local i32 @luaH_getn(%struct.TYPE_5__*) #1

declare dso_local %struct.TYPE_6__* @tsvalue(i32*) #1

declare dso_local i32* @luaT_gettmbyobj(i32*, i32*, i32) #1

declare dso_local i32 @ttisnil(i32*) #1

declare dso_local i32 @luaG_typeerror(i32*, i32*, i8*) #1

declare dso_local i32 @callTM(i32*, i32*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
