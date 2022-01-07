; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_lmem.c_luaM_realloc_.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_lmem.c_luaM_realloc_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i8* (i32, i8*, i64, i64)*, i64, i64 }

@LUA_ERRMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @luaM_realloc_(i32* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call %struct.TYPE_3__* @G(i32* %12)
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %10, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i64, i64* %7, align 8
  br label %19

18:                                               ; preds = %4
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i64 [ %17, %16 ], [ 0, %18 ]
  store i64 %20, i64* %11, align 8
  %21 = load i64, i64* %11, align 8
  %22 = icmp eq i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = load i8*, i8** %6, align 8
  %25 = icmp eq i8* %24, null
  %26 = zext i1 %25 to i32
  %27 = icmp eq i32 %23, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @lua_assert(i32 %28)
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load i8* (i32, i8*, i64, i64)*, i8* (i32, i8*, i64, i64)** %31, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* %8, align 8
  %39 = call i8* %32(i32 %35, i8* %36, i64 %37, i64 %38)
  store i8* %39, i8** %9, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %76

42:                                               ; preds = %19
  %43 = load i64, i64* %8, align 8
  %44 = icmp ugt i64 %43, 0
  br i1 %44, label %45, label %76

45:                                               ; preds = %42
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* %11, align 8
  %48 = icmp ugt i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @lua_assert(i32 %49)
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %45
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @luaC_fullgc(i32* %56, i32 1)
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = load i8* (i32, i8*, i64, i64)*, i8* (i32, i8*, i64, i64)** %59, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* %8, align 8
  %67 = call i8* %60(i32 %63, i8* %64, i64 %65, i64 %66)
  store i8* %67, i8** %9, align 8
  br label %68

68:                                               ; preds = %55, %45
  %69 = load i8*, i8** %9, align 8
  %70 = icmp eq i8* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* @LUA_ERRMEM, align 4
  %74 = call i32 @luaD_throw(i32* %72, i32 %73)
  br label %75

75:                                               ; preds = %71, %68
  br label %76

76:                                               ; preds = %75, %42, %19
  %77 = load i64, i64* %8, align 8
  %78 = icmp eq i64 %77, 0
  %79 = zext i1 %78 to i32
  %80 = load i8*, i8** %9, align 8
  %81 = icmp eq i8* %80, null
  %82 = zext i1 %81 to i32
  %83 = icmp eq i32 %79, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @lua_assert(i32 %84)
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %8, align 8
  %90 = add i64 %88, %89
  %91 = load i64, i64* %11, align 8
  %92 = sub i64 %90, %91
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  %95 = load i8*, i8** %9, align 8
  ret i8* %95
}

declare dso_local %struct.TYPE_3__* @G(i32*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @luaC_fullgc(i32*, i32) #1

declare dso_local i32 @luaD_throw(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
