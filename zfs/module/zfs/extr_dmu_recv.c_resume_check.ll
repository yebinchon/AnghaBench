; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_recv.c_resume_check.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_recv.c_resume_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32* }

@.str = private unnamed_addr constant [14 x i8] c"resume_object\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"resume_offset\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DS_FIELD_RESUME_OBJECT = common dso_local global i32 0, align 4
@DS_FIELD_RESUME_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*)* @resume_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resume_check(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.TYPE_5__* @dmu_objset_pool(i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %7, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @dmu_objset_id(i32 %19)
  store i64 %20, i64* %8, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i64 @nvlist_lookup_uint64(i32* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64* %9)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %2
  %25 = load i32*, i32** %5, align 8
  %26 = call i64 @nvlist_lookup_uint64(i32* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i64* %10)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24, %2
  %29 = load i32, i32* @EINVAL, align 4
  %30 = call i32 @SET_ERROR(i32 %29)
  store i32 %30, i32* %3, align 4
  br label %56

31:                                               ; preds = %24
  %32 = load i32*, i32** %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i32, i32* @DS_FIELD_RESUME_OBJECT, align 4
  %35 = call i32 @zap_lookup(i32* %32, i64 %33, i32 %34, i32 8, i32 1, i64* %6)
  %36 = call i32 @VERIFY0(i32 %35)
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %6, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load i32, i32* @EINVAL, align 4
  %42 = call i32 @SET_ERROR(i32 %41)
  store i32 %42, i32* %3, align 4
  br label %56

43:                                               ; preds = %31
  %44 = load i32*, i32** %7, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load i32, i32* @DS_FIELD_RESUME_OFFSET, align 4
  %47 = call i32 @zap_lookup(i32* %44, i64 %45, i32 %46, i32 8, i32 1, i64* %6)
  %48 = call i32 @VERIFY0(i32 %47)
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* %6, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load i32, i32* @EINVAL, align 4
  %54 = call i32 @SET_ERROR(i32 %53)
  store i32 %54, i32* %3, align 4
  br label %56

55:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %52, %40, %28
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.TYPE_5__* @dmu_objset_pool(i32) #1

declare dso_local i64 @dmu_objset_id(i32) #1

declare dso_local i64 @nvlist_lookup_uint64(i32*, i8*, i64*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @zap_lookup(i32*, i64, i32, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
