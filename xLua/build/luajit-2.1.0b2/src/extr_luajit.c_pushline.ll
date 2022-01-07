; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_luajit.c_pushline.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_luajit.c_pushline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_MAXINPUT = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"return %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @pushline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pushline(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @LUA_MAXINPUT, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @write_prompt(i32* %14, i32 %15)
  %17 = load i32, i32* @LUA_MAXINPUT, align 4
  %18 = load i32, i32* @stdin, align 4
  %19 = call i64 @fgets(i8* %13, i32 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %52

21:                                               ; preds = %2
  %22 = call i64 @strlen(i8* %13)
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp ugt i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %21
  %26 = load i64, i64* %8, align 8
  %27 = sub i64 %26, 1
  %28 = getelementptr inbounds i8, i8* %13, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 10
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load i64, i64* %8, align 8
  %34 = sub i64 %33, 1
  %35 = getelementptr inbounds i8, i8* %13, i64 %34
  store i8 0, i8* %35, align 1
  br label %36

36:                                               ; preds = %32, %25, %21
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = getelementptr inbounds i8, i8* %13, i64 0
  %41 = load i8, i8* %40, align 16
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 61
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32*, i32** %4, align 8
  %46 = getelementptr inbounds i8, i8* %13, i64 1
  %47 = call i32 @lua_pushfstring(i32* %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %46)
  br label %51

48:                                               ; preds = %39, %36
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @lua_pushstring(i32* %49, i8* %13)
  br label %51

51:                                               ; preds = %48, %44
  store i32 1, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %53

52:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %53

53:                                               ; preds = %52, %51
  %54 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %54)
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @write_prompt(i32*, i32) #2

declare dso_local i64 @fgets(i8*, i32, i32) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @lua_pushfstring(i32*, i8*, i8*) #2

declare dso_local i32 @lua_pushstring(i32*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
