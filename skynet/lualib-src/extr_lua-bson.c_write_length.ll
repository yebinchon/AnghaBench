; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-bson.c_write_length.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-bson.c_write_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bson = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bson*, i32, i32)* @write_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_length(%struct.bson* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bson*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bson* %0, %struct.bson** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = and i32 %9, 255
  %11 = load %struct.bson*, %struct.bson** %4, align 8
  %12 = getelementptr inbounds %struct.bson, %struct.bson* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %6, align 4
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  store i32 %10, i32* %17, align 4
  %18 = load i32, i32* %7, align 4
  %19 = ashr i32 %18, 8
  %20 = and i32 %19, 255
  %21 = load %struct.bson*, %struct.bson** %4, align 8
  %22 = getelementptr inbounds %struct.bson, %struct.bson* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %6, align 4
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  store i32 %20, i32* %27, align 4
  %28 = load i32, i32* %7, align 4
  %29 = ashr i32 %28, 16
  %30 = and i32 %29, 255
  %31 = load %struct.bson*, %struct.bson** %4, align 8
  %32 = getelementptr inbounds %struct.bson, %struct.bson* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  store i32 %30, i32* %37, align 4
  %38 = load i32, i32* %7, align 4
  %39 = ashr i32 %38, 24
  %40 = and i32 %39, 255
  %41 = load %struct.bson*, %struct.bson** %4, align 8
  %42 = getelementptr inbounds %struct.bson, %struct.bson* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  store i32 %40, i32* %47, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
