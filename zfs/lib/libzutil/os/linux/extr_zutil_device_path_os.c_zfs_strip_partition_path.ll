; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzutil/os/linux/extr_zutil_device_path_os.c_zfs_strip_partition_path.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzutil/os/linux/extr_zutil_device_path_os.c_zfs_strip_partition_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @zfs_strip_partition_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @zfs_strip_partition_path(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i8* @strdup(i8* %7)
  store i8* %8, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %33

12:                                               ; preds = %1
  %13 = load i8*, i8** %4, align 8
  %14 = call i8* @strrchr(i8* %13, i8 signext 47)
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  store i8* %15, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i8* @zfs_strip_partition(i8* %16)
  store i8* %17, i8** %6, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %12
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @free(i8* %21)
  store i8* null, i8** %2, align 8
  br label %33

23:                                               ; preds = %12
  %24 = load i8*, i8** %5, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = call i64 @strlen(i8* %26)
  %28 = add nsw i64 %27, 1
  %29 = call i32 @strlcpy(i8* %24, i8* %25, i64 %28)
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @free(i8* %30)
  %32 = load i8*, i8** %4, align 8
  store i8* %32, i8** %2, align 8
  br label %33

33:                                               ; preds = %23, %20, %11
  %34 = load i8*, i8** %2, align 8
  ret i8* %34
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @zfs_strip_partition(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
