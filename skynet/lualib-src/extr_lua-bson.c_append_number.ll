; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-bson.c_append_number.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-bson.c_append_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bson = type { i32 }

@BSON_INT32 = common dso_local global i32 0, align 4
@BSON_INT64 = common dso_local global i32 0, align 4
@BSON_REAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bson*, i32*, i8*, i64)* @append_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @append_number(%struct.bson* %0, i32* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.bson*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bson* %0, %struct.bson** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i64 @lua_isinteger(i32* %11, i32 -1)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %41

14:                                               ; preds = %4
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @lua_tointeger(i32* %15, i32 -1)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i64 @is_32bit(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %14
  %21 = load %struct.bson*, %struct.bson** %5, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* @BSON_INT32, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @append_key(%struct.bson* %21, i32* %22, i32 %23, i8* %24, i64 %25)
  %27 = load %struct.bson*, %struct.bson** %5, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @write_int32(%struct.bson* %27, i32 %28)
  br label %40

30:                                               ; preds = %14
  %31 = load %struct.bson*, %struct.bson** %5, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* @BSON_INT64, align 4
  %34 = load i8*, i8** %7, align 8
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @append_key(%struct.bson* %31, i32* %32, i32 %33, i8* %34, i64 %35)
  %37 = load %struct.bson*, %struct.bson** %5, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @write_int64(%struct.bson* %37, i32 %38)
  br label %40

40:                                               ; preds = %30, %20
  br label %53

41:                                               ; preds = %4
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @lua_tonumber(i32* %42, i32 -1)
  store i32 %43, i32* %10, align 4
  %44 = load %struct.bson*, %struct.bson** %5, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* @BSON_REAL, align 4
  %47 = load i8*, i8** %7, align 8
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @append_key(%struct.bson* %44, i32* %45, i32 %46, i8* %47, i64 %48)
  %50 = load %struct.bson*, %struct.bson** %5, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @write_double(%struct.bson* %50, i32 %51)
  br label %53

53:                                               ; preds = %41, %40
  ret void
}

declare dso_local i64 @lua_isinteger(i32*, i32) #1

declare dso_local i32 @lua_tointeger(i32*, i32) #1

declare dso_local i64 @is_32bit(i32) #1

declare dso_local i32 @append_key(%struct.bson*, i32*, i32, i8*, i64) #1

declare dso_local i32 @write_int32(%struct.bson*, i32) #1

declare dso_local i32 @write_int64(%struct.bson*, i32) #1

declare dso_local i32 @lua_tonumber(i32*, i32) #1

declare dso_local i32 @write_double(%struct.bson*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
