; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_debug.c_zfs_dbgmsg_print.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_debug.c_zfs_dbgmsg_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i8* }

@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"ZFS_DBGMSG(\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c") START:\0A\00", align 1
@zfs_dbgmsgs = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c") END\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfs_dbgmsg_print(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i32, i32* @STDOUT_FILENO, align 4
  %6 = call i32 @write(i32 %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 11)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @STDOUT_FILENO, align 4
  %8 = load i8*, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 @strlen(i8* %9)
  %11 = call i32 @write(i32 %7, i8* %8, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @STDOUT_FILENO, align 4
  %13 = call i32 @write(i32 %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 9)
  store i32 %13, i32* %3, align 4
  %14 = call i32 @mutex_enter(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @zfs_dbgmsgs, i32 0, i32 0))
  %15 = call %struct.TYPE_6__* @list_head(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @zfs_dbgmsgs, i32 0, i32 1))
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %4, align 8
  br label %16

16:                                               ; preds = %31, %1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = icmp ne %struct.TYPE_6__* %17, null
  br i1 %18, label %19, label %34

19:                                               ; preds = %16
  %20 = load i32, i32* @STDOUT_FILENO, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @strlen(i8* %26)
  %28 = call i32 @write(i32 %20, i8* %23, i32 %27)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* @STDOUT_FILENO, align 4
  %30 = call i32 @write(i32 %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1)
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %19
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = call %struct.TYPE_6__* @list_next(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @zfs_dbgmsgs, i32 0, i32 1), %struct.TYPE_6__* %32)
  store %struct.TYPE_6__* %33, %struct.TYPE_6__** %4, align 8
  br label %16

34:                                               ; preds = %16
  %35 = load i32, i32* @STDOUT_FILENO, align 4
  %36 = call i32 @write(i32 %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 11)
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* @STDOUT_FILENO, align 4
  %38 = load i8*, i8** %2, align 8
  %39 = load i8*, i8** %2, align 8
  %40 = call i32 @strlen(i8* %39)
  %41 = call i32 @write(i32 %37, i8* %38, i32 %40)
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* @STDOUT_FILENO, align 4
  %43 = call i32 @write(i32 %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 6)
  store i32 %43, i32* %3, align 4
  %44 = call i32 @mutex_exit(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @zfs_dbgmsgs, i32 0, i32 0))
  ret void
}

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local %struct.TYPE_6__* @list_head(i32*) #1

declare dso_local %struct.TYPE_6__* @list_next(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
