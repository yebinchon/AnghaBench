; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_dbus-unit.c_bus_verify_manage_units_async_full.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_dbus-unit.c_bus_verify_manage_units_async_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"unit\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"verb\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"polkit.message\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"polkit.gettext_domain\00", align 1
@GETTEXT_PACKAGE = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [38 x i8] c"org.freedesktop.systemd1.manage-units\00", align 1
@UID_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, i32, i8*, i32, i32*, i32*)* @bus_verify_manage_units_async_full to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bus_verify_manage_units_async_full(%struct.TYPE_5__* %0, i8* %1, i32 %2, i8* %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca [9 x i8*], align 16
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %16 = getelementptr inbounds [9 x i8*], [9 x i8*]* %15, i64 0, i64 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %17, align 8
  %21 = getelementptr inbounds i8*, i8** %17, i64 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %21, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  %23 = load i8*, i8** %9, align 8
  store i8* %23, i8** %22, align 8
  %24 = getelementptr inbounds i8*, i8** %22, i64 1
  %25 = getelementptr inbounds i8*, i8** %16, i64 9
  br label %26

26:                                               ; preds = %26, %7
  %27 = phi i8** [ %24, %7 ], [ %28, %26 ]
  store i8* null, i8** %27, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 1
  %29 = icmp eq i8** %28, %25
  br i1 %29, label %30, label %26

30:                                               ; preds = %26
  %31 = load i8*, i8** %11, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = getelementptr inbounds [9 x i8*], [9 x i8*]* %15, i64 0, i64 4
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %34, align 16
  %35 = load i8*, i8** %11, align 8
  %36 = getelementptr inbounds [9 x i8*], [9 x i8*]* %15, i64 0, i64 5
  store i8* %35, i8** %36, align 8
  %37 = getelementptr inbounds [9 x i8*], [9 x i8*]* %15, i64 0, i64 6
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8** %37, align 16
  %38 = load i8*, i8** @GETTEXT_PACKAGE, align 8
  %39 = getelementptr inbounds [9 x i8*], [9 x i8*]* %15, i64 0, i64 7
  store i8* %38, i8** %39, align 8
  br label %40

40:                                               ; preds = %33, %30
  %41 = load i32*, i32** %13, align 8
  %42 = load i32, i32* %10, align 4
  %43 = getelementptr inbounds [9 x i8*], [9 x i8*]* %15, i64 0, i64 0
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* @UID_INVALID, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32*, i32** %14, align 8
  %51 = call i32 @bus_verify_polkit_async(i32* %41, i32 %42, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8** %43, i32 %44, i32 %45, i32* %49, i32* %50)
  ret i32 %51
}

declare dso_local i32 @bus_verify_polkit_async(i32*, i32, i8*, i8**, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
