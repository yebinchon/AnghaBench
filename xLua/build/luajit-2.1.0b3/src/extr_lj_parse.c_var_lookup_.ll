; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_parse.c_var_lookup_.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_parse.c_var_lookup_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_14__*, i64* }
%struct.TYPE_15__ = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i64 }

@VLOCAL = common dso_local global i32 0, align 4
@VUPVAL = common dso_local global i32 0, align 4
@VGLOBAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_14__*, i32*, %struct.TYPE_15__*, i32)* @var_lookup_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @var_lookup_(%struct.TYPE_14__* %0, i32* %1, %struct.TYPE_15__* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %13 = icmp ne %struct.TYPE_14__* %12, null
  br i1 %13, label %14, label %66

14:                                               ; preds = %4
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = call i64 @var_lookup_local(%struct.TYPE_14__* %15, i32* %16)
  store i64 %17, i64* %10, align 8
  %18 = load i64, i64* %10, align 8
  %19 = icmp sge i64 %18, 0
  br i1 %19, label %20, label %42

20:                                               ; preds = %14
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %22 = load i32, i32* @VLOCAL, align 4
  %23 = load i64, i64* %10, align 8
  %24 = call i32 @expr_init(%struct.TYPE_15__* %21, i32 %22, i64 %23)
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %29 = load i64, i64* %10, align 8
  %30 = call i32 @fscope_uvmark(%struct.TYPE_14__* %28, i64 %29)
  br label %31

31:                                               ; preds = %27, %20
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 1
  %34 = load i64*, i64** %33, align 8
  %35 = load i64, i64* %10, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  store i64 %37, i64* %41, align 8
  store i64 %37, i64* %5, align 8
  br label %75

42:                                               ; preds = %14
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %44, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %48 = call i64 @var_lookup_(%struct.TYPE_14__* %45, i32* %46, %struct.TYPE_15__* %47, i32 0)
  store i64 %48, i64* %11, align 8
  %49 = load i64, i64* %11, align 8
  %50 = icmp sge i64 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %42
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %53 = load i64, i64* %11, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %55 = call i64 @var_lookup_uv(%struct.TYPE_14__* %52, i64 %53, %struct.TYPE_15__* %54)
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  store i64 %55, i64* %59, align 8
  %60 = load i32, i32* @VUPVAL, align 4
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  %63 = load i64, i64* %11, align 8
  store i64 %63, i64* %5, align 8
  br label %75

64:                                               ; preds = %42
  br label %65

65:                                               ; preds = %64
  br label %74

66:                                               ; preds = %4
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %68 = load i32, i32* @VGLOBAL, align 4
  %69 = call i32 @expr_init(%struct.TYPE_15__* %67, i32 %68, i64 0)
  %70 = load i32*, i32** %7, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  store i32* %70, i32** %73, align 8
  br label %74

74:                                               ; preds = %66, %65
  store i64 -1, i64* %5, align 8
  br label %75

75:                                               ; preds = %74, %51, %31
  %76 = load i64, i64* %5, align 8
  ret i64 %76
}

declare dso_local i64 @var_lookup_local(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @expr_init(%struct.TYPE_15__*, i32, i64) #1

declare dso_local i32 @fscope_uvmark(%struct.TYPE_14__*, i64) #1

declare dso_local i64 @var_lookup_uv(%struct.TYPE_14__*, i64, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
