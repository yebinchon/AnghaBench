; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-cluster.c_lpacktrace.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-cluster.c_lpacktrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"trace tag is too long : %d\00", align 1
@TEMP_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lpacktrace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpacktrace(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i8* @luaL_checklstring(i32* %8, i32 1, i64* %4)
  store i8* %9, i8** %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp ugt i64 %10, 32768
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load i32*, i32** %3, align 8
  %14 = load i64, i64* %4, align 8
  %15 = trunc i64 %14 to i32
  %16 = call i32 @luaL_error(i32* %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 %16, i32* %2, align 4
  br label %37

17:                                               ; preds = %1
  %18 = load i32, i32* @TEMP_LENGTH, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %6, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %7, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  store i32 4, i32* %22, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = load i64, i64* %4, align 8
  %25 = add i64 %24, 1
  %26 = call i32 @fill_header(i32* %23, i32* %21, i64 %25)
  %27 = getelementptr inbounds i32, i32* %21, i64 3
  %28 = load i8*, i8** %5, align 8
  %29 = load i64, i64* %4, align 8
  %30 = call i32 @memcpy(i32* %27, i8* %28, i64 %29)
  %31 = load i32*, i32** %3, align 8
  %32 = bitcast i32* %21 to i8*
  %33 = load i64, i64* %4, align 8
  %34 = add i64 %33, 3
  %35 = call i32 @lua_pushlstring(i32* %31, i8* %32, i64 %34)
  store i32 1, i32* %2, align 4
  %36 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %36)
  br label %37

37:                                               ; preds = %17, %12
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i32 @luaL_error(i32*, i8*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @fill_header(i32*, i32*, i64) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i32 @lua_pushlstring(i32*, i8*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
