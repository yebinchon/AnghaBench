; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zcp.c_zcp_dataset_hold_error.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zcp.c_zcp_dataset_hold_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"no such dataset '%s'\00", align 1
@EXDEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"dataset '%s' is not in the target pool '%s'\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"I/O error while accessing dataset '%s'\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"unexpected error %d while accessing dataset '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zcp_dataset_hold_error(i32* %0, %struct.TYPE_3__* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @ENOENT, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = load i32*, i32** %6, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 (i32*, i32, i8*, i8*, ...) @zcp_argerror(i32* %14, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %15)
  store i32 0, i32* %5, align 4
  br label %49

17:                                               ; preds = %4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @EXDEV, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load i32*, i32** %6, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @spa_name(i32 %26)
  %28 = call i32 (i32*, i32, i8*, i8*, ...) @zcp_argerror(i32* %22, i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* %23, i32 %27)
  store i32 0, i32* %5, align 4
  br label %49

29:                                               ; preds = %17
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @EIO, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32*, i32** %6, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 (i32*, i8*, ...) @luaL_error(i32* %34, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %35)
  store i32 0, i32* %5, align 4
  br label %49

37:                                               ; preds = %29
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 (i32*, i8*, ...) @luaL_error(i32* %41, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %42, i8* %43)
  store i32 0, i32* %5, align 4
  br label %49

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45
  br label %47

47:                                               ; preds = %46
  br label %48

48:                                               ; preds = %47
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %48, %40, %33, %21, %13
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @zcp_argerror(i32*, i32, i8*, i8*, ...) #1

declare dso_local i32 @spa_name(i32) #1

declare dso_local i32 @luaL_error(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
