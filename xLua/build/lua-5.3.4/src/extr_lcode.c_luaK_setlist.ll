; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.4/src/extr_lcode.c_luaK_setlist.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.4/src/extr_lcode.c_luaK_setlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@LFIELDS_PER_FLUSH = common dso_local global i32 0, align 4
@LUA_MULTRET = common dso_local global i32 0, align 4
@MAXARG_C = common dso_local global i32 0, align 4
@OP_SETLIST = common dso_local global i32 0, align 4
@MAXARG_Ax = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"constructor too long\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @luaK_setlist(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = sub nsw i32 %11, 1
  %13 = load i32, i32* @LFIELDS_PER_FLUSH, align 4
  %14 = sdiv i32 %12, %13
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @LUA_MULTRET, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  br label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %8, align 4
  br label %22

22:                                               ; preds = %20, %19
  %23 = phi i32 [ 0, %19 ], [ %21, %20 ]
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @LFIELDS_PER_FLUSH, align 4
  %29 = icmp sle i32 %27, %28
  br label %30

30:                                               ; preds = %26, %22
  %31 = phi i1 [ false, %22 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @lua_assert(i32 %32)
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @MAXARG_C, align 4
  %36 = icmp sle i32 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %39 = load i32, i32* @OP_SETLIST, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @luaK_codeABC(%struct.TYPE_5__* %38, i32 %39, i32 %40, i32 %41, i32 %42)
  br label %63

44:                                               ; preds = %30
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @MAXARG_Ax, align 4
  %47 = icmp sle i32 %45, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %44
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %50 = load i32, i32* @OP_SETLIST, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @luaK_codeABC(%struct.TYPE_5__* %49, i32 %50, i32 %51, i32 %52, i32 0)
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @codeextraarg(%struct.TYPE_5__* %54, i32 %55)
  br label %62

57:                                               ; preds = %44
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @luaX_syntaxerror(i32 %60, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %62

62:                                               ; preds = %57, %48
  br label %63

63:                                               ; preds = %62, %37
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  ret void
}

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @luaK_codeABC(%struct.TYPE_5__*, i32, i32, i32, i32) #1

declare dso_local i32 @codeextraarg(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @luaX_syntaxerror(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
