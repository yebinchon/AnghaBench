; ModuleID = '/home/carl/AnghaBench/zfs/lib/libshare/extr_nfs.c_foreach_nfs_host_cb.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libshare/extr_nfs.c_foreach_nfs_host_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32 (i32, i8*, i8*, i8*, i32)*, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"sec\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rw\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"ro\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@SA_NO_MEMORY = common dso_local global i32 0, align 4
@SA_OK = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @foreach_nfs_host_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @foreach_nfs_host_cb(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %15, %struct.TYPE_2__** %13, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i64 @strcmp(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  br label %23

23:                                               ; preds = %19, %3
  %24 = load i8*, i8** %5, align 8
  %25 = call i64 @strcmp(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i8*, i8** %5, align 8
  %29 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %85

31:                                               ; preds = %27, %23
  %32 = load i8*, i8** %6, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  br label %35

35:                                               ; preds = %34, %31
  %36 = load i8*, i8** %5, align 8
  store i8* %36, i8** %9, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = call i8* @strdup(i8* %37)
  store i8* %38, i8** %10, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @SA_NO_MEMORY, align 4
  store i32 %42, i32* %4, align 4
  br label %87

43:                                               ; preds = %35
  %44 = load i8*, i8** %10, align 8
  store i8* %44, i8** %11, align 8
  br label %45

45:                                               ; preds = %79, %43
  %46 = load i8*, i8** %11, align 8
  %47 = call i8* @strchr(i8* %46, i8 signext 58)
  store i8* %47, i8** %12, align 8
  %48 = load i8*, i8** %12, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i8*, i8** %12, align 8
  store i8 0, i8* %51, align 1
  %52 = load i8*, i8** %12, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %12, align 8
  br label %54

54:                                               ; preds = %50, %45
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32 (i32, i8*, i8*, i8*, i32)*, i32 (i32, i8*, i8*, i8*, i32)** %56, align 8
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load i8*, i8** %11, align 8
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 %57(i32 %60, i8* %61, i8* %64, i8* %65, i32 %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @SA_OK, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %54
  %74 = load i8*, i8** %10, align 8
  %75 = call i32 @free(i8* %74)
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %4, align 4
  br label %87

77:                                               ; preds = %54
  %78 = load i8*, i8** %12, align 8
  store i8* %78, i8** %11, align 8
  br label %79

79:                                               ; preds = %77
  %80 = load i8*, i8** %11, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %45, label %82

82:                                               ; preds = %79
  %83 = load i8*, i8** %10, align 8
  %84 = call i32 @free(i8* %83)
  br label %85

85:                                               ; preds = %82, %27
  %86 = load i32, i32* @SA_OK, align 4
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %85, %73, %41
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
