; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/fslib/vfatlib/check/extr_io.c_fs_write.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/fslib/vfatlib/check/extr_io.c_fs_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i32, %struct.TYPE_4__* }

@write_immed = common dso_local global i64 0, align 8
@did_change = common dso_local global i32 0, align 4
@fd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Seek to %lld\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Write %d bytes at %lld\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Wrote %d bytes instead of %d at %lld\00", align 1
@last = common dso_local global %struct.TYPE_4__* null, align 8
@changes = common dso_local global %struct.TYPE_4__* null, align 8
@FSCHECK_IMMEDIATE_WRITE = common dso_local global i32 0, align 4
@FsCheckFlags = common dso_local global i32 0, align 4
@interactive = common dso_local global i64 0, align 8
@rw = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fs_write(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i64, i64* @write_immed, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %45

11:                                               ; preds = %3
  store i32 1, i32* @did_change, align 4
  %12 = load i32, i32* @fd, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @lseek(i32 %12, i32 %13, i32 0)
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = trunc i64 %19 to i32
  %21 = call i32 (i8*, i32, ...) @pdie(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %17, %11
  %23 = load i32, i32* @fd, align 4
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = call i32 @write(i32 %23, i8* %24, i64 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %73

31:                                               ; preds = %22
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = call i32 (i8*, i32, ...) @pdie(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %35, i64 %37)
  br label %39

39:                                               ; preds = %34, %31
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = call i32 @die(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %40, i32 %41, i64 %43)
  br label %45

45:                                               ; preds = %39, %3
  %46 = call i8* @alloc(i64 32)
  %47 = bitcast i8* %46 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %47, %struct.TYPE_4__** %7, align 8
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = sext i32 %51 to i64
  %55 = call i8* @alloc(i64 %54)
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @memcpy(i8* %55, i8* %58, i32 %59)
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 3
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %62, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** @last, align 8
  %64 = icmp ne %struct.TYPE_4__* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %45
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** @last, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 3
  store %struct.TYPE_4__* %66, %struct.TYPE_4__** %68, align 8
  br label %71

69:                                               ; preds = %45
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  store %struct.TYPE_4__* %70, %struct.TYPE_4__** @changes, align 8
  br label %71

71:                                               ; preds = %69, %65
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  store %struct.TYPE_4__* %72, %struct.TYPE_4__** @last, align 8
  br label %73

73:                                               ; preds = %71, %30
  ret void
}

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @pdie(i8*, i32, ...) #1

declare dso_local i32 @write(i32, i8*, i64) #1

declare dso_local i32 @die(i8*, i32, i32, i64) #1

declare dso_local i8* @alloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
