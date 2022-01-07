; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_func_cache.c_date_trunc_sort_transform.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_func_cache.c_date_trunc_sort_transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@Const = common dso_local global i32 0, align 4
@Var = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*)* @date_trunc_sort_transform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @date_trunc_sort_transform(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @list_length(i32 %7)
  %9 = icmp ne i32 %8, 2
  br i1 %9, label %18, label %10

10:                                               ; preds = %1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32* @linitial(i32 %13)
  %15 = load i32, i32* @Const, align 4
  %16 = call i32 @IsA(i32* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %10, %1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = bitcast %struct.TYPE_3__* %19 to i32*
  store i32* %20, i32** %2, align 8
  br label %38

21:                                               ; preds = %10
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @lsecond(i32 %24)
  %26 = call i32* @ts_sort_transform_expr(i32 %25)
  store i32* %26, i32** %4, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* @Var, align 4
  %29 = call i32 @IsA(i32* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %21
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = bitcast %struct.TYPE_3__* %32 to i32*
  store i32* %33, i32** %2, align 8
  br label %38

34:                                               ; preds = %21
  %35 = load i32*, i32** %4, align 8
  %36 = call i64 @copyObject(i32* %35)
  %37 = inttoptr i64 %36 to i32*
  store i32* %37, i32** %2, align 8
  br label %38

38:                                               ; preds = %34, %31, %18
  %39 = load i32*, i32** %2, align 8
  ret i32* %39
}

declare dso_local i32 @list_length(i32) #1

declare dso_local i32 @IsA(i32*, i32) #1

declare dso_local i32* @linitial(i32) #1

declare dso_local i32* @ts_sort_transform_expr(i32) #1

declare dso_local i32 @lsecond(i32) #1

declare dso_local i64 @copyObject(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
