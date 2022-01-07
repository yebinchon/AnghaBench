; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zap.c_fzap_lookup.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zap.c_fzap_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@RW_READER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fzap_lookup(%struct.TYPE_6__* %0, i32 %1, i32 %2, i8* %3, i8* %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %20 = call i32 @fzap_checkname(%struct.TYPE_6__* %19)
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* %18, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %7
  %24 = load i32, i32* %18, align 4
  store i32 %24, i32* %8, align 4
  br label %78

25:                                               ; preds = %7
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @RW_READER, align 4
  %33 = call i32 @zap_deref_leaf(i32 %28, i32 %31, i32* null, i32 %32, i32** %16)
  store i32 %33, i32* %18, align 4
  %34 = load i32, i32* %18, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %25
  %37 = load i32, i32* %18, align 4
  store i32 %37, i32* %8, align 4
  br label %78

38:                                               ; preds = %25
  %39 = load i32*, i32** %16, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %41 = call i32 @zap_leaf_lookup(i32* %39, %struct.TYPE_6__* %40, i32* %17)
  store i32 %41, i32* %18, align 4
  %42 = load i32, i32* %18, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %74

44:                                               ; preds = %38
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @fzap_checksize(i32 %45, i32 %46)
  store i32 %47, i32* %18, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i32*, i32** %16, align 8
  %51 = call i32 @zap_put_leaf(i32* %50)
  %52 = load i32, i32* %18, align 4
  store i32 %52, i32* %8, align 4
  br label %78

53:                                               ; preds = %44
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i8*, i8** %12, align 8
  %57 = call i32 @zap_entry_read(i32* %17, i32 %54, i32 %55, i8* %56)
  store i32 %57, i32* %18, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %14, align 4
  %62 = load i8*, i8** %13, align 8
  %63 = call i32 @zap_entry_read_name(i32 %60, i32* %17, i32 %61, i8* %62)
  %64 = load i32*, i32** %15, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %73

66:                                               ; preds = %53
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @zap_entry_normalization_conflict(i32* %17, %struct.TYPE_6__* %67, i32* null, i32 %70)
  %72 = load i32*, i32** %15, align 8
  store i32 %71, i32* %72, align 4
  br label %73

73:                                               ; preds = %66, %53
  br label %74

74:                                               ; preds = %73, %38
  %75 = load i32*, i32** %16, align 8
  %76 = call i32 @zap_put_leaf(i32* %75)
  %77 = load i32, i32* %18, align 4
  store i32 %77, i32* %8, align 4
  br label %78

78:                                               ; preds = %74, %49, %36, %23
  %79 = load i32, i32* %8, align 4
  ret i32 %79
}

declare dso_local i32 @fzap_checkname(%struct.TYPE_6__*) #1

declare dso_local i32 @zap_deref_leaf(i32, i32, i32*, i32, i32**) #1

declare dso_local i32 @zap_leaf_lookup(i32*, %struct.TYPE_6__*, i32*) #1

declare dso_local i32 @fzap_checksize(i32, i32) #1

declare dso_local i32 @zap_put_leaf(i32*) #1

declare dso_local i32 @zap_entry_read(i32*, i32, i32, i8*) #1

declare dso_local i32 @zap_entry_read_name(i32, i32*, i32, i8*) #1

declare dso_local i32 @zap_entry_normalization_conflict(i32*, %struct.TYPE_6__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
