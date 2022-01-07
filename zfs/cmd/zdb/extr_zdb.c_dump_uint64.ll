; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_dump_uint64.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_dump_uint64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@dump_opt = common dso_local global i32* null, align 8
@KM_SLEEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"got error %u from dmu_read\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"\09\09[]\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"\09\09[%0llx\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c", %0llx\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c",\0A\09\09%0llx\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c", ... \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i8*, i64)* @dump_uint64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_uint64(i32* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_3__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load i32*, i32** @dump_opt, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 100
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %16, 6
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  br label %105

19:                                               ; preds = %4
  %20 = load i8*, i8** %7, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %48

22:                                               ; preds = %19
  %23 = load i32*, i32** %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @dmu_object_info(i32* %23, i64 %24, %struct.TYPE_3__* %11)
  %26 = call i32 @VERIFY0(i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i64 @MIN(i64 %29, i32 1048576)
  store i64 %30, i64* %10, align 8
  %31 = load i64, i64* %10, align 8
  %32 = load i32, i32* @KM_SLEEP, align 4
  %33 = call i64* @kmem_alloc(i64 %31, i32 %32)
  store i64* %33, i64** %9, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* %10, align 8
  %37 = load i64*, i64** %9, align 8
  %38 = call i32 @dmu_read(i32* %34, i64 %35, i32 0, i64 %36, i64* %37, i32 0)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %22
  %42 = load i32, i32* %12, align 4
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i64*, i64** %9, align 8
  %45 = load i64, i64* %10, align 8
  %46 = call i32 @kmem_free(i64* %44, i64 %45)
  br label %105

47:                                               ; preds = %22
  br label %53

48:                                               ; preds = %19
  %49 = load i64, i64* %8, align 8
  %50 = call i64 @MIN(i64 %49, i32 1048576)
  store i64 %50, i64* %10, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = bitcast i8* %51 to i64*
  store i64* %52, i64** %9, align 8
  br label %53

53:                                               ; preds = %48, %47
  %54 = load i64, i64* %8, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %105

58:                                               ; preds = %53
  %59 = load i64*, i64** %9, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 0
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  store i64 1, i64* %13, align 8
  br label %64

64:                                               ; preds = %88, %58
  %65 = load i64, i64* %13, align 8
  %66 = mul i64 %65, 8
  %67 = load i64, i64* %10, align 8
  %68 = icmp ult i64 %66, %67
  br i1 %68, label %69, label %91

69:                                               ; preds = %64
  %70 = load i64, i64* %13, align 8
  %71 = urem i64 %70, 4
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %69
  %74 = load i64*, i64** %9, align 8
  %75 = load i64, i64* %13, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = trunc i64 %77 to i32
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  br label %87

80:                                               ; preds = %69
  %81 = load i64*, i64** %9, align 8
  %82 = load i64, i64* %13, align 8
  %83 = getelementptr inbounds i64, i64* %81, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %80, %73
  br label %88

88:                                               ; preds = %87
  %89 = load i64, i64* %13, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %13, align 8
  br label %64

91:                                               ; preds = %64
  %92 = load i64, i64* %10, align 8
  %93 = load i64, i64* %8, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %97

97:                                               ; preds = %95, %91
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %99 = load i8*, i8** %7, align 8
  %100 = icmp eq i8* %99, null
  br i1 %100, label %101, label %105

101:                                              ; preds = %97
  %102 = load i64*, i64** %9, align 8
  %103 = load i64, i64* %10, align 8
  %104 = call i32 @kmem_free(i64* %102, i64 %103)
  br label %105

105:                                              ; preds = %18, %41, %56, %101, %97
  ret void
}

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dmu_object_info(i32*, i64, %struct.TYPE_3__*) #1

declare dso_local i64 @MIN(i64, i32) #1

declare dso_local i64* @kmem_alloc(i64, i32) #1

declare dso_local i32 @dmu_read(i32*, i64, i32, i64, i64*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @kmem_free(i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
