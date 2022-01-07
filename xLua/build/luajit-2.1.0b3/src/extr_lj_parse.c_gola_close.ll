; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_parse.c_gola_close.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_parse.c_gola_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i64, i32 }

@BC_JMP = common dso_local global i64 0, align 8
@BC_UCLO = common dso_local global i64 0, align 8
@NO_JMP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, %struct.TYPE_11__*)* @gola_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gola_close(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %11, %struct.TYPE_13__** %5, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %6, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  store i32* %20, i32** %7, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %22 = call i32 @gola_isgoto(%struct.TYPE_11__* %21)
  %23 = call i32 @lua_assert(i32 %22)
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @bc_op(i32 %25)
  %27 = load i64, i64* @BC_JMP, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %2
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @bc_op(i32 %31)
  %33 = load i64, i64* @BC_UCLO, align 8
  %34 = icmp eq i64 %32, %33
  br label %35

35:                                               ; preds = %29, %2
  %36 = phi i1 [ true, %2 ], [ %34, %29 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @lua_assert(i32 %37)
  %39 = load i32*, i32** %7, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @setbc_a(i32* %39, i32 %42)
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @bc_op(i32 %45)
  %47 = load i64, i64* @BC_JMP, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %68

49:                                               ; preds = %35
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %51 = load i64, i64* %6, align 8
  %52 = call i64 @jmp_next(%struct.TYPE_13__* %50, i64 %51)
  store i64 %52, i64* %8, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* @NO_JMP, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* %6, align 8
  %60 = call i32 @jmp_patch(%struct.TYPE_13__* %57, i64 %58, i64 %59)
  br label %61

61:                                               ; preds = %56, %49
  %62 = load i32*, i32** %7, align 8
  %63 = load i64, i64* @BC_UCLO, align 8
  %64 = call i32 @setbc_op(i32* %62, i64 %63)
  %65 = load i32*, i32** %7, align 8
  %66 = load i64, i64* @NO_JMP, align 8
  %67 = call i32 @setbc_j(i32* %65, i64 %66)
  br label %68

68:                                               ; preds = %61, %35
  ret void
}

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @gola_isgoto(%struct.TYPE_11__*) #1

declare dso_local i64 @bc_op(i32) #1

declare dso_local i32 @setbc_a(i32*, i32) #1

declare dso_local i64 @jmp_next(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @jmp_patch(%struct.TYPE_13__*, i64, i64) #1

declare dso_local i32 @setbc_op(i32*, i64) #1

declare dso_local i32 @setbc_j(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
