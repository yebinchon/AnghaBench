; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/os/linux/extr_libzfs_pool_os.c_read_efi_label.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/os/linux/extr_libzfs_pool_os.c_read_efi_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dk_gpt = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@DISK_ROOT = common dso_local global i8* null, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@O_DIRECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @read_efi_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_efi_label(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dk_gpt*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load i32, i32* @MAXPATHLEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  store i32 -1, i32* %10, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* @ZPOOL_CONFIG_PATH, align 4
  %19 = call i64 @nvlist_lookup_string(i32* %17, i32 %18, i8** %6)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %57

23:                                               ; preds = %2
  %24 = trunc i64 %14 to i32
  %25 = load i8*, i8** @DISK_ROOT, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @strrchr(i8* %26, i8 signext 47)
  %28 = call i32 @snprintf(i8* %16, i32 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %25, i32 %27)
  %29 = load i32, i32* @O_RDONLY, align 4
  %30 = load i32, i32* @O_DIRECT, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @open(i8* %16, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %55

34:                                               ; preds = %23
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @efi_alloc_and_read(i32 %35, %struct.dk_gpt** %12)
  store i32 %36, i32* %10, align 4
  %37 = icmp sge i32 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %34
  %39 = load i32*, i32** %5, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = load %struct.dk_gpt*, %struct.dk_gpt** %12, align 8
  %43 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %5, align 8
  store i32 %47, i32* %48, align 4
  br label %49

49:                                               ; preds = %41, %38
  %50 = load %struct.dk_gpt*, %struct.dk_gpt** %12, align 8
  %51 = call i32 @efi_free(%struct.dk_gpt* %50)
  br label %52

52:                                               ; preds = %49, %34
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @close(i32 %53)
  br label %55

55:                                               ; preds = %52, %23
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %57

57:                                               ; preds = %55, %21
  %58 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %58)
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @nvlist_lookup_string(i32*, i32, i8**) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #2

declare dso_local i32 @strrchr(i8*, i8 signext) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @efi_alloc_and_read(i32, %struct.dk_gpt**) #2

declare dso_local i32 @efi_free(%struct.dk_gpt*) #2

declare dso_local i32 @close(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
