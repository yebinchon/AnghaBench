; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lib_base.c_ffh_resume.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lib_base.c_ffh_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i64, i32* }

@LUA_YIELD = common dso_local global i64 0, align 8
@LJ_ERR_CORUN = common dso_local global i32 0, align 4
@LJ_ERR_CODEAD = common dso_local global i32 0, align 4
@LJ_FR2 = common dso_local global i32 0, align 4
@FFH_RETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_8__*, i32)* @ffh_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffh_resume(%struct.TYPE_8__* %0, %struct.TYPE_8__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 3
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %32, label %13

13:                                               ; preds = %3
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @LUA_YIELD, align 8
  %18 = icmp sgt i64 %16, %17
  br i1 %18, label %32, label %19

19:                                               ; preds = %13
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %72

24:                                               ; preds = %19
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  br i1 %31, label %32, label %72

32:                                               ; preds = %24, %13, %3
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @LJ_ERR_CORUN, align 4
  br label %41

39:                                               ; preds = %32
  %40 = load i32, i32* @LJ_ERR_CODEAD, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @lj_err_caller(%struct.TYPE_8__* %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %41
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = sub nsw i64 %52, 1
  %54 = load i32, i32* @LJ_FR2, align 4
  %55 = sext i32 %54 to i64
  %56 = sub nsw i64 %53, %55
  %57 = trunc i64 %56 to i32
  %58 = call i32 @setboolV(i32 %57, i32 0)
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* @LJ_FR2, align 4
  %64 = sext i32 %63 to i64
  %65 = sub nsw i64 %62, %64
  %66 = trunc i64 %65 to i32
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @lj_err_str(%struct.TYPE_8__* %67, i32 %68)
  %70 = call i32 @setstrV(%struct.TYPE_8__* %59, i32 %66, i32 %69)
  %71 = call i32 @FFH_RES(i32 2)
  store i32 %71, i32* %4, align 4
  br label %84

72:                                               ; preds = %24, %19
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = sub nsw i64 %76, %79
  %81 = trunc i64 %80 to i32
  %82 = call i32 @lj_state_growstack(%struct.TYPE_8__* %73, i32 %81)
  %83 = load i32, i32* @FFH_RETRY, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %72, %49
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @lj_err_caller(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @setboolV(i32, i32) #1

declare dso_local i32 @setstrV(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @lj_err_str(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @FFH_RES(i32) #1

declare dso_local i32 @lj_state_growstack(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
