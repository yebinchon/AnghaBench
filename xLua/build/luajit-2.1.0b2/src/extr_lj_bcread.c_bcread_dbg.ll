; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_bcread.c_bcread_dbg.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_bcread.c_bcread_dbg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_4__*, i64)* @bcread_dbg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcread_dbg(i32* %0, %struct.TYPE_4__* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = call i64 @proto_lineinfo(%struct.TYPE_4__* %12)
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** %7, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @bcread_block(i32* %15, i8* %16, i64 %17)
  %19 = load i32*, i32** %4, align 8
  %20 = call i64 @bcread_swap(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %83

22:                                               ; preds = %3
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sge i32 %25, 256
  br i1 %26, label %27, label %83

27:                                               ; preds = %22
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = sub i64 %30, 1
  store i64 %31, i64* %9, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %34, 65536
  br i1 %35, label %36, label %62

36:                                               ; preds = %27
  %37 = load i8*, i8** %7, align 8
  %38 = bitcast i8* %37 to i32*
  store i32* %38, i32** %10, align 8
  store i64 0, i64* %8, align 8
  br label %39

39:                                               ; preds = %58, %36
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %9, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %61

43:                                               ; preds = %39
  %44 = load i32*, i32** %10, align 8
  %45 = load i64, i64* %8, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = ashr i32 %47, 8
  %49 = load i32*, i32** %10, align 8
  %50 = load i64, i64* %8, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, 8
  %54 = or i32 %48, %53
  %55 = load i32*, i32** %10, align 8
  %56 = load i64, i64* %8, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  store i32 %54, i32* %57, align 4
  br label %58

58:                                               ; preds = %43
  %59 = load i64, i64* %8, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %8, align 8
  br label %39

61:                                               ; preds = %39
  br label %82

62:                                               ; preds = %27
  %63 = load i8*, i8** %7, align 8
  %64 = bitcast i8* %63 to i32*
  store i32* %64, i32** %11, align 8
  store i64 0, i64* %8, align 8
  br label %65

65:                                               ; preds = %78, %62
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* %9, align 8
  %68 = icmp ult i64 %66, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %65
  %70 = load i32*, i32** %11, align 8
  %71 = load i64, i64* %8, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @lj_bswap(i32 %73)
  %75 = load i32*, i32** %11, align 8
  %76 = load i64, i64* %8, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  store i32 %74, i32* %77, align 4
  br label %78

78:                                               ; preds = %69
  %79 = load i64, i64* %8, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %8, align 8
  br label %65

81:                                               ; preds = %65
  br label %82

82:                                               ; preds = %81, %61
  br label %83

83:                                               ; preds = %82, %22, %3
  ret void
}

declare dso_local i64 @proto_lineinfo(%struct.TYPE_4__*) #1

declare dso_local i32 @bcread_block(i32*, i8*, i64) #1

declare dso_local i64 @bcread_swap(i32*) #1

declare dso_local i32 @lj_bswap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
