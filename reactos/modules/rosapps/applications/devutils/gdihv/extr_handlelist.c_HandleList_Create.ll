; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/devutils/gdihv/extr_handlelist.c_HandleList_Create.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/devutils/gdihv/extr_handlelist.c_HandleList_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i32, i32 }

@LVCF_TEXT = common dso_local global i32 0, align 4
@LVCF_FMT = common dso_local global i32 0, align 4
@LVCF_WIDTH = common dso_local global i32 0, align 4
@LVCFMT_LEFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i32] [i32 78, i32 117, i32 109, i32 98, i32 101, i32 114, i32 0], align 4
@.str.1 = private unnamed_addr constant [6 x i32] [i32 73, i32 110, i32 100, i32 101, i32 120, i32 0], align 4
@.str.2 = private unnamed_addr constant [7 x i32] [i32 72, i32 97, i32 110, i32 100, i32 108, i32 101, i32 0], align 4
@.str.3 = private unnamed_addr constant [5 x i32] [i32 84, i32 121, i32 112, i32 101, i32 0], align 4
@.str.4 = private unnamed_addr constant [8 x i32] [i32 80, i32 114, i32 111, i32 99, i32 101, i32 115, i32 115, i32 0], align 4
@.str.5 = private unnamed_addr constant [11 x i32] [i32 75, i32 101, i32 114, i32 110, i32 101, i32 108, i32 68, i32 97, i32 116, i32 97, i32 0], align 4
@.str.6 = private unnamed_addr constant [9 x i32] [i32 85, i32 115, i32 101, i32 114, i32 68, i32 97, i32 116, i32 97, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HandleList_Create(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @LVCF_TEXT, align 4
  %6 = load i32, i32* @LVCF_FMT, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @LVCF_WIDTH, align 4
  %9 = or i32 %7, %8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  store i32 %9, i32* %10, align 8
  %11 = load i32, i32* @LVCFMT_LEFT, align 4
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 3
  store i32 %11, i32* %12, align 4
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  store i8* bitcast ([7 x i32]* @.str to i8*), i8** %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  store i32 50, i32* %14, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @ListView_InsertColumn(i32 %15, i32 0, %struct.TYPE_3__* %4)
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  store i8* bitcast ([6 x i32]* @.str.1 to i8*), i8** %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  store i32 45, i32* %18, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @ListView_InsertColumn(i32 %19, i32 1, %struct.TYPE_3__* %4)
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  store i8* bitcast ([7 x i32]* @.str.2 to i8*), i8** %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  store i32 90, i32* %22, align 8
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @ListView_InsertColumn(i32 %23, i32 2, %struct.TYPE_3__* %4)
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  store i8* bitcast ([5 x i32]* @.str.3 to i8*), i8** %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  store i32 80, i32* %26, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @ListView_InsertColumn(i32 %27, i32 3, %struct.TYPE_3__* %4)
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  store i8* bitcast ([8 x i32]* @.str.4 to i8*), i8** %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  store i32 80, i32* %30, align 8
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @ListView_InsertColumn(i32 %31, i32 4, %struct.TYPE_3__* %4)
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  store i8* bitcast ([11 x i32]* @.str.5 to i8*), i8** %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  store i32 80, i32* %34, align 8
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @ListView_InsertColumn(i32 %35, i32 5, %struct.TYPE_3__* %4)
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  store i8* bitcast ([9 x i32]* @.str.6 to i8*), i8** %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  store i32 80, i32* %38, align 8
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @ListView_InsertColumn(i32 %39, i32 6, %struct.TYPE_3__* %4)
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  store i8* bitcast ([5 x i32]* @.str.3 to i8*), i8** %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  store i32 80, i32* %42, align 8
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @ListView_InsertColumn(i32 %43, i32 7, %struct.TYPE_3__* %4)
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @HandleList_Update(i32 %45, i32 0)
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @ListView_InsertColumn(i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @HandleList_Update(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
