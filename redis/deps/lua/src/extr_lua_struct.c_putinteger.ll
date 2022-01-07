; ModuleID = '/home/carl/AnghaBench/redis/deps/lua/src/extr_lua_struct.c_putinteger.c'
source_filename = "/home/carl/AnghaBench/redis/deps/lua/src/extr_lua_struct.c_putinteger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXINTSIZE = common dso_local global i32 0, align 4
@LITTLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32)* @putinteger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @putinteger(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i64 @luaL_checknumber(i32* %17, i32 %18)
  store i64 %19, i64* %11, align 8
  %20 = load i32, i32* @MAXINTSIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %13, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %14, align 8
  %24 = load i64, i64* %11, align 8
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %5
  %27 = load i64, i64* %11, align 8
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %12, align 4
  br label %32

29:                                               ; preds = %5
  %30 = load i64, i64* %11, align 8
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %12, align 4
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @LITTLE, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %54

36:                                               ; preds = %32
  store i32 0, i32* %15, align 4
  br label %37

37:                                               ; preds = %50, %36
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %37
  %42 = load i32, i32* %12, align 4
  %43 = and i32 %42, 255
  %44 = trunc i32 %43 to i8
  %45 = load i32, i32* %15, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %23, i64 %46
  store i8 %44, i8* %47, align 1
  %48 = load i32, i32* %12, align 4
  %49 = ashr i32 %48, 8
  store i32 %49, i32* %12, align 4
  br label %50

50:                                               ; preds = %41
  %51 = load i32, i32* %15, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %15, align 4
  br label %37

53:                                               ; preds = %37
  br label %73

54:                                               ; preds = %32
  %55 = load i32, i32* %10, align 4
  %56 = sub nsw i32 %55, 1
  store i32 %56, i32* %16, align 4
  br label %57

57:                                               ; preds = %69, %54
  %58 = load i32, i32* %16, align 4
  %59 = icmp sge i32 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %57
  %61 = load i32, i32* %12, align 4
  %62 = and i32 %61, 255
  %63 = trunc i32 %62 to i8
  %64 = load i32, i32* %16, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %23, i64 %65
  store i8 %63, i8* %66, align 1
  %67 = load i32, i32* %12, align 4
  %68 = ashr i32 %67, 8
  store i32 %68, i32* %12, align 4
  br label %69

69:                                               ; preds = %60
  %70 = load i32, i32* %16, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %16, align 4
  br label %57

72:                                               ; preds = %57
  br label %73

73:                                               ; preds = %72, %53
  %74 = load i32*, i32** %7, align 8
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @luaL_addlstring(i32* %74, i8* %23, i32 %75)
  %77 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %77)
  ret void
}

declare dso_local i64 @luaL_checknumber(i32*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @luaL_addlstring(i32*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
