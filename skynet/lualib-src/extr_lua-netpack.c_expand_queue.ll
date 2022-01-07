; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-netpack.c_expand_queue.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-netpack.c_expand_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue = type { i32, i32, i32, i32*, i32 }

@QUEUESIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.queue*)* @expand_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expand_queue(i32* %0, %struct.queue* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.queue*, align 8
  %5 = alloca %struct.queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.queue* %1, %struct.queue** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load %struct.queue*, %struct.queue** %4, align 8
  %10 = getelementptr inbounds %struct.queue, %struct.queue* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 4
  %14 = add i64 32, %13
  %15 = trunc i64 %14 to i32
  %16 = call %struct.queue* @lua_newuserdata(i32* %8, i32 %15)
  store %struct.queue* %16, %struct.queue** %5, align 8
  %17 = load %struct.queue*, %struct.queue** %4, align 8
  %18 = getelementptr inbounds %struct.queue, %struct.queue* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @QUEUESIZE, align 4
  %21 = add nsw i32 %19, %20
  %22 = load %struct.queue*, %struct.queue** %5, align 8
  %23 = getelementptr inbounds %struct.queue, %struct.queue* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.queue*, %struct.queue** %5, align 8
  %25 = getelementptr inbounds %struct.queue, %struct.queue* %24, i32 0, i32 1
  store i32 0, i32* %25, align 4
  %26 = load %struct.queue*, %struct.queue** %4, align 8
  %27 = getelementptr inbounds %struct.queue, %struct.queue* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.queue*, %struct.queue** %5, align 8
  %30 = getelementptr inbounds %struct.queue, %struct.queue* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load %struct.queue*, %struct.queue** %5, align 8
  %32 = getelementptr inbounds %struct.queue, %struct.queue* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.queue*, %struct.queue** %4, align 8
  %35 = getelementptr inbounds %struct.queue, %struct.queue* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @memcpy(i32 %33, i32 %36, i32 4)
  %38 = load %struct.queue*, %struct.queue** %4, align 8
  %39 = getelementptr inbounds %struct.queue, %struct.queue* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @memset(i32 %40, i32 0, i32 4)
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %71, %2
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.queue*, %struct.queue** %4, align 8
  %45 = getelementptr inbounds %struct.queue, %struct.queue* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %74

48:                                               ; preds = %42
  %49 = load %struct.queue*, %struct.queue** %4, align 8
  %50 = getelementptr inbounds %struct.queue, %struct.queue* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %51, %52
  %54 = load %struct.queue*, %struct.queue** %4, align 8
  %55 = getelementptr inbounds %struct.queue, %struct.queue* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = srem i32 %53, %56
  store i32 %57, i32* %7, align 4
  %58 = load %struct.queue*, %struct.queue** %4, align 8
  %59 = getelementptr inbounds %struct.queue, %struct.queue* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.queue*, %struct.queue** %5, align 8
  %66 = getelementptr inbounds %struct.queue, %struct.queue* %65, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %64, i32* %70, align 4
  br label %71

71:                                               ; preds = %48
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %42

74:                                               ; preds = %42
  %75 = load %struct.queue*, %struct.queue** %4, align 8
  %76 = getelementptr inbounds %struct.queue, %struct.queue* %75, i32 0, i32 2
  store i32 0, i32* %76, align 8
  %77 = load %struct.queue*, %struct.queue** %4, align 8
  %78 = getelementptr inbounds %struct.queue, %struct.queue* %77, i32 0, i32 1
  store i32 0, i32* %78, align 4
  %79 = load i32*, i32** %3, align 8
  %80 = call i32 @lua_replace(i32* %79, i32 1)
  ret void
}

declare dso_local %struct.queue* @lua_newuserdata(i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @lua_replace(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
