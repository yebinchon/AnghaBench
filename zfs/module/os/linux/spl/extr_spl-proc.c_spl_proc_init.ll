; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-proc.c_spl_proc_init.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-proc.c_spl_proc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@spl_root = common dso_local global i32 0, align 4
@spl_header = common dso_local global i32* null, align 8
@EUNATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"spl\00", align 1
@proc_spl = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"taskq-all\00", align 1
@proc_taskq_all_operations = common dso_local global i32 0, align 4
@proc_spl_taskq_all = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"taskq\00", align 1
@proc_taskq_operations = common dso_local global i32 0, align 4
@proc_spl_taskq = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"kmem\00", align 1
@proc_spl_kmem = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"slab\00", align 1
@proc_slab_operations = common dso_local global i32 0, align 4
@proc_spl_kmem_slab = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"kstat\00", align 1
@proc_spl_kstat = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spl_proc_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %3 = load i32, i32* @spl_root, align 4
  %4 = call i32* @register_sysctl_table(i32 %3)
  store i32* %4, i32** @spl_header, align 8
  %5 = load i32*, i32** @spl_header, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i32, i32* @EUNATCH, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %1, align 4
  br label %83

10:                                               ; preds = %0
  %11 = call i8* @proc_mkdir(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* null)
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** @proc_spl, align 8
  %13 = load i32*, i32** @proc_spl, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load i32, i32* @EUNATCH, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %64

18:                                               ; preds = %10
  %19 = load i32*, i32** @proc_spl, align 8
  %20 = call i8* @proc_create_data(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 292, i32* %19, i32* @proc_taskq_all_operations, i32* null)
  %21 = bitcast i8* %20 to i32*
  store i32* %21, i32** @proc_spl_taskq_all, align 8
  %22 = load i32*, i32** @proc_spl_taskq_all, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @EUNATCH, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %64

27:                                               ; preds = %18
  %28 = load i32*, i32** @proc_spl, align 8
  %29 = call i8* @proc_create_data(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 292, i32* %28, i32* @proc_taskq_operations, i32* null)
  %30 = bitcast i8* %29 to i32*
  store i32* %30, i32** @proc_spl_taskq, align 8
  %31 = load i32*, i32** @proc_spl_taskq, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @EUNATCH, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %64

36:                                               ; preds = %27
  %37 = load i32*, i32** @proc_spl, align 8
  %38 = call i8* @proc_mkdir(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* %37)
  %39 = bitcast i8* %38 to i32*
  store i32* %39, i32** @proc_spl_kmem, align 8
  %40 = load i32*, i32** @proc_spl_kmem, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* @EUNATCH, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %64

45:                                               ; preds = %36
  %46 = load i32*, i32** @proc_spl_kmem, align 8
  %47 = call i8* @proc_create_data(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 292, i32* %46, i32* @proc_slab_operations, i32* null)
  %48 = bitcast i8* %47 to i32*
  store i32* %48, i32** @proc_spl_kmem_slab, align 8
  %49 = load i32*, i32** @proc_spl_kmem_slab, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* @EUNATCH, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %64

54:                                               ; preds = %45
  %55 = load i32*, i32** @proc_spl, align 8
  %56 = call i8* @proc_mkdir(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32* %55)
  %57 = bitcast i8* %56 to i32*
  store i32* %57, i32** @proc_spl_kstat, align 8
  %58 = load i32*, i32** @proc_spl_kstat, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i32, i32* @EUNATCH, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %64

63:                                               ; preds = %54
  br label %64

64:                                               ; preds = %63, %60, %51, %42, %33, %24, %15
  %65 = load i32, i32* %2, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %64
  %68 = load i32*, i32** @proc_spl, align 8
  %69 = call i32 @remove_proc_entry(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32* %68)
  %70 = load i32*, i32** @proc_spl_kmem, align 8
  %71 = call i32 @remove_proc_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* %70)
  %72 = load i32*, i32** @proc_spl, align 8
  %73 = call i32 @remove_proc_entry(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* %72)
  %74 = load i32*, i32** @proc_spl, align 8
  %75 = call i32 @remove_proc_entry(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* %74)
  %76 = load i32*, i32** @proc_spl, align 8
  %77 = call i32 @remove_proc_entry(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %76)
  %78 = call i32 @remove_proc_entry(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* null)
  %79 = load i32*, i32** @spl_header, align 8
  %80 = call i32 @unregister_sysctl_table(i32* %79)
  br label %81

81:                                               ; preds = %67, %64
  %82 = load i32, i32* %2, align 4
  store i32 %82, i32* %1, align 4
  br label %83

83:                                               ; preds = %81, %7
  %84 = load i32, i32* %1, align 4
  ret i32 %84
}

declare dso_local i32* @register_sysctl_table(i32) #1

declare dso_local i8* @proc_mkdir(i8*, i32*) #1

declare dso_local i8* @proc_create_data(i8*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @remove_proc_entry(i8*, i32*) #1

declare dso_local i32 @unregister_sysctl_table(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
