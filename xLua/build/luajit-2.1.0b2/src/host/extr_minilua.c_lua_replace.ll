; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/host/extr_minilua.c_lua_replace.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/host/extr_minilua.c_lua_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i64, i64 }
%struct.TYPE_17__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"no calling environment\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, i32)* @lua_replace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lua_replace(%struct.TYPE_16__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, -10001
  br i1 %8, label %9, label %20

9:                                                ; preds = %2
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %12, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %9
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %19 = call i32 @luaG_runerror(%struct.TYPE_16__* %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %9, %2
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %22 = call i32 @api_checknelems(%struct.TYPE_16__* %21, i32 1)
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @index2adr(%struct.TYPE_16__* %23, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @api_checkvalidindex(%struct.TYPE_16__* %26, i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %29, -10001
  br i1 %30, label %31, label %56

31:                                               ; preds = %20
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %33 = call %struct.TYPE_17__* @curr_func(%struct.TYPE_16__* %32)
  store %struct.TYPE_17__* %33, %struct.TYPE_17__** %6, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %37, 1
  %39 = call i32 @ttistable(i64 %38)
  %40 = call i32 @luai_apicheck(%struct.TYPE_16__* %34, i32 %39)
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %43, 1
  %45 = call i32 @hvalue(i64 %44)
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 4
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %53, 1
  %55 = call i32 @luaC_barrier(%struct.TYPE_16__* %49, %struct.TYPE_17__* %50, i64 %54)
  br label %76

56:                                               ; preds = %20
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = sub nsw i64 %61, 1
  %63 = call i32 @setobj(%struct.TYPE_16__* %57, i32 %58, i64 %62)
  %64 = load i32, i32* %4, align 4
  %65 = icmp slt i32 %64, -10002
  br i1 %65, label %66, label %75

66:                                               ; preds = %56
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %69 = call %struct.TYPE_17__* @curr_func(%struct.TYPE_16__* %68)
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = sub nsw i64 %72, 1
  %74 = call i32 @luaC_barrier(%struct.TYPE_16__* %67, %struct.TYPE_17__* %69, i64 %73)
  br label %75

75:                                               ; preds = %66, %56
  br label %76

76:                                               ; preds = %75, %31
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, -1
  store i64 %80, i64* %78, align 8
  ret void
}

declare dso_local i32 @luaG_runerror(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @api_checknelems(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @index2adr(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @api_checkvalidindex(%struct.TYPE_16__*, i32) #1

declare dso_local %struct.TYPE_17__* @curr_func(%struct.TYPE_16__*) #1

declare dso_local i32 @luai_apicheck(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @ttistable(i64) #1

declare dso_local i32 @hvalue(i64) #1

declare dso_local i32 @luaC_barrier(%struct.TYPE_16__*, %struct.TYPE_17__*, i64) #1

declare dso_local i32 @setobj(%struct.TYPE_16__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
