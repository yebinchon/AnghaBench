; ModuleID = '/home/carl/AnghaBench/zfs/lib/libshare/extr_nfs.c_nfs_update_shareopts.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libshare/extr_nfs.c_nfs_update_shareopts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i64 }

@B_FALSE = common dso_local global i64 0, align 8
@nfs_fstype = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"rw,crossmnt\00", align 1
@B_TRUE = common dso_local global i64 0, align 8
@SA_NO_MEMORY = common dso_local global i32 0, align 4
@SA_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*)* @nfs_update_shareopts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_update_shareopts(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i64, i64* @B_FALSE, align 8
  store i64 %11, i64* %9, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @nfs_is_share_active(i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @nfs_fstype, align 4
  %16 = call %struct.TYPE_2__* @FSINFO(i32 %14, i32 %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store i64 %13, i64* %17, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @nfs_fstype, align 4
  %20 = call %struct.TYPE_2__* @FSINFO(i32 %18, i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %10, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i64 @strcmp(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %27

27:                                               ; preds = %26, %3
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @nfs_fstype, align 4
  %30 = call %struct.TYPE_2__* @FSINFO(i32 %28, i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %27
  %35 = load i8*, i8** %10, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load i8*, i8** %10, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = call i64 @strcmp(i8* %38, i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i64, i64* @B_TRUE, align 8
  store i64 %43, i64* %9, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @nfs_disable_share(i32 %44)
  br label %46

46:                                               ; preds = %42, %37, %34, %27
  %47 = load i8*, i8** %7, align 8
  %48 = call i8* @strdup(i8* %47)
  store i8* %48, i8** %8, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* @SA_NO_MEMORY, align 4
  store i32 %52, i32* %4, align 4
  br label %72

53:                                               ; preds = %46
  %54 = load i8*, i8** %10, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i8*, i8** %10, align 8
  %58 = call i32 @free(i8* %57)
  br label %59

59:                                               ; preds = %56, %53
  %60 = load i8*, i8** %8, align 8
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @nfs_fstype, align 4
  %63 = call %struct.TYPE_2__* @FSINFO(i32 %61, i32 %62)
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i8* %60, i8** %64, align 8
  %65 = load i64, i64* %9, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %59
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @nfs_enable_share(i32 %68)
  br label %70

70:                                               ; preds = %67, %59
  %71 = load i32, i32* @SA_OK, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %70, %51
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i64 @nfs_is_share_active(i32) #1

declare dso_local %struct.TYPE_2__* @FSINFO(i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @nfs_disable_share(i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @nfs_enable_share(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
