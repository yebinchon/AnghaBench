; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-netpack.c_push_more.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-netpack.c_push_more.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uncomplete = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32)* @push_more to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @push_more(i32* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.uncomplete*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.uncomplete*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %24

14:                                               ; preds = %4
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.uncomplete* @save_uncomplete(i32* %15, i32 %16)
  store %struct.uncomplete* %17, %struct.uncomplete** %9, align 8
  %18 = load %struct.uncomplete*, %struct.uncomplete** %9, align 8
  %19 = getelementptr inbounds %struct.uncomplete, %struct.uncomplete* %18, i32 0, i32 0
  store i32 -1, i32* %19, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.uncomplete*, %struct.uncomplete** %9, align 8
  %23 = getelementptr inbounds %struct.uncomplete, %struct.uncomplete* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  br label %77

24:                                               ; preds = %4
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @read_size(i32* %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  store i32* %28, i32** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sub nsw i32 %29, 2
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %57

34:                                               ; preds = %24
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call %struct.uncomplete* @save_uncomplete(i32* %35, i32 %36)
  store %struct.uncomplete* %37, %struct.uncomplete** %11, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.uncomplete*, %struct.uncomplete** %11, align 8
  %40 = getelementptr inbounds %struct.uncomplete, %struct.uncomplete* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.uncomplete*, %struct.uncomplete** %11, align 8
  %43 = getelementptr inbounds %struct.uncomplete, %struct.uncomplete* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @skynet_malloc(i32 %45)
  %47 = load %struct.uncomplete*, %struct.uncomplete** %11, align 8
  %48 = getelementptr inbounds %struct.uncomplete, %struct.uncomplete* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 4
  %50 = load %struct.uncomplete*, %struct.uncomplete** %11, align 8
  %51 = getelementptr inbounds %struct.uncomplete, %struct.uncomplete* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @memcpy(i32 %53, i32* %54, i32 %55)
  br label %77

57:                                               ; preds = %24
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @push_data(i32* %58, i32 %59, i32* %60, i32 %61, i32 1)
  %63 = load i32, i32* %10, align 4
  %64 = load i32*, i32** %7, align 8
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  store i32* %66, i32** %7, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %8, align 4
  %69 = sub nsw i32 %68, %67
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %57
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* %6, align 4
  %75 = load i32*, i32** %7, align 8
  %76 = load i32, i32* %8, align 4
  call void @push_more(i32* %73, i32 %74, i32* %75, i32 %76)
  br label %77

77:                                               ; preds = %14, %34, %72, %57
  ret void
}

declare dso_local %struct.uncomplete* @save_uncomplete(i32*, i32) #1

declare dso_local i32 @read_size(i32*) #1

declare dso_local i32 @skynet_malloc(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @push_data(i32*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
