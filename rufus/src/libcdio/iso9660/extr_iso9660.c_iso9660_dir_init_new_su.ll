; ModuleID = '/home/carl/AnghaBench/rufus/src/libcdio/iso9660/extr_iso9660.c_iso9660_dir_init_new_su.c'
source_filename = "/home/carl/AnghaBench/rufus/src/libcdio/iso9660/extr_iso9660.c_iso9660_dir_init_new_su.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ISO_BLOCKSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@ISO_DIRECTORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\01\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iso9660_dir_init_new_su(i8* %0, i32 %1, i32 %2, i8* %3, i32 %4, i32 %5, i32 %6, i8* %7, i32 %8, i32* %9) #0 {
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  store i8* %0, i8** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i8* %3, i8** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i8* %7, i8** %18, align 8
  store i32 %8, i32* %19, align 4
  store i32* %9, i32** %20, align 8
  %21 = load i32, i32* %13, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %10
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* @ISO_BLOCKSIZE, align 4
  %26 = srem i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br label %29

29:                                               ; preds = %23, %10
  %30 = phi i1 [ false, %10 ], [ %28, %23 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @cdio_assert(i32 %31)
  %33 = load i32, i32* %17, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load i32, i32* %17, align 4
  %37 = load i32, i32* @ISO_BLOCKSIZE, align 4
  %38 = srem i32 %36, %37
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  br label %41

41:                                               ; preds = %35, %29
  %42 = phi i1 [ false, %29 ], [ %40, %35 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @cdio_assert(i32 %43)
  %45 = load i8*, i8** %11, align 8
  %46 = icmp ne i8* %45, null
  %47 = zext i1 %46 to i32
  %48 = call i32 @cdio_assert(i32 %47)
  %49 = load i8*, i8** %11, align 8
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @memset(i8* %49, i32 0, i32 %50)
  %52 = load i8*, i8** %11, align 8
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* @ISO_DIRECTORY, align 4
  %56 = load i8*, i8** %14, align 8
  %57 = load i32, i32* %15, align 4
  %58 = load i32*, i32** %20, align 8
  %59 = call i32 @iso9660_dir_add_entry_su(i8* %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %54, i32 %55, i8* %56, i32 %57, i32* %58)
  %60 = load i8*, i8** %11, align 8
  %61 = load i32, i32* %16, align 4
  %62 = load i32, i32* %17, align 4
  %63 = load i32, i32* @ISO_DIRECTORY, align 4
  %64 = load i8*, i8** %18, align 8
  %65 = load i32, i32* %19, align 4
  %66 = load i32*, i32** %20, align 8
  %67 = call i32 @iso9660_dir_add_entry_su(i8* %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %62, i32 %63, i8* %64, i32 %65, i32* %66)
  ret void
}

declare dso_local i32 @cdio_assert(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @iso9660_dir_add_entry_su(i8*, i8*, i32, i32, i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
