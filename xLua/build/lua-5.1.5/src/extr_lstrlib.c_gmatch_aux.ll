; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.1.5/src/extr_lstrlib.c_gmatch_aux.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.1.5/src/extr_lstrlib.c_gmatch_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @gmatch_aux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmatch_aux(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @lua_upvalueindex(i32 1)
  %13 = call i8* @lua_tolstring(i32* %11, i32 %12, i64* %5)
  store i8* %13, i8** %6, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @lua_upvalueindex(i32 2)
  %16 = call i8* @lua_tostring(i32* %14, i32 %15)
  store i8* %16, i8** %7, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 3
  store i32* %17, i32** %18, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i8* %19, i8** %20, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  store i8* %23, i8** %24, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @lua_upvalueindex(i32 3)
  %28 = call i64 @lua_tointeger(i32* %26, i32 %27)
  %29 = getelementptr inbounds i8, i8* %25, i64 %28
  store i8* %29, i8** %8, align 8
  br label %30

30:                                               ; preds = %65, %1
  %31 = load i8*, i8** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ule i8* %31, %33
  br i1 %34, label %35, label %68

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = call i8* @match(%struct.TYPE_4__* %4, i8* %37, i8* %38)
  store i8* %39, i8** %9, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %64

41:                                               ; preds = %35
  %42 = load i8*, i8** %9, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = ptrtoint i8* %42 to i64
  %45 = ptrtoint i8* %43 to i64
  %46 = sub i64 %44, %45
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %10, align 4
  %48 = load i8*, i8** %9, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = icmp eq i8* %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %41
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %51, %41
  %55 = load i32*, i32** %3, align 8
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @lua_pushinteger(i32* %55, i32 %56)
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @lua_upvalueindex(i32 3)
  %60 = call i32 @lua_replace(i32* %58, i32 %59)
  %61 = load i8*, i8** %8, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = call i32 @push_captures(%struct.TYPE_4__* %4, i8* %61, i8* %62)
  store i32 %63, i32* %2, align 4
  br label %69

64:                                               ; preds = %35
  br label %65

65:                                               ; preds = %64
  %66 = load i8*, i8** %8, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %8, align 8
  br label %30

68:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %54
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i8* @lua_tolstring(i32*, i32, i64*) #1

declare dso_local i32 @lua_upvalueindex(i32) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i64 @lua_tointeger(i32*, i32) #1

declare dso_local i8* @match(%struct.TYPE_4__*, i8*, i8*) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @lua_replace(i32*, i32) #1

declare dso_local i32 @push_captures(%struct.TYPE_4__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
