; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_patch.c_is_uninstallable.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_patch.c_is_uninstallable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@is_uninstallable.query = internal constant [93 x i8] c"SELECT `Value` FROM `MsiPatchMetadata` WHERE `Company` IS NULL AND `Property`='AllowRemoval'\00", align 16
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"check other criteria\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @is_uninstallable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_uninstallable(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %6, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = call i64 @MSI_DatabaseOpenViewW(i32* %8, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @is_uninstallable.query, i64 0, i64 0), %struct.TYPE_9__** %4)
  %10 = load i64, i64* @ERROR_SUCCESS, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %41

13:                                               ; preds = %1
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %15 = call i64 @MSI_ViewExecute(%struct.TYPE_9__* %14, i32 0)
  %16 = load i64, i64* @ERROR_SUCCESS, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = call i32 @msiobj_release(i32* %20)
  store i32 0, i32* %2, align 4
  br label %41

22:                                               ; preds = %13
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = call i64 @MSI_ViewFetch(%struct.TYPE_9__* %23, %struct.TYPE_8__** %5)
  %25 = load i64, i64* @ERROR_SUCCESS, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %29 = call i8* @MSI_RecordGetString(%struct.TYPE_8__* %28, i32 1)
  store i8* %29, i8** %7, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @atoiW(i8* %30)
  store i32 %31, i32* %6, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = call i32 @msiobj_release(i32* %33)
  br label %35

35:                                               ; preds = %27, %22
  %36 = call i32 @FIXME(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = call i32 @msiobj_release(i32* %38)
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %35, %18, %12
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i64 @MSI_DatabaseOpenViewW(i32*, i8*, %struct.TYPE_9__**) #1

declare dso_local i64 @MSI_ViewExecute(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @msiobj_release(i32*) #1

declare dso_local i64 @MSI_ViewFetch(%struct.TYPE_9__*, %struct.TYPE_8__**) #1

declare dso_local i8* @MSI_RecordGetString(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @atoiW(i8*) #1

declare dso_local i32 @FIXME(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
