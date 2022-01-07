; ModuleID = '/home/carl/AnghaBench/systemd/src/tmpfiles/extr_tmpfiles.c_remove_item_instance.c'
source_filename = "/home/carl/AnghaBench/systemd/src/tmpfiles/extr_tmpfiles.c_remove_item_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@errno = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"rm(%s): %m\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"rm -rf \22%s\22\00", align 1
@REMOVE_ROOT = common dso_local global i32 0, align 4
@REMOVE_SUBVOLUME = common dso_local global i32 0, align 4
@REMOVE_PHYSICAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"rm_rf(%s): %m\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"wut?\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*)* @remove_item_instance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remove_item_instance(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %8 = call i32 @assert(%struct.TYPE_4__* %7)
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %47 [
    i32 128, label %12
    i32 129, label %25
  ]

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @remove(i8* %13)
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = load i32, i32* @errno, align 4
  %18 = load i32, i32* @ENOENT, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i32, i32* @errno, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @log_error_errno(i32 %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %22)
  store i32 %23, i32* %3, align 4
  br label %50

24:                                               ; preds = %16, %12
  br label %49

25:                                               ; preds = %2
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @log_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* @REMOVE_ROOT, align 4
  %30 = load i32, i32* @REMOVE_SUBVOLUME, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @REMOVE_PHYSICAL, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @rm_rf(i8* %28, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %25
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @ENOENT, align 4
  %40 = sub nsw i32 0, %39
  %41 = icmp ne i32 %38, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32, i32* %6, align 4
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @log_error_errno(i32 %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %44)
  store i32 %45, i32* %3, align 4
  br label %50

46:                                               ; preds = %37, %25
  br label %49

47:                                               ; preds = %2
  %48 = call i32 @assert_not_reached(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %46, %24
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %42, %20
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @assert(%struct.TYPE_4__*) #1

declare dso_local i32 @remove(i8*) #1

declare dso_local i32 @log_error_errno(i32, i8*, i8*) #1

declare dso_local i32 @log_debug(i8*, i8*) #1

declare dso_local i32 @rm_rf(i8*, i32) #1

declare dso_local i32 @assert_not_reached(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
