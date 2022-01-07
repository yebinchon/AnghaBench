; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-socket.c_lreadline.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-socket.c_lreadline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_buffer = type { i32, i32, %struct.buffer_node* }
%struct.buffer_node = type { i32, %struct.buffer_node* }

@.str = private unnamed_addr constant [30 x i8] c"Need buffer object at param 1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lreadline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lreadline(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.socket_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.buffer_node*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call %struct.socket_buffer* @lua_touserdata(i32* %12, i32 1)
  store %struct.socket_buffer* %13, %struct.socket_buffer** %4, align 8
  %14 = load %struct.socket_buffer*, %struct.socket_buffer** %4, align 8
  %15 = icmp eq %struct.socket_buffer* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @luaL_error(i32* %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %2, align 4
  br label %108

19:                                               ; preds = %1
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @lua_istable(i32* %20, i32 2)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %5, align 4
  store i64 0, i64* %6, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = call i8* @luaL_checklstring(i32* %25, i32 3, i64* %6)
  store i8* %26, i8** %7, align 8
  %27 = load %struct.socket_buffer*, %struct.socket_buffer** %4, align 8
  %28 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %27, i32 0, i32 2
  %29 = load %struct.buffer_node*, %struct.buffer_node** %28, align 8
  store %struct.buffer_node* %29, %struct.buffer_node** %9, align 8
  %30 = load %struct.buffer_node*, %struct.buffer_node** %9, align 8
  %31 = icmp eq %struct.buffer_node* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %108

33:                                               ; preds = %19
  %34 = load %struct.socket_buffer*, %struct.socket_buffer** %4, align 8
  %35 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %10, align 4
  %37 = load %struct.buffer_node*, %struct.buffer_node** %9, align 8
  %38 = getelementptr inbounds %struct.buffer_node, %struct.buffer_node* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sub nsw i32 %39, %40
  store i32 %41, i32* %11, align 4
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %104, %33
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.socket_buffer*, %struct.socket_buffer** %4, align 8
  %45 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* %6, align 8
  %48 = trunc i64 %47 to i32
  %49 = sub nsw i32 %46, %48
  %50 = icmp sle i32 %43, %49
  br i1 %50, label %51, label %107

51:                                               ; preds = %42
  %52 = load %struct.buffer_node*, %struct.buffer_node** %9, align 8
  %53 = load i32, i32* %10, align 4
  %54 = load i8*, i8** %7, align 8
  %55 = load i64, i64* %6, align 8
  %56 = call i64 @check_sep(%struct.buffer_node* %52, i32 %53, i8* %54, i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %85

58:                                               ; preds = %51
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32*, i32** %3, align 8
  %63 = call i32 @lua_pushboolean(i32* %62, i32 1)
  br label %84

64:                                               ; preds = %58
  %65 = load i32*, i32** %3, align 8
  %66 = load %struct.socket_buffer*, %struct.socket_buffer** %4, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* %6, align 8
  %70 = add i64 %68, %69
  %71 = trunc i64 %70 to i32
  %72 = load i64, i64* %6, align 8
  %73 = call i32 @pop_lstring(i32* %65, %struct.socket_buffer* %66, i32 %71, i64 %72)
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* %6, align 8
  %77 = add i64 %75, %76
  %78 = load %struct.socket_buffer*, %struct.socket_buffer** %4, align 8
  %79 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = sub i64 %81, %77
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %79, align 4
  br label %84

84:                                               ; preds = %64, %61
  store i32 1, i32* %2, align 4
  br label %108

85:                                               ; preds = %51
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %85
  %93 = load %struct.buffer_node*, %struct.buffer_node** %9, align 8
  %94 = getelementptr inbounds %struct.buffer_node, %struct.buffer_node* %93, i32 0, i32 1
  %95 = load %struct.buffer_node*, %struct.buffer_node** %94, align 8
  store %struct.buffer_node* %95, %struct.buffer_node** %9, align 8
  store i32 0, i32* %10, align 4
  %96 = load %struct.buffer_node*, %struct.buffer_node** %9, align 8
  %97 = icmp eq %struct.buffer_node* %96, null
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  br label %107

99:                                               ; preds = %92
  %100 = load %struct.buffer_node*, %struct.buffer_node** %9, align 8
  %101 = getelementptr inbounds %struct.buffer_node, %struct.buffer_node* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  store i32 %102, i32* %11, align 4
  br label %103

103:                                              ; preds = %99, %85
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %8, align 4
  br label %42

107:                                              ; preds = %98, %42
  store i32 0, i32* %2, align 4
  br label %108

108:                                              ; preds = %107, %84, %32, %16
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local %struct.socket_buffer* @lua_touserdata(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @lua_istable(i32*, i32) #1

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i64 @check_sep(%struct.buffer_node*, i32, i8*, i64) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

declare dso_local i32 @pop_lstring(i32*, %struct.socket_buffer*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
