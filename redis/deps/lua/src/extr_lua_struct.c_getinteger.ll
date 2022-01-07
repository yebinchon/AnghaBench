; ModuleID = '/home/carl/AnghaBench/redis/deps/lua/src/extr_lua_struct.c_getinteger.c'
source_filename = "/home/carl/AnghaBench/redis/deps/lua/src/extr_lua_struct.c_getinteger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32)* @getinteger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getinteger(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @BIG, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %36

16:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %17

17:                                               ; preds = %32, %16
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %17
  %22 = load i32, i32* %10, align 4
  %23 = shl i32 %22, 8
  store i32 %23, i32* %10, align 4
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = load i32, i32* %10, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %21
  %33 = load i32, i32* %11, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %11, align 4
  br label %17

35:                                               ; preds = %17
  br label %57

36:                                               ; preds = %4
  %37 = load i32, i32* %9, align 4
  %38 = sub nsw i32 %37, 1
  store i32 %38, i32* %11, align 4
  br label %39

39:                                               ; preds = %53, %36
  %40 = load i32, i32* %11, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %39
  %43 = load i32, i32* %10, align 4
  %44 = shl i32 %43, 8
  store i32 %44, i32* %10, align 4
  %45 = load i8*, i8** %6, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = load i32, i32* %10, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %42
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %11, align 4
  br label %39

56:                                               ; preds = %39
  br label %57

57:                                               ; preds = %56, %35
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %5, align 4
  br label %77

62:                                               ; preds = %57
  %63 = load i32, i32* %9, align 4
  %64 = mul nsw i32 %63, 8
  %65 = sub nsw i32 %64, 1
  %66 = shl i32 -1, %65
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %12, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %62
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %10, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %10, align 4
  br label %75

75:                                               ; preds = %71, %62
  %76 = load i32, i32* %10, align 4
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %75, %60
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
