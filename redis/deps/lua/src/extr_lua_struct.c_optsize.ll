; ModuleID = '/home/carl/AnghaBench/redis/deps/lua/src/extr_lua_struct.c_optsize.c'
source_filename = "/home/carl/AnghaBench/redis/deps/lua/src/extr_lua_struct.c_optsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXINTSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"integral size %d is larger than limit of %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i8, i8**)* @optsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @optsize(i32* %0, i8 signext %1, i8** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8** %2, i8*** %7, align 8
  %9 = load i8, i8* %6, align 1
  %10 = sext i8 %9 to i32
  switch i32 %10, label %36 [
    i32 66, label %11
    i32 98, label %11
    i32 72, label %12
    i32 104, label %12
    i32 76, label %13
    i32 108, label %13
    i32 84, label %14
    i32 102, label %15
    i32 100, label %16
    i32 120, label %17
    i32 99, label %18
    i32 105, label %21
    i32 73, label %21
  ]

11:                                               ; preds = %3, %3
  store i64 1, i64* %4, align 8
  br label %37

12:                                               ; preds = %3, %3
  store i64 2, i64* %4, align 8
  br label %37

13:                                               ; preds = %3, %3
  store i64 8, i64* %4, align 8
  br label %37

14:                                               ; preds = %3
  store i64 8, i64* %4, align 8
  br label %37

15:                                               ; preds = %3
  store i64 4, i64* %4, align 8
  br label %37

16:                                               ; preds = %3
  store i64 8, i64* %4, align 8
  br label %37

17:                                               ; preds = %3
  store i64 1, i64* %4, align 8
  br label %37

18:                                               ; preds = %3
  %19 = load i8**, i8*** %7, align 8
  %20 = call i64 @getnum(i8** %19, i32 1)
  store i64 %20, i64* %4, align 8
  br label %37

21:                                               ; preds = %3, %3
  %22 = load i8**, i8*** %7, align 8
  %23 = call i64 @getnum(i8** %22, i32 4)
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @MAXINTSIZE, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @MAXINTSIZE, align 4
  %32 = call i32 @luaL_error(i32* %29, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %28, %21
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %4, align 8
  br label %37

36:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %37

37:                                               ; preds = %36, %33, %18, %17, %16, %15, %14, %13, %12, %11
  %38 = load i64, i64* %4, align 8
  ret i64 %38
}

declare dso_local i64 @getnum(i8**, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
