; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-seri.c_get_integer.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-seri.c_get_integer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.read_block = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.read_block*, i32)* @get_integer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_integer(i32* %0, %struct.read_block* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.read_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.read_block* %1, %struct.read_block** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %70 [
    i32 128, label %17
    i32 132, label %18
    i32 129, label %31
    i32 131, label %44
    i32 130, label %57
  ]

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %74

18:                                               ; preds = %3
  %19 = load %struct.read_block*, %struct.read_block** %6, align 8
  %20 = call i32* @rb_read(%struct.read_block* %19, i32 4)
  store i32* %20, i32** %9, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i32*, i32** %5, align 8
  %25 = load %struct.read_block*, %struct.read_block** %6, align 8
  %26 = call i32 @invalid_stream(i32* %24, %struct.read_block* %25)
  br label %27

27:                                               ; preds = %23, %18
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %4, align 4
  br label %74

31:                                               ; preds = %3
  %32 = load %struct.read_block*, %struct.read_block** %6, align 8
  %33 = call i32* @rb_read(%struct.read_block* %32, i32 4)
  store i32* %33, i32** %11, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32*, i32** %5, align 8
  %38 = load %struct.read_block*, %struct.read_block** %6, align 8
  %39 = call i32 @invalid_stream(i32* %37, %struct.read_block* %38)
  br label %40

40:                                               ; preds = %36, %31
  %41 = load i32*, i32** %11, align 8
  %42 = call i32 @memcpy(i32* %10, i32* %41, i32 4)
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %4, align 4
  br label %74

44:                                               ; preds = %3
  %45 = load %struct.read_block*, %struct.read_block** %6, align 8
  %46 = call i32* @rb_read(%struct.read_block* %45, i32 4)
  store i32* %46, i32** %13, align 8
  %47 = load i32*, i32** %13, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i32*, i32** %5, align 8
  %51 = load %struct.read_block*, %struct.read_block** %6, align 8
  %52 = call i32 @invalid_stream(i32* %50, %struct.read_block* %51)
  br label %53

53:                                               ; preds = %49, %44
  %54 = load i32*, i32** %13, align 8
  %55 = call i32 @memcpy(i32* %12, i32* %54, i32 4)
  %56 = load i32, i32* %12, align 4
  store i32 %56, i32* %4, align 4
  br label %74

57:                                               ; preds = %3
  %58 = load %struct.read_block*, %struct.read_block** %6, align 8
  %59 = call i32* @rb_read(%struct.read_block* %58, i32 4)
  store i32* %59, i32** %15, align 8
  %60 = load i32*, i32** %15, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i32*, i32** %5, align 8
  %64 = load %struct.read_block*, %struct.read_block** %6, align 8
  %65 = call i32 @invalid_stream(i32* %63, %struct.read_block* %64)
  br label %66

66:                                               ; preds = %62, %57
  %67 = load i32*, i32** %15, align 8
  %68 = call i32 @memcpy(i32* %14, i32* %67, i32 4)
  %69 = load i32, i32* %14, align 4
  store i32 %69, i32* %4, align 4
  br label %74

70:                                               ; preds = %3
  %71 = load i32*, i32** %5, align 8
  %72 = load %struct.read_block*, %struct.read_block** %6, align 8
  %73 = call i32 @invalid_stream(i32* %71, %struct.read_block* %72)
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %70, %66, %53, %40, %27, %17
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32* @rb_read(%struct.read_block*, i32) #1

declare dso_local i32 @invalid_stream(i32*, %struct.read_block*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
