; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zvol.c_zvol_set_volmode_impl.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zvol.c_zvol_set_volmode_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i8*)* }

@ops = common dso_local global %struct.TYPE_2__* null, align 8
@zvol_volmode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @zvol_set_volmode_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zvol_set_volmode_impl(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 (...) @spl_fstrans_mark()
  store i32 %6, i32* %5, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = call i32* @strchr(i8* %7, i8 signext 64)
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %40

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %37 [
    i32 128, label %13
    i32 129, label %16
    i32 130, label %16
    i32 131, label %24
  ]

13:                                               ; preds = %11
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @zvol_remove_minor_impl(i8* %14)
  br label %37

16:                                               ; preds = %11, %11
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @zvol_remove_minor_impl(i8* %17)
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ops, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (i8*)*, i32 (i8*)** %20, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 %21(i8* %22)
  br label %37

24:                                               ; preds = %11
  %25 = load i8*, i8** %3, align 8
  %26 = call i32 @zvol_remove_minor_impl(i8* %25)
  %27 = load i32, i32* @zvol_volmode, align 4
  %28 = icmp eq i32 %27, 128
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %37

30:                                               ; preds = %24
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ops, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (i8*)*, i32 (i8*)** %32, align 8
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 %33(i8* %34)
  br label %36

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %11, %36, %29, %16, %13
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @spl_fstrans_unmark(i32 %38)
  br label %40

40:                                               ; preds = %37, %10
  ret void
}

declare dso_local i32 @spl_fstrans_mark(...) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @zvol_remove_minor_impl(i8*) #1

declare dso_local i32 @spl_fstrans_unmark(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
