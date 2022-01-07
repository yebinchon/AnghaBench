; ModuleID = '/home/carl/AnghaBench/redis/deps/lua/src/extr_lua_struct.c_b_size.c'
source_filename = "/home/carl/AnghaBench/redis/deps/lua/src/extr_lua_struct.c_b_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"option 's' has no fixed size\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"option 'c0' has no fixed size\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @b_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b_size(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call i8* @luaL_checkstring(i32* %8, i32 1)
  store i8* %9, i8** %4, align 8
  store i64 0, i64* %5, align 8
  %10 = call i32 @defaultoptions(i32* %3)
  br label %11

11:                                               ; preds = %52, %1
  %12 = load i8*, i8** %4, align 8
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %15, label %56

15:                                               ; preds = %11
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %4, align 8
  %18 = load i8, i8* %16, align 1
  %19 = sext i8 %18 to i32
  store i32 %19, i32* %6, align 4
  %20 = load i32*, i32** %2, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i64 @optsize(i32* %20, i32 %21, i8** %4)
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i64, i64* %7, align 8
  %26 = call i64 @gettoalign(i64 %23, i32* %3, i32 %24, i64 %25)
  %27 = load i64, i64* %5, align 8
  %28 = add i64 %27, %26
  store i64 %28, i64* %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, 115
  br i1 %30, label %31, label %34

31:                                               ; preds = %15
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @luaL_argerror(i32* %32, i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %44

34:                                               ; preds = %15
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %35, 99
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load i64, i64* %7, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32*, i32** %2, align 8
  %42 = call i32 @luaL_argerror(i32* %41, i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %37, %34
  br label %44

44:                                               ; preds = %43, %31
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @isalnum(i32 %45) #3
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i32*, i32** %2, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @controloptions(i32* %49, i32 %50, i8** %4, i32* %3)
  br label %52

52:                                               ; preds = %48, %44
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* %5, align 8
  %55 = add i64 %54, %53
  store i64 %55, i64* %5, align 8
  br label %11

56:                                               ; preds = %11
  %57 = load i32*, i32** %2, align 8
  %58 = load i64, i64* %5, align 8
  %59 = call i32 @lua_pushinteger(i32* %57, i64 %58)
  ret i32 1
}

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i32 @defaultoptions(i32*) #1

declare dso_local i64 @optsize(i32*, i32, i8**) #1

declare dso_local i64 @gettoalign(i64, i32*, i32, i64) #1

declare dso_local i32 @luaL_argerror(i32*, i32, i8*) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isalnum(i32) #2

declare dso_local i32 @controloptions(i32*, i32, i8**, i32*) #1

declare dso_local i32 @lua_pushinteger(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
