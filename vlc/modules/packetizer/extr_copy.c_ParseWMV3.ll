; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_copy.c_ParseWMV3.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_copy.c_ParseWMV3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@BLOCK_FLAG_TYPE_MASK = common dso_local global i32 0, align 4
@BLOCK_FLAG_TYPE_P = common dso_local global i32 0, align 4
@BLOCK_FLAG_TYPE_I = common dso_local global i32 0, align 4
@BLOCK_FLAG_TYPE_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.TYPE_8__*)* @ParseWMV3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ParseWMV3(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @bs_init(i32* %5, i32 %12, i32 %16)
  %18 = call i32 @bs_read(i32* %5, i32 2)
  %19 = icmp eq i32 %18, 3
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %78

21:                                               ; preds = %2
  %22 = call i32 @bs_skip(i32* %5, i32 22)
  %23 = call i32 @bs_read(i32* %5, i32 1)
  store i32 %23, i32* %6, align 4
  %24 = call i32 @bs_read(i32* %5, i32 3)
  %25 = icmp sgt i32 %24, 0
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %7, align 4
  %27 = call i32 @bs_skip(i32* %5, i32 2)
  %28 = call i32 @bs_read(i32* %5, i32 1)
  store i32 %28, i32* %8, align 4
  %29 = call i64 @bs_eof(i32* %5)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %78

32:                                               ; preds = %21
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @bs_init(i32* %5, i32 %35, i32 %38)
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 2
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %41, %42
  %44 = call i32 @bs_skip(i32* %5, i32 %43)
  %45 = load i32, i32* @BLOCK_FLAG_TYPE_MASK, align 4
  %46 = xor i32 %45, -1
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = call i32 @bs_read(i32* %5, i32 1)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %32
  %54 = load i32, i32* @BLOCK_FLAG_TYPE_P, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %78

59:                                               ; preds = %32
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = call i32 @bs_read(i32* %5, i32 1)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %62, %59
  %66 = load i32, i32* @BLOCK_FLAG_TYPE_I, align 4
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  br label %77

71:                                               ; preds = %62
  %72 = load i32, i32* @BLOCK_FLAG_TYPE_B, align 4
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %71, %65
  br label %78

78:                                               ; preds = %20, %31, %77, %53
  ret void
}

declare dso_local i32 @bs_init(i32*, i32, i32) #1

declare dso_local i32 @bs_read(i32*, i32) #1

declare dso_local i32 @bs_skip(i32*, i32) #1

declare dso_local i64 @bs_eof(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
