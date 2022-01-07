; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_actioncmp.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_actioncmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.action = type { i64, %struct.TYPE_5__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@REDUCE = common dso_local global i64 0, align 8
@SHIFTREDUCE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.action*, %struct.action*)* @actioncmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @actioncmp(%struct.action* %0, %struct.action* %1) #0 {
  %3 = alloca %struct.action*, align 8
  %4 = alloca %struct.action*, align 8
  %5 = alloca i32, align 4
  store %struct.action* %0, %struct.action** %3, align 8
  store %struct.action* %1, %struct.action** %4, align 8
  %6 = load %struct.action*, %struct.action** %3, align 8
  %7 = getelementptr inbounds %struct.action, %struct.action* %6, i32 0, i32 2
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.action*, %struct.action** %4, align 8
  %12 = getelementptr inbounds %struct.action, %struct.action* %11, i32 0, i32 2
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %10, %15
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %2
  %20 = load %struct.action*, %struct.action** %3, align 8
  %21 = getelementptr inbounds %struct.action, %struct.action* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = load %struct.action*, %struct.action** %4, align 8
  %25 = getelementptr inbounds %struct.action, %struct.action* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = sub nsw i32 %23, %27
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %19, %2
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %58

32:                                               ; preds = %29
  %33 = load %struct.action*, %struct.action** %3, align 8
  %34 = getelementptr inbounds %struct.action, %struct.action* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @REDUCE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load %struct.action*, %struct.action** %3, align 8
  %40 = getelementptr inbounds %struct.action, %struct.action* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @SHIFTREDUCE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %38, %32
  %45 = load %struct.action*, %struct.action** %3, align 8
  %46 = getelementptr inbounds %struct.action, %struct.action* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.action*, %struct.action** %4, align 8
  %52 = getelementptr inbounds %struct.action, %struct.action* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %50, %56
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %44, %38, %29
  %59 = load i32, i32* %5, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %58
  %62 = load %struct.action*, %struct.action** %4, align 8
  %63 = load %struct.action*, %struct.action** %3, align 8
  %64 = ptrtoint %struct.action* %62 to i64
  %65 = ptrtoint %struct.action* %63 to i64
  %66 = sub i64 %64, %65
  %67 = sdiv exact i64 %66, 24
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %61, %58
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
