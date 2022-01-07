; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_sendrecv.c_recv_read.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_sendrecv.c_recv_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPA_MAXBLOCKSIZE = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to read from stream\00", align 1
@EZFS_BADSTREAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"cannot receive\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i32, i64, i32*)* @recv_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recv_read(i32* %0, i32 %1, i8* %2, i32 %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load i8*, i8** %10, align 8
  store i8* %17, i8** %14, align 8
  %18 = load i32, i32* %11, align 4
  store i32 %18, i32* %16, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* @SPA_MAXBLOCKSIZE, align 4
  %21 = icmp sle i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  br label %24

24:                                               ; preds = %36, %6
  %25 = load i32, i32* %9, align 4
  %26 = load i8*, i8** %14, align 8
  %27 = load i32, i32* %16, align 4
  %28 = call i32 @read(i32 %25, i8* %26, i32 %27)
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* %15, align 4
  %30 = load i8*, i8** %14, align 8
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  store i8* %32, i8** %14, align 8
  %33 = load i32, i32* %15, align 4
  %34 = load i32, i32* %16, align 4
  %35 = sub nsw i32 %34, %33
  store i32 %35, i32* %16, align 4
  br label %36

36:                                               ; preds = %24
  %37 = load i32, i32* %15, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %24, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %15, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %16, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %42, %39
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* @TEXT_DOMAIN, align 4
  %48 = call i32 @dgettext(i32 %47, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %49 = call i32 @zfs_error_aux(i32* %46, i32 %48)
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* @EZFS_BADSTREAM, align 4
  %52 = load i32, i32* @TEXT_DOMAIN, align 4
  %53 = call i32 @dgettext(i32 %52, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %54 = call i32 @zfs_error(i32* %50, i32 %51, i32 %53)
  store i32 %54, i32* %7, align 4
  br label %73

55:                                               ; preds = %42
  %56 = load i32*, i32** %13, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %72

58:                                               ; preds = %55
  %59 = load i64, i64* %12, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load i8*, i8** %10, align 8
  %63 = load i32, i32* %11, align 4
  %64 = load i32*, i32** %13, align 8
  %65 = call i32 @fletcher_4_incremental_byteswap(i8* %62, i32 %63, i32* %64)
  br label %71

66:                                               ; preds = %58
  %67 = load i8*, i8** %10, align 8
  %68 = load i32, i32* %11, align 4
  %69 = load i32*, i32** %13, align 8
  %70 = call i32 @fletcher_4_incremental_native(i8* %67, i32 %68, i32* %69)
  br label %71

71:                                               ; preds = %66, %61
  br label %72

72:                                               ; preds = %71, %55
  store i32 0, i32* %7, align 4
  br label %73

73:                                               ; preds = %72, %45
  %74 = load i32, i32* %7, align 4
  ret i32 %74
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @zfs_error_aux(i32*, i32) #1

declare dso_local i32 @dgettext(i32, i8*) #1

declare dso_local i32 @zfs_error(i32*, i32, i32) #1

declare dso_local i32 @fletcher_4_incremental_byteswap(i8*, i32, i32*) #1

declare dso_local i32 @fletcher_4_incremental_native(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
