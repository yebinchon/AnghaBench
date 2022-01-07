; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-socket.c_lnewpool.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-socket.c_lnewpool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_node = type { %struct.buffer_node*, i64, i32* }

@.str = private unnamed_addr constant [12 x i8] c"buffer_pool\00", align 1
@lfreepool = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"__gc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @lnewpool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lnewpool(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.buffer_node*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = mul i64 24, %9
  %11 = trunc i64 %10 to i32
  %12 = call %struct.buffer_node* @lua_newuserdata(i32* %7, i32 %11)
  store %struct.buffer_node* %12, %struct.buffer_node** %5, align 8
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %38, %2
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %41

17:                                               ; preds = %13
  %18 = load %struct.buffer_node*, %struct.buffer_node** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.buffer_node, %struct.buffer_node* %18, i64 %20
  %22 = getelementptr inbounds %struct.buffer_node, %struct.buffer_node* %21, i32 0, i32 2
  store i32* null, i32** %22, align 8
  %23 = load %struct.buffer_node*, %struct.buffer_node** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.buffer_node, %struct.buffer_node* %23, i64 %25
  %27 = getelementptr inbounds %struct.buffer_node, %struct.buffer_node* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load %struct.buffer_node*, %struct.buffer_node** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.buffer_node, %struct.buffer_node* %28, i64 %31
  %33 = load %struct.buffer_node*, %struct.buffer_node** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.buffer_node, %struct.buffer_node* %33, i64 %35
  %37 = getelementptr inbounds %struct.buffer_node, %struct.buffer_node* %36, i32 0, i32 0
  store %struct.buffer_node* %32, %struct.buffer_node** %37, align 8
  br label %38

38:                                               ; preds = %17
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %13

41:                                               ; preds = %13
  %42 = load %struct.buffer_node*, %struct.buffer_node** %5, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.buffer_node, %struct.buffer_node* %42, i64 %45
  %47 = getelementptr inbounds %struct.buffer_node, %struct.buffer_node* %46, i32 0, i32 0
  store %struct.buffer_node* null, %struct.buffer_node** %47, align 8
  %48 = load i32*, i32** %3, align 8
  %49 = call i64 @luaL_newmetatable(i32* %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %41
  %52 = load i32*, i32** %3, align 8
  %53 = load i32, i32* @lfreepool, align 4
  %54 = call i32 @lua_pushcfunction(i32* %52, i32 %53)
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 @lua_setfield(i32* %55, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %51, %41
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @lua_setmetatable(i32* %58, i32 -2)
  ret i32 1
}

declare dso_local %struct.buffer_node* @lua_newuserdata(i32*, i32) #1

declare dso_local i64 @luaL_newmetatable(i32*, i8*) #1

declare dso_local i32 @lua_pushcfunction(i32*, i32) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_setmetatable(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
