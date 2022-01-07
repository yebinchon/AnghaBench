; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lpcap.c_findback.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lpcap.c_findback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32* }
%struct.TYPE_12__ = type { i32 }

@Cgroup = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"back reference '%s' not found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_12__* (%struct.TYPE_13__*, %struct.TYPE_12__*)* @findback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_12__* @findback(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %6, align 8
  br label %10

10:                                               ; preds = %54, %30, %2
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 -1
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %5, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to %struct.TYPE_12__*
  %18 = icmp ugt %struct.TYPE_12__* %11, %17
  br i1 %18, label %19, label %55

19:                                               ; preds = %10
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %21 = call i64 @isclosecap(%struct.TYPE_12__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %25 = call %struct.TYPE_12__* @findopen(%struct.TYPE_12__* %24)
  store %struct.TYPE_12__* %25, %struct.TYPE_12__** %5, align 8
  br label %32

26:                                               ; preds = %19
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %28 = call i32 @isfullcap(%struct.TYPE_12__* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  br label %10

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %31, %23
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %34 = call i64 @captype(%struct.TYPE_12__* %33)
  %35 = load i64, i64* @Cgroup, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %54

37:                                               ; preds = %32
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @getfromktable(%struct.TYPE_13__* %38, i32 %41)
  %43 = load i32*, i32** %6, align 8
  %44 = call i64 @lp_equal(i32* %43, i32 -2, i32 -1)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %37
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @lua_pop(i32* %47, i32 2)
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_12__* %49, %struct.TYPE_12__** %3, align 8
  br label %60

50:                                               ; preds = %37
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @lua_pop(i32* %51, i32 1)
  br label %53

53:                                               ; preds = %50
  br label %54

54:                                               ; preds = %53, %32
  br label %10

55:                                               ; preds = %10
  %56 = load i32*, i32** %6, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 @lua_tostring(i32* %57, i32 -1)
  %59 = call i32 @luaL_error(i32* %56, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %58)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  br label %60

60:                                               ; preds = %55, %46
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  ret %struct.TYPE_12__* %61
}

declare dso_local i64 @isclosecap(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @findopen(%struct.TYPE_12__*) #1

declare dso_local i32 @isfullcap(%struct.TYPE_12__*) #1

declare dso_local i64 @captype(%struct.TYPE_12__*) #1

declare dso_local i32 @getfromktable(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @lp_equal(i32*, i32, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*, i32) #1

declare dso_local i32 @lua_tostring(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
