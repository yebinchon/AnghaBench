; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_log.c_zfs_log_create_txtype.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_log.c_zfs_log_create_txtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@ATTR_XVATTR = common dso_local global i32 0, align 4
@TX_CREATE = common dso_local global i32 0, align 4
@TX_CREATE_ACL_ATTR = common dso_local global i32 0, align 4
@TX_CREATE_ACL = common dso_local global i32 0, align 4
@TX_CREATE_ATTR = common dso_local global i32 0, align 4
@TX_MKDIR = common dso_local global i32 0, align 4
@TX_MKDIR_ACL_ATTR = common dso_local global i32 0, align 4
@TX_MKDIR_ACL = common dso_local global i32 0, align 4
@TX_MKDIR_ATTR = common dso_local global i32 0, align 4
@TX_MKXATTR = common dso_local global i32 0, align 4
@TX_MAX_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_log_create_txtype(i32 %0, i32* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @ATTR_XVATTR, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %63 [
    i32 129, label %15
    i32 130, label %38
    i32 128, label %61
  ]

15:                                               ; preds = %3
  %16 = load i32*, i32** %6, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* @TX_CREATE, align 4
  store i32 %22, i32* %4, align 4
  br label %66

23:                                               ; preds = %18, %15
  %24 = load i32*, i32** %6, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* @TX_CREATE_ACL_ATTR, align 4
  store i32 %30, i32* %4, align 4
  br label %66

31:                                               ; preds = %26, %23
  %32 = load i32*, i32** %6, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* @TX_CREATE_ACL, align 4
  store i32 %35, i32* %4, align 4
  br label %66

36:                                               ; preds = %31
  %37 = load i32, i32* @TX_CREATE_ATTR, align 4
  store i32 %37, i32* %4, align 4
  br label %66

38:                                               ; preds = %3
  %39 = load i32*, i32** %6, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* @TX_MKDIR, align 4
  store i32 %45, i32* %4, align 4
  br label %66

46:                                               ; preds = %41, %38
  %47 = load i32*, i32** %6, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32, i32* @TX_MKDIR_ACL_ATTR, align 4
  store i32 %53, i32* %4, align 4
  br label %66

54:                                               ; preds = %49, %46
  %55 = load i32*, i32** %6, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32, i32* @TX_MKDIR_ACL, align 4
  store i32 %58, i32* %4, align 4
  br label %66

59:                                               ; preds = %54
  %60 = load i32, i32* @TX_MKDIR_ATTR, align 4
  store i32 %60, i32* %4, align 4
  br label %66

61:                                               ; preds = %3
  %62 = load i32, i32* @TX_MKXATTR, align 4
  store i32 %62, i32* %4, align 4
  br label %66

63:                                               ; preds = %3
  %64 = call i32 @ASSERT(i32 0)
  %65 = load i32, i32* @TX_MAX_TYPE, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %63, %61, %59, %57, %52, %44, %36, %34, %29, %21
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
