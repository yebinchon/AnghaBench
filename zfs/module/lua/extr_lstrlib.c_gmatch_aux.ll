; ModuleID = '/home/carl/AnghaBench/zfs/module/lua/extr_lstrlib.c_gmatch_aux.c'
source_filename = "/home/carl/AnghaBench/zfs/module/lua/extr_lstrlib.c_gmatch_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i8*, i8*, i8*, i64, i32* }

@MAXCCALLS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @gmatch_aux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmatch_aux(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @lua_upvalueindex(i32 1)
  %14 = call i8* @lua_tolstring(i32* %12, i32 %13, i64* %5)
  store i8* %14, i8** %7, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @lua_upvalueindex(i32 2)
  %17 = call i8* @lua_tolstring(i32* %15, i32 %16, i64* %6)
  store i8* %17, i8** %8, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 5
  store i32* %18, i32** %19, align 8
  %20 = load i64, i64* @MAXCCALLS, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i64 %20, i64* %21, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  store i8* %22, i8** %23, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  store i8* %26, i8** %27, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load i64, i64* %6, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 3
  store i8* %30, i8** %31, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @lua_upvalueindex(i32 3)
  %35 = call i64 @lua_tointeger(i32* %33, i32 %34)
  %36 = getelementptr inbounds i8, i8* %32, i64 %35
  store i8* %36, i8** %9, align 8
  br label %37

37:                                               ; preds = %78, %1
  %38 = load i8*, i8** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ule i8* %38, %40
  br i1 %41, label %42, label %81

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 4
  store i64 0, i64* %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @MAXCCALLS, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @lua_assert(i32 %48)
  %50 = load i8*, i8** %9, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = call i8* @match(%struct.TYPE_4__* %4, i8* %50, i8* %51)
  store i8* %52, i8** %10, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %77

54:                                               ; preds = %42
  %55 = load i8*, i8** %10, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = ptrtoint i8* %55 to i64
  %58 = ptrtoint i8* %56 to i64
  %59 = sub i64 %57, %58
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %11, align 4
  %61 = load i8*, i8** %10, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = icmp eq i8* %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %54
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %64, %54
  %68 = load i32*, i32** %3, align 8
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @lua_pushinteger(i32* %68, i32 %69)
  %71 = load i32*, i32** %3, align 8
  %72 = call i32 @lua_upvalueindex(i32 3)
  %73 = call i32 @lua_replace(i32* %71, i32 %72)
  %74 = load i8*, i8** %9, align 8
  %75 = load i8*, i8** %10, align 8
  %76 = call i32 @push_captures(%struct.TYPE_4__* %4, i8* %74, i8* %75)
  store i32 %76, i32* %2, align 4
  br label %82

77:                                               ; preds = %42
  br label %78

78:                                               ; preds = %77
  %79 = load i8*, i8** %9, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %9, align 8
  br label %37

81:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %81, %67
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i8* @lua_tolstring(i32*, i32, i64*) #1

declare dso_local i32 @lua_upvalueindex(i32) #1

declare dso_local i64 @lua_tointeger(i32*, i32) #1

declare dso_local i32 @lua_assert(i32) #1

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
