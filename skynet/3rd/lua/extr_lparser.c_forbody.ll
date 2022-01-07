; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lua/extr_lparser.c_forbody.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lua/extr_lparser.c_forbody.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }

@TK_DO = common dso_local global i32 0, align 4
@OP_FORPREP = common dso_local global i32 0, align 4
@NO_JUMP = common dso_local global i32 0, align 4
@OP_FORLOOP = common dso_local global i32 0, align 4
@OP_TFORCALL = common dso_local global i32 0, align 4
@OP_TFORLOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32, i32, i32, i32)* @forbody to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @forbody(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %12, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = call i32 @adjustlocalvars(%struct.TYPE_6__* %18, i32 3)
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %21 = load i32, i32* @TK_DO, align 4
  %22 = call i32 @checknext(%struct.TYPE_6__* %20, i32 %21)
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %5
  %26 = load i32*, i32** %12, align 8
  %27 = load i32, i32* @OP_FORPREP, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @NO_JUMP, align 4
  %30 = call i32 @luaK_codeAsBx(i32* %26, i32 %27, i32 %28, i32 %29)
  br label %34

31:                                               ; preds = %5
  %32 = load i32*, i32** %12, align 8
  %33 = call i32 @luaK_jump(i32* %32)
  br label %34

34:                                               ; preds = %31, %25
  %35 = phi i32 [ %30, %25 ], [ %33, %31 ]
  store i32 %35, i32* %13, align 4
  %36 = load i32*, i32** %12, align 8
  %37 = call i32 @enterblock(i32* %36, i32* %11, i32 0)
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @adjustlocalvars(%struct.TYPE_6__* %38, i32 %39)
  %41 = load i32*, i32** %12, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @luaK_reserveregs(i32* %41, i32 %42)
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %45 = call i32 @block(%struct.TYPE_6__* %44)
  %46 = load i32*, i32** %12, align 8
  %47 = call i32 @leaveblock(i32* %46)
  %48 = load i32*, i32** %12, align 8
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @luaK_patchtohere(i32* %48, i32 %49)
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %34
  %54 = load i32*, i32** %12, align 8
  %55 = load i32, i32* @OP_FORLOOP, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @NO_JUMP, align 4
  %58 = call i32 @luaK_codeAsBx(i32* %54, i32 %55, i32 %56, i32 %57)
  store i32 %58, i32* %14, align 4
  br label %74

59:                                               ; preds = %34
  %60 = load i32*, i32** %12, align 8
  %61 = load i32, i32* @OP_TFORCALL, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @luaK_codeABC(i32* %60, i32 %61, i32 %62, i32 0, i32 %63)
  %65 = load i32*, i32** %12, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @luaK_fixline(i32* %65, i32 %66)
  %68 = load i32*, i32** %12, align 8
  %69 = load i32, i32* @OP_TFORLOOP, align 4
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 2
  %72 = load i32, i32* @NO_JUMP, align 4
  %73 = call i32 @luaK_codeAsBx(i32* %68, i32 %69, i32 %71, i32 %72)
  store i32 %73, i32* %14, align 4
  br label %74

74:                                               ; preds = %59, %53
  %75 = load i32*, i32** %12, align 8
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* %13, align 4
  %78 = add nsw i32 %77, 1
  %79 = call i32 @luaK_patchlist(i32* %75, i32 %76, i32 %78)
  %80 = load i32*, i32** %12, align 8
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @luaK_fixline(i32* %80, i32 %81)
  ret void
}

declare dso_local i32 @adjustlocalvars(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @checknext(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @luaK_codeAsBx(i32*, i32, i32, i32) #1

declare dso_local i32 @luaK_jump(i32*) #1

declare dso_local i32 @enterblock(i32*, i32*, i32) #1

declare dso_local i32 @luaK_reserveregs(i32*, i32) #1

declare dso_local i32 @block(%struct.TYPE_6__*) #1

declare dso_local i32 @leaveblock(i32*) #1

declare dso_local i32 @luaK_patchtohere(i32*, i32) #1

declare dso_local i32 @luaK_codeABC(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @luaK_fixline(i32*, i32) #1

declare dso_local i32 @luaK_patchlist(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
