; ModuleID = '/home/carl/AnghaBench/torch7/extr_utils.c_torch_checklongargs.c'
source_filename = "/home/carl/AnghaBench/torch7/extr_utils.c_torch_checklongargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"torch.LongStorage\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"number expected\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @torch_checklongargs(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @lua_gettop(i32* %9)
  %11 = load i32, i32* %4, align 4
  %12 = sub nsw i32 %10, %11
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %32

16:                                               ; preds = %2
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call %struct.TYPE_9__* @luaT_toudata(i32* %17, i32 %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne %struct.TYPE_9__* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %16
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call %struct.TYPE_9__* @luaT_toudata(i32* %22, i32 %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %8, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.TYPE_9__* @THLongStorage_newWithSize(i32 %27)
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %5, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %31 = call i32 @THLongStorage_copy(%struct.TYPE_9__* %29, %struct.TYPE_9__* %30)
  br label %66

32:                                               ; preds = %16, %2
  %33 = load i32, i32* %7, align 4
  %34 = call %struct.TYPE_9__* @THLongStorage_newWithSize(i32 %33)
  store %struct.TYPE_9__* %34, %struct.TYPE_9__** %5, align 8
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %62, %32
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %38, %39
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %65

42:                                               ; preds = %36
  %43 = load i32*, i32** %3, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @lua_isnumber(i32* %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %42
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %49 = call i32 @THLongStorage_free(%struct.TYPE_9__* %48)
  %50 = load i32*, i32** %3, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @luaL_argerror(i32* %50, i32 %51, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %53

53:                                               ; preds = %47, %42
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %4, align 4
  %57 = sub nsw i32 %55, %56
  %58 = load i32*, i32** %3, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @lua_tonumber(i32* %58, i32 %59)
  %61 = call i32 @THLongStorage_set(%struct.TYPE_9__* %54, i32 %57, i32 %60)
  br label %62

62:                                               ; preds = %53
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %36

65:                                               ; preds = %36
  br label %66

66:                                               ; preds = %65, %21
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  ret %struct.TYPE_9__* %67
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local %struct.TYPE_9__* @luaT_toudata(i32*, i32, i8*) #1

declare dso_local %struct.TYPE_9__* @THLongStorage_newWithSize(i32) #1

declare dso_local i32 @THLongStorage_copy(%struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local i32 @lua_isnumber(i32*, i32) #1

declare dso_local i32 @THLongStorage_free(%struct.TYPE_9__*) #1

declare dso_local i32 @luaL_argerror(i32*, i32, i8*) #1

declare dso_local i32 @THLongStorage_set(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @lua_tonumber(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
