; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-bson.c_pack_meta_dict.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-bson.c_pack_meta_dict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bson = type { i64 }

@LUA_TNIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.bson*, i32)* @pack_meta_dict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pack_meta_dict(i32* %0, %struct.bson* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.bson*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.bson* %1, %struct.bson** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.bson*, %struct.bson** %5, align 8
  %10 = call i32 @reserve_length(%struct.bson* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @lua_pushvalue(i32* %11, i32 -2)
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @lua_call(i32* %13, i32 1, i32 3)
  br label %15

15:                                               ; preds = %32, %3
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @lua_pushvalue(i32* %16, i32 -2)
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @lua_pushvalue(i32* %18, i32 -2)
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @lua_copy(i32* %20, i32 -5, i32 -3)
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @lua_call(i32* %22, i32 2, i32 2)
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @lua_type(i32* %24, i32 -2)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @LUA_TNIL, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %15
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @lua_pop(i32* %30, i32 4)
  br label %38

32:                                               ; preds = %15
  %33 = load i32*, i32** %4, align 8
  %34 = load %struct.bson*, %struct.bson** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @pack_dict_data(i32* %33, %struct.bson* %34, i32 %35, i32 %36)
  br label %15

38:                                               ; preds = %29
  %39 = load %struct.bson*, %struct.bson** %5, align 8
  %40 = call i32 @write_byte(%struct.bson* %39, i32 0)
  %41 = load %struct.bson*, %struct.bson** %5, align 8
  %42 = load %struct.bson*, %struct.bson** %5, align 8
  %43 = getelementptr inbounds %struct.bson, %struct.bson* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = sub nsw i64 %44, %46
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @write_length(%struct.bson* %41, i64 %47, i32 %48)
  ret void
}

declare dso_local i32 @reserve_length(%struct.bson*) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_call(i32*, i32, i32) #1

declare dso_local i32 @lua_copy(i32*, i32, i32) #1

declare dso_local i32 @lua_type(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @pack_dict_data(i32*, %struct.bson*, i32, i32) #1

declare dso_local i32 @write_byte(%struct.bson*, i32) #1

declare dso_local i32 @write_length(%struct.bson*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
