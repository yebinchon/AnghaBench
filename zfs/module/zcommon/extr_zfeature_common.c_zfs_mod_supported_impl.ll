; ModuleID = '/home/carl/AnghaBench/zfs/module/zcommon/extr_zfeature_common.c_zfs_mod_supported_impl.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zcommon/extr_zfeature_common.c_zfs_mod_supported_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat64 = type { i32 }

@B_FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s%s%s%s%s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @zfs_mod_supported_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_mod_supported_impl(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.stat64, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i32, i32* @B_FALSE, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = icmp eq i8* %13, null
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %17 = load i8*, i8** %4, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %22

20:                                               ; preds = %3
  %21 = load i8*, i8** %4, align 8
  br label %22

22:                                               ; preds = %20, %19
  %23 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %19 ], [ %21, %20 ]
  %24 = load i8*, i8** %5, align 8
  %25 = icmp eq i8* %24, null
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %28 = load i8*, i8** %5, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %33

31:                                               ; preds = %22
  %32 = load i8*, i8** %5, align 8
  br label %33

33:                                               ; preds = %31, %30
  %34 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %30 ], [ %32, %31 ]
  %35 = call i32 @asprintf(i8** %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %12, i8* %16, i8* %23, i8* %27, i8* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  %39 = load i8*, i8** %8, align 8
  %40 = call i64 @stat64(i8* %39, %struct.stat64* %10)
  %41 = icmp eq i64 %40, 0
  %42 = xor i1 %41, true
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %7, align 4
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @free(i8* %45)
  br label %47

47:                                               ; preds = %38, %33
  %48 = load i32, i32* %7, align 4
  ret i32 %48
}

declare dso_local i32 @asprintf(i8**, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i64 @stat64(i8*, %struct.stat64*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
