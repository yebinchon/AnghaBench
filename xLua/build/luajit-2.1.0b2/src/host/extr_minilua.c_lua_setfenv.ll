; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/host/extr_minilua.c_lua_setfenv.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/host/extr_minilua.c_lua_setfenv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_14__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32)* @lua_setfenv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lua_setfenv(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %6, align 4
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %8 = call i32 @api_checknelems(%struct.TYPE_13__* %7, i32 1)
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @index2adr(%struct.TYPE_13__* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @api_checkvalidindex(%struct.TYPE_13__* %12, i32 %13)
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %18, 1
  %20 = call i32 @ttistable(i64 %19)
  %21 = call i32 @luai_apicheck(%struct.TYPE_13__* %15, i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @ttype(i32 %22)
  switch i32 %23, label %54 [
    i32 6, label %24
    i32 7, label %34
    i32 8, label %43
  ]

24:                                               ; preds = %2
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %27, 1
  %29 = call i8* @hvalue(i64 %28)
  %30 = load i32, i32* %5, align 4
  %31 = call %struct.TYPE_15__* @clvalue(i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  store i8* %29, i8** %33, align 8
  br label %55

34:                                               ; preds = %2
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %37, 1
  %39 = call i8* @hvalue(i64 %38)
  %40 = load i32, i32* %5, align 4
  %41 = call %struct.TYPE_14__* @uvalue(i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  store i8* %39, i8** %42, align 8
  br label %55

43:                                               ; preds = %2
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @thvalue(i32 %45)
  %47 = call i32 @gt(i32 %46)
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %50, 1
  %52 = call i8* @hvalue(i64 %51)
  %53 = call i32 @sethvalue(%struct.TYPE_13__* %44, i32 %47, i8* %52)
  br label %55

54:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %54, %43, %34, %24
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %55
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @gcvalue(i32 %60)
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = sub nsw i64 %64, 1
  %66 = call i8* @hvalue(i64 %65)
  %67 = call i32 @luaC_objbarrier(%struct.TYPE_13__* %59, i32 %61, i8* %66)
  br label %68

68:                                               ; preds = %58, %55
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, -1
  store i64 %72, i64* %70, align 8
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

declare dso_local i32 @api_checknelems(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @index2adr(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @api_checkvalidindex(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @luai_apicheck(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @ttistable(i64) #1

declare dso_local i32 @ttype(i32) #1

declare dso_local i8* @hvalue(i64) #1

declare dso_local %struct.TYPE_15__* @clvalue(i32) #1

declare dso_local %struct.TYPE_14__* @uvalue(i32) #1

declare dso_local i32 @sethvalue(%struct.TYPE_13__*, i32, i8*) #1

declare dso_local i32 @gt(i32) #1

declare dso_local i32 @thvalue(i32) #1

declare dso_local i32 @luaC_objbarrier(%struct.TYPE_13__*, i32, i8*) #1

declare dso_local i32 @gcvalue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
