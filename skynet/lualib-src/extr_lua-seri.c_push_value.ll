; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-seri.c_push_value.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-seri.c_push_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.read_block = type { i32 }

@TYPE_NUMBER_REAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.read_block*, i32, i32)* @push_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @push_value(i32* %0, %struct.read_block* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.read_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.read_block* %1, %struct.read_block** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %98 [
    i32 132, label %14
    i32 134, label %17
    i32 131, label %21
    i32 128, label %39
    i32 130, label %45
    i32 133, label %50
    i32 129, label %93
  ]

14:                                               ; preds = %4
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @lua_pushnil(i32* %15)
  br label %102

17:                                               ; preds = %4
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @lua_pushboolean(i32* %18, i32 %19)
  br label %102

21:                                               ; preds = %4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @TYPE_NUMBER_REAL, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load i32*, i32** %5, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = load %struct.read_block*, %struct.read_block** %6, align 8
  %29 = call i32 @get_real(i32* %27, %struct.read_block* %28)
  %30 = call i32 @lua_pushnumber(i32* %26, i32 %29)
  br label %38

31:                                               ; preds = %21
  %32 = load i32*, i32** %5, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = load %struct.read_block*, %struct.read_block** %6, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @get_integer(i32* %33, %struct.read_block* %34, i32 %35)
  %37 = call i32 @lua_pushinteger(i32* %32, i32 %36)
  br label %38

38:                                               ; preds = %31, %25
  br label %102

39:                                               ; preds = %4
  %40 = load i32*, i32** %5, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = load %struct.read_block*, %struct.read_block** %6, align 8
  %43 = call i32 @get_pointer(i32* %41, %struct.read_block* %42)
  %44 = call i32 @lua_pushlightuserdata(i32* %40, i32 %43)
  br label %102

45:                                               ; preds = %4
  %46 = load i32*, i32** %5, align 8
  %47 = load %struct.read_block*, %struct.read_block** %6, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @get_buffer(i32* %46, %struct.read_block* %47, i32 %48)
  br label %102

50:                                               ; preds = %4
  %51 = load i32, i32* %8, align 4
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %53, label %69

53:                                               ; preds = %50
  %54 = load %struct.read_block*, %struct.read_block** %6, align 8
  %55 = call i32* @rb_read(%struct.read_block* %54, i32 2)
  store i32* %55, i32** %9, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i32*, i32** %5, align 8
  %60 = load %struct.read_block*, %struct.read_block** %6, align 8
  %61 = call i32 @invalid_stream(i32* %59, %struct.read_block* %60)
  br label %62

62:                                               ; preds = %58, %53
  %63 = load i32*, i32** %9, align 8
  %64 = call i32 @memcpy(i32* %10, i32* %63, i32 4)
  %65 = load i32*, i32** %5, align 8
  %66 = load %struct.read_block*, %struct.read_block** %6, align 8
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @get_buffer(i32* %65, %struct.read_block* %66, i32 %67)
  br label %92

69:                                               ; preds = %50
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 4
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load i32*, i32** %5, align 8
  %74 = load %struct.read_block*, %struct.read_block** %6, align 8
  %75 = call i32 @invalid_stream(i32* %73, %struct.read_block* %74)
  br label %76

76:                                               ; preds = %72, %69
  %77 = load %struct.read_block*, %struct.read_block** %6, align 8
  %78 = call i32* @rb_read(%struct.read_block* %77, i32 4)
  store i32* %78, i32** %11, align 8
  %79 = load i32*, i32** %11, align 8
  %80 = icmp eq i32* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load i32*, i32** %5, align 8
  %83 = load %struct.read_block*, %struct.read_block** %6, align 8
  %84 = call i32 @invalid_stream(i32* %82, %struct.read_block* %83)
  br label %85

85:                                               ; preds = %81, %76
  %86 = load i32*, i32** %11, align 8
  %87 = call i32 @memcpy(i32* %12, i32* %86, i32 4)
  %88 = load i32*, i32** %5, align 8
  %89 = load %struct.read_block*, %struct.read_block** %6, align 8
  %90 = load i32, i32* %12, align 4
  %91 = call i32 @get_buffer(i32* %88, %struct.read_block* %89, i32 %90)
  br label %92

92:                                               ; preds = %85, %62
  br label %102

93:                                               ; preds = %4
  %94 = load i32*, i32** %5, align 8
  %95 = load %struct.read_block*, %struct.read_block** %6, align 8
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @unpack_table(i32* %94, %struct.read_block* %95, i32 %96)
  br label %102

98:                                               ; preds = %4
  %99 = load i32*, i32** %5, align 8
  %100 = load %struct.read_block*, %struct.read_block** %6, align 8
  %101 = call i32 @invalid_stream(i32* %99, %struct.read_block* %100)
  br label %102

102:                                              ; preds = %98, %93, %92, %45, %39, %38, %17, %14
  ret void
}

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

declare dso_local i32 @get_real(i32*, %struct.read_block*) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @get_integer(i32*, %struct.read_block*, i32) #1

declare dso_local i32 @lua_pushlightuserdata(i32*, i32) #1

declare dso_local i32 @get_pointer(i32*, %struct.read_block*) #1

declare dso_local i32 @get_buffer(i32*, %struct.read_block*, i32) #1

declare dso_local i32* @rb_read(%struct.read_block*, i32) #1

declare dso_local i32 @invalid_stream(i32*, %struct.read_block*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @unpack_table(i32*, %struct.read_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
