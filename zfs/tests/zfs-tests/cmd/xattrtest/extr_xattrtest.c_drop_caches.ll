; ModuleID = '/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/xattrtest/extr_xattrtest.c_drop_caches.c'
source_filename = "/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/xattrtest/extr_xattrtest.c_drop_caches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.drop_caches.file = private unnamed_addr constant [25 x i8] c"/proc/sys/vm/drop_caches\00", align 16
@O_WRONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Error %d: open(\22%s\22, O_WRONLY)\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Error %d: write(%d, \223\22, 1)\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Error %d: close(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @drop_caches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drop_caches() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [25 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = bitcast [25 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 getelementptr inbounds ([25 x i8], [25 x i8]* @__const.drop_caches.file, i32 0, i32 0), i64 25, i1 false)
  %6 = getelementptr inbounds [25 x i8], [25 x i8]* %2, i64 0, i64 0
  %7 = load i32, i32* @O_WRONLY, align 4
  %8 = call i32 @open(i8* %6, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %16

11:                                               ; preds = %0
  %12 = load i32, i32* @errno, align 4
  %13 = getelementptr inbounds [25 x i8], [25 x i8]* %2, i64 0, i64 0
  %14 = call i32 (i8*, i32, ...) @ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %12, i8* %13)
  %15 = load i32, i32* @errno, align 4
  store i32 %15, i32* %1, align 4
  br label %42

16:                                               ; preds = %0
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @write(i32 %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %24, label %31

24:                                               ; preds = %21, %16
  %25 = load i32, i32* @errno, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 (i8*, i32, ...) @ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %25, i32 %26)
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @close(i32 %28)
  %30 = load i32, i32* @errno, align 4
  store i32 %30, i32* %1, align 4
  br label %42

31:                                               ; preds = %21
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @close(i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load i32, i32* @errno, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 (i8*, i32, ...) @ERROR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %37, i32 %38)
  %40 = load i32, i32* @errno, align 4
  store i32 %40, i32* %1, align 4
  br label %42

41:                                               ; preds = %31
  store i32 0, i32* %1, align 4
  br label %42

42:                                               ; preds = %41, %36, %24, %11
  %43 = load i32, i32* %1, align 4
  ret i32 %43
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @ERROR(i8*, i32, ...) #2

declare dso_local i32 @write(i32, i8*, i32) #2

declare dso_local i32 @close(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
