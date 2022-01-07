; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_dump_bpobj_subobjs.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_dump_bpobj_subobjs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@KM_SLEEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"got error %u from dmu_read\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"\09%llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i8*, i64)* @dump_bpobj_subobjs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_bpobj_subobjs(i32* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_3__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @dmu_object_info(i32* %14, i64 %15, %struct.TYPE_3__* %9)
  %17 = call i32 @VERIFY0(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @KM_SLEEP, align 4
  %21 = call i64* @kmem_alloc(i32 %19, i32 %20)
  store i64* %21, i64** %11, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i64*, i64** %11, align 8
  %27 = call i32 @dmu_read(i32* %22, i64 %23, i32 0, i32 %25, i64* %26, i32 0)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %4
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i64*, i64** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @kmem_free(i64* %33, i32 %35)
  br label %78

37:                                               ; preds = %4
  store i32 -1, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %38

38:                                               ; preds = %54, %37
  %39 = load i32, i32* %10, align 4
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sdiv i32 %41, 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %38
  %45 = load i64*, i64** %11, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %13, align 4
  br label %53

53:                                               ; preds = %51, %44
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %10, align 4
  br label %38

57:                                               ; preds = %38
  store i32 0, i32* %10, align 4
  br label %58

58:                                               ; preds = %70, %57
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp sle i32 %59, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %58
  %63 = load i64*, i64** %11, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %62
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %10, align 4
  br label %58

73:                                               ; preds = %58
  %74 = load i64*, i64** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @kmem_free(i64* %74, i32 %76)
  br label %78

78:                                               ; preds = %73, %30
  ret void
}

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dmu_object_info(i32*, i64, %struct.TYPE_3__*) #1

declare dso_local i64* @kmem_alloc(i32, i32) #1

declare dso_local i32 @dmu_read(i32*, i64, i32, i32, i64*, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @kmem_free(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
