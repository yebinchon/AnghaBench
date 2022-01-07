; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-crypt.c_lhmac_hash.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-crypt.c_lhmac_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"Invalid uint64 key\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lhmac_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lhmac_hash(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [2 x i32], align 4
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [8 x i32], align 16
  %8 = alloca [2 x i32], align 4
  %9 = alloca [2 x i32], align 4
  store i32* %0, i32** %2, align 8
  store i64 0, i64* %4, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = call i8* @luaL_checklstring(i32* %10, i32 1, i64* %4)
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %5, align 8
  %13 = load i64, i64* %4, align 8
  %14 = icmp ne i64 %13, 8
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @luaL_error(i32* %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %1
  %19 = load i32*, i32** %5, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %24, 8
  %26 = or i32 %21, %25
  %27 = load i32*, i32** %5, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %29, 16
  %31 = or i32 %26, %30
  %32 = load i32*, i32** %5, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 3
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %34, 24
  %36 = or i32 %31, %35
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  store i32 %36, i32* %37, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 4
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %5, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 5
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 %43, 8
  %45 = or i32 %40, %44
  %46 = load i32*, i32** %5, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 6
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 %48, 16
  %50 = or i32 %45, %49
  %51 = load i32*, i32** %5, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 7
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 %53, 24
  %55 = or i32 %50, %54
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  store i32 %55, i32* %56, align 4
  %57 = load i32*, i32** %2, align 8
  %58 = call i8* @luaL_checklstring(i32* %57, i32 2, i64* %4)
  store i8* %58, i8** %6, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = load i64, i64* %4, align 8
  %61 = trunc i64 %60 to i32
  %62 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %63 = call i32 @Hash(i8* %59, i32 %61, i32* %62)
  %64 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %65 = load i32, i32* %64, align 16
  %66 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = shl i32 %67, 8
  %69 = or i32 %65, %68
  %70 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 2
  %71 = load i32, i32* %70, align 8
  %72 = shl i32 %71, 16
  %73 = or i32 %69, %72
  %74 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 3
  %75 = load i32, i32* %74, align 4
  %76 = shl i32 %75, 24
  %77 = or i32 %73, %76
  %78 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 %77, i32* %78, align 4
  %79 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 4
  %80 = load i32, i32* %79, align 16
  %81 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 5
  %82 = load i32, i32* %81, align 4
  %83 = shl i32 %82, 8
  %84 = or i32 %80, %83
  %85 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 6
  %86 = load i32, i32* %85, align 8
  %87 = shl i32 %86, 16
  %88 = or i32 %84, %87
  %89 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 7
  %90 = load i32, i32* %89, align 4
  %91 = shl i32 %90, 24
  %92 = or i32 %88, %91
  %93 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 %92, i32* %93, align 4
  %94 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %95 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %96 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %97 = call i32 @hmac(i32* %94, i32* %95, i32* %96)
  %98 = load i32*, i32** %2, align 8
  %99 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %100 = call i32 @pushqword(i32* %98, i32* %99)
  ret i32 %100
}

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @Hash(i8*, i32, i32*) #1

declare dso_local i32 @hmac(i32*, i32*, i32*) #1

declare dso_local i32 @pushqword(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
