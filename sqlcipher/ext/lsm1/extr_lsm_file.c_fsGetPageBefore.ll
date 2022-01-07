; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_file.c_fsGetPageBefore.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_file.c_fsGetPageBefore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@LSM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32, i32*)* @fsGetPageBefore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsGetPageBefore(%struct.TYPE_5__* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca [3 x i32], align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @fsSubtractOffset(%struct.TYPE_5__* %18, i32* %19, i32 %20, i32 12, i32* %11)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @LSM_OK, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %11, align 4
  %29 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %30 = call i32 @fsReadData(%struct.TYPE_5__* %26, i32* %27, i32 %28, i32* %29, i32 12)
  store i32 %30, i32* %10, align 4
  br label %31

31:                                               ; preds = %25, %4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @LSM_OK, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %57

35:                                               ; preds = %31
  %36 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 128
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %42 = call i32 @getRecordSize(i32* %41, i32* %12)
  %43 = sext i32 %42 to i64
  %44 = add i64 %43, 24
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %13, align 4
  br label %50

46:                                               ; preds = %35
  %47 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 127
  store i32 %49, i32* %13, align 4
  store i32 1, i32* %12, align 4
  br label %50

50:                                               ; preds = %46, %40
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %13, align 4
  %55 = load i32*, i32** %8, align 8
  %56 = call i32 @fsSubtractOffset(%struct.TYPE_5__* %51, i32* %52, i32 %53, i32 %54, i32* %55)
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %50, %31
  %58 = load i32, i32* %10, align 4
  ret i32 %58
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fsSubtractOffset(%struct.TYPE_5__*, i32*, i32, i32, i32*) #1

declare dso_local i32 @fsReadData(%struct.TYPE_5__*, i32*, i32, i32*, i32) #1

declare dso_local i32 @getRecordSize(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
