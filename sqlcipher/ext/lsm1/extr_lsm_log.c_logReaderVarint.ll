; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_log.c_logReaderVarint.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_log.c_logReaderVarint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32* }

@LSM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32*, i32*, i32*)* @logReaderVarint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @logReaderVarint(%struct.TYPE_6__* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i32*, i32** %8, align 8
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @LSM_OK, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %67

14:                                               ; preds = %4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %42

23:                                               ; preds = %14
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @logReaderBlob(%struct.TYPE_6__* %24, i32* null, i32 10, i32** %9, i32* %25)
  %27 = load i32, i32* @LSM_OK, align 4
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %23
  %32 = load i32*, i32** %9, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @lsmVarintGet32(i32* %32, i32* %33)
  %35 = sub nsw i32 10, %34
  %36 = sext i32 %35 to i64
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = sub i64 %39, %36
  store i64 %40, i64* %38, align 8
  br label %41

41:                                               ; preds = %31, %23
  br label %66

42:                                               ; preds = %14
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @lsmVarintSize(i32 %53)
  %55 = load i32*, i32** %8, align 8
  %56 = call i32 @logReaderBlob(%struct.TYPE_6__* %43, i32* %44, i32 %54, i32** %9, i32* %55)
  %57 = load i32, i32* @LSM_OK, align 4
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %42
  %62 = load i32*, i32** %9, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @lsmVarintGet32(i32* %62, i32* %63)
  br label %65

65:                                               ; preds = %61, %42
  br label %66

66:                                               ; preds = %65, %41
  br label %67

67:                                               ; preds = %66, %4
  ret void
}

declare dso_local i32 @logReaderBlob(%struct.TYPE_6__*, i32*, i32, i32**, i32*) #1

declare dso_local i32 @lsmVarintGet32(i32*, i32*) #1

declare dso_local i32 @lsmVarintSize(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
