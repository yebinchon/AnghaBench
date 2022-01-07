; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-seri.c_seri.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-seri.c_seri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { i32, %struct.block* }

@BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.block*, i32)* @seri to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @seri(i32* %0, %struct.block* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.block* %1, %struct.block** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32* @skynet_malloc(i32 %10)
  store i32* %11, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  store i32* %12, i32** %8, align 8
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %9, align 4
  br label %14

14:                                               ; preds = %45, %3
  %15 = load i32, i32* %6, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %46

17:                                               ; preds = %14
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @BLOCK_SIZE, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %17
  %22 = load i32*, i32** %8, align 8
  %23 = load %struct.block*, %struct.block** %5, align 8
  %24 = getelementptr inbounds %struct.block, %struct.block* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @BLOCK_SIZE, align 4
  %27 = call i32 @memcpy(i32* %22, i32 %25, i32 %26)
  %28 = load i32, i32* @BLOCK_SIZE, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  store i32* %31, i32** %8, align 8
  %32 = load i32, i32* @BLOCK_SIZE, align 4
  %33 = load i32, i32* %6, align 4
  %34 = sub nsw i32 %33, %32
  store i32 %34, i32* %6, align 4
  %35 = load %struct.block*, %struct.block** %5, align 8
  %36 = getelementptr inbounds %struct.block, %struct.block* %35, i32 0, i32 1
  %37 = load %struct.block*, %struct.block** %36, align 8
  store %struct.block* %37, %struct.block** %5, align 8
  br label %45

38:                                               ; preds = %17
  %39 = load i32*, i32** %8, align 8
  %40 = load %struct.block*, %struct.block** %5, align 8
  %41 = getelementptr inbounds %struct.block, %struct.block* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @memcpy(i32* %39, i32 %42, i32 %43)
  br label %46

45:                                               ; preds = %21
  br label %14

46:                                               ; preds = %38, %14
  %47 = load i32*, i32** %4, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @lua_pushlightuserdata(i32* %47, i32* %48)
  %50 = load i32*, i32** %4, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @lua_pushinteger(i32* %50, i32 %51)
  ret void
}

declare dso_local i32* @skynet_malloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @lua_pushlightuserdata(i32*, i32*) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
