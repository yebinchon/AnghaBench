; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_meta.c_AtomXA9ToMeta.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_meta.c_AtomXA9ToMeta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i8*, i32 }

@xa9typetometa = common dso_local global %struct.TYPE_4__* null, align 8
@xa9typetoextrameta = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32**, i8**)* @AtomXA9ToMeta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AtomXA9ToMeta(i64 %0, i32** %1, i8** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32** %1, i32*** %5, align 8
  store i8** %2, i8*** %6, align 8
  %9 = load i32**, i32*** %5, align 8
  store i32* null, i32** %9, align 8
  %10 = load i8**, i8*** %6, align 8
  store i8* null, i8** %10, align 8
  store i64 0, i64* %7, align 8
  br label %11

11:                                               ; preds = %37, %3
  %12 = load i32**, i32*** %5, align 8
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @xa9typetometa, align 8
  %18 = call i64 @ARRAY_SIZE(%struct.TYPE_4__* %17)
  %19 = icmp ult i64 %16, %18
  br label %20

20:                                               ; preds = %15, %11
  %21 = phi i1 [ false, %11 ], [ %19, %15 ]
  br i1 %21, label %22, label %40

22:                                               ; preds = %20
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @xa9typetometa, align 8
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %4, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %22
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @xa9typetometa, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = load i32**, i32*** %5, align 8
  store i32* %34, i32** %35, align 8
  br label %36

36:                                               ; preds = %30, %22
  br label %37

37:                                               ; preds = %36
  %38 = load i64, i64* %7, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %7, align 8
  br label %11

40:                                               ; preds = %20
  store i64 0, i64* %8, align 8
  br label %41

41:                                               ; preds = %68, %40
  %42 = load i8**, i8*** %6, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %41
  %46 = load i64, i64* %8, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @xa9typetoextrameta, align 8
  %48 = call i64 @ARRAY_SIZE(%struct.TYPE_4__* %47)
  %49 = icmp ult i64 %46, %48
  br label %50

50:                                               ; preds = %45, %41
  %51 = phi i1 [ false, %41 ], [ %49, %45 ]
  br i1 %51, label %52, label %71

52:                                               ; preds = %50
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @xa9typetoextrameta, align 8
  %54 = load i64, i64* %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %4, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %52
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** @xa9typetoextrameta, align 8
  %62 = load i64, i64* %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = load i8**, i8*** %6, align 8
  store i8* %65, i8** %66, align 8
  br label %67

67:                                               ; preds = %60, %52
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %8, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %8, align 8
  br label %41

71:                                               ; preds = %50
  %72 = load i32**, i32*** %5, align 8
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = load i8**, i8*** %6, align 8
  %77 = load i8*, i8** %76, align 8
  %78 = icmp ne i8* %77, null
  br label %79

79:                                               ; preds = %75, %71
  %80 = phi i1 [ true, %71 ], [ %78, %75 ]
  %81 = zext i1 %80 to i32
  ret i32 %81
}

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
