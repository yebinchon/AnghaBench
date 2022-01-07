; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-sharedata.c_ishashkey.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-sharedata.c_ishashkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@LUA_TNUMBER = common dso_local global i32 0, align 4
@KEYTYPE_INTEGER = common dso_local global i32 0, align 4
@KEYTYPE_STRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.context*, i32*, i32, i32*, i64*, i32*)* @ishashkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ishashkey(%struct.context* %0, i32* %1, i32 %2, i32* %3, i64* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.context*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  store %struct.context* %0, %struct.context** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i64* %4, i64** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = load %struct.context*, %struct.context** %8, align 8
  %19 = getelementptr inbounds %struct.context, %struct.context* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %14, align 4
  %23 = load i32*, i32** %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @lua_type(i32* %23, i32 %24)
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* %15, align 4
  %27 = load i32, i32* @LUA_TNUMBER, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %50

29:                                               ; preds = %6
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @lua_tointeger(i32* %30, i32 %31)
  %33 = load i32*, i32** %11, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32*, i32** %11, align 8
  %35 = load i32, i32* %34, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %29
  %38 = load i32*, i32** %11, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %14, align 4
  %41 = icmp sle i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 0, i32* %7, align 4
  br label %66

43:                                               ; preds = %37, %29
  %44 = load i32*, i32** %11, align 8
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = load i64*, i64** %12, align 8
  store i64 %46, i64* %47, align 8
  %48 = load i32, i32* @KEYTYPE_INTEGER, align 4
  %49 = load i32*, i32** %13, align 8
  store i32 %48, i32* %49, align 4
  br label %65

50:                                               ; preds = %6
  store i64 0, i64* %16, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i8* @lua_tolstring(i32* %51, i32 %52, i64* %16)
  store i8* %53, i8** %17, align 8
  %54 = load i8*, i8** %17, align 8
  %55 = load i64, i64* %16, align 8
  %56 = call i64 @calchash(i8* %54, i64 %55)
  %57 = load i64*, i64** %12, align 8
  store i64 %56, i64* %57, align 8
  %58 = load %struct.context*, %struct.context** %8, align 8
  %59 = load i8*, i8** %17, align 8
  %60 = load i64, i64* %16, align 8
  %61 = call i32 @stringindex(%struct.context* %58, i8* %59, i64 %60)
  %62 = load i32*, i32** %11, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* @KEYTYPE_STRING, align 4
  %64 = load i32*, i32** %13, align 8
  store i32 %63, i32* %64, align 4
  br label %65

65:                                               ; preds = %50, %43
  store i32 1, i32* %7, align 4
  br label %66

66:                                               ; preds = %65, %42
  %67 = load i32, i32* %7, align 4
  ret i32 %67
}

declare dso_local i32 @lua_type(i32*, i32) #1

declare dso_local i32 @lua_tointeger(i32*, i32) #1

declare dso_local i8* @lua_tolstring(i32*, i32, i64*) #1

declare dso_local i64 @calchash(i8*, i64) #1

declare dso_local i32 @stringindex(%struct.context*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
