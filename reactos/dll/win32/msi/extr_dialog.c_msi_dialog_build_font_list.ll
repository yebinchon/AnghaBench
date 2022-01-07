; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_dialog.c_msi_dialog_build_font_list.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_dialog.c_msi_dialog_build_font_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@msi_dialog_build_font_list.query = internal constant [26 x i8] c"SELECT * FROM `TextStyle`\00", align 16
@.str = private unnamed_addr constant [11 x i8] c"dialog %p\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@msi_dialog_add_font = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_10__*)* @msi_dialog_build_font_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @msi_dialog_build_font_list(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %7 = call i32 @TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.TYPE_10__* %6)
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @MSI_OpenQuery(i32 %12, %struct.TYPE_11__** %4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @msi_dialog_build_font_list.query, i64 0, i64 0))
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @ERROR_SUCCESS, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i64, i64* %5, align 8
  store i64 %18, i64* %2, align 8
  br label %28

19:                                               ; preds = %1
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %21 = load i32, i32* @msi_dialog_add_font, align 4
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %23 = call i64 @MSI_IterateRecords(%struct.TYPE_11__* %20, i32* null, i32 %21, %struct.TYPE_10__* %22)
  store i64 %23, i64* %5, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = call i32 @msiobj_release(i32* %25)
  %27 = load i64, i64* %5, align 8
  store i64 %27, i64* %2, align 8
  br label %28

28:                                               ; preds = %19, %17
  %29 = load i64, i64* %2, align 8
  ret i64 %29
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_10__*) #1

declare dso_local i64 @MSI_OpenQuery(i32, %struct.TYPE_11__**, i8*) #1

declare dso_local i64 @MSI_IterateRecords(%struct.TYPE_11__*, i32*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @msiobj_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
