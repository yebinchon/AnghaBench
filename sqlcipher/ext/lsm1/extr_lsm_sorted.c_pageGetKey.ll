; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_pageGetKey.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_pageGetKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEGMENT_BTREE_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32, i32*, i32*, i32*)* @pageGetKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pageGetKey(i32* %0, i32* %1, i32 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = call i32* @fsPageData(i32* %18, i32* %17)
  store i32* %19, i32** %16, align 8
  %20 = load i32*, i32** %16, align 8
  %21 = load i32, i32* %17, align 4
  %22 = call i32 @pageGetFlags(i32* %20, i32 %21)
  %23 = load i32, i32* @SEGMENT_BTREE_FLAG, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i32, i32* %9, align 4
  %30 = load i32*, i32** %16, align 8
  %31 = load i32, i32* %17, align 4
  %32 = call i32 @pageGetNRec(i32* %30, i32 %31)
  %33 = icmp slt i32 %29, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load i32*, i32** %16, align 8
  %37 = load i32, i32* %17, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32* @pageGetCell(i32* %36, i32 %37, i32 %38)
  store i32* %39, i32** %13, align 8
  %40 = load i32*, i32** %13, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %13, align 8
  %42 = load i32, i32* %40, align 4
  store i32 %42, i32* %15, align 4
  %43 = load i32*, i32** %13, align 8
  %44 = call i32 @lsmVarintGet32(i32* %43, i32* %14)
  %45 = load i32*, i32** %13, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  store i32* %47, i32** %13, align 8
  %48 = load i32*, i32** %13, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = call i32 @lsmVarintGet32(i32* %48, i32* %49)
  %51 = load i32*, i32** %13, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  store i32* %53, i32** %13, align 8
  %54 = load i32, i32* %15, align 4
  %55 = call i64 @rtIsWrite(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %6
  %58 = load i32*, i32** %13, align 8
  %59 = call i32 @lsmVarintGet32(i32* %58, i32* %14)
  %60 = load i32*, i32** %13, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  store i32* %62, i32** %13, align 8
  br label %63

63:                                               ; preds = %57, %6
  %64 = load i32, i32* %15, align 4
  %65 = call i32 @rtTopic(i32 %64)
  %66 = load i32*, i32** %10, align 8
  store i32 %65, i32* %66, align 4
  %67 = load i32*, i32** %7, align 8
  %68 = load i32*, i32** %8, align 8
  %69 = load i32*, i32** %13, align 8
  %70 = load i32*, i32** %16, align 8
  %71 = ptrtoint i32* %69 to i64
  %72 = ptrtoint i32* %70 to i64
  %73 = sub i64 %71, %72
  %74 = sdiv exact i64 %73, 4
  %75 = trunc i64 %74 to i32
  %76 = load i32*, i32** %11, align 8
  %77 = load i32, i32* %76, align 4
  %78 = bitcast i32** %13 to i8**
  %79 = load i32*, i32** %12, align 8
  %80 = call i32 @sortedReadData(i32* %67, i32* %68, i32 %75, i32 %77, i8** %78, i32* %79)
  %81 = load i32*, i32** %13, align 8
  ret i32* %81
}

declare dso_local i32* @fsPageData(i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pageGetFlags(i32*, i32) #1

declare dso_local i32 @pageGetNRec(i32*, i32) #1

declare dso_local i32* @pageGetCell(i32*, i32, i32) #1

declare dso_local i32 @lsmVarintGet32(i32*, i32*) #1

declare dso_local i64 @rtIsWrite(i32) #1

declare dso_local i32 @rtTopic(i32) #1

declare dso_local i32 @sortedReadData(i32*, i32*, i32, i32, i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
