; ModuleID = '/home/carl/AnghaBench/redis/src/extr_scripting.c_redisProtocolToLuaType_Double.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_scripting.c_redisProtocolToLuaType_Double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_LONG_DOUBLE_CHARS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"double\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @redisProtocolToLuaType_Double(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca double, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 1
  %12 = call i8* @strchr(i8* %11, i8 signext 13)
  store i8* %12, i8** %5, align 8
  %13 = load i32, i32* @MAX_LONG_DOUBLE_CHARS, align 4
  %14 = add nsw i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = ptrtoint i8* %18 to i64
  %21 = ptrtoint i8* %19 to i64
  %22 = sub i64 %20, %21
  %23 = sub nsw i64 %22, 1
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i32, i32* @MAX_LONG_DOUBLE_CHARS, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp ule i64 %24, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %2
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @memcpy(i8* %17, i8* %30, i64 %31)
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds i8, i8* %17, i64 %33
  store i8 0, i8* %34, align 1
  %35 = call double @strtod(i8* %17, i32* null)
  store double %35, double* %9, align 8
  br label %37

36:                                               ; preds = %2
  store double 0.000000e+00, double* %9, align 8
  br label %37

37:                                               ; preds = %36, %28
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @lua_newtable(i32* %38)
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @lua_pushstring(i32* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %42 = load i32*, i32** %3, align 8
  %43 = load double, double* %9, align 8
  %44 = call i32 @lua_pushnumber(i32* %42, double %43)
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @lua_settable(i32* %45, i32 -3)
  %47 = load i8*, i8** %5, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 2
  %49 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %49)
  ret i8* %48
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local double @strtod(i8*, i32*) #1

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @lua_pushnumber(i32*, double) #1

declare dso_local i32 @lua_settable(i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
