; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zvol.c_zvol_setup_zv.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zvol.c_zvol_setup_zv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32*, i32, i32, i32* }

@ZVOL_WRITTEN_TO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"readonly\00", align 1
@ZVOL_ZAP_OBJ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@ZVOL_OBJ = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@ops = common dso_local global %struct.TYPE_8__* null, align 8
@ZVOL_RDONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @zvol_setup_zv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zvol_setup_zv(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 7
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %7, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 6
  %13 = call i32 @MUTEX_HELD(i32* %12)
  %14 = call i32 @ASSERT(i32 %13)
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 5
  %17 = call i32 @RW_LOCK_HELD(i32* %16)
  %18 = call i32 @ASSERT(i32 %17)
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 4
  store i32* null, i32** %20, align 8
  %21 = load i32, i32* @ZVOL_WRITTEN_TO, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dsl_prop_get_integer(i32 %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %6, i32* null)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %1
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @SET_ERROR(i32 %34)
  store i32 %35, i32* %2, align 4
  br label %103

36:                                               ; preds = %1
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* @ZVOL_ZAP_OBJ, align 4
  %39 = call i32 @zap_lookup(i32* %37, i32 %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 8, i32 1, i32* %4)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @SET_ERROR(i32 %43)
  store i32 %44, i32* %2, align 4
  br label %103

45:                                               ; preds = %36
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* @ZVOL_OBJ, align 4
  %48 = load i32, i32* @FTAG, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 2
  %51 = call i32 @dnode_hold(i32* %46, i32 %47, i32 %48, i32* %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %45
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @SET_ERROR(i32 %55)
  store i32 %56, i32* %2, align 4
  br label %103

57:                                               ; preds = %45
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ops, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)** %59, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %62 = load i32, i32* %4, align 4
  %63 = ashr i32 %62, 9
  %64 = call i32 %60(%struct.TYPE_7__* %61, i32 %63)
  %65 = load i32, i32* %4, align 4
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %79, label %70

70:                                               ; preds = %57
  %71 = load i32*, i32** %7, align 8
  %72 = call i64 @dmu_objset_is_snapshot(i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %70
  %75 = load i32*, i32** %7, align 8
  %76 = call i32 @dmu_objset_spa(i32* %75)
  %77 = call i32 @spa_writeable(i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %90, label %79

79:                                               ; preds = %74, %70, %57
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ops, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)** %81, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %84 = call i32 %82(%struct.TYPE_7__* %83, i32 1)
  %85 = load i32, i32* @ZVOL_RDONLY, align 4
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  br label %102

90:                                               ; preds = %74
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ops, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)** %92, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %95 = call i32 %93(%struct.TYPE_7__* %94, i32 0)
  %96 = load i32, i32* @ZVOL_RDONLY, align 4
  %97 = xor i32 %96, -1
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, %97
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %90, %79
  store i32 0, i32* %2, align 4
  br label %103

103:                                              ; preds = %102, %54, %42, %33
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local i32 @RW_LOCK_HELD(i32*) #1

declare dso_local i32 @dsl_prop_get_integer(i32, i8*, i32*, i32*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @zap_lookup(i32*, i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @dnode_hold(i32*, i32, i32, i32*) #1

declare dso_local i64 @dmu_objset_is_snapshot(i32*) #1

declare dso_local i32 @spa_writeable(i32) #1

declare dso_local i32 @dmu_objset_spa(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
