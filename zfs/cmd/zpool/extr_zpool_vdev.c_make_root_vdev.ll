; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_vdev.c_make_root_vdev.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_vdev.c_make_root_vdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@is_force = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"at least one general top-level vdev must be specified\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @make_root_vdev(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i8** %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8**, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i8** %7, i8*** %17, align 8
  store i32* null, i32** %19, align 8
  %20 = load i32, i32* %12, align 4
  store i32 %20, i32* @is_force, align 4
  %21 = load i32*, i32** %11, align 8
  %22 = load i32, i32* %16, align 4
  %23 = load i8**, i8*** %17, align 8
  %24 = call i32* @construct_spec(i32* %21, i32 %22, i8** %23)
  store i32* %24, i32** %18, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %8
  store i32* null, i32** %9, align 8
  br label %84

27:                                               ; preds = %8
  %28 = load i32*, i32** %10, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load i32*, i32** %10, align 8
  %32 = call i32* @zpool_get_config(i32* %31, i32* null)
  store i32* %32, i32** %19, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32*, i32** %18, align 8
  %36 = call i32 @nvlist_free(i32* %35)
  store i32* null, i32** %9, align 8
  br label %84

37:                                               ; preds = %30, %27
  %38 = load i32*, i32** %19, align 8
  %39 = load i32*, i32** %18, align 8
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* @B_FALSE, align 4
  %43 = call i64 @is_device_in_use(i32* %38, i32* %39, i32 %40, i32 %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i32*, i32** %18, align 8
  %47 = call i32 @nvlist_free(i32* %46)
  store i32* null, i32** %9, align 8
  br label %84

48:                                               ; preds = %37
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load i32*, i32** %19, align 8
  %53 = load i32*, i32** %18, align 8
  %54 = call i64 @check_replication(i32* %52, i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32*, i32** %18, align 8
  %58 = call i32 @nvlist_free(i32* %57)
  store i32* null, i32** %9, align 8
  br label %84

59:                                               ; preds = %51, %48
  %60 = load i32*, i32** %19, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %71

62:                                               ; preds = %59
  %63 = load i32*, i32** %18, align 8
  %64 = call i64 @num_normal_vdevs(i32* %63)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = call i32 @gettext(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %68 = call i32 @vdev_error(i32 %67)
  %69 = load i32*, i32** %18, align 8
  %70 = call i32 @nvlist_free(i32* %69)
  store i32* null, i32** %9, align 8
  br label %84

71:                                               ; preds = %62, %59
  %72 = load i32, i32* %15, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %71
  %75 = load i32*, i32** %10, align 8
  %76 = load i32*, i32** %18, align 8
  %77 = call i64 @make_disks(i32* %75, i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i32*, i32** %18, align 8
  %81 = call i32 @nvlist_free(i32* %80)
  store i32* null, i32** %9, align 8
  br label %84

82:                                               ; preds = %74, %71
  %83 = load i32*, i32** %18, align 8
  store i32* %83, i32** %9, align 8
  br label %84

84:                                               ; preds = %82, %79, %66, %56, %45, %34, %26
  %85 = load i32*, i32** %9, align 8
  ret i32* %85
}

declare dso_local i32* @construct_spec(i32*, i32, i8**) #1

declare dso_local i32* @zpool_get_config(i32*, i32*) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i64 @is_device_in_use(i32*, i32*, i32, i32, i32) #1

declare dso_local i64 @check_replication(i32*, i32*) #1

declare dso_local i64 @num_normal_vdevs(i32*) #1

declare dso_local i32 @vdev_error(i32) #1

declare dso_local i32 @gettext(i8*) #1

declare dso_local i64 @make_disks(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
