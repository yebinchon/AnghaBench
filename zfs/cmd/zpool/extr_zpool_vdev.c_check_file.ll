; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_vdev.c_check_file.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_vdev.c_check_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_RDONLY = common dso_local global i32 0, align 4
@g_zfs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"exported\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"potentially active\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"%s is reserved as a hot spare for pool %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"%s is part of %s pool '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_file(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %10, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = load i32, i32* @O_RDONLY, align 4
  %16 = call i32 @open(i8* %14, i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %78

19:                                               ; preds = %3
  %20 = load i32, i32* @g_zfs, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i64 @zpool_in_use(i32 %20, i32 %21, i32* %11, i8** %8, i64* %12)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %74

24:                                               ; preds = %19
  %25 = load i64, i64* %12, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %74

27:                                               ; preds = %24
  %28 = load i32, i32* %11, align 4
  switch i32 %28, label %35 [
    i32 131, label %29
    i32 130, label %31
    i32 129, label %33
  ]

29:                                               ; preds = %27
  %30 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %30, i8** %13, align 8
  br label %37

31:                                               ; preds = %27
  %32 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i8* %32, i8** %13, align 8
  br label %37

33:                                               ; preds = %27
  %34 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i8* %34, i8** %13, align 8
  br label %37

35:                                               ; preds = %27
  %36 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i8* %36, i8** %13, align 8
  br label %37

37:                                               ; preds = %35, %33, %31, %29
  %38 = load i32, i32* %11, align 4
  %39 = icmp eq i32 %38, 128
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load i64, i64* %7, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @free(i8* %44)
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @close(i32 %46)
  store i32 0, i32* %4, align 4
  br label %78

48:                                               ; preds = %40, %37
  %49 = load i32, i32* %11, align 4
  %50 = icmp eq i32 %49, 131
  br i1 %50, label %57, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %11, align 4
  %53 = icmp eq i32 %52, 128
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load i64, i64* %6, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %71, label %57

57:                                               ; preds = %54, %51, %48
  %58 = load i32, i32* %11, align 4
  switch i32 %58, label %64 [
    i32 128, label %59
  ]

59:                                               ; preds = %57
  %60 = call i8* @gettext(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %61 = load i8*, i8** %5, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = call i32 (i8*, i8*, i8*, ...) @vdev_error(i8* %60, i8* %61, i8* %62)
  br label %70

64:                                               ; preds = %57
  %65 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %66 = load i8*, i8** %5, align 8
  %67 = load i8*, i8** %13, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = call i32 (i8*, i8*, i8*, ...) @vdev_error(i8* %65, i8* %66, i8* %67, i8* %68)
  br label %70

70:                                               ; preds = %64, %59
  store i32 -1, i32* %10, align 4
  br label %71

71:                                               ; preds = %70, %54
  %72 = load i8*, i8** %8, align 8
  %73 = call i32 @free(i8* %72)
  br label %74

74:                                               ; preds = %71, %24, %19
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @close(i32 %75)
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %74, %43, %18
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i64 @zpool_in_use(i32, i32, i32*, i8**, i64*) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @vdev_error(i8*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
