; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zap_micro.c_zap_length.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zap_micro.c_zap_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@RW_READER = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zap_length(i32* %0, i32 %1, i8* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @RW_READER, align 4
  %19 = load i32, i32* @TRUE, align 4
  %20 = load i32, i32* @FALSE, align 4
  %21 = load i32, i32* @FTAG, align 4
  %22 = call i32 @zap_lockdir(i32* %16, i32 %17, i32* null, i32 %18, i32 %19, i32 %20, i32 %21, %struct.TYPE_5__** %12)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i32, i32* %13, align 4
  store i32 %26, i32* %6, align 4
  br label %76

27:                                               ; preds = %5
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = call i32* @zap_name_alloc(%struct.TYPE_5__* %28, i8* %29, i32 0)
  store i32* %30, i32** %14, align 8
  %31 = load i32*, i32** %14, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %35 = load i32, i32* @FTAG, align 4
  %36 = call i32 @zap_unlockdir(%struct.TYPE_5__* %34, i32 %35)
  %37 = load i32, i32* @ENOTSUP, align 4
  %38 = call i32 @SET_ERROR(i32 %37)
  store i32 %38, i32* %6, align 4
  br label %76

39:                                               ; preds = %27
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = load i32*, i32** %14, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = call i32 @fzap_length(i32* %45, i32* %46, i32* %47)
  store i32 %48, i32* %13, align 4
  br label %69

49:                                               ; preds = %39
  %50 = load i32*, i32** %14, align 8
  %51 = call i32* @mze_find(i32* %50)
  store i32* %51, i32** %15, align 8
  %52 = load i32*, i32** %15, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* @ENOENT, align 4
  %56 = call i32 @SET_ERROR(i32 %55)
  store i32 %56, i32* %13, align 4
  br label %68

57:                                               ; preds = %49
  %58 = load i32*, i32** %10, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32*, i32** %10, align 8
  store i32 8, i32* %61, align 4
  br label %62

62:                                               ; preds = %60, %57
  %63 = load i32*, i32** %11, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i32*, i32** %11, align 8
  store i32 1, i32* %66, align 4
  br label %67

67:                                               ; preds = %65, %62
  br label %68

68:                                               ; preds = %67, %54
  br label %69

69:                                               ; preds = %68, %44
  %70 = load i32*, i32** %14, align 8
  %71 = call i32 @zap_name_free(i32* %70)
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %73 = load i32, i32* @FTAG, align 4
  %74 = call i32 @zap_unlockdir(%struct.TYPE_5__* %72, i32 %73)
  %75 = load i32, i32* %13, align 4
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %69, %33, %25
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local i32 @zap_lockdir(i32*, i32, i32*, i32, i32, i32, i32, %struct.TYPE_5__**) #1

declare dso_local i32* @zap_name_alloc(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @zap_unlockdir(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @fzap_length(i32*, i32*, i32*) #1

declare dso_local i32* @mze_find(i32*) #1

declare dso_local i32 @zap_name_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
