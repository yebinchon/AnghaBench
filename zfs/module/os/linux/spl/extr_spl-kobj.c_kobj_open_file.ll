; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-kobj.c_kobj_open_file.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-kobj.c_kobj_open_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._buf = type { i32* }

@KM_SLEEP = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._buf* @kobj_open_file(i8* %0) #0 {
  %2 = alloca %struct._buf*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct._buf*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i32, i32* @KM_SLEEP, align 4
  %8 = call i32 @kmem_flags_convert(i32 %7)
  %9 = call %struct._buf* @kmalloc(i32 8, i32 %8)
  store %struct._buf* %9, %struct._buf** %4, align 8
  %10 = load %struct._buf*, %struct._buf** %4, align 8
  %11 = icmp eq %struct._buf* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store %struct._buf* inttoptr (i64 -1 to %struct._buf*), %struct._buf** %2, align 8
  br label %27

13:                                               ; preds = %1
  %14 = load i8*, i8** %3, align 8
  %15 = load i32, i32* @UIO_SYSSPACE, align 4
  %16 = load i32, i32* @FREAD, align 4
  %17 = call i32 @vn_open(i8* %14, i32 %15, i32 %16, i32 420, i32** %5, i32 0, i32 0)
  store i32 %17, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load %struct._buf*, %struct._buf** %4, align 8
  %21 = call i32 @kfree(%struct._buf* %20)
  store %struct._buf* inttoptr (i64 -1 to %struct._buf*), %struct._buf** %2, align 8
  br label %27

22:                                               ; preds = %13
  %23 = load i32*, i32** %5, align 8
  %24 = load %struct._buf*, %struct._buf** %4, align 8
  %25 = getelementptr inbounds %struct._buf, %struct._buf* %24, i32 0, i32 0
  store i32* %23, i32** %25, align 8
  %26 = load %struct._buf*, %struct._buf** %4, align 8
  store %struct._buf* %26, %struct._buf** %2, align 8
  br label %27

27:                                               ; preds = %22, %19, %12
  %28 = load %struct._buf*, %struct._buf** %2, align 8
  ret %struct._buf* %28
}

declare dso_local %struct._buf* @kmalloc(i32, i32) #1

declare dso_local i32 @kmem_flags_convert(i32) #1

declare dso_local i32 @vn_open(i8*, i32, i32, i32, i32**, i32, i32) #1

declare dso_local i32 @kfree(%struct._buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
