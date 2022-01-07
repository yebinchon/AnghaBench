; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-bson.c_write_int64.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-bson.c_write_int64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bson = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bson*, i32)* @write_int64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_int64(%struct.bson* %0, i32 %1) #0 {
  %3 = alloca %struct.bson*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bson* %0, %struct.bson** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  store i32 %7, i32* %5, align 4
  %8 = load %struct.bson*, %struct.bson** %3, align 8
  %9 = call i32 @bson_reserve(%struct.bson* %8, i32 8)
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %27, %2
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 64
  br i1 %12, label %13, label %30

13:                                               ; preds = %10
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = ashr i32 %14, %15
  %17 = and i32 %16, 255
  %18 = load %struct.bson*, %struct.bson** %3, align 8
  %19 = getelementptr inbounds %struct.bson, %struct.bson* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.bson*, %struct.bson** %3, align 8
  %22 = getelementptr inbounds %struct.bson, %struct.bson* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 8
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds i32, i32* %20, i64 %25
  store i32 %17, i32* %26, align 4
  br label %27

27:                                               ; preds = %13
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 8
  store i32 %29, i32* %6, align 4
  br label %10

30:                                               ; preds = %10
  ret void
}

declare dso_local i32 @bson_reserve(%struct.bson*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
