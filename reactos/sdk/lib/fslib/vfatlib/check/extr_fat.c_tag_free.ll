; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/fslib/vfatlib/check/extr_fat.c_tag_free.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/fslib/vfatlib/check/extr_fat.c_tag_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i32*, i32*, i32)* @tag_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tag_free(%struct.TYPE_12__* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_11__, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 2, i32* %8, align 4
  br label %16

16:                                               ; preds = %15, %4
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %10, align 4
  br label %18

18:                                               ; preds = %86, %16
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 2
  %24 = icmp slt i32 %19, %23
  br i1 %24, label %25, label %89

25:                                               ; preds = %18
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %31 = call i32 @get_fat(%struct.TYPE_11__* %12, i32 %28, i32 %29, %struct.TYPE_12__* %30)
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %85

35:                                               ; preds = %25
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @FAT_IS_BAD(%struct.TYPE_12__* %36, i64 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %85, label %41

41:                                               ; preds = %35
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @get_owner(%struct.TYPE_12__* %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %85, label %46

46:                                               ; preds = %41
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %85, label %53

53:                                               ; preds = %46
  store i32 0, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %80, %53
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, -1
  br i1 %57, label %58, label %84

58:                                               ; preds = %55
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @get_owner(%struct.TYPE_12__* %59, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %65 = load i32, i32* %11, align 4
  %66 = load i32*, i32** %6, align 8
  %67 = call i32 @set_owner(%struct.TYPE_12__* %64, i32 %65, i32* %66)
  br label %78

68:                                               ; preds = %58
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @set_fat(%struct.TYPE_12__* %69, i32 %70, i32 -1)
  %72 = load i32*, i32** %7, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %75, align 4
  br label %84

78:                                               ; preds = %63
  %79 = load i32, i32* %11, align 4
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %78
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @next_cluster(%struct.TYPE_12__* %81, i32 %82)
  store i32 %83, i32* %11, align 4
  br label %55

84:                                               ; preds = %68, %55
  br label %85

85:                                               ; preds = %84, %46, %41, %35, %25
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %10, align 4
  br label %18

89:                                               ; preds = %18
  ret void
}

declare dso_local i32 @get_fat(%struct.TYPE_11__*, i32, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @FAT_IS_BAD(%struct.TYPE_12__*, i64) #1

declare dso_local i32 @get_owner(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @set_owner(%struct.TYPE_12__*, i32, i32*) #1

declare dso_local i32 @set_fat(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @next_cluster(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
