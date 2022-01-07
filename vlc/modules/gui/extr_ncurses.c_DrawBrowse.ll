; ModuleID = '/home/carl/AnghaBench/vlc/modules/gui/extr_ncurses.c_DrawBrowse.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/gui/extr_ncurses.c_DrawBrowse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i64, %struct.dir_entry_t** }
%struct.dir_entry_t = type { i32, i64 }

@C_DEFAULT = common dso_local global i32 0, align 4
@C_FOLDER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c" %c %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @DrawBrowse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DrawBrowse(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dir_entry_t*, align 8
  %6 = alloca i8, align 1
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %3, align 8
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %55, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %58

16:                                               ; preds = %10
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  %19 = load %struct.dir_entry_t**, %struct.dir_entry_t*** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.dir_entry_t*, %struct.dir_entry_t** %19, i64 %21
  %23 = load %struct.dir_entry_t*, %struct.dir_entry_t** %22, align 8
  store %struct.dir_entry_t* %23, %struct.dir_entry_t** %5, align 8
  %24 = load %struct.dir_entry_t*, %struct.dir_entry_t** %5, align 8
  %25 = getelementptr inbounds %struct.dir_entry_t, %struct.dir_entry_t* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 32, i32 43
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %6, align 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %16
  %36 = load %struct.dir_entry_t*, %struct.dir_entry_t** %5, align 8
  %37 = getelementptr inbounds %struct.dir_entry_t, %struct.dir_entry_t* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @C_DEFAULT, align 4
  br label %44

42:                                               ; preds = %35
  %43 = load i32, i32* @C_FOLDER, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  %46 = call i32 @color_set(i32 %45, i32* null)
  br label %47

47:                                               ; preds = %44, %16
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %49 = load i32, i32* %4, align 4
  %50 = load i8, i8* %6, align 1
  %51 = load %struct.dir_entry_t*, %struct.dir_entry_t** %5, align 8
  %52 = getelementptr inbounds %struct.dir_entry_t, %struct.dir_entry_t* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @MainBoxWrite(%struct.TYPE_6__* %48, i32 %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8 signext %50, i32 %53)
  br label %55

55:                                               ; preds = %47
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %4, align 4
  br label %10

58:                                               ; preds = %10
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  ret i32 %61
}

declare dso_local i32 @color_set(i32, i32*) #1

declare dso_local i32 @MainBoxWrite(%struct.TYPE_6__*, i32, i8*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
