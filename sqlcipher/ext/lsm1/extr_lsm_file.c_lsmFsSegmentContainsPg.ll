; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_file.c_lsmFsSegmentContainsPg.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_file.c_lsmFsSegmentContainsPg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32* }

@LSM_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lsmFsSegmentContainsPg(i32* %0, %struct.TYPE_4__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %9, align 8
  %17 = load i32, i32* @LSM_OK, align 4
  store i32 %17, i32* %10, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @fsPageToBlock(i32* %18, i32 %21)
  store i32 %22, i32* %13, align 4
  %23 = load i32*, i32** %9, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @fsPageToBlock(i32* %24, i32 %27)
  %29 = call i32 @fsRedirectBlock(i32* %23, i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32*, i32** %9, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @fsPageToBlock(i32* %31, i32 %34)
  %36 = call i32 @fsRedirectBlock(i32* %30, i32 %35)
  store i32 %36, i32* %12, align 4
  br label %37

37:                                               ; preds = %51, %4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %37
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @LSM_OK, align 4
  %48 = icmp eq i32 %46, %47
  br label %49

49:                                               ; preds = %45, %41, %37
  %50 = phi i1 [ false, %41 ], [ false, %37 ], [ %48, %45 ]
  br i1 %50, label %51, label %56

51:                                               ; preds = %49
  %52 = load i32*, i32** %5, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @fsBlockNext(i32* %52, %struct.TYPE_4__* %53, i32 %54, i32* %11)
  store i32 %55, i32* %10, align 4
  br label %37

56:                                               ; preds = %49
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp eq i32 %57, %58
  %60 = zext i1 %59 to i32
  %61 = load i32*, i32** %8, align 8
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* %10, align 4
  ret i32 %62
}

declare dso_local i32 @fsPageToBlock(i32*, i32) #1

declare dso_local i32 @fsRedirectBlock(i32*, i32) #1

declare dso_local i32 @fsBlockNext(i32*, %struct.TYPE_4__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
