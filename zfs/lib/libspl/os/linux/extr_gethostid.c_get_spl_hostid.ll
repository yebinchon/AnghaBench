; ModuleID = '/home/carl/AnghaBench/zfs/lib/libspl/os/linux/extr_gethostid.c_get_spl_hostid.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libspl/os/linux/extr_gethostid.c_get_spl_hostid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"ZFS_HOSTID\00", align 1
@HOSTID_MASK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"/sys/module/spl/parameters/spl_hostid\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @get_spl_hostid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_spl_hostid() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i8* %5, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %0
  %9 = load i8*, i8** %4, align 8
  %10 = call i64 @strtoull(i8* %9, i32* null, i32 0)
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @HOSTID_MASK, align 8
  %13 = and i64 %11, %12
  store i64 %13, i64* %1, align 8
  br label %30

14:                                               ; preds = %0
  %15 = call i32* @fopen(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %15, i32** %2, align 8
  %16 = load i32*, i32** %2, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  store i64 0, i64* %1, align 8
  br label %30

19:                                               ; preds = %14
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @fscanf(i32* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i64* %3)
  %22 = icmp ne i32 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i64 0, i64* %3, align 8
  br label %24

24:                                               ; preds = %23, %19
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @fclose(i32* %25)
  %27 = load i64, i64* %3, align 8
  %28 = load i64, i64* @HOSTID_MASK, align 8
  %29 = and i64 %27, %28
  store i64 %29, i64* %1, align 8
  br label %30

30:                                               ; preds = %24, %18, %8
  %31 = load i64, i64* %1, align 8
  ret i64 %31
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @strtoull(i8*, i32*, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fscanf(i32*, i8*, i64*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
