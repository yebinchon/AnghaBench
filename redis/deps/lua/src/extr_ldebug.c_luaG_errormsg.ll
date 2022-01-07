; ModuleID = '/home/carl/AnghaBench/redis/deps/lua/src/extr_ldebug.c_luaG_errormsg.c'
source_filename = "/home/carl/AnghaBench/redis/deps/lua/src/extr_ldebug.c_luaG_errormsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64 }

@LUA_ERRERR = common dso_local global i32 0, align 4
@LUA_ERRRUN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @luaG_errormsg(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %46

8:                                                ; preds = %1
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i64 @restorestack(%struct.TYPE_8__* %9, i64 %12)
  store i64 %13, i64* %3, align 8
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @ttisfunction(i64 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %19 = load i32, i32* @LUA_ERRERR, align 4
  %20 = call i32 @luaD_throw(%struct.TYPE_8__* %18, i32 %19)
  br label %21

21:                                               ; preds = %17, %8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %28, 1
  %30 = call i32 @setobjs2s(%struct.TYPE_8__* %22, i64 %25, i64 %29)
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %34, 1
  %36 = load i64, i64* %3, align 8
  %37 = call i32 @setobjs2s(%struct.TYPE_8__* %31, i64 %35, i64 %36)
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %39 = call i32 @incr_top(%struct.TYPE_8__* %38)
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %43, 2
  %45 = call i32 @luaD_call(%struct.TYPE_8__* %40, i64 %44, i32 1)
  br label %46

46:                                               ; preds = %21, %1
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %48 = load i32, i32* @LUA_ERRRUN, align 4
  %49 = call i32 @luaD_throw(%struct.TYPE_8__* %47, i32 %48)
  ret void
}

declare dso_local i64 @restorestack(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @ttisfunction(i64) #1

declare dso_local i32 @luaD_throw(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @setobjs2s(%struct.TYPE_8__*, i64, i64) #1

declare dso_local i32 @incr_top(%struct.TYPE_8__*) #1

declare dso_local i32 @luaD_call(%struct.TYPE_8__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
