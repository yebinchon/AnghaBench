; ModuleID = '/home/carl/AnghaBench/zfs/module/zcommon/extr_zfs_prop.c_zfs_prop_written.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zcommon/extr_zfs_prop.c_zfs_prop_written.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zfs_prop_written.prop_prefix = internal global i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [9 x i8] c"written@\00", align 1
@zfs_prop_written.book_prefix = internal global i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"written#\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_prop_written(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = load i8*, i8** @zfs_prop_written.prop_prefix, align 8
  %5 = load i8*, i8** @zfs_prop_written.prop_prefix, align 8
  %6 = call i32 @strlen(i8* %5)
  %7 = call i64 @strncmp(i8* %3, i8* %4, i32 %6)
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = load i8*, i8** %2, align 8
  %11 = load i8*, i8** @zfs_prop_written.book_prefix, align 8
  %12 = load i8*, i8** @zfs_prop_written.book_prefix, align 8
  %13 = call i32 @strlen(i8* %12)
  %14 = call i64 @strncmp(i8* %10, i8* %11, i32 %13)
  %15 = icmp eq i64 %14, 0
  br label %16

16:                                               ; preds = %9, %1
  %17 = phi i1 [ true, %1 ], [ %15, %9 ]
  %18 = zext i1 %17 to i32
  ret i32 %18
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
