; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/libs/extr_httpd.c_vlclua_todata.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/libs/extr_httpd.c_vlclua_todata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"Error while allocating buffer.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i32*)* @vlclua_todata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @vlclua_todata(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i8* @lua_tolstring(i32* %11, i32 %12, i64* %8)
  store i8* %13, i8** %9, align 8
  %14 = load i64, i64* %8, align 8
  %15 = call i32* @vlc_alloc(i64 %14, i32 4)
  store i32* %15, i32** %10, align 8
  %16 = load i64, i64* %8, align 8
  %17 = trunc i64 %16 to i32
  %18 = load i32*, i32** %7, align 8
  store i32 %17, i32* %18, align 4
  %19 = load i32*, i32** %10, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @luaL_error(i32* %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %30

24:                                               ; preds = %3
  %25 = load i32*, i32** %10, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @memcpy(i32* %25, i8* %26, i64 %27)
  %29 = load i32*, i32** %10, align 8
  store i32* %29, i32** %4, align 8
  br label %30

30:                                               ; preds = %24, %21
  %31 = load i32*, i32** %4, align 8
  ret i32* %31
}

declare dso_local i8* @lua_tolstring(i32*, i32, i64*) #1

declare dso_local i32* @vlc_alloc(i64, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
