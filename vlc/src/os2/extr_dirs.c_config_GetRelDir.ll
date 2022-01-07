; ModuleID = '/home/carl/AnghaBench/vlc/src/os2/extr_dirs.c_config_GetRelDir.c'
source_filename = "/home/carl/AnghaBench/vlc/src/os2/extr_dirs.c_config_GetRelDir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@config_GetRelDir.prefixlen = internal global i32 -1, align 4
@LIBDIR = common dso_local global i64* null, align 8
@SYSDATADIR = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @config_GetRelDir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @config_GetRelDir(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32, i32* @config_GetRelDir.prefixlen, align 4
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %5, label %38

5:                                                ; preds = %1
  store i32 0, i32* @config_GetRelDir.prefixlen, align 4
  br label %6

6:                                                ; preds = %34, %5
  %7 = load i64*, i64** @LIBDIR, align 8
  %8 = load i32, i32* @config_GetRelDir.prefixlen, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i64, i64* %7, i64 %9
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %6
  %14 = load i64*, i64** @SYSDATADIR, align 8
  %15 = load i32, i32* @config_GetRelDir.prefixlen, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i64, i64* %14, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %13
  %21 = load i64*, i64** @LIBDIR, align 8
  %22 = load i32, i32* @config_GetRelDir.prefixlen, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = load i64*, i64** @SYSDATADIR, align 8
  %27 = load i32, i32* @config_GetRelDir.prefixlen, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %25, %30
  br label %32

32:                                               ; preds = %20, %13, %6
  %33 = phi i1 [ false, %13 ], [ false, %6 ], [ %31, %20 ]
  br i1 %33, label %34, label %37

34:                                               ; preds = %32
  %35 = load i32, i32* @config_GetRelDir.prefixlen, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* @config_GetRelDir.prefixlen, align 4
  br label %6

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %37, %1
  %39 = load i8*, i8** %2, align 8
  %40 = load i32, i32* @config_GetRelDir.prefixlen, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  ret i8* %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
