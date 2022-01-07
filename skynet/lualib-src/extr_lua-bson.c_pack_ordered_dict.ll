; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-bson.c_pack_ordered_dict.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-bson.c_pack_ordered_dict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bson = type { i64 }

@.str = private unnamed_addr constant [26 x i8] c"Argument %d need a string\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.bson*, i32, i32)* @pack_ordered_dict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pack_ordered_dict(i32* %0, %struct.bson* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.bson*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.bson* %1, %struct.bson** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.bson*, %struct.bson** %6, align 8
  %14 = call i32 @reserve_length(%struct.bson* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i8* @lua_tolstring(i32* %15, i32 %16, i64* %11)
  store i8* %17, i8** %12, align 8
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %47, %4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %50

22:                                               ; preds = %18
  %23 = load i8*, i8** %12, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %10, align 4
  %28 = add nsw i32 %27, 1
  %29 = call i32 @luaL_error(i32* %26, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %25, %22
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %10, align 4
  %33 = add nsw i32 %32, 1
  %34 = call i32 @lua_pushvalue(i32* %31, i32 %33)
  %35 = load %struct.bson*, %struct.bson** %6, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = load i64, i64* %11, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @append_one(%struct.bson* %35, i32* %36, i8* %37, i64 %38, i32 %39)
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @lua_pop(i32* %41, i32 1)
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %44, 2
  %46 = call i8* @lua_tolstring(i32* %43, i32 %45, i64* %11)
  store i8* %46, i8** %12, align 8
  br label %47

47:                                               ; preds = %30
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, 2
  store i32 %49, i32* %10, align 4
  br label %18

50:                                               ; preds = %18
  %51 = load %struct.bson*, %struct.bson** %6, align 8
  %52 = call i32 @write_byte(%struct.bson* %51, i32 0)
  %53 = load %struct.bson*, %struct.bson** %6, align 8
  %54 = load %struct.bson*, %struct.bson** %6, align 8
  %55 = getelementptr inbounds %struct.bson, %struct.bson* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = sub nsw i64 %56, %58
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @write_length(%struct.bson* %53, i64 %59, i32 %60)
  ret void
}

declare dso_local i32 @reserve_length(%struct.bson*) #1

declare dso_local i8* @lua_tolstring(i32*, i32, i64*) #1

declare dso_local i32 @luaL_error(i32*, i8*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @append_one(%struct.bson*, i32*, i8*, i64, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @write_byte(%struct.bson*, i32) #1

declare dso_local i32 @write_length(%struct.bson*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
