; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_redact.c_hold_next_object.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_redact.c_hold_next_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.redact_record = type { i64 }
%struct.TYPE_5__ = type { i32 }

@FTAG = common dso_local global i8* null, align 8
@B_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.redact_record*, i8*, i64*, %struct.TYPE_5__**)* @hold_next_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hold_next_object(i32* %0, %struct.redact_record* %1, i8* %2, i64* %3, %struct.TYPE_5__** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.redact_record*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.TYPE_5__**, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.redact_record* %1, %struct.redact_record** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64* %3, i64** %10, align 8
  store %struct.TYPE_5__** %4, %struct.TYPE_5__*** %11, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %11, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = icmp ne %struct.TYPE_5__* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %5
  %17 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %11, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = load i8*, i8** @FTAG, align 8
  %20 = call i32 @dnode_rele(%struct.TYPE_5__* %18, i8* %19)
  br label %21

21:                                               ; preds = %16, %5
  %22 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %11, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %22, align 8
  %23 = load i64*, i64** %10, align 8
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.redact_record*, %struct.redact_record** %8, align 8
  %26 = getelementptr inbounds %struct.redact_record, %struct.redact_record* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %24, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %21
  %30 = load %struct.redact_record*, %struct.redact_record** %8, align 8
  %31 = getelementptr inbounds %struct.redact_record, %struct.redact_record* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %32, 1
  %34 = load i64*, i64** %10, align 8
  store i64 %33, i64* %34, align 8
  br label %35

35:                                               ; preds = %29, %21
  %36 = load i32*, i32** %7, align 8
  %37 = load i64*, i64** %10, align 8
  %38 = load i32, i32* @B_FALSE, align 4
  %39 = call i32 @dmu_object_next(i32* %36, i64* %37, i32 %38, i32 0)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %6, align 4
  br label %94

44:                                               ; preds = %35
  %45 = load i32*, i32** %7, align 8
  %46 = load i64*, i64** %10, align 8
  %47 = load i64, i64* %46, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %11, align 8
  %50 = call i32 @dnode_hold(i32* %45, i64 %47, i8* %48, %struct.TYPE_5__** %49)
  store i32 %50, i32* %12, align 4
  br label %51

51:                                               ; preds = %85, %44
  %52 = load i32, i32* %12, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %51
  %55 = load i64*, i64** %10, align 8
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.redact_record*, %struct.redact_record** %8, align 8
  %58 = getelementptr inbounds %struct.redact_record, %struct.redact_record* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp slt i64 %56, %59
  br i1 %60, label %68, label %61

61:                                               ; preds = %54
  %62 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %11, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @DMU_OT_IS_METADATA(i32 %65)
  %67 = icmp ne i64 %66, 0
  br label %68

68:                                               ; preds = %61, %54
  %69 = phi i1 [ true, %54 ], [ %67, %61 ]
  br label %70

70:                                               ; preds = %68, %51
  %71 = phi i1 [ false, %51 ], [ %69, %68 ]
  br i1 %71, label %72, label %92

72:                                               ; preds = %70
  %73 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %11, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = call i32 @dnode_rele(%struct.TYPE_5__* %74, i8* %75)
  %77 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %11, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %77, align 8
  %78 = load i32*, i32** %7, align 8
  %79 = load i64*, i64** %10, align 8
  %80 = load i32, i32* @B_FALSE, align 4
  %81 = call i32 @dmu_object_next(i32* %78, i64* %79, i32 %80, i32 0)
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %72
  br label %92

85:                                               ; preds = %72
  %86 = load i32*, i32** %7, align 8
  %87 = load i64*, i64** %10, align 8
  %88 = load i64, i64* %87, align 8
  %89 = load i8*, i8** %9, align 8
  %90 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %11, align 8
  %91 = call i32 @dnode_hold(i32* %86, i64 %88, i8* %89, %struct.TYPE_5__** %90)
  store i32 %91, i32* %12, align 4
  br label %51

92:                                               ; preds = %84, %70
  %93 = load i32, i32* %12, align 4
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %92, %42
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local i32 @dnode_rele(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @dmu_object_next(i32*, i64*, i32, i32) #1

declare dso_local i32 @dnode_hold(i32*, i64, i8*, %struct.TYPE_5__**) #1

declare dso_local i64 @DMU_OT_IS_METADATA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
