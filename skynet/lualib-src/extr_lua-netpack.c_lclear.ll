; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-netpack.c_lclear.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-netpack.c_lclear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue = type { i32, i32, i32, %struct.netpack*, i32** }
%struct.netpack = type { i32 }

@HASHSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lclear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lclear(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.netpack*, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call %struct.queue* @lua_touserdata(i32* %7, i32 1)
  store %struct.queue* %8, %struct.queue** %4, align 8
  %9 = load %struct.queue*, %struct.queue** %4, align 8
  %10 = icmp eq %struct.queue* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %84

12:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %32, %12
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @HASHSIZE, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %13
  %18 = load %struct.queue*, %struct.queue** %4, align 8
  %19 = getelementptr inbounds %struct.queue, %struct.queue* %18, i32 0, i32 4
  %20 = load i32**, i32*** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32*, i32** %20, i64 %22
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @clear_list(i32* %24)
  %26 = load %struct.queue*, %struct.queue** %4, align 8
  %27 = getelementptr inbounds %struct.queue, %struct.queue* %26, i32 0, i32 4
  %28 = load i32**, i32*** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32*, i32** %28, i64 %30
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %17
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %13

35:                                               ; preds = %13
  %36 = load %struct.queue*, %struct.queue** %4, align 8
  %37 = getelementptr inbounds %struct.queue, %struct.queue* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.queue*, %struct.queue** %4, align 8
  %40 = getelementptr inbounds %struct.queue, %struct.queue* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp sgt i32 %38, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %35
  %44 = load %struct.queue*, %struct.queue** %4, align 8
  %45 = getelementptr inbounds %struct.queue, %struct.queue* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.queue*, %struct.queue** %4, align 8
  %48 = getelementptr inbounds %struct.queue, %struct.queue* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %43, %35
  %52 = load %struct.queue*, %struct.queue** %4, align 8
  %53 = getelementptr inbounds %struct.queue, %struct.queue* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %76, %51
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.queue*, %struct.queue** %4, align 8
  %58 = getelementptr inbounds %struct.queue, %struct.queue* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %79

61:                                               ; preds = %55
  %62 = load %struct.queue*, %struct.queue** %4, align 8
  %63 = getelementptr inbounds %struct.queue, %struct.queue* %62, i32 0, i32 3
  %64 = load %struct.netpack*, %struct.netpack** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.queue*, %struct.queue** %4, align 8
  %67 = getelementptr inbounds %struct.queue, %struct.queue* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = srem i32 %65, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.netpack, %struct.netpack* %64, i64 %70
  store %struct.netpack* %71, %struct.netpack** %6, align 8
  %72 = load %struct.netpack*, %struct.netpack** %6, align 8
  %73 = getelementptr inbounds %struct.netpack, %struct.netpack* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @skynet_free(i32 %74)
  br label %76

76:                                               ; preds = %61
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  br label %55

79:                                               ; preds = %55
  %80 = load %struct.queue*, %struct.queue** %4, align 8
  %81 = getelementptr inbounds %struct.queue, %struct.queue* %80, i32 0, i32 1
  store i32 0, i32* %81, align 4
  %82 = load %struct.queue*, %struct.queue** %4, align 8
  %83 = getelementptr inbounds %struct.queue, %struct.queue* %82, i32 0, i32 0
  store i32 0, i32* %83, align 8
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %79, %11
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local %struct.queue* @lua_touserdata(i32*, i32) #1

declare dso_local i32 @clear_list(i32*) #1

declare dso_local i32 @skynet_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
