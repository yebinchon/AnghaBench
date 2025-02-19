; ModuleID = '/home/carl/AnghaBench/zfs/module/zcommon/extr_zprop_common.c_zprop_index_to_string.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zcommon/extr_zprop_common.c_zprop_index_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, i64 }

@ZPROP_INVAL = common dso_local global i32 0, align 4
@ZPROP_CONT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zprop_index_to_string(i32 %0, i64 %1, i8** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @ZPROP_INVAL, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @ZPROP_CONT, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %4
  store i32 -1, i32* %5, align 4
  br label %69

21:                                               ; preds = %16
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @zprop_get_numprops(i32 %23)
  %25 = icmp slt i32 %22, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @ASSERT(i32 %26)
  %28 = load i32, i32* %9, align 4
  %29 = call %struct.TYPE_5__* @zprop_get_proptable(i32 %28)
  store %struct.TYPE_5__* %29, %struct.TYPE_5__** %10, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %11, align 8
  %36 = icmp eq %struct.TYPE_4__* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %21
  store i32 -1, i32* %5, align 4
  br label %69

38:                                               ; preds = %21
  store i32 0, i32* %12, align 4
  br label %39

39:                                               ; preds = %65, %38
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %68

47:                                               ; preds = %39
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %7, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %47
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load i8**, i8*** %8, align 8
  store i8* %62, i8** %63, align 8
  store i32 0, i32* %5, align 4
  br label %69

64:                                               ; preds = %47
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %12, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %12, align 4
  br label %39

68:                                               ; preds = %39
  store i32 -1, i32* %5, align 4
  br label %69

69:                                               ; preds = %68, %56, %37, %20
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @zprop_get_numprops(i32) #1

declare dso_local %struct.TYPE_5__* @zprop_get_proptable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
