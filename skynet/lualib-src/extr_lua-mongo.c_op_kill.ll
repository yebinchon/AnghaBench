; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-mongo.c_op_kill.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-mongo.c_op_kill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { i32, i64 }

@.str = private unnamed_addr constant [18 x i8] c"Invalid cursor id\00", align 1
@OP_KILL_CURSORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @op_kill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @op_kill(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.buffer, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64 0, i64* %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i8* @luaL_tolstring(i32* %8, i32 1, i64* %4)
  store i8* %9, i8** %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp ne i64 %10, 8
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @luaL_error(i32* %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %2, align 4
  br label %38

15:                                               ; preds = %1
  %16 = call i32 @buffer_create(%struct.buffer* %6)
  %17 = call i32 @reserve_length(%struct.buffer* %6)
  store i32 %17, i32* %7, align 4
  %18 = call i32 @write_int32(%struct.buffer* %6, i32 0)
  %19 = call i32 @write_int32(%struct.buffer* %6, i32 0)
  %20 = load i32, i32* @OP_KILL_CURSORS, align 4
  %21 = call i32 @write_int32(%struct.buffer* %6, i32 %20)
  %22 = call i32 @write_int32(%struct.buffer* %6, i32 0)
  %23 = call i32 @write_int32(%struct.buffer* %6, i32 1)
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @write_bytes(%struct.buffer* %6, i8* %24, i32 8)
  %26 = getelementptr inbounds %struct.buffer, %struct.buffer* %6, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @write_length(%struct.buffer* %6, i32 %27, i32 %28)
  %30 = load i32*, i32** %3, align 8
  %31 = getelementptr inbounds %struct.buffer, %struct.buffer* %6, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = getelementptr inbounds %struct.buffer, %struct.buffer* %6, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @lua_pushlstring(i32* %30, i8* %33, i32 %35)
  %37 = call i32 @buffer_destroy(%struct.buffer* %6)
  store i32 1, i32* %2, align 4
  br label %38

38:                                               ; preds = %15, %12
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i8* @luaL_tolstring(i32*, i32, i64*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @buffer_create(%struct.buffer*) #1

declare dso_local i32 @reserve_length(%struct.buffer*) #1

declare dso_local i32 @write_int32(%struct.buffer*, i32) #1

declare dso_local i32 @write_bytes(%struct.buffer*, i8*, i32) #1

declare dso_local i32 @write_length(%struct.buffer*, i32, i32) #1

declare dso_local i32 @lua_pushlstring(i32*, i8*, i32) #1

declare dso_local i32 @buffer_destroy(%struct.buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
