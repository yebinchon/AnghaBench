; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-bson.c_write_int32.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-bson.c_write_int32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bson = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bson*, i32)* @write_int32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_int32(%struct.bson* %0, i32 %1) #0 {
  %3 = alloca %struct.bson*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bson* %0, %struct.bson** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.bson*, %struct.bson** %3, align 8
  %8 = call i32 @bson_reserve(%struct.bson* %7, i32 4)
  %9 = load i32, i32* %5, align 4
  %10 = and i32 %9, 255
  %11 = load %struct.bson*, %struct.bson** %3, align 8
  %12 = getelementptr inbounds %struct.bson, %struct.bson* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.bson*, %struct.bson** %3, align 8
  %15 = getelementptr inbounds %struct.bson, %struct.bson* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 8
  %18 = sext i32 %16 to i64
  %19 = getelementptr inbounds i32, i32* %13, i64 %18
  store i32 %10, i32* %19, align 4
  %20 = load i32, i32* %5, align 4
  %21 = ashr i32 %20, 8
  %22 = and i32 %21, 255
  %23 = load %struct.bson*, %struct.bson** %3, align 8
  %24 = getelementptr inbounds %struct.bson, %struct.bson* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.bson*, %struct.bson** %3, align 8
  %27 = getelementptr inbounds %struct.bson, %struct.bson* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i32, i32* %25, i64 %30
  store i32 %22, i32* %31, align 4
  %32 = load i32, i32* %5, align 4
  %33 = ashr i32 %32, 16
  %34 = and i32 %33, 255
  %35 = load %struct.bson*, %struct.bson** %3, align 8
  %36 = getelementptr inbounds %struct.bson, %struct.bson* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.bson*, %struct.bson** %3, align 8
  %39 = getelementptr inbounds %struct.bson, %struct.bson* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 8
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i32, i32* %37, i64 %42
  store i32 %34, i32* %43, align 4
  %44 = load i32, i32* %5, align 4
  %45 = ashr i32 %44, 24
  %46 = and i32 %45, 255
  %47 = load %struct.bson*, %struct.bson** %3, align 8
  %48 = getelementptr inbounds %struct.bson, %struct.bson* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.bson*, %struct.bson** %3, align 8
  %51 = getelementptr inbounds %struct.bson, %struct.bson* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i32, i32* %49, i64 %54
  store i32 %46, i32* %55, align 4
  ret void
}

declare dso_local i32 @bson_reserve(%struct.bson*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
