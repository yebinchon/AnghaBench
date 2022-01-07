; ModuleID = '/home/carl/AnghaBench/zfs/lib/libshare/extr_libshare.c_sa_enable_share.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libshare/extr_libshare.c_sa_enable_share.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_12__*, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_11__*)* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i8* }

@SA_OK = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i8* null, align 8
@fstypes = common dso_local global %struct.TYPE_12__* null, align 8
@B_TRUE = common dso_local global i8* null, align 8
@SA_INVALID_PROTOCOL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sa_enable_share(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = inttoptr i64 %11 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %5, align 8
  %13 = load i32, i32* @SA_OK, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i8*, i8** @B_FALSE, align 8
  store i8* %14, i8** %8, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** @fstypes, align 8
  store %struct.TYPE_12__* %15, %struct.TYPE_12__** %9, align 8
  br label %16

16:                                               ; preds = %55, %2
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %18 = icmp ne %struct.TYPE_12__* %17, null
  br i1 %18, label %19, label %59

19:                                               ; preds = %16
  %20 = load i8*, i8** %4, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %19
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = call i64 @strcmp(i32 %25, i8* %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %22, %19
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @update_zfs_share(%struct.TYPE_11__* %30, i32 %33)
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %38, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %41 = call i32 %39(%struct.TYPE_11__* %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @SA_OK, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %29
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %7, align 4
  br label %53

47:                                               ; preds = %29
  %48 = load i8*, i8** @B_TRUE, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %51 = call %struct.TYPE_13__* @FSINFO(%struct.TYPE_11__* %49, %struct.TYPE_12__* %50)
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  store i8* %48, i8** %52, align 8
  br label %53

53:                                               ; preds = %47, %45
  %54 = load i8*, i8** @B_TRUE, align 8
  store i8* %54, i8** %8, align 8
  br label %55

55:                                               ; preds = %53, %22
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %57, align 8
  store %struct.TYPE_12__* %58, %struct.TYPE_12__** %9, align 8
  br label %16

59:                                               ; preds = %16
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @update_sharetab(i32 %62)
  %64 = load i8*, i8** %8, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i32, i32* %7, align 4
  br label %70

68:                                               ; preds = %59
  %69 = load i32, i32* @SA_INVALID_PROTOCOL, align 4
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi i32 [ %67, %66 ], [ %69, %68 ]
  ret i32 %71
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @update_zfs_share(%struct.TYPE_11__*, i32) #1

declare dso_local %struct.TYPE_13__* @FSINFO(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i32 @update_sharetab(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
