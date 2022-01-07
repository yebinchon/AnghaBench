; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_crypt.c_spa_keystore_dsl_key_hold_dd.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_crypt.c_spa_keystore_dsl_key_hold_dd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }

@RW_READER = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@RW_WRITER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_11__*, i8*, i32**)* @spa_keystore_dsl_key_hold_dd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spa_keystore_dsl_key_hold_dd(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1, i8* %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32** %3, i32*** %9, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %15, align 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* @RW_READER, align 4
  %23 = call i32 @rw_enter(i32* %21, i32 %22)
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %25 = load i32, i32* %15, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @spa_keystore_dsl_key_hold_impl(%struct.TYPE_10__* %24, i32 %25, i8* %26, i32** %13)
  store i32 %27, i32* %10, align 4
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = call i32 @rw_exit(i32* %30)
  %32 = load i32, i32* %10, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %4
  %35 = load i32*, i32** %13, align 8
  %36 = load i32**, i32*** %9, align 8
  store i32* %35, i32** %36, align 8
  store i32 0, i32* %5, align 4
  br label %103

37:                                               ; preds = %4
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %40 = load i32, i32* @FTAG, align 4
  %41 = call i32 @spa_keystore_wkey_hold_dd(%struct.TYPE_10__* %38, %struct.TYPE_11__* %39, i32 %40, i32** %14)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load i32**, i32*** %9, align 8
  store i32* null, i32** %45, align 8
  %46 = load i32, i32* @EACCES, align 4
  %47 = call i32 @SET_ERROR(i32 %46)
  store i32 %47, i32* %5, align 4
  br label %103

48:                                               ; preds = %37
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %14, align 8
  %53 = load i32, i32* %15, align 4
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 @dsl_crypto_key_open(i32 %51, i32* %52, i32 %53, i8* %54, i32** %12)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %48
  %59 = load i32*, i32** %14, align 8
  %60 = load i32, i32* @FTAG, align 4
  %61 = call i32 @dsl_wrapping_key_rele(i32* %59, i32 %60)
  %62 = load i32**, i32*** %9, align 8
  store i32* null, i32** %62, align 8
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %5, align 4
  br label %103

64:                                               ; preds = %48
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32, i32* @RW_WRITER, align 4
  %69 = call i32 @rw_enter(i32* %67, i32 %68)
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %71 = load i32, i32* %15, align 4
  %72 = load i8*, i8** %8, align 8
  %73 = call i32 @spa_keystore_dsl_key_hold_impl(%struct.TYPE_10__* %70, i32 %71, i8* %72, i32** %13)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %90

76:                                               ; preds = %64
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = load i32*, i32** %12, align 8
  %81 = call i32 @avl_find(i32* %79, i32* %80, i32* %11)
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = load i32*, i32** %12, align 8
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @avl_insert(i32* %84, i32* %85, i32 %86)
  %88 = load i32*, i32** %12, align 8
  %89 = load i32**, i32*** %9, align 8
  store i32* %88, i32** %89, align 8
  br label %95

90:                                               ; preds = %64
  %91 = load i32*, i32** %12, align 8
  %92 = call i32 @dsl_crypto_key_free(i32* %91)
  %93 = load i32*, i32** %13, align 8
  %94 = load i32**, i32*** %9, align 8
  store i32* %93, i32** %94, align 8
  br label %95

95:                                               ; preds = %90, %76
  %96 = load i32*, i32** %14, align 8
  %97 = load i32, i32* @FTAG, align 4
  %98 = call i32 @dsl_wrapping_key_rele(i32* %96, i32 %97)
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = call i32 @rw_exit(i32* %101)
  store i32 0, i32* %5, align 4
  br label %103

103:                                              ; preds = %95, %58, %44, %34
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i32 @rw_enter(i32*, i32) #1

declare dso_local i32 @spa_keystore_dsl_key_hold_impl(%struct.TYPE_10__*, i32, i8*, i32**) #1

declare dso_local i32 @rw_exit(i32*) #1

declare dso_local i32 @spa_keystore_wkey_hold_dd(%struct.TYPE_10__*, %struct.TYPE_11__*, i32, i32**) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @dsl_crypto_key_open(i32, i32*, i32, i8*, i32**) #1

declare dso_local i32 @dsl_wrapping_key_rele(i32*, i32) #1

declare dso_local i32 @avl_find(i32*, i32*, i32*) #1

declare dso_local i32 @avl_insert(i32*, i32*, i32) #1

declare dso_local i32 @dsl_crypto_key_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
